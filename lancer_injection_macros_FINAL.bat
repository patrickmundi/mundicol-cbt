@echo off
REM Script .BAT final pour exécuter le VBS avec message de confirmation

set VBS_SCRIPT=activer_macros_et_lier_boutons_FINAL.vbs
set XLSM_FILE=Mundicol_CBT_Questions_With_Buttons_and_Data.xlsm

cscript //nologo "%~dp0%VBS_SCRIPT%" "%~dp0%XLSM_FILE%"
pause