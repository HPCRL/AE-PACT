

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

    print(log_filename)
    ######################################################################
    # Create the search task
    # ^^^^^^^^^^^^^^^^^^^^^^
    # We then create a search task for the last convolution layer in the resnet.

    target = tvm.target.Target("cuda")

    # the last layer in resnet
    task = auto_scheduler.create_task(conv2d_layer, (N, H, W, CO, CI, KH, KW, strides, padding), target)

    inp, res = auto_scheduler.load_best(log_filename, task.workload_key)
    print(res)
    # Print equivalent python schedule API. This can be used for debugging and
    # learning the behavior of the auto-scheduler.
    # print("Equivalent python schedule:")
    # print(task.compute_dag.print_python_code_from_state(inp.state))

    # Rebuild the binary. This shows how you can apply the best schedule from a
    # log file without reruning the search again.
    sch, args = task.compute_dag.apply_steps_from_state(inp.state)
    func = tvm.build(sch, args, target)
    print("\n**********6*************\n")

    print(func.imported_modules[0].get_source())

    print("\n**********9*************")

    
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
