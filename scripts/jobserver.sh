#!/bin/bash

cd /home/jonas/Schreibtisch/jobs_manager/scripts

while true; do
    # Lese nächsten Prozess
    cd ../newjobs
#    sudo ls | grep thisfilewillneverexistthisfilewillneverexistthisfilewillneverexistthisfilewillneverexistthisfilewillneverexist
    filetoremove=`ls | grep [~]`
    if [ "$filetoremove" != "" ];then
        ls | grep [~] | xargs rm
    fi

    file=`ls | sort -n | head -1`
    if [ "$file" = "" ];then
        cd ../scripts
        sleep 5
    else
        mv $file ../runningjob/
        cd ../runningjob/
        echo `date | awk {'printf ("%s %s %s", $2, $3, $4)'}` >> $file
        timeBeforeExit=`sed -n '1p' $file` # Erste Zeile wie lange der Prozess laufen soll
        data=`sed -n '2p' $file` # der eigentliche befehl
        path=`sed -n '3p' $file` # der eigentliche pfad
        cd ../scripts


        # start programm
        eval "cd $path"
        eval $data
	cd /home/jonas/Schreibtisch/jobs_manager/scripts/
	
        echo
        echo " ### run job $file; max $timeBeforeExit min; job: $data"

        # waiting for end of time or that the process is finished
        for i in `seq 1 $timeBeforeExit`;
        do
            if kill -0 $!; then # Is still running
                sleep 60
                if [ "$i" = "$timeBeforeExit" ]; then # Max waiting time is over
                    cd ../runningjob/
                    echo >> $file
                    echo `date | awk {'printf ("%s %s %s", $2, $3, $4)'}` >> $file
                    cd ../scripts
                    kill -TERM $!
                    echo ' ### job canceled [time]'
                    cp -r ../runningjob/ ../timecanceled
                    rm -r ../runningjob/
                    mkdir ../runningjob/
                fi
            else
                echo ' ### job success'
                cd ../runningjob/
                echo `date | awk {'printf ("%s %s %s", $2, $3, $4)'}` >> $file
                cd ../scripts
                cp -r ../runningjob/ ../finished
                rm -r ../runningjob/
                mkdir ../runningjob/
                break
            fi
        done
    fi
done


