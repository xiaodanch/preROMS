# preROMS
prepare input file (grid, initial, ...) using roms_tool, roms_argif or roms_wilkin Matlab toolbox

to avoid code conflicts, I run "addpath_xxxx.m" of temporarily adding paths to call which toolbox I need.

## Author's Note
To run ROMS, input files (roms_grd.nc, roms_ini.nc, ...) need to be prepared. There are many reliable and comprehensive Matlab toolboxes available online that can be used to generate these files, such as [roms_tool](https://www.myroms.org/wiki/Matlab_Scripts), [roms_argif](https://www.croco-ocean.org/download-2/), and [roms_wilkin](https://github.com/johnwilkin/roms_wilkin). These tools are highly recommended, but due to my limited abilities, I couldnot utilize them to their full potential.

This repository is mainly for sharing my process of how to use the above toolboxes to generate ROMS files. Some codes of tools may be adapted (not for commercial use). For example, I prefer to use "roms_argif" for generating the grid and "roms_tool" for generating the initial file.

There may be some errors in the program. If any issues, please feel free to contact me (cxd1207944328@163.com).
