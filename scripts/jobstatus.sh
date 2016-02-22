#!/bin/bash

cd /home/jonas/Schreibtisch/jobs_manager/scripts

echo '  New Job       Running Job        Finish      Canceled [time]'
cd ../newjobs
filetoremove=`ls | grep [~]`
if [ "$filetoremove" != "" ];then
    ls | grep [~] | xargs rm
fi
echo
ls -lt --time=atime | awk {'printf ("%s %s %s\t--:-- -- ---\t--:-- -- ---\t--:-- -- ---\t%s\n", $8, $7, $6, $9)'} | sed "1 d"

cd ../runningjob
filetoremove=`ls | grep [~]`
if [ "$filetoremove" != "" ];then
    ls | grep [~] | xargs rm
fi
echo
ls -lt --time=atime | awk {'printf ("--:-- -- ---\t%s %s %s\t--:-- -- ---\t--:-- -- ---\t%s\n", $8, $7, $6, $9)'} | sed "1 d"

cd ../finished/runningjob
filetoremove=`ls | grep [~]`
if [ "$filetoremove" != "" ];then
    ls | grep [~] | xargs rm
fi
echo
ls -lt --time=atime | awk {'printf ("--:-- -- ---\t--:-- -- ---\t%s %s %s\t--:-- -- ---\t%s\n", $8, $7, $6, $9)'} | sed "1 d"

cd ../../timecanceled/runningjob
filetoremove=`ls | grep [~]`
if [ "$filetoremove" != "" ];then
    ls | grep [~] | xargs rm
fi
echo
ls -lt --time=atime | awk {'printf ("--:-- -- ---\t--:-- -- ---\t--:-- -- ---\t%s %s %s\t%s\n", $8, $7, $6, $9)'} | sed "1 d"




