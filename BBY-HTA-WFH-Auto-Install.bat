@echo off
setlocal
color 0A
echo Installing Microsoft Edge
MsiExec.exe /i C:\Programs2\MicrosoftEdgeEnterpriseX64.MSI /QN
echo DONE!
timeout 1
echo Installing Apex-One
msiexec.exe /i C:\Programs2\6_agent_cloud_x64 /QN /quiet
echo DONE!
timeout 1
echo Installing Cisco Anyconnect
C:\Programs2\anyconnect-win-4.8.03036-core-vpn-webdeploy-k9.exe /quiet /norestart
echo DONE!
timeout 1
echo Installing Cisco Pre-Anyconnect
msiexec.exe /i C:\Programs2\anyconnect-win-4.8.03036-gina-predeploy-k9.MSI /QN /quiet /norestart
echo DONE!
timeout 1
echo Installing EdgeWebView2Runtime
C:\Programs2\2.MicrosoftEdgeWebView2RuntimeInstallerX64.exe /silent /install
echo DONE!
timeout 1
echo Installing Citrix 2202
C:\Programs2\3.CitrixWorkspaceApp-2202.exe /noreboot /silent ALLOWADDSTORE=N /AutoUpdateCheck=Disabled EnableCEIP=false
echo DONE!
timeout 1
echo Installing JDVI
msiexec.exe /i C:\Programs2\4.CiscoJVDIClientSetup-x86_64_14.0.msi /QN /quiet /norestart
echo DONE!
timeout 1
echo Installing Anydesk 6.3.2
C:\Programs2\anydesk.exe --install "C:\Anydesk" --start-with-win --silent --create-desktop-icon
timeout /t 5
echo Avaya123 | C:\AnyDesk\anydesk.exe --set-password
echo Done!
echo Installing 247 Remote 2.1.7
msiexec.exe /i C:\Programs2\247-Remote_2.1.9.msi /QN /quiet /norestart
echo DONE!
timeout 1
echo Installing PMT-DesktopWatcher
msiexec.exe /i C:\Programs2\PMT-DesktopWatcherSetup.msi /QN /quiet /norestart
echo DONE!
timeout 1
echo Installing 247 Remote Edge
msiexec.exe /i C:\Programs2\247RemoteEdgeSetup_1.0.3-1.msi /QN /quiet /norestart
pause
endlocal
