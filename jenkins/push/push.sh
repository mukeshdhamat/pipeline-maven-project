#!/bin/bash
echo "*******************************"
echo "*****Pushing*********"
echo "*******************************"

IMAGE="maven-project"

docker login -u mukeshdhamat -p $PASS
docker tag $IMAGE:$BUILD_TAG mukeshdhamat/$IMAGE:$BUILD_TAG
docker push mukeshdhamat/$IMAGE:$BUILD_TAG 
