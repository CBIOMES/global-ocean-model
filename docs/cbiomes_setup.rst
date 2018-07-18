
Re-running the ocean model solution from :numref:`download-solution` based on
the :numref:`rerun-alpha-version` recipe requires the ocean model setup (1G),
surface boundary conditions (96G), initial conditions, grid, etc. (610M),
and observational data to evaluate the model solution accuracy (25G).


The ocean model code and its global setup can be downloaded as follows:

::

    git clone --branch cube92 git://gud.mit.edu/gud-dev
    git clone https://github.com/gaelforget/CBIOMES
    mv gud-dev MITgcm
    mkdir MITgcm/mysetups
    mv CBIOMES MITgcm/mysetups/.
    mkdir MITgcm/mysetups/CBIOMES/build

For the physics, model input can be downloaded as follows:

::

    cd MITgcm/mysetups/CBIOMES
    wget --recursive ftp://mit.ecco-group.org/ecco_for_las/version_4/release2/input_forcing/
    wget --recursive ftp://mit.ecco-group.org/ecco_for_las/version_4/release2/input_init/
    wget --recursive ftp://mit.ecco-group.org/ecco_for_las/version_4/release2/input_ecco/
    mv mit.ecco-group.org/ecco_for_las/version_4/release2/input_forcing forcing_baseline2
    mv mit.ecco-group.org/ecco_for_las/version_4/release2/input_ecco inputs_baseline2
    mv mit.ecco-group.org/ecco_for_las/version_4/release2/input_init inputs_baseline2/.

.. note::

   Additional model input is needed for the biochemistry and ecology. Please
   contact us to get access to the corresponding dropbox folders (since
   they are not yet publicly available).
