#!/bin/zsh
#Script to compile and run a scala program with command args.
if [ $# -eq 0 ]
  then
    echo "Usage: scalar ClassName [PROGRAM-ARGS]"
    exit
fi
if [ ! -z "${@:2}" ]
  then
	scalac $1.scala && scala $1 ${@:2}
  else
   	scalac $1.scala && scala $1
fi
