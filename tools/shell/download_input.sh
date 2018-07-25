#!/bin/bash

CBDIR=MITgcm/mysetups/CBIOMES
FTPDIR=mit.ecco-group.org/ecco_for_las/version_4/release2

echo "Download started ..."
wget --recursive --quiet ftp://$FTPDIR/input_forcing/
wget --recursive --quiet ftp://$FTPDIR/input_init/
wget --recursive --quiet ftp://$FTPDIR/input_ecco/input_other/
wget --recursive --quiet ftp://$FTPDIR/input_ecco/input_insitu/
echo "... and now completed."

mkdir $CBDIR/inputs_baseline2
mv $FTPDIR/input_forcing $CBDIR/forcing_baseline2
mv $FTPDIR/input_init $CBDIR/inputs_baseline2/.
mv $FTPDIR/input_ecco/* $CBDIR/inputs_baseline2/.

