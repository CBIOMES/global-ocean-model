
.. _runs:

Compute
*******

This following recipes allow users to re-run `CBIOMES-global (alpha version)`
(:numref:`rerun-alpha-version`),
post-process its output (:numref:`postprocess`),
and experiment with the model (:numref:`experiment`).

.. _rerun-alpha-version:

Run Model
---------

Users can :ref:`compilerun` the `CBIOMES-global (alpha version)`
model as explained below. Documentation of the model setup is provided
in :cite:`for-eta:15` (global configuration + physics) and
in the :numref:`download-solution` folder (biochemistry + ecology).

.. _requirements-run:

.. rubric:: Prerequisites

The following recipe assumes that :ref:`modelinput` have been installed
as shown in :ref:`mitgcmdirs` (see :numref:`download-setup`). Running the
model further requires a computer cluster equipped with
`gcc and gfortran <https://gcc.gnu.org/wiki/GFortran>`__, or alternative
compilers, and `MPI <https://en.wikipedia.org/wiki/Message_Passing_Interface>`__
libraries for parallel computing (see
`MITgcm documentation <https://mitgcm.readthedocs.io/en/latest/>`__).
`Netcdf <https://www.unidata.ucar.edu/software/netcdf/>`__ libraries
are also useful but not required.

.. _compilerun:

.. rubric:: Compile And Run

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

   On most computer clusters, users would call ``mpiexec`` (or ``mpirun``) via
   queuing systems rather than directly from the command line. The quoted
   `linux_amd64_ifort+mpi_ice_nas` option file is geared towards an `ifort`
   compiler and the `pleiades` computer. Alternative option files for other
   compilers and computers can be found in the ``MITgcm/tools/build_options/``
   subdirectory.

.. Next subsection deals with postprocessing

.. _postprocess:

Post-Process
------------

.. include:: postprocess.inc

.. _experiment:

Experiment
----------

This section outlines methods that allow users to modify and experiment with
model settings -- this is often useful to better understand and improve upon
existing solutions.

::

    To be continued...
