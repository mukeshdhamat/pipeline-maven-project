#!/bin/bash

echo "******************************"
echo "*****Testing*************"
echo "******************************"

WORKSPACE=/home/cyg_adm/jenkins_home/workspace/pipeline-maven-project
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.2-jdk-11 "$@"
