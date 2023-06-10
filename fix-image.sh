#/bin/sh

source_image=${1:?source_image is not specified}
target_image=${2:?target_image is not specified}

user=$(docker inspect --type=image "$source_image" -f '{{ .Config.User }}')
docker build -t "$target_image" --build-arg base="$source_image" --build-arg user="$user" .
