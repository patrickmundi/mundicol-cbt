@echo off
REM Script .BAT pour exécuter le script VBS corrigé

set VBS_SCRIPT=activer_macros_et_lier_boutons_CORRIGE.vbs
set XLSM_FILE=Mundicol_CBT_Questions_With_Buttons_and_Data.xlsm

cscript //nologo "%~dp0%VBS_SCRIPT%" "%~dp0%XLSM_FILE%"
pause