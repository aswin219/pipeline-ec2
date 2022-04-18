  
#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u aswinmkolathur -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG aswinmkolathur/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push aswinmkolathur/$IMAGE:$BUILD_TAG
