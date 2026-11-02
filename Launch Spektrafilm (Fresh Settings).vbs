Option Explicit

Dim fso, shell, repo, pythonw, launcher
Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

repo = fso.GetParentFolderName(WScript.ScriptFullName)
pythonw = repo & "\.venv\Scripts\pythonw.exe"
launcher = repo & "\launch_spektrafilm_fresh.pyw"

If Not fso.FileExists(pythonw) Then
    MsgBox "The project Python environment was not found. Set up .venv before launching Spektrafilm.", vbExclamation, "Spektrafilm"
    WScript.Quit 1
End If

If Not fso.FileExists(launcher) Then
    MsgBox "The Spektrafilm launcher script was not found.", vbCritical, "Spektrafilm"
    WScript.Quit 1
End If

shell.CurrentDirectory = repo
shell.Run """" & pythonw & """ """ & launcher & """", 0, False
