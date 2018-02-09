#!/bin/sh

docker run -it --rm  \
    -v $(pwd):/go/src/netroby/imgutils \
     golang bash /go/src/netroby/imgutils/buildlibimgutils.sh


docker run --rm -it  \
    -v ~/.gradle:/home/gradle/.gradle \
     -v $(pwd)/libimgutils.so:/lib/libimgutils.so \
     -v $(pwd):/home/gradle/project -w /home/gradle/project gradle:latest bash /home/gradle/project/buildjava.sh