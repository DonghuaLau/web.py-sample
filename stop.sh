#!/bin/sh

dir=`dirname $0`
source ${dir}/define.sh
cd ${dir}

pid=`ps auxf | grep "python ${app}" | grep -v grep | awk '{print $2}'`

if [ "SS" != "SS${pid}" ]; then
	kill ${pid}
	echo "${pid} stopped"
else
	echo "not running."
fi

