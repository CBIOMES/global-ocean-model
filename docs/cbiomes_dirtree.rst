
::

   MITgcm/
     model/   (MITgcm core code)
     pkg/
       gud/   (bgc + ecosystem modules)
       + other subdirectories
     mysetups/
       CBIOMES/
         code/                 (compile-time settings)
         input/                (run-time settings)
         tools/                (shell and other scripts)
         inputs_drwn3/         (binary model input)
         forcing_baseline2/    (binary model input)
         inputs_baseline2/     (binary model input)
         + other subdirectories
     tools/
       genmake2        (makefile generation script)
       build_options   (various compiler options)
       + other subdirectories
     + other subdirectories
