#Requires AutoHotkey v2.0
#NoTrayIcon

MyGui := Gui(, "WINWORD One Key Paste 0.2.0")
MyGui.AddText(, "F2:")
F2 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F5:")
F5 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F6:")
F6 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F7:")
F7 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F9:")
F9 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F10:")
F10 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F11:")
F11 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F12:")
F12 := MyGui.AddEdit("r3 w480")
MyGui.OnEvent("Close", ExitAppOnClose)
MyGui.Show()

#HotIf WinActive("ahk_exe WINWORD.exe")
F2::
{
    Send(F2.Value)
}

#HotIf WinActive("ahk_exe WINWORD.exe")
F5::
{
    Send(F5.Value)
}

#HotIf WinActive("ahk_exe WINWORD.exe")
F6::
{
    Send(F6.Value)
}

#HotIf WinActive("ahk_exe WINWORD.exe")
F7::
{
    Send(F7.Value)
}

#HotIf WinActive("ahk_exe WINWORD.exe")
F9::
{
    Send(F9.Value)
}

#HotIf WinActive("ahk_exe WINWORD.exe")
F10::
{
    Send(F10.Value)
}

#HotIf WinActive("ahk_exe WINWORD.exe")
F11::
{
    Send(F11.Value)
}

#HotIf WinActive("ahk_exe WINWORD.exe")
F12::
{
    Send(F12.Value)
}

ExitAppOnClose(thisGui) {
    ExitApp 0
}
