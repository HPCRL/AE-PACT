

import tvm
from tvm import te, auto_scheduler, topi
from tvm.topi.testing import conv2d_nchw_python

import logging
import sys
import numpy as np



@auto_scheduler.register_workload
def conv2d_layer(N, H, W, CO, CI, KH, KW, stride, padding):
    data = te.placeholder((N, CI, H, W), name="data")
    kernel = te.placeholder((CO, CI, KH, KW), name="kernel")
    
    out = topi.nn.conv2d_nchw(data, kernel, stride, padding, dilation=1, out_dtype="float32")
    return [data, kernel, out]


def tune_kernels(N, H, W, CO, CI, KH, KW, strides, padding,
    trials,
    log_filename):


    ######################################################################
    # Create the search task
    # ^^^^^^^^^^^^^^^^^^^^^^
    # We then create a search task for the last convolution layer in the resnet.

    target = tvm.target.Target("cuda")

    # the last layer in resnet
    task = auto_scheduler.create_task(conv2d_layer, (N, H, W, CO, CI, KH, KW, strides, padding), target)

    # Inspect the computational graph
    #print(task.compute_dag)

    ######################################################################
    # Next, we set parameters for the auto-scheduler. These parameters
    # mainly specify how we do the measurement during the search and auto-tuning.
    #
    # * :code:`measure_ctx` launches a different process for measurement. This
    #   provides an isolation. It can protect the master process from GPU crashes
    #   happended during measurement and avoid other runtime conflicts.
    # * :code:`min_repeat_ms` defines the minimum duration of one "repeat" in every measurement.
    #   This can warmup the GPU, which is necessary to get accurate measurement results.
    #   Typically, we recommend a value > 300 ms.
    # * :code:`num_measure_trials` is the number of measurement trials we can use during the search.
    #   We only make 10 trials in this tutorial for a fast demonstration. In practice, 1000 is a
    #   good value for the search to converge. You can do more trials according to your time budget.
    # * In addition, we use :code:`RecordToFile` to dump measurement records into a file `conv2d.json`.
    #   The measurement records can be used to query the history best, resume the search,
    #   and do more analyses later.
    # * see :any:`auto_scheduler.TuningOptions`,
    #   :any:`auto_scheduler.LocalRPCMeasureContext` for more parameters.

    measure_ctx = auto_scheduler.LocalRPCMeasureContext(min_repeat_ms=300)
    tune_option = auto_scheduler.TuningOptions(
        num_measure_trials=trials,
        runner=measure_ctx.runner,
        measure_callbacks=[auto_scheduler.RecordToFile(log_filename)],
    )

    ######################################################################
    # Run the search
    # ^^^^^^^^^^^^^^
    # Now we get all inputs ready. Pretty simple, isn't it?
    # We can kick off the search and let the auto-scheduler do its magic.
    # After some measurement trials, it will return the best schedule it found.

    sch, args = auto_scheduler.auto_schedule(task, tuning_options=tune_option)

    log_file = log_filename
    cost_model = auto_scheduler.XGBModel()
    cost_model.update_from_file(log_file)
    search_policy = auto_scheduler.SketchPolicy(
        task, cost_model, init_search_callbacks=[auto_scheduler.PreloadMeasuredStates(log_file)]
    )
    tune_option = auto_scheduler.TuningOptions(
        num_measure_trials=5,
        runner=measure_ctx.runner,
        measure_callbacks=[auto_scheduler.RecordToFile(log_file)],
    )
    sch, args = auto_scheduler.auto_schedule(task, search_policy, tuning_options=tune_option)

    func = tvm.build(sch, args, target)
    # check correctness
    data_np = np.random.uniform(size=(N, CI, H, W)).astype(np.float32)
    weight_np = np.random.uniform(size=(CO, CI, KH, KW)).astype(np.float32)
   
    conv_np = conv2d_nchw_python(data_np, weight_np, strides, padding)
    out_np = np.maximum(conv_np, 0.0)

    ctx = tvm.gpu()
    data_tvm = tvm.nd.array(data_np, ctx=ctx)
    weight_tvm = tvm.nd.array(weight_np, ctx=ctx)
    out_tvm = tvm.nd.empty(out_np.shape, ctx=ctx)
    func(data_tvm, weight_tvm, out_tvm)

    # Check results
    np.testing.assert_allclose(out_np, out_tvm.asnumpy(), rtol=1e-3)

    # kill the measurement process
    del measure_ctx




def tune_and_evaluate():
    N = int(sys.argv[1])
    H = int(sys.argv[2])
    W = int(sys.argv[3])
    CO = int(sys.argv[4])
    CI = int(sys.argv[5])
    KH = int(sys.argv[6])
    KW = int(sys.argv[7])
    strides = int(sys.argv[8])
    padding = int(sys.argv[9])
    trials = int(sys.argv[10])
    log_filename = sys.argv[11]


    tune_kernels(N, H, W, CO, CI, KH, KW, strides, padding, trials,
    log_filename)


tune_and_evaluate()
