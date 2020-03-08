#!/bin/sh
if [ -e ./java-gateway-client-sample-2-0.0.2-SNAPSHOT-spring-boot-2.jar ]; then
	    echo 'file exists!';
else
	echo 'file not found error.';
	exit 1;  
fi

export BUILD_VERSION=from_dev_build
export DOCKER_IMAGE_NAME=java-gateway-client-sample-2
export SERVER_NAME=localhost

env

docker build -t ${DOCKER_IMAGE_NAME}:${BUILD_VERSION} -t ${DOCKER_IMAGE_NAME}:latest .