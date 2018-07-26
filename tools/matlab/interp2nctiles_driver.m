function []=interp2nctiles_driver(rundir);

dirDiags=[pwd '/diags_interp/'];

selectFld=dir(dirDiags); selectFld={selectFld(:).name};
jj=find(~strcmp(selectFld,'.')&~strcmp(selectFld,'..')&~strcmp(selectFld,'README')...
       &~strcmp(selectFld,'available_diagnostics.log')&~strcmp(selectFld,'nctiles_tmp'));
selectFld={selectFld{jj}};

interp2nctiles(dirDiags,selectFld);

