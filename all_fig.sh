echo "generate duration log..."
python gen_duration_log.py

echo "generate figures..."
python gen_fig.py 2080 yolo
python gen_fig.py 2080 res
python gen_fig.py 2080 defo
python gen_fig.py v100 yolo
python gen_fig.py v100 res
python gen_fig.py v100 defo