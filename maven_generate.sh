#!/bin/zsh
#Script to generate a maven project from scratch.
if [ $# -eq 0 ]
  then
    echo "Usage: maven_generate GROUP-ID ARTIFACT-ID"
    exit
fi
mvn archetype:generate -DgroupId=$1 -DartifactId=$2 -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
