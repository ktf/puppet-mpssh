#!/bin/sh -ex
mkdir -p $BUILDROOT/obj
cd $BUILDROOT/obj
cmake -DCMAKE_INSTALL_PREFIX=$INSTALL_ROOT \
      $BUILDROOT
make -j 20
make install
