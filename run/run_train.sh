#!/bin/bash

#export TOP=/scratch/ruian/maskrcnn_run


#source setup.sh
cd /scratch/ruian
source setup_larcv2.sh

PATH_TRAIN=/scratch/ruian/training_data/mask_rcnn/100_500.root
PATH_VAL=/scratch/ruian/training_data/mask_rcnn/100_500_val.root


cd /scratch/ruian/MPID_pytorch/uboone
nohup python Train_mpid.py > log.out 2> fuck.err &
