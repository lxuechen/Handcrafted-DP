#!/bin/bash

for seed in 0 1 2 3 4; do
  python3 cnns.py --dataset=cifar10 --batch_size=1024 --lr=1 --noise_multiplier=1.54 --seed ${seed}
done
