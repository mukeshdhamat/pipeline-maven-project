#!/bin/bash

echo "**************************************"
echo "******Copy JAR******************"
echo "**************************************"

cp -f java-app/target/my-app-1.0-SNAPSHOT.jar jenkins/build/

echo "**************************************"
echo "******Building Docker Image******************"
echo "**************************************"

cd jenkins/build && docker-compose build --no-cache

