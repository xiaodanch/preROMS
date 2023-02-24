% please run addpath_romsargif first to add path of roms_argif toolbox
%
% this is to make grid input file by roms_argif tool
%
% it contains roms_argif/Run/romstool_param.m 
% and roms_argif/Preprocessing_tools/make_grid.m
%
%                                                                  Dan Chen
%==========================================================================

%% step1. run romstool_param
%
% 1  - Configuration parameters
%      used by make_grid.m
%
%  ROMS title names and directories
%
ROMS_title  = 'roms';
ROMS_config = 'roms';
%
% Grid dimensions:
%
lonmin = 110;   % Minimum longitude [degree east]
lonmax = 150;   % Maximum longitude [degree east]
latmin =  10;   % Minimum latitudeF [degree north]
latmax =  60;   % Maximum latitude  [degree north]
%
% Grid resolution [degree]
%
dl = 1;
%
% Number of vertical Levels (! should be the same in param.h !)
%
N = 31;
%
% Vertical grid parameters (! should be the same in roms.in !)
%
theta_s    = 8.5;
theta_b    = 2.5;
hc         = 5.0;
vtransform =   2; % s-coordinate type (1: old- ; 2: new- coordinates)
%
% Minimum depth at the shore [m] (depends on the resolution,
% rule of thumb: dl=1, hmin=300, dl=1/4, hmin=150, ...)
% This affect the filtering since it works on grad(h)/h.
%
hmin = 10;
%
% Maximum depth at the shore [m] (to prevent the generation
% of too big walls along the coast)
%
hmax_coast = 100;
%
% Maximum depth [m] (cut the topography to prevent
% extrapolations below WOA data)
%
hmax = 6000;
%
%  Topography netcdf file name (ETOPO 2 or any other netcdf file
%  in the same format)
%
TOPODIR = 'path/to/roms_argif/Topo/';
topofile = [TOPODIR,'etopo2.nc'];
%
% Slope parameter (r=grad(h)/h) maximum value for topography smoothing
%
rtarget = 0.25;
%
% Number of pass of a selective filter to reduce the isolated
% seamounts on the deep ocean.
%
n_filter_deep_topo=4;
%
% Number of pass of a single hanning filter at the end of the
% smooting procedure to ensure that there is no 2DX noise in the 
% topography.
%
n_filter_final=2;
%
%  GSHSS user defined coastline (see m_map) 
%  XXX_f.mat    Full resolution data
%  XXX_h.mat    High resolution data
%  XXX_i.mat    Intermediate resolution data
%  XXX_l.mat    Low resolution data
%  XXX_c.mat    Crude resolution data
%
coastfileplot = 'coastline_i.mat';
coastfilemask = 'coastline_i_mask.mat';
%
% Objective analysis decorrelation scale [m]
% (if Roa=0: nearest extrapolation method; crude but much cheaper)
%
%Roa=300e3;
Roa=0;
%
interp_method = 'linear';         % Interpolation method: 'linear' or 'cubic'
%
makeplot     = 1;                 % 1: create a few graphics after each preprocessing step
%
%
% 2  - Generic file and directory names 
%
%  ROMS input netcdf files directory
%
ROMS_files_dir= 'path/to/where/save/your/input/gridfile/'; 
eval(['!mkdir ',ROMS_files_dir])
%
% ROMS file names (grid)
%
grdname  = [ROMS_files_dir,'roms_grd.nc'];

%% step2. run make_grid of roms_argif toolbox
make_grid
