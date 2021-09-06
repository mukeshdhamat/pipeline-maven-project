#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u mukeshdhamat -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG mukeshdhamat/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push mukeshdhamat/$IMAGE:$BUILD_TAG
