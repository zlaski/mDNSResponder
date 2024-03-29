set "TargetDir=%~1"
set "TargetName=%~2"

set "Bonjour=%ProgramFiles%\Bonjour"

if not exist "%Bonjour%\%TargetName%-orig.exe" copy /y "%Bonjour%\%TargetName%.exe" "%Bonjour%\%TargetName%-orig.exe"
net stop "Bonjour Service"
copy /y "%TargetDir%%TargetName%.*" "%Bonjour%\"