 docker run -it --rm -v d:/workspace/netroby/imgutils:/go/src/netroby/imgutils golang bash /go/src/netroby/imgutils/buildlibimgutils.sh


docker run --rm -it  -v d:/.gradle:/home/gradle/.gradle -v  d:/workspace/netroby/imgutils/libimgutils.so:/lib/libimgutils.so -v d:/workspace/netroby/imgutils:/home/gradle/project -w /home/gradle/project gradle:latest bash /home/gradle/project/buildjava.sh