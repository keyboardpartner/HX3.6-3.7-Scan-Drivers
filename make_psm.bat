echo off
echo Assemble and convert PSM file given as argument for use with VScode Task Runner
if exist %~n1.psm (
  kcpsm6 "%1"
  type KCPSM6_session_log.txt
  hex2dat_kcpsm6 %~n1.hex 2
  del .\bin\scan_%~n1.dat
  copy %~n1.dat .\bin\scan_%~n1.dat
  copy %~n1.fmt %~n1.psm
  copy midi_io.fmt midi_io.psm
  copy states.fmt states.psm
  copy timers.fmt timers.psm
  copy registers.fmt registers.psm
  copy init.fmt init.psm
  copy events_mpx.fmt events_mpx.psm
  del *.fmt
  del *.log
  del *.hex
  del *.dat
) else (
  echo #########################################
  echo ERROR: file %~n1.psm not found!
  echo #########################################
  exit 1
)
