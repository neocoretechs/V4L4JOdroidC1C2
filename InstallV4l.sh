#!/bin/bash
# This script assumes the libv4l4j.so and libvideo.so of V4L4J Video for Linux is available in the default dir.
# and that you have sudo power and are connected to the net to perform the install of the dependencies
# for the 32 bit shared libs for the V4L4J install. We use the 32 bit JVM and so must install 32 bit libs, hence :armhf
# We the set up the links in the default jni location
#
sudo apt-get install libxrender1:armhf libxtst6:armhf libxi6:armhf
sudo apt-get install libjpeg-dev:armhf
sudo apt-get install libv4l-dev:armhf
sudo ln -s /usr/lib/arm-linux-gnueabihf/libjpeg.so.8 /usr/lib/jni/libjpeg.so.8
sudo ln -s /usr/lib/arm-linux-gnueabihf/libjpeg.so /usr/lib/jni/libjpeg.so
sudo ln -s /usr/lib/arm-linux-gnueabihf/libjpeg.a /usr/lib/jni/libjpeg.a
sudo ln -s /usr/lib/arm-linux-gnueabihf/libjpeg.so.8.0.2 /usr/lib/jni/libjpeg.so.8.0.2

sudo ln -s /usr/lib/arm-linux-gnueabihf/libv4lconvert.so.0 /usr/lib/jni/libv4lconvert.so.0
sudo ln -s /usr/lib/arm-linux-gnueabihf/libv4lconvert.a /usr/lib/jni/libv4lconvert.a
sudo ln -s /usr/lib/arm-linux-gnueabihf/libv4lconvert.so /usr/lib/jni/libv4lconvert.so
sudo ln -s /usr/lib/arm-linux-gnueabihf/libv4lconvert.so.0.0.0 /usr/lib/jni/libv4lconvert.so.0.0.0

sudo mv libv4l4j.so /usr/lib/jni
sudo mv libvideo.so /usr/lib/jni