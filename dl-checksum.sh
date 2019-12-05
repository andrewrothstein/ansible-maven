#!/usr/bin/env sh
MAJOR_VER=3
VER=${MAJOR_VER}.6.3
DIR=~/Downloads
SHATYPE=512
URL=http://archive.apache.org/dist/maven/maven-${MAJOR_VER}/${VER}/binaries/apache-maven-${VER}-bin.tar.gz.sha${SHATYPE}
printf "  # %s\n" $URL
printf "  '%s': sha%s:%s\n" $VER $SHATYPE $(curl -sSL $URL | awk '{print $1}')
