rem Assemble and convert hx_scan61.psm
kcpsm6 hx_scan61.psm
hex2dat_kcpsm6 hx_scan61.hex 2
del scansr61.dat
copy hx_scan61.dat .\bin\scansr61.dat
copy hx_scan61.fmt hx_scan61.psm
del *.fmt
del *.log
del *.hex
del *.dat
