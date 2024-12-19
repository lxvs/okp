#Requires AutoHotkey v2.0
#NoTrayIcon

MyGui := Gui(, "WINWORD One Key Paste 0.2.0")
MyGui.AddText(, "F1:")
F1 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F2:")
F2 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F3:")
F3 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F4:")
F4 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F5:")
F5 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F6:")
F6 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F7:")
F7 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F8:")
F8 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F9:")
F9 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F10:")
F10 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F11:")
F11 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "F12:")
F12 := MyGui.AddEdit("r3 w480")
MyGui.AddText(, "Process:")
ProcName := MyGui.AddEdit("r1 w480", "WINWORD.exe")
MyGui.OnEvent("Close", ExitAppOnClose)
MyGui.Show()

#HotIf F1.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F1::
{
    Send(F1.Value)
}

#HotIf F2.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F2::
{
    Send(F2.Value)
}

#HotIf F3.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F3::
{
    Send(F3.Value)
}

#HotIf F4.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F4::
{
    Send(F4.Value)
}

#HotIf F5.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F5::
{
    Send(F5.Value)
}

#HotIf F6.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F6::
{
    Send(F6.Value)
}

#HotIf F7.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F7::
{
    Send(F7.Value)
}

#HotIf F8.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F8::
{
    Send(F8.Value)
}

#HotIf F9.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F9::
{
    Send(F9.Value)
}

#HotIf F10.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F10::
{
    Send(F10.Value)
}

#HotIf F11.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F11::
{
    Send(F11.Value)
}

#HotIf F12.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F12::
{
    Send(F12.Value)
}

ExitAppOnClose(thisGui) {
    ExitApp 0
}
