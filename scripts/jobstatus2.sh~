#!/bin/bash

cd /home/jonas/Schreibtisch/jobs_manager/scripts

echo '    New Job              Running Job               Success           Canceled [time]'

cd ../newjobs
filetoremove=`ls | grep [~]`
if [ "$filetoremove" != "" ];then
    ls | grep [~] | xargs rm
fi
echo
for f in *; do
    if [ "$f" != "*" ];then
        param1=`sed -n '4p' $f`
        size=${#param1}
        if [ $size == 15 ];then
            param1=`echo 0$param1`
        elif [ $size != 16 ];then
            param1="--. --- --:--:--"
        fi
        param2=`sed -n '5p' $f`
        size=${#param2}
        if [ $size == 15 ];then
            param2=`echo 0$param2`
        elif [ $size != 16 ];then
            param2="--. --- --:--:--"
        fi
        param3=`sed -n '6p' $f`
        size=${#param3}
        if [ $size == 15 ];then
            param3=`echo 0$param3`
        elif [ $size != 16 ];then
            param3="--. --- --:--:--"
        fi
        param4=`sed -n '7p' $f`
        size=${#param4}
        if [ $size == 15 ];then
            param4=`echo 0$param4`
        elif [ $size != 16 ];then
            param4="--. --- --:--:--"
        fi
        echo $param1 "     " $param2 "     " $param3 "     " $param4 "     " $f
    fi
done
newjobsCount=`ls -l | wc -l`
newjobsCount2=`expr $newjobsCount - 1`

cd ../runningjob
filetoremove=`ls | grep [~]`
if [ "$filetoremove" != "" ];then
    ls | grep [~] | xargs rm
fi
echo
for f in *; do
    if [ "$f" != "*" ];then
        param1=`sed -n '4p' $f`
        size=${#param1}
        if [ $size == 15 ];then
            param1=`echo 0$param1`
        elif [ $size != 16 ];then
            param1="--. --- --:--:--"
        fi
        param2=`sed -n '5p' $f`
        size=${#param2}
        if [ $size == 15 ];then
            param2=`echo 0$param2`
        elif [ $size != 16 ];then
            param2="--. --- --:--:--"
        fi
        param3=`sed -n '6p' $f`
        size=${#param3}
        if [ $size == 15 ];then
            param3=`echo 0$param3`
        elif [ $size != 16 ];then
            param3="--. --- --:--:--"
        fi
        param4=`sed -n '7p' $f`
        size=${#param4}
        if [ $size == 15 ];then
            param4=`echo 0$param4`
        elif [ $size != 16 ];then
            param4="--. --- --:--:--"
        fi
        echo $param1 "     " $param2 "     " $param3 "     " $param4 "     " $f
    fi
done

runningjob=`ls -l | wc -l`
runningjob2=`expr $runningjob - 1`


cd ../finished/runningjob
filetoremove=`ls | grep [~]`
if [ "$filetoremove" != "" ];then
    ls | grep [~] | xargs rm
fi
echo
for f in *; do
    if [ "$f" != "*" ];then
        param1=`sed -n '4p' $f`
        size=${#param1}
        if [ $size == 15 ];then
            param1=`echo 0$param1`
        elif [ $size != 16 ];then
            param1="--. --- --:--:--"
        fi
        param2=`sed -n '5p' $f`
        size=${#param2}
        if [ $size == 15 ];then
            param2=`echo 0$param2`
        elif [ $size != 16 ];then
            param2="--. --- --:--:--"
        fi
        param3=`sed -n '6p' $f`
        size=${#param3}
        if [ $size == 15 ];then
            param3=`echo 0$param3`
        elif [ $size != 16 ];then
            param3="--. --- --:--:--"
        fi
        param4=`sed -n '7p' $f`
        size=${#param4}
        if [ $size == 15 ];then
            param4=`echo 0$param4`
        elif [ $size != 16 ];then
            param4="--. --- --:--:--"
        fi
        echo $param1 "     " $param2 "     " $param3 "     " $param4 "     " $f
    fi
done

finished=`ls -l | wc -l`
finished2=`expr $finished - 1`

cd ../../timecanceled/runningjob
filetoremove=`ls | grep [~]`
if [ "$filetoremove" != "" ];then
    ls | grep [~] | xargs rm
fi
echo
for f in *; do
    if [ "$f" != "*" ];then
        param1=`sed -n '4p' $f`
        size=${#param1}
        if [ $size == 15 ];then
            param1=`echo 0$param1`
        elif [ $size != 16 ];then
            param1="--. --- --:--:--"
        fi
        param2=`sed -n '5p' $f`
        size=${#param2}
        if [ $size == 15 ];then
            param2=`echo 0$param2`
        elif [ $size != 16 ];then
            param2="--. --- --:--:--"
        fi
        param3=`sed -n '6p' $f`
        size=${#param3}
        if [ $size == 15 ];then
            param3=`echo 0$param3`
        elif [ $size != 16 ];then
            param3="--. --- --:--:--"
        fi
        param4=`sed -n '7p' $f`
        size=${#param4}
        if [ $size == 15 ];then
            param4=`echo 0$param4`
        elif [ $size != 16 ];then
            param4="--. --- --:--:--"
        fi
        echo $param1 "     " $param2 "     " $param3 "     " $param4 "     " $f
    fi
done

timecanceled=`ls -l | wc -l`
timecanceled2=`expr $timecanceled - 1`

cd ../../scripts

echo
echo "      " $newjobsCount2 "                    " $runningjob2 "                    " $finished2 "                    " $timecanceled2
echo
./joblength.sh
echo
nvidia-smi | sed -n '9p'
echo
