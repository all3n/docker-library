#! /bin/sh
#
# gen.sh
# Copyright (C) 2019 wanghuacheng <wanghuacheng@wanghuacheng-PC>
#
# Distributed under terms of the MIT license.
#



IMAGE=$1
IMAGE_BASE=`echo $IMAGE|awk -F: '{print $1}'`
IMAGE_TAG=`echo $IMAGE|awk -F: '{print $2}'`
mkdir -p $IMAGE_BASE

echo "FROM $IMAGE" > $IMAGE_BASE/Dockerfile

