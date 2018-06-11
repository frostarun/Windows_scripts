@echo off
regedit.exe /S shutdown_script.reg
regedit.exe /S shutdown_state.reg
md C:\Windows\System32\GroupPolicy\Machine\Scripts\Shutdown
xcopy scripts.ini C:\Windows\System32\GroupPolicy\Machine\Scripts /R /Y /H
xcopy sample.bat C:\Windows\System32\GroupPolicy\Machine\Scripts\Shutdown /R /Y /H
REM gpupdate /force
pause