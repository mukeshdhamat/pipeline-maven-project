#!/bin/bash

echo "*******************************"
echo "******Building**********"
echo "********************************"
WORKSPACE=/home/cyg_adm/jenkins_home/workspace/maven-pipeline 
docker run --rm -ti -v $WORKSPACE/java-app/:/app -v /root/.m2:/root/.m2 -w /app maven:3.6.0-jdk-8 "$@"
