
#2080Ti
#https://cuda.readthedocs.io/ko/latest/rtx2080Ti/
#v100
#https://www.microway.com/knowledge-center-articles/in-depth-comparison-of-nvidia-tesla-volta-gpu-accelerators/


def get_machine_info(m_name):
    machine_info = {}
    wordSize = 4
    if m_name == "2080ti":
        machine_info['G2S_bandwidth'] = 616
        machine_info['R2S_bandwidth'] = 11000
        machine_info['maxWarpsSM'] = 32
        machine_info['num_of_SM'] = 68
        machine_info['maxWordsOfSharedMemorySM'] = 65536 / wordSize
        machine_info['maxRegSM'] = 65536
    elif m_name == "v100":
        machine_info['G2S_bandwidth'] = 750
        machine_info['R2S_bandwidth'] = 12000
        machine_info['maxWarpsSM'] = 64
        machine_info['num_of_SM'] = 80
        machine_info['maxWordsOfSharedMemorySM'] = 96256 / wordSize
        machine_info['maxRegSM'] = 65536
    else:
        assert False, "unknown machine"
    return machine_info