#!/bin/bash

python tune.py 32 544 544 3 3 yolo
python tune.py 64 272 272 32 3 yolo
python tune.py 128 136 136 64 3 yolo
python tune.py 256 68 68 128 3 yolo
python tune.py 512 34 34 256 3 yolo
python tune.py 1024 17 17 512 3 yolo

