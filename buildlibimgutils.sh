#!/bin/sh
cd /go/src/netroby/imgutils
go build -o libimgutils.so -buildmode=c-shared main.go