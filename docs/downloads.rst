
.. _downloads:

Downloads
*********

The following recipes allow users to download `CBIOMES-global` model output
(:numref:`download-solution`), tools to manipulate this output
(:numref:`download-tools`), and the `CBIOMES-global` model setup
(:numref:`download-setup`).

.. _download-solution:

Output
------

.. include:: cbiomes_output.rst

.. _download-tools:

Tools
-----

Accurate computational workflows often require native grid output rather
than interpolated output. Manipulation of native grid output,
which users may have either downloaded (:numref:`download-solution`) or
generated themselves (:numref:`rerun-alpha-version`), is facilitated by the
`gcmfaces <http://gcmfaces.readthedocs.io/en/latest/>`__ toolbox :cite:`for-eta:15`.
This toolbox is available for `Matlab <https://www.mathworks.com/products/matlab.html>`__
(proprietary) and `Octave <https://www.gnu.org/software/octave/>`__
(free); it can be downloaded as follows:

::

    git clone -b nctilesdev https://github.com/gaelforget/gcmfaces

The :numref:`visualize-alpha-version` and :numref:`postprocess` applications
rely on `gcmfaces <http://gcmfaces.readthedocs.io/en/latest/>`__ along with
`CBIOMES`-specific codes which can in turn be downloaded as follows:

::

    git clone https://github.com/darwinproject/tmp_code_devel CBIOMES-tools
    git clone https://github.com/gaelforget/CBIOMES CBIOMES-setup

.. note::

   The `nctilesdev` and `Octave` branches should soon get merged into the
   `Master` branch.

.. _download-setup:

Model
-----

The :numref:`rerun-alpha-version` recipes to :ref:`compilerun` the ocean model
allow users to reproduce `CBIOMES-global` solutions. This requires the
ocean model :ref:`modelinput` (surface boundary conditions, initial
conditions, grid, etc.). Provided scripts, `dowload_setup.sh` and
`dowload_input.sh`, download these various elements along
with the :numref:`download-tools` tools and organize directories as
expected by the :numref:`rerun-alpha-version` recipes (:ref:`mitgcmdirs`).

.. _modelinput:

.. rubric:: Code, Setup, And Input

.. include:: cbiomes_setup.rst

.. _mitgcmdirs:

.. rubric:: Recommended Directory Organization

.. include:: cbiomes_dirtree.rst

.. note::

   `inputs_drwn3/` is not currently installed by `dowload_input.sh` even though
   it is needed for the biochemistry and ecology. Please contact us to get
   access to the corresponding dropbox folder and place its content as
   shown in :ref:`mitgcmdirs`.
