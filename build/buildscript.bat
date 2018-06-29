call "build\getkdb.bat" || goto :error


if not defined QLIC_KC (
 goto :nokdb
)


set PATH=C:\Miniconda3-x64;C:\Miniconda3-x64\Scripts;%PATH%
mkdir embedpy
cd embedpy
echo getembedpy"latest" | q ..\build\getembedpy.q -q || goto :error
cd ..
exit /b 0

:error
echo failed with error %errorLevel%
exit /b %errorLevel%

:nokdb
echo no kdb
exit /b 0
