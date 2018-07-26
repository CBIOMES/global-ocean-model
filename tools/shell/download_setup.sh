#!/bin/bash

git clone --branch cube92 git://gud.mit.edu/gud-dev
mv gud-dev MITgcm
mkdir MITgcm/mysetups

git clone https://github.com/gaelforget/CBIOMES
mv CBIOMES MITgcm/mysetups/.

git clone -b nctilesdev https://github.com/gaelforget/gcmfaces
mv gcmfaces MITgcm/mysetups/CBIOMES/tools/matlab/.

git clone https://github.com/darwinproject/tmp_code_devel CBIOMES-tools
mv CBIOMES-tools MITgcm/mysetups/CBIOMES/tools/matlab/.

