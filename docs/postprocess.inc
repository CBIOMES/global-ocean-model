
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

The following program reads in binary output from `MITgcm/pkg/diagnostics/` and
interpolates it to a regular :math:`1/2\times1/2^\circ` `lat-long` grid.

::

    %An example:
    dirDiags=[pwd '/diags_ALL_MDS/']; fileDiags='surf_2d_set1';
    [listInterp,listNot]=process2interp(dirDiags,fileDiags);
    process2interp(dirDiags,fileDiags,listInterp);

    %Other possible cases:
    dirDiags=[pwd '/diags_ALL_MDS/']; fileDiags='ptr_3d_set1';
    dirDiags=[pwd '/diags_ALL_MDS/']; fileDiags='gud_3d_set1';
    dirDiags=[pwd '/diags_ALL_MDS/']; fileDiags='state_2d_set1';
    dirDiags=[pwd '/diags_ALL_MDS/']; fileDiags='state_3d_set1';

.. note::

    The above is not quite complete -- should mention available_diagnostics.log,
    rename_diagnostics.mat, MITgcm's mds format, gcmfaces' nctilesdev
    github branch.

.. _reformat:

Reformat
++++++++

The following program reads in binary output from `MITgcm/pkg/diagnostics/`
(or from :numref:`interpolate` in the second example) and reformats it as
`nctiles` file collections :cite:`for-eta:15` or individual
`Netcdf <https://www.unidata.ucar.edu/software/netcdf/>`__ files (in the second
example). In both examples, the generated files follow `Netcdf CF  conventions
<http://cfconventions.org/>`__. Hence, they are ready for ingestion in various
software (e.g., `Panoply <https://www.giss.nasa.gov/tools/panoply/>`__).

::

    %First example:
    tileSize=[30 30];
    dirDiags=[pwd '/diags_ALL_MDS/'];
    fileDiags='surf_2d_set1'; selectFld={'rmud','Rirr001','Rirr002',...
              'Rirr003','Rirr004','Rirr005','Rirr006','Rirr007',...
              'Rirr008','Rirr009','Rirr010','Rirr011','Rirr012','Rirr013'};
    process2nctiles(dirDiags,fileDiags,selectFld,tileSize);

    %Second example:
    dirDiags=[pwd '/diags_ALL_INTERP/'];
    fileDiags='surf_2d_set1'; selectFld={'rmud','Rirr001','Rirr002',...
              'Rirr003','Rirr004','Rirr005','Rirr006','Rirr007',...
              'Rirr008','Rirr009','Rirr010','Rirr011','Rirr012','Rirr013'};
    interp2nctiles(dirDiags,selectFld);

    %Other possible cases:
    fileDiags='ptr_3d_set1'; selectFld=PTRACERS_varnames;
    fileDiags='gud_3d_set1'; selectFld={'PP','Nfix','Denit','PAR','PARF'};
    fileDiags='state_2d_set1'; selectFld={'ETAN','SIarea','SIheff','SIhsnow',...
     'PHIBOT','sIceLoad','MXLDEPTH','SIatmQnt','SIatmFW','oceQnet','oceFWflx'};
    fileDiags='state_3d_set1'; selectFld={'THETA','SALT','DRHODR'};

.. _analyze:

Analyze
+++++++

The following program reads in binary output from `MITgcm/pkg/diagnostics/` or
from :ref:`reformat` (without interpolation) and generates series of standard
plots (parts of the `solution booklet`).

::

    To be continued...
