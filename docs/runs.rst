
.. _runs:

Computations
************

This following recipes allow users to visualize CBIOMES-global (alpha version),
reproduce it using the ocean model (:numref:`rerun-alpha-version`),
post-process native grid output (:numref:`postprocess`), and
experiment with the ocean model (:numref:`experiment`).

.. _visualize-alpha-version:

Visualization
-------------

::

    To be added...

.. _rerun-alpha-version:

Model Run
---------

The following recipe will :ref:`compilerun` the ocean model as needed to
reproduce `CBIOMES-global (alpha version)`. Documentation
of the model configuration is provided in :cite:`for-eta:15` (global
grid + physics) and in the :numref:`download-solution`
climatology folder (biochemistry + ecology).

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

    #1) go to model setup directory
    cd MITgcm/mysetups/CBIOMES/

    #2) compile model in build/
    bash tools/shell/compile_model.sh

    #3) prepare run/ directory
    bash tools/shell/prep_rundir.sh

    #4) run model on 360 cores
    cd run
    mpiexec -np 360 ./mitgcmuv

.. note::

   Two modifications of this workflow can be needed depending on the computing environment.
   First, on most computer clusters, ``mpiexec`` (or ``mpirun``) is called via
   a queuing system rather than directly from the command line as shown here.
   Second, `compile_model.sh` uses an `linux_amd64_ifort+mpi_ice_nas` option
   file that suits the `ifort` compiler on the `pleiades` computer. Option files
   that may better suit other compilers and computers can be found in
   the ``MITgcm/tools/build_options/`` subdirectory.

.. Next subsection deals with postprocessing

.. _postprocess:

Processing
----------

.. include:: postprocess.inc

.. _experiment:

Experiments
-----------

This section outlines methods that allow users to modify and experiment with
model settings -- this is often useful to better understand and improve upon
existing solutions.

::

    To be continued...
