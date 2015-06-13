#!/bin/sh -ex
cd $BUILDROOT
/usr/bin/make install BIN=$INSTALL_ROOT/bin
