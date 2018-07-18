
.. _downloads:

Download
********

The following recipes download `CBIOMES-global` model output
(:numref:`download-solution`), tools to manipulate model output
(:numref:`download-tools`), and the `CBIOMES-global` model setup
(:numref:`download-setup`).

.. _download-solution:

Download Ouput
--------------

.. include:: cbiomes_output.rst

.. _download-tools:

Download Tools
--------------

For applications that require accurate diagnostic computations, native grid
output can be preferable to interpolated output. To manipulate native grid
output, which users may either have downloaded (:numref:`download-solution`)
or generated themselves (:numref:`rerun-alpha-version`), one can use the
`gcmfaces <http://gcmfaces.readthedocs.io/en/latest/>`__ toolbox :cite:`for-eta:15`
with `Matlab <https://www.mathworks.com/products/matlab.html>`__ (pro) or
`Octave <https://www.gnu.org/software/octave/>`__ (free).
Examples of `gcmfaces`-based worflows are documented in :numref:`postprocess`.
For more information about `gcmfaces`, please consult
`its user guide <http://gcmfaces.readthedocs.io/en/latest/>`__.

To download the `Matlab <https://www.mathworks.com/products/matlab.html>`__
version of `gcmfaces <http://gcmfaces.readthedocs.io/en/latest/>`__ proceed
as follows:

::

    git clone https://github.com/gaelforget/gcmfaces

To instead download the `Octave <https://www.gnu.org/software/octave/>`__ version
of `gcmfaces <http://gcmfaces.readthedocs.io/en/latest/>`__ proceed as follows:

::

    git clone -b octave https://github.com/gaelforget/gcmfaces

:numref:`postprocess` originally relied on the `nctilesdev` version
which could be downloaded as follows:

::

    git clone -b nctilesdev https://github.com/gaelforget/gcmfaces

.. note::

   The `Octave` and `nctilesdev` branches should soon get merged into the
   main branch.


.. _download-setup:

Download Model
--------------

The :numref:`rerun-alpha-version` recipe to :ref:`compilerun` the model
in order to reproduce the output in :numref:`download-solution` assume that
:ref:`modelinput` have been downloaded and organized as follows:

.. _mitgcmdirs:

.. rubric:: Recommended Directory Organization

.. include:: cbiomes_dirtree.rst

.. _modelinput:

.. rubric:: Code, Setup, And Input

.. include:: cbiomes_setup.rst
