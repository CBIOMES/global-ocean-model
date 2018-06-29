
.. _downloads:

Download
********

This section provides directions to download `CBIOMES-global` model output
(:numref:`download-solution`), the corresponding model setup
(:numref:`download-setup`), and tools to manipulate
model output (:numref:`download-tools`).

.. _download-solution:

Download Ouput
--------------

.. include:: cbiomes_output.rst

.. _download-setup:

Download Model
--------------

The :numref:`rerun-alpha-version` instructions to :ref:`baseline` the model
and reproduce the output in :numref:`download-solution` are based on the
:ref:`mitgcmdirs` shown below. 

.. include:: cbiomes_setup.rst

.. _mitgcmdirs:

.. rubric:: Recommended Directory Organization

.. include:: cbiomes_dirtree.rst

.. _download-tools:

Download Tools
--------------

Interpolated output from :numref:`download-solution` can readily be displayed
and analyzed using any `Netcdf <https://www.unidata.ucar.edu/software/netcdf/>`__
-enabled software such as `Panoply <http://www.giss.nasa.gov/tools/panoply/>`__
(available for `MS-Windows`, `Linux`, or `macOS`).

Output on the native model grid, which users may either download
(:numref:`download-solution`) or generate themselves
(:numref:`rerun-alpha-version`), can alternatively be displayed and
analyzed using the `gcmfaces <http://gcmfaces.readthedocs.io/en/latest/>`__
toolbox :cite:`for-eta:15`. A few standard
workflow examples are documented in :numref:`postprocess`.

Users can either install the
`Matlab <https://www.mathworks.com/products/matlab.html>`__ version of
`gcmfaces <http://gcmfaces.readthedocs.io/en/latest/>`__ as follows:

::

    git clone https://github.com/gaelforget/gcmfaces

or install the `Octave <https://www.gnu.org/software/octave/>`__ version of
`gcmfaces <http://gcmfaces.readthedocs.io/en/latest/>`__ as follows:

::

    git clone -b octave https://github.com/gaelforget/gcmfaces

For more information about `gcmfaces`, please consult
`its user guide <http://gcmfaces.readthedocs.io/en/latest/>`__.
