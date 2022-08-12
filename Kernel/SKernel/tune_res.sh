#!/bin/bash


python tune.py 64 56 56 64 3 resnet
python tune.py 128 28 28 128 3 resnet
python tune.py 256 14 14 256 3 resnet
