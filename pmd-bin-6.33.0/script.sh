#!/bin/bash
sleep 100
/usr/bin/lftp -e 'mget myrules.xml' -u test,test ftp://ftpd-server</dev/null
/home/app/bin/run.sh pmd -d repo -R myrules.xml -f text>>res/result.txt
