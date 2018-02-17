@echo off
cd %~dp0
rem if exist pksvui.exe goto ex
rem echo There is no PKSV here. Please move this to your PKSV folder.
rem goto end
:ex
reg add HKCR\.pks /f
reg add HKCR\.pks /d PKSVScript /t REG_SZ /ve /f
reg add HKCR\PKSVScript /f
reg add HKCR\PKSVScript /ve /d "Skrip kompilator PKSV" /t REG_SZ /f
reg add HKCR\PKSVScript\DefaultIcon /ve /d "%CD%\pksvui.exe,2" /t REG_SZ /f

reg add HKCR\PKSVScript\shell /ve /d edit /t REG_SZ /f
reg add HKCR\PKSVScript\shell\edit /ve /d "&Edit" /t REG_SZ /f
set asd=""%%1""
reg add HKCR\PKSVScript\shell\edit\command /ve /d "%CD%\pksvui.exe %asd%" /t REG_SZ /f

:end
msg * terasosiasi !