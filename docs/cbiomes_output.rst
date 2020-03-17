
The `CBIOMES-global (alpha version)` monthly climatology has been interpolated
to a :math:`1/2\times1/2^\circ` grid (see :ref:`interpolate`) and converted to
`Netcdf <https://www.unidata.ucar.edu/software/netcdf/>`__ files (see
:ref:`reformat`) that can readily be visualized using any `Netcdf`-enabled
software (e.g., `Panoply <http://www.giss.nasa.gov/tools/panoply/>`__
under `Windows`, `Linux`, or `macOS`). It is available via:

- The `MIT-CBIOMES opendap <http://engaging-opendap.mit.edu:8080/las/>`__ (e.g. visit `this page <http://engaging-opendap.mit.edu:8080/las/UI.vm#panelHeaderHidden=false;differences=false;autoContour=false;xCATID=3C6AA795DF3E9F4E1208CEFE8341F298;xDSID=id-ab2a4e0c65;varid=MXLDEPTH-id-cdfa319965;imageSize=auto;over=xy;compute=Nonetoken;tlo=15-Jan-1992%2000:00;thi=15-Jan-1992%2000:00;catid=3C6AA795DF3E9F4E1208CEFE8341F298;dsid=id-ab2a4e0c65;varid=MXLDEPTH-id-cdfa319965;avarcount=0;xlo=-180;xhi=180;ylo=-90;yhi=90;operation_id=Plot_2D_XY_zoom;view=xy>`__)
- The `Simons CMAP data service <https://cmap.readthedocs.io/en/latest/>`__ (go to `this page <https://cmap.readthedocs.io/en/latest/catalog/datasets/Darwin_clim.html#darwin-clim>`__)

These servers can be accessed programatically. See e.g. `notebooks/DarwinCmap* <https://github.com/gaelforget/MarineEcosystemNotebooks>`__ for cmap examples in Python and Julia.
Or one can use `opendap <https://en.wikipedia.org/wiki/OPeNDAP>`__ e.g. in `Julia <https://en.wikipedia.org/wiki/Julia_%28programming_language%29>`__ as follows:

::

    using NCDatasets, Plots
    function test_opendapp()
    srv="http://engaging-opendap.mit.edu:8080/thredds/dodsC/las/id-fba1de9aef/"
    fil="data_usr_local_tomcat_content_cbiomes_20200206_17_NutrientTendencies_gTr01.0001.nc.jnl"
    test=Dataset(srv*fil)
    tmp=test["gTr01"][:,:,1,1]
    tmp[findall(tmp.<=-0.99e34)].=NaN
    return tmp
    end
    heatmap(test_opendapp())

The underlying climatology, on the native model grid, is in turn available in `this dropbox folder <https://www.dropbox.com/sh/7c0rx3hbw80guh9/AADjAX8M-5nPzyYoDOzMKDzxa?dl=0>`__
which contains additional documentation like the `solution booklet` that extensively depicts `CBIOMES-global (alpha version)` and native grid output that allows for accurate computational analyses (see :numref:`download-tools` and :numref:`postprocess`).
