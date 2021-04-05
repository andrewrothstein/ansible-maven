#!/usr/bin/env sh
set -e
readonly DIR=~/Downloads
readonly MIRROR=http://archive.apache.org/dist/maven

dl_ver () {
    local major_ver=$1
    local minor_ver=$2
    local patch_ver=$3
    local shatype=$4
    local ver="${major_ver}.${minor_ver}.${patch_ver}"
    local url="${MIRROR}/maven-${major_ver}/${ver}/binaries/apache-maven-${ver}-bin.tar.gz.sha${shatype}"
    printf "  # %s\n" $url
    printf "  '%s': sha%s:%s\n" $ver $shatype $(curl -sSL $url | awk '{print $1}')
}

dl_ver 3 8 1 512
