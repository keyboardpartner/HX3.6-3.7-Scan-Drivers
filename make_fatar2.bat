echo Assemble and convert hx_fatar2.psm
kcpsm6 hx_fatar2.psm
hex2dat_kcpsm6 hx_fatar2.hex 2
del scanfatr.dat
copy hx_fatar2.dat .\bin\scanfatr.dat
copy hx_fatar2.fmt hx_fatar2.psm
copy midi_io.fmt midi_io.psm
del *.fmt
del *.hex
del *.log
del *.dat
