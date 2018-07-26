function []=process2interp_driver(rundir,varargin);
% process2interp_driver(rundir,listFiles) calls process2interp for 
%   pkg/diagnostics output located in [rundir '/diags/']. Calling
%   process2interp_driver(rundir) will use the hard-coded default list of
%   file names that will be displayed to screen. Calling process2interp_driver
%   without any argument will additionally use the rundir default ('run/').   

if isempty(who('rundir')); rundir=[pwd filesep 'run' filesep]; end;
if nargin<=1; 
    help process2interp_driver;
    listFiles={'state_2d_set1','surf_2d_set1','various_2d_set1','state_2d_set3',...
               'state_3d_set1','ptr_3d_set1','gud_3d_set1','various_3d_set1',...
               'state_2d_set3','nut_3d_set1','iop_3d_set1','iop_3d_set2'};
elseif nargin==2&&iscell(varargin{1}); listFiles=varargin{1};
else; listFiles={varargin{:}};
end;

%%

dirDiags=[rundir '/diags/'];
fprintf(['\n To start processing the following files in \n ' dirDiags '\n']);
pause(2); display(listFiles);
fprintf(['\n Please hit return.\n']);
pause;

%%

gcmfaces_global;
if isempty(mygrid);
    fprintf(['loading grid from ' rundir '\n']);
    grid_load(rundir,5,'compact');
end;

%%

for ff=1:length(listFiles);
  fileDiags=listFiles{ff};
  if isempty(dir([dirDiags fileDiags '*'])); 
      fprintf(['skipping ' fileDiags ' (no file was found)\n']);
      continue; 
  end;
  [listInterp,listNot]=process2interp(dirDiags,fileDiags);
  process2interp(dirDiags,fileDiags,listInterp);
end;

