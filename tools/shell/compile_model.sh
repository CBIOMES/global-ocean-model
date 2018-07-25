#!/bin/bash

OPTFILE=../inputs_drwn3/linux_amd64_ifort+mpi_ice_nas

mkdir build
cd build

../../../tools/genmake2 -mods=../code -optfile $OPTFILE -mpi
make depend
make -j 4 > make.log

cd ..

