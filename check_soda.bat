rem /bin/bash

:: This batch file is set to run after my local computer's startup has finished

:: Go to the appropriate directory
cd "C:/Users/jacob/Desktop/Jacob_desktop/Code/Repos/soda-analysis"

:: The directory has a virtual environment that is responsible for running the python script
pipenv run python check_soda.py

:: Print for compeletion
ECHO "Soda Intake Updated"

:: Leave the window open until user's keystroke
pause