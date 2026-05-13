@echo off

set BUILDTYPE="%~1"
set ACTION="%~2"

echo dotnet build build.proj %ACTION% %BUILDTYPE%
dotnet build build.proj %ACTION% %BUILDTYPE%

pause
