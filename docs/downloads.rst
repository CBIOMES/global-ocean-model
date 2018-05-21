
.. _downloads:

Download / Analyze
******************

This section provides directions to download `CBIOMES-global` output (:numref:`download-solution`), model setups to re-run `CBIOMES-global` solutions (:numref:`download-setup`), and tools to manipulate `CBIOMES-global` fields (:numref:`download-analysis`).

.. _download-solution:

Download Ouput
--------------

.. include:: cbiomes_output.rst

.. _download-setup:

Download Model
--------------

.. include:: cbiomes_setup.rst

The :ref:`mitgcmdirs` is shown below. While organizing the downloaded directories differently is certainly possible, the :numref:`rerun-alpha-version` instructions to :ref:`baseline` the model is based on this organization.

.. _mitgcmdirs:

.. rubric:: Recommended Directory Organization

.. include:: cbiomes_dirtree.rst

.. _download-analysis:

Download Tools
--------------

The `gcmfaces` toolbox :cite:`for-eta:15` can be used to manipulate inputs and outputs on the model's native grid, which users may have either been downloaded (:numref:`download-solution`) or generated themselves (:numref:`rerun-alpha-version`). From the command line, you can install either the `Matlab` version by executing:

::

    git clone https://github.com/gaelforget/gcmfaces

or the `Octave` version by executing:

::

    git clone -b octave https://github.com/gaelforget/gcmfaces

For more information about `gcmfaces`, please consult `its user guide <http://gcmfaces.readthedocs.io/en/latest/>`__.

