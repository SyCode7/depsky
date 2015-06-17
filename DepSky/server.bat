@ECHO OFF
CLS
TITLE server running at port 5555
ECHO.
ECHO.
ECHO.
pause


java -cp bin;lib/DepSkyDependencies.jar depskys.clouds.drivers.localStorageService.ServerThread


