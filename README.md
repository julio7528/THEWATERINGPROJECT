# THEWATERINGPROJECT
File: winvirtualenv.bat and workon.bat

Virtual Environment Setup Guide
This guide provides step-by-step instructions on setting up a Python virtual environment using the provided batch script.

Prerequisites:
Ensure Python is installed on your system.
Add Python to your system's PATH variable if not already done.
Steps:
Check Python Installation - Verifies if Python is installed on your system.
Upgrade Pip - Upgrades pip to the latest version.
Upgrade Wheel - Upgrades the wheel package.
Install Virtualenvwrapper-win - Installs virtualenvwrapper-win for managing virtual environments.
Create a Virtual Environment - Creates a virtual environment named venv.
Verify Virtual Environment Creation - Checks if the virtual environment was created successfully.
Usage:
After running the script, you can use the following commands to manage your virtual environments:

Create a Virtual Environment: mkvirtualenv [ENV_NAME] - Creates a new virtual environment with the specified name.
Deactivate: deactivate - Exits the current virtual environment.
Work on a Virtual Environment: workon [ENV_NAME] - Activates an existing virtual environment.
List All Virtual Environments: lsvirtualenv OR workon - Lists all the available virtual environments.
Remove a Virtual Environment: rmvirtualenv [ENV_NAME] - Deletes the specified virtual environment.