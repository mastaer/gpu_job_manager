#!/bin/bash

cd /home/jonas/Schreibtisch/jobs_manager/scripts

#job="THEANO_FLAGS=mode=FAST_RUN,device=$2,floatX=float32 python /home/jonas/Schreibtisch/_semesterferienKlaus3/theano_tut_conv_net_modified_for_cifar10/$3 >> /home/jonas/Schreibtisch/_semesterferienKlaus3/theano_tut_conv_net_modified_for_cifar10/output/$4"

job="export PYTHONUNBUFFERED=1;THEANO_FLAGS=optimizer_including=cudnn,mode=FAST_RUN,device=$2,floatX=float32 python $3 >> output/$4 2>&1 &"

cd ../newjobs

echo $1 >> $4
echo $job >> $4
echo /home/jonas/Schreibtisch/ConvNeuNet_Python_SS15/trunk/theano_tut_conv_net_modified_for_cifar10/ >> $4
echo `date | awk {'printf ("%s %s %s", $2, $3, $4)'}` >> $4

cd ../scripts

#"convolutional_mlp_modified_for_cifar10.py 0.01 500 10 5 2 200 32 1"

#600 gpu "convolutional_mlp_modified_for_cifar10.py 0.01 500 10 5 2 200 32 1" mytest
