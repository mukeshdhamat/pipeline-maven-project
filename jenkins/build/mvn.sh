#!/bin/bash

echo "******************************"
echo "*****JAR Creation*************"
echo "******************************"


docker run --rm -v /home/cyg_adm/pipeline-maven-project/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.2-jdk-11 "$@"
