#!/bin/sh
# Scripts to build the base images from scratch.

for VERSION in 18.04; do
    for ARCH in armhf ; do
        curl http://cdimage.ubuntu.com/ubuntu-base/releases/$VERSION/release/ubuntu-base-$VERSION-base-$ARCH.tar.gz | docker import - snapcraft/ubuntu-base:$ARCH-$VERSION
        #docker push snapcraft/ubuntu-base:$ARCH-$VERSION
    done
done
