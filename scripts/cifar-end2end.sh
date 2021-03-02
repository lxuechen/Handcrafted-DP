#!/bin/bash

device=0
epochs=30
for seed in 0 1 2 3 4 5 6 7; do
  CUDA_VISIBLE_DEVICES=${device} python3 cnns.py --dataset=cifar10 --batch_size=1024 --lr=1 --noise_multiplier=1.54 --seed ${seed} --epochs ${epochs} &
  ((device++))
done
