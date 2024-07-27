ECHO Activating the virtual environment...
SET VENV_PATH=venv\Scripts\activate
IF NOT EXIST %VENV_PATH% (
    echo Virtual environment activation script not found. Ensure the virtual environment is created.
    exit /b 1
)
CALL %VENV_PATH%
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to activate virtual environment.
    exit /b 1
)
ECHO Virtual environment activated.