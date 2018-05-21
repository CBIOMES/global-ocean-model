
.. _runs:

Rerun / Modify
**************

This section explains how the `MITgcm` can be used to re-run `CBIOMES-global (alpha version)` over the 1992–2011 period (:numref:`rerun-alpha-version`).

.. _computers:

.. rubric:: Required Computational Environment

Running the model on a linux cluster requires `gcc` and `gfortran` (or alternative compilers), `mpi` libraries (for parallel computation), and `netcdf` libraries (e.g., for the `profiles` package) as explained in the `MITgcm documentations <http://mitgcm.org/public/docs.html>`__.

.. _rerun-alpha-version:

Rerun Model
-----------

This section assumes that `MITgcm`, the `CBIOMES-global` setup, and model inputs have been installed according to the :ref:`mitgcmdirs` (see :numref:`download-setup`). Users can then :ref:`baseline` the model to reproduce `CBIOMES-global (alpha version)`.

.. _baseline:

.. rubric:: Compile, Link, And Run

::

    #1) compile model
    cd MITgcm/mysetups/CBIOMES/build
    ../../../tools/genmake2 -mods=../code -optfile \
         ../../../tools/build_options/linux_amd64_gfortran -mpi
    make depend
    make -j 4
    cd ..

    #2) link files into run directory
    mkdir run
    cd run
    ln -s ../build/mitgcmuv .
    ln -s ../input/* .
    ln -s ../inputs_baseline2/input*/* .
    ln -s ../forcing_baseline2 .

    #3) run model
    mpiexec -np 360 ./mitgcmuv

.. note::

   On most clusters, users would call ``mpiexec`` (or ``mpirun``) via a queuing system rather than directly from the command line. Other compiler options, besides ``linux_amd64_gfortran``, are provided by the `MITgcm` development team in ``MITgcm/tools/build_options/`` for cases when `gfortran` is not available.

.. note::

   The above is not quite complete -- need to add biogeochemistry and ecosystem forcing. Also: still need to add `pleiades` and `AWS` recipes.

