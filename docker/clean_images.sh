#!/bin/bash

docker rmi $(docker images --filter "dangling=true" -q --no-trunc)

docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')
