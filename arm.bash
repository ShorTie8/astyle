#!/bin/bash -e

cd astyle-code/AStyle/build/gcc/

make clean

JAVA_HOME=`readlink -f /usr/bin/javac | sed "s:bin/javac::"` CFLAGS="-Os" LDFLAGS="-s" make java

cp bin/libastyle*.so ../../../../libastylej_arm.so

