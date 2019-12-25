#!/bin/sh

function full_path()
{
	file=$1
	path=`realpath -s ${file}`
	dir=`dirname ${path}`
	echo "${dir}"
}

fullpath=$(full_path "$0")
app="${fullpath}/index.py"
port=9000
logfile="logs/error.log"

