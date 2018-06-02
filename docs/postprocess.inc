
This section documents a set of methods that can be used to post-process model
output. Topics include interpolation to any location, netcdf
formatting, and standard diagnostic methods.

.. _requirements-postprocess:

.. rubric:: Required Computational Environment

- `Matlab <https://www.mathworks.com/products/matlab.html>`__ (pro) or `Octave <https://www.gnu.org/software/octave/>`__ (free)
- `gcmfaces <http://gcmfaces.readthedocs.io/en/latest/>`__ (see :ref:`download-tools`)
- `Netcdf <https://www.unidata.ucar.edu/software/netcdf/>`__ (usually pre-installed).

.. _interpolate:

Interpolate
+++++++++++

The following program reads in binary output from `MITgcm/pkg/diagnostics/` and interpolates it to a regular :math:`1/2\times1/2^\circ` `lat-long` grid.

::

    To be continued...

.. _reformat:

Reformat
++++++++

The following program reads in binary output from `MITgcm/pkg/diagnostics/` (or from :numref:`interpolate` in the second example) and reformats it as `nctiles` file collections :cite:`for-eta:15` or individual `Netcdf <https://www.unidata.ucar.edu/software/netcdf/>`__ files (in the second example).
In both examples, the generated files follow `Netcdf CF  conventions <http://cfconventions.org/>`__. Hence, they are ready for ingestion in various software (e.g., `Panoply <https://www.giss.nasa.gov/tools/panoply/>`__).

::

    To be continued...

.. _analyze:

Analyze
+++++++

The following program reads in binary output from `MITgcm/pkg/diagnostics/` or
from :ref:`reformat` (without interpolation) and generates series of standard
plots (parts of the `solution booklet`).

::

    To be continued...
