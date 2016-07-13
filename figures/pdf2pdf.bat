for /R %%F in (*.pdf) do (
	pdftops "%%~nF.pdf" "%%~nF.ps"
	ps2eps "%%~nF.ps"
	epstopdf "%%~nF.eps"
	del "%%~nF.ps"
	del "%%~nF.eps"
)
pause