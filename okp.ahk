#Requires AutoHotkey v2.0
#NoTrayIcon

KeyName := "HKCU\Software\lxvs\okp"
F1Reg := RegRead(KeyName, "F1", "")
F2Reg := RegRead(KeyName, "F2", "")
F3Reg := RegRead(KeyName, "F3", "")
F4Reg := RegRead(KeyName, "F4", "")
F5Reg := RegRead(KeyName, "F5", "")
F6Reg := RegRead(KeyName, "F6", "")
F7Reg := RegRead(KeyName, "F7", "")
F8Reg := RegRead(KeyName, "F8", "")
F9Reg := RegRead(KeyName, "F9", "")
F10Reg := RegRead(KeyName, "F10", "")
F11Reg := RegRead(KeyName, "F11", "")
F12Reg := RegRead(KeyName, "F12", "")
ProcNameReg := RegRead(KeyName, "ProcName", "WINWORD.exe")

MyGui := Gui(, "One Key Paste 0.3.0")
MyGui.AddText("right w20", "F1:")
F1 := MyGui.AddEdit("yp r3 w240", F1Reg)
MyGui.AddText("yp right w20", "F2:")
F2 := MyGui.AddEdit("yp r3 w240", F2Reg)
MyGui.AddText("xm right w20", "F3:")
F3 := MyGui.AddEdit("yp r3 w240", F3Reg)
MyGui.AddText("yp right w20", "F4:")
F4 := MyGui.AddEdit("yp r3 w240", F4Reg)
MyGui.AddText("xm right w20", "F5:")
F5 := MyGui.AddEdit("yp r3 w240", F5Reg)
MyGui.AddText("yp right w20", "F6:")
F6 := MyGui.AddEdit("yp r3 w240", F6Reg)
MyGui.AddText("xm right w20", "F7:")
F7 := MyGui.AddEdit("yp r3 w240", F7Reg)
MyGui.AddText("yp right w20", "F8:")
F8 := MyGui.AddEdit("yp r3 w240", F8Reg)
MyGui.AddText("xm right w20", "F9:")
F9 := MyGui.AddEdit("yp r3 w240", F9Reg)
MyGui.AddText("yp right w20", "F10:")
F10 := MyGui.AddEdit("yp r3 w240", F10Reg)
MyGui.AddText("xm right w20", "F11:")
F11 := MyGui.AddEdit("yp r3 w240", F11Reg)
MyGui.AddText("yp right w20", "F12:")
F12 := MyGui.AddEdit("yp r3 w240", F12Reg)
MyGui.AddText("xm", "Only active for process:")
ProcName := MyGui.AddEdit("x+m yp r1 w280", ProcNameReg)

SaveAsDefaultClick(GuiCtrlObj, Info) {
    RegWrite F1.Value, "REG_SZ", KeyName, "F1"
    RegWrite F2.Value, "REG_SZ", KeyName, "F2"
    RegWrite F3.Value, "REG_SZ", KeyName, "F3"
    RegWrite F4.Value, "REG_SZ", KeyName, "F4"
    RegWrite F5.Value, "REG_SZ", KeyName, "F5"
    RegWrite F6.Value, "REG_SZ", KeyName, "F6"
    RegWrite F7.Value, "REG_SZ", KeyName, "F7"
    RegWrite F8.Value, "REG_SZ", KeyName, "F8"
    RegWrite F9.Value, "REG_SZ", KeyName, "F9"
    RegWrite F10.Value, "REG_SZ", KeyName, "F10"
    RegWrite F11.Value, "REG_SZ", KeyName, "F11"
    RegWrite F12.Value, "REG_SZ", KeyName, "F12"
    RegWrite ProcName.Value, "REG_SZ", KeyName, "ProcName"
}

SaveAsDefault := MyGui.AddButton("x+m yp w120", "&Save as Default")
SaveAsDefault.OnEvent("Click", SaveAsDefaultClick)
MyGui.OnEvent("Close", ExitAppOnClose)
MyGui.Show()

#HotIf F1.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F1::
{
    SendText(F1.Value)
}

#HotIf F2.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F2::
{
    SendText(F2.Value)
}

#HotIf F3.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F3::
{
    SendText(F3.Value)
}

#HotIf F4.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F4::
{
    SendText(F4.Value)
}

#HotIf F5.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F5::
{
    SendText(F5.Value)
}

#HotIf F6.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F6::
{
    SendText(F6.Value)
}

#HotIf F7.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F7::
{
    SendText(F7.Value)
}

#HotIf F8.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F8::
{
    SendText(F8.Value)
}

#HotIf F9.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F9::
{
    SendText(F9.Value)
}

#HotIf F10.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F10::
{
    SendText(F10.Value)
}

#HotIf F11.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F11::
{
    SendText(F11.Value)
}

#HotIf F12.Value != "" && WinActive("ahk_exe " . ProcName.Value)
F12::
{
    SendText(F12.Value)
}

ExitAppOnClose(thisGui) {
    ExitApp 0
}
