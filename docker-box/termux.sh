#!/bin/sh
set -e -u

HOME=/home/builder

IMAGE_NAME=termux/package-builder
: ${CONTAINER_NAME:=termux-package-builder}

USER=builder

echo "Running container '$CONTAINER_NAME' from image '$IMAGE_NAME'..."

docker start $CONTAINER_NAME > /dev/null 2> /dev/null || {
	echo "Creating new container..."
	docker run \
		--detach \
		--name $CONTAINER_NAME \
		--volume /f/projs:$HOME/projs \
		--tty \
		$IMAGE_NAME 
}

if [ "$#" -eq  "0" ]; then
	docker exec --interactive --tty $CONTAINER_NAME bash
else
	docker exec --interactive --tty $CONTAINER_NAME $@
fi


