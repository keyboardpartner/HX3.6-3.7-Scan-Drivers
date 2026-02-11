echo off
echo Assemble and convert PSM file given as argument for use with VScode Task Runner
if exist %~n1.psm (
  kcpsm6 %1 %~n1.hex -c2047
  type KCPSM6_session_log.txt
  hex2dat_kcpsm6 %~n1.hex 2
  copy %~n1.dat scan_%~n1.dat
  copy %~n1.fmt %~n1.psm
  copy midi_io.fmt midi_io.psm
  del *.fmt
  del *.log
  del *.hex
) else (
  echo #########################################
  echo ERROR: file %~n1.psm not found!
  echo #########################################
  exit 1
)
