export TAG=$TAG_TO_BUILD
export PORT=52291
export BUILD_COMMAND=.
export CONTAINER_NAME=sre-insights-docs
export IMAGE_NAME=sre-insights-docs
docker-compose build --no-cache

if [ $? -eq 0 ]; then
    echo "BUILD COMPLETED $IMAGE_NAME:$TAG"
    docker images
    docker tag sre/dxp/$IMAGE_NAME:$TAG gcr.io/eng-genius-224716/sre/$IMAGE_NAME:$TAG
    docker push gcr.io/eng-genius-224716/sre/$IMAGE_NAME:$TAG

else
    echo "BUILD FAILD"
fi