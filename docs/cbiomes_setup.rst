
Users can donwload the model and its global setup by typing:

::

    git clone --branch cube92 git://gud.mit.edu/gud-dev
    git clone https://github.com/gaelforget/CBIOMES
    mv gud-dev MITgcm
    mkdir MITgcm/mysetups
    mv CBIOMES MITgcm/mysetups/.

Re-running `CBIOMES-global (alpha version)` additionally requires downloading surface forcing input (96G), initial condition, grid, etc. input (610M), and observational input (25G) as follows:

::

    cd MITgcm/mysetups/CBIOMES
    wget --recursive ftp://mit.ecco-group.org/ecco_for_las/version_4/release2/input_forcing/
    wget --recursive ftp://mit.ecco-group.org/ecco_for_las/version_4/release2/input_init/
    wget --recursive ftp://mit.ecco-group.org/ecco_for_las/version_4/release2/input_ecco/
    mv mit.ecco-group.org/ecco_for_las/version_4/release2/input_forcing forcing_baseline2
    mv mit.ecco-group.org/ecco_for_las/version_4/release2/input_ecco inputs_baseline2
    mv mit.ecco-group.org/ecco_for_las/version_4/release2/input_init inputs_baseline2/.

.. note::

   The above is not quite complete -- need to add biogeochemistry and ecosystem forcing.

