#!/bin/bash

echo "***************************"
echo "********Testing************"
echo "***************************"

docker run --rm -ti -v $PWD/java-app/:/app -v /root/.m2:/root/.m2 -w /app maven:3.6.0-jdk-8 "$@"

