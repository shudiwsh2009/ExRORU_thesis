for /R %%F in (*.pdf) do (
	pdf2ps "%%~nF.pdf" "%%~nF.ps"
	ps2epsi "%%~nF.ps" "%%~nF.eps"
	epstopdf "%%~nF.eps"
	del "%%~nF.ps"
	del "%%~nF.eps"
)
pause