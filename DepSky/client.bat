@ECHO OFF
CLS
:START
ECHO.
ECHO.
ECHO.
SET /P Client_Id=Please enter your Client ID [1-6]:
TITLE client number %Client_Id%
ECHO.
ECHO For DepSky-Availability press 0
ECHO.
ECHO For Depsky-Confidentiality and Availability press 1
ECHO.

SET /P mode=Please enter your choice:
ECHO.
IF "%mode%"=="1" GOTO mode_1
ECHO This is DepSky availability and integrity via hash
ECHO.
ECHO.
GOTO NEXT
:mode_1
ECHO This is DepSky availability and confidentiality via hash and encryption
ECHO.
ECHO.
:next

java -cp bin;lib/DepSkyDependencies.jar;lib/commons-io-1.4.jar;lib/NewPVSS.jar;lib/JReedSolEC.jar depskys.core.LocalDepSkySClient %Client_Id% %mode%

GOTO START