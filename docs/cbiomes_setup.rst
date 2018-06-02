
Users can donwload the numerical model and its global setup as follows:

::

    git clone --branch cube92 git://gud.mit.edu/gud-dev
    git clone https://github.com/gaelforget/CBIOMES
    mv gud-dev MITgcm
    mkdir MITgcm/mysetups
    mv CBIOMES MITgcm/mysetups/.

Re-running the model solution from :numref:`download-solution` (see
:numref:`rerun-alpha-version` for directions) additionally requires air-sea
forcing input (96G), initial conditions, grid, etc. input (610M), and
observational data to evaluate the accuracy of solutions (25G).
These can be downloaded as follows:

::

    cd MITgcm/mysetups/CBIOMES
    wget --recursive ftp://mit.ecco-group.org/ecco_for_las/version_4/release2/input_forcing/
    wget --recursive ftp://mit.ecco-group.org/ecco_for_las/version_4/release2/input_init/
    wget --recursive ftp://mit.ecco-group.org/ecco_for_las/version_4/release2/input_ecco/
    mv mit.ecco-group.org/ecco_for_las/version_4/release2/input_forcing forcing_baseline2
    mv mit.ecco-group.org/ecco_for_las/version_4/release2/input_ecco inputs_baseline2
    mv mit.ecco-group.org/ecco_for_las/version_4/release2/input_init inputs_baseline2/.
