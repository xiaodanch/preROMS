# How to use pre_grid.m

This is to make grid input file by roms_argif tool.

Please run addpath_romsargif to add path of roms_argif toolbox.
It contains ../roms_argif/Run/romstool_param.m and ../roms_argif/Preprocessing_tools/make_grid.m.


You can change ROMS grid configuration parameters in Section "step 1".

Remember change path **TOPODIR** (line 62), **ROMS_files_dir** (line105). 

## Notes
**TOPODIR** is the path to your topofile such as *etopo2.nc*.

**ROMS_files_dir** is the path to where save your *roms_grd.nc*.
