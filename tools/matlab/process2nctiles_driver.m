function []=process2nctiles_driver(rundir);

tileSize=[30 30];
dirDiags=[rundir '/diags/'];

fileDiags='surf_2d_set1';
selectFld={'rmud','Rirr001','Rirr002',...
           'Rirr003','Rirr004','Rirr005','Rirr006','Rirr007',...
           'Rirr008','Rirr009','Rirr010','Rirr011','Rirr012','Rirr013'};

%fileDiags='ptr_3d_set1'; selectFld=PTRACERS_varnames;
%fileDiags='gud_3d_set1'; selectFld={'PP','Nfix','Denit','PAR','PARF'};
%fileDiags='state_2d_set1'; selectFld={'ETAN','SIarea','SIheff','SIhsnow',...
%          'PHIBOT','sIceLoad','MXLDEPTH','SIatmQnt','SIatmFW','oceQnet','oceFWflx'};
%fileDiags='state_3d_set1'; selectFld={'THETA','SALT','DRHODR'};

%fileDiags='state_2d_set3'; selectFld={'oceQsw','SFLUX','oceSPflx'};
%fileDiags='various_2d_set1'; selectFld='';
%fileDiags='various_3d_set1'; selectFld='';
%fileDiags='nut_3d_set1'; selectFld='';
%fileDiags='iop_3d_set1'; selectFld='';
%fileDiags='iop_3d_set2'; selectFld='';

process2nctiles(dirDiags,fileDiags,selectFld,tileSize);

