#!/bin/sh

dir=`dirname $0`
source ${dir}/define.sh
cd ${dir}

pid=`ps auxf | grep "python ${app}" | grep -v grep | awk '{print $2}'`
if [ "SS" != "SS${pid}" ]; then
	echo "The server is running, pid: ${pid}."
	exit
fi

if [ ! -d logs ]; then
	mkdir logs
fi


nohup python ${app} ${port} 2>&1 >> ${logfile} &
