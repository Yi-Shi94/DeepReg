#!/bin/bash

# path to dataset
DATA_DIR=../../data/ActiveVisionDataset/Home_011_1/
# trajectiory file name
TRAJ=traj1
# experiment name, the results will be saved to ../results/2D/${NAME}
NAME=AVD_Home_011_1_${TRAJ}
# training epochs
EPOCH=3000
# batch size
BS=16
# number of points sampled from line-of-sight
N=35

LOG=2
# loss function
LOSS=bce_chmk
#python3 train_AVD.py --name $NAME -d $DATA_DIR -t ${TRAJ}.txt -e $EPOCH -b $BS -l $LOSS -n $N --log_interval $LOG
sudo python3 train_AVD.py --name $NAME -d $DATA_DIR -t ${TRAJ}.txt -e $EPOCH -b $BS -l $LOSS -n $N --log_interval $LOG

