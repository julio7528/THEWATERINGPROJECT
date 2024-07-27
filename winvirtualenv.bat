@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

:: Define arrays for messages and commands
SET "tasks[0]=py --version >nul 2>&1"
SET "success_msg[0]=INFO: Python installed."
SET "error_msg[0]=ERROR: Python is not installed. Please install Python and try again."
SET "exit_code[0]=1"

SET "tasks[1]=python.exe -m pip install --upgrade pip"
SET "success_msg[1]=INFO: pip upgraded."
SET "error_msg[1]=ERROR: Failed to upgrade pip."
SET "exit_code[1]=1"

SET "tasks[2]=python.exe -m pip install --upgrade wheel"
SET "success_msg[2]=INFO: wheel upgraded."
SET "error_msg[2]=ERROR: Failed to upgrade wheel."
SET "exit_code[2]=1"

SET "tasks[3]=py -m pip install virtualenvwrapper-win --force-reinstall --user"
SET "success_msg[3]=INFO: virtualenvwrapper-win installed successfully."
SET "error_msg[3]=ERROR: Failed to install virtualenvwrapper-win."
SET "exit_code[3]=1"

SET "tasks[4]=py -m venv venv"
SET "success_msg[4]=INFO: Virtual environment created successfully."
SET "error_msg[4]=ERROR: Failed to create virtual environment."
SET "exit_code[4]=1"

FOR /L %%i IN (0,1,4) DO (
    ECHO Executing task %%i...
    CALL !tasks[%%i]!
    IF !ERRORLEVEL! NEQ 0 (
        ECHO !error_msg[%%i]!
        EXIT /B !exit_code[%%i]!
    ) ELSE (
        ECHO !success_msg[%%i]!
    )
    ECHO ----------------------------------------------------------------
)

:: Check if the virtual environment was created successfully
ECHO Checking if the virtual environment was created...
IF EXIST venv (
    ECHO INFO: Virtual environment exists.
) ELSE (
    ECHO ERROR: Failed to create virtual environment.
    EXIT /B 1
)
ECHO ----------------------------------------------------------------

ENDLOCAL

ECHO INFO: *** You may now use virtualenv commands in your command shell. ***
ECHO INFO: virtualenv commands:
ECHO INFO:   *  "mkvirtualenv [ENV_NAME]"  -  Create a Python virtual environment
ECHO INFO:   *  "deactivate"               -  Exit the current virtual environment
ECHO INFO:   *  "workon [ENV_NAME]"        -  Enter an existing virtual environment
ECHO INFO:   *  "lsvirtualenv" OR "workon" -  List all virtual environments
ECHO INFO:   *  "rmvirtualenv [ENV_NAME]"  -  Delete a virtual environment
ECHO INFO: Example:
ECHO INFO:       mkvirtualenv seleniumbase
ECHO INFO:       mkvirtualenv seleniumbase --python=[PATH_TO_PYTHON]
ECHO ----------------------------------------------------------------
ECHO INFO: Execute file "workon.bat" to activate the virtual environment
ECHO ----------------------------------------------------------------