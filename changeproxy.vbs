Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd /c inetcpl.cpl"
WScript.Sleep 500
WshShell.SendKeys"^{Tab}^{Tab}^{Tab}^{Tab}{L}"
WScript.Sleep 500
WshShell.SendKeys "{s}{Tab}{enter}"
WScript.Sleep 500
WshShell.SendKeys"{a}(%{F4})"