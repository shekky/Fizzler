@echo off
pushd "%~dp0"
call :main %*
popd
goto :EOF

:main
    call build ^
 && call :test Debug ^
 && call :test Release
goto :EOF

:test
dotnet test --no-build src\Fizzler.Tests -c %1
goto :EOF
