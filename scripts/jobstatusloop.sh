#!/bin/bash

cd /home/jonas/Schreibtisch/jobs_manager/scripts

while true; do
    clear
    ./jobstatus2.sh
    sleep $1
done
