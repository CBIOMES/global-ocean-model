
.. _runs:

Compute
*******

This section explains how users can re-run `CBIOMES-global (alpha version)`
using the `numerical ocean model <https://mitgcm.readthedocs.io/en/latest/>`__,
post-process the model output, and experiment with the model solutions.

.. _computers:

.. rubric:: Required Computational Environment

This section assumes that the
`numerical ocean model <https://mitgcm.readthedocs.io/en/latest/>`__, the
`CBIOMES-global` setup, and model inputs have been installed according to
the :ref:`mitgcmdirs` (see :numref:`download-setup`). Running the model further
requires `gcc` and `gfortran` (or alternative compilers),
`mpi` libraries (parallel computing), and
`Netcdf <https://www.unidata.ucar.edu/software/netcdf/>`__ libraries (not always)
as explained in the `MITgcm documentation <https://mitgcm.readthedocs.io/en/latest/>`__.

.. _rerun-alpha-version:

Run Model
---------

Users can :ref:`baseline` the `CBIOMES-global (alpha version)`
model setup as follows:

.. _baseline:

.. rubric:: Compile, Link, And Run

::

    #1) compile model
    cd MITgcm/mysetups/CBIOMES/build
    ../../../tools/genmake2 -mods=../code -optfile \
         ../inputs_drwn3/linux_amd64_ifort+mpi_ice_nas -mpi
    make depend
    make -j 4 > make.log
    cd ..

    #2) link files into run directory
    mkdir run
    cd run
    ln -s ../build/mitgcmuv .
    ln -s ../input/* .
    ln -s ../inputs_baseline2/input*/* .
    ln -s ../forcing_baseline2 .
    ln -s ../inputs_drwn3/input*/* .
    ln -s ../inputs_drwn3/* .

    #3) run model
    mpiexec -np 360 ./mitgcmuv

.. note::

   On most clusters, users would call ``mpiexec`` (or ``mpirun``) via
   queuing systems rather than directly from the command line. The included
   `linux_amd64_ifort+mpi_ice_nas` option file is geared towards an `ifort`
   compiler and the `pleiades` computer. Users who employ another
   compiler / computer pair may find useful alternatives
   to `linux_amd64_ifort+mpi_ice_nas`` in the
   ``MITgcm/tools/build_options/`` subdirectory.

.. Next subsection deals with postprocessing

.. _postprocess:

Process Output
--------------

.. include:: postprocess.inc

Experiment
----------

The following paragraphs outline a few of the methods that can be used to
experiment with the model solutions.

::

    To be continued...
