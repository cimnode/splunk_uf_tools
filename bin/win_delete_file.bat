@ECHO OFF
SET FILE_TO_CONFIRM=%~1
SET FILE_TO_DELETE=%~2

IF [%1] == [] (
    ECHO PARAMETER 1, FILE TO CONFIRM, NOT SET
    GOTO:EOF
) 
IF [%2] == [] (
    ECHO PARAMETER 2, FILE TO DELETE, NOT SET
    GOTO:EOF
)
ECHO CONFIRM:%FILE_TO_CONFIRM%
ECHO DELETE:%FILE_TO_DELETE%
IF EXIST "%FILE_TO_CONFIRM%" (
    IF EXIST "%FILE_TO_DELETE%"  (
        DEL "%FILE_TO_DELETE%"
        IF EXIST "%FILE_TO_DELETE%" (
	  ECHO ERROR: FAILURE TO REMOVE
	) ELSE (
	  ECHO FILE DELETED
        )
	GOTO:EOF
    ) ELSE (
        ECHO FILE TO DELETE NO FOUND.
        GOTO:EOF
    )
) ELSE (
  ECHO FILE TO CONFIRM NOT FOUND.
)