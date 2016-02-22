#!/bin/bash

cd /home/jonas/Schreibtisch/jobs_manager/scripts

#job="THEANO_FLAGS=mode=FAST_RUN,device=$2,floatX=float32 python /home/jonas/Schreibtisch/_semesterferienKlaus3/theano_tut_conv_net_modified_for_cifar10/$3 >> /home/jonas/Schreibtisch/_semesterferienKlaus3/theano_tut_conv_net_modified_for_cifar10/output/$4"

job="export PYTHONUNBUFFERED=1;THEANO_FLAGS=optimizer_including=cudnn,mode=FAST_RUN,device=$1,floatX=float32 python $2"
cd /home/jonas/Schreibtisch/ConvNeuNet_Python_SS15/trunk/theano_tut_conv_net_modified_for_cifar10/
eval $job

#600 gpu "convolutional_mlp_modified_for_cifar10.py 0.01 500 10 5 2 200 32 1" mytest
