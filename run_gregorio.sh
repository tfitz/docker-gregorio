#!/bin/bash

cwd=$( pwd )

docker run \
       --rm=true \
       -v $cwd:/workdir \
       gregorio \
       "$@"

