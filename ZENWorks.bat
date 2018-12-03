' Batch file to automatically install python
' Move appropriate scripts into the expect location
' Execute the unidler

zac bin "Firefox"
zac bin "Python 2.7.3"
zac bin "7-zip"

Assoc .pdf
Ftype AcroExch.Document.2017="C:\Program Files (x86)\Adobe\Acrobat Reader 2017\Reader\AcroRd32.exe" %1

xcopy /s /y "H:\QuickInstall" "C:\Python27\Lib"

PowerShell.exe "C:\Python27\Lib\Setuptools_O\python.exe" "C:\Python27\Lib\Setuptools_O\setup.py" install
"C:\Python27\Lib\Pip_O\python.exe" "C:\Python27\Lib\Pip_O\setup.py" install
PowerShell.exe "C:\Python27\Lib\Requests_O\python.exe" "C:\Python27\Lib\Requests_O\setup.py" install
"C:\Python27\python.exe" "C:\Python27\Lib\unidler.py"
