#!/bin/bash

mkdir run
cd run

ln -s ../build/mitgcmuv .
ln -s ../input/* .
ln -s ../inputs_baseline2/input*/* .
ln -s ../forcing_baseline2 .
ln -s ../inputs_drwn3/input*/* .
ln -s ../inputs_drwn3/* .

cd ..

