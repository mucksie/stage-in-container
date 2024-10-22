#!/usr/bin/bash

docker run --rm -it \
           --volume $(pwd):/src \
           mucksie/stage:latest $@
