#!/bin/zsh
#Script to compile and run a java program with command args.
if [ $# -eq 0 ]
  then
    echo "Usage: javar ClassName [PROGRAM-ARGS]"
    exit
fi
if [ ! -z "${@:2}" ]
  then
	javac $1.java && java $1 ${@:2}
  else
   	javac $1.java && java $1
fi

