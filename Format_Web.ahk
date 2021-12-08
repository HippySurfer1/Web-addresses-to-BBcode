; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


F3::
Macro1:
FileDelete, C:\Format_Dread\Formatted.txt
FileAppend, [list], Formatted.txt
InputBox, Color, Enter a colour, , , 400, 300
x := 0
Loop
{
    x := x+1
    FileReadLine, URL, C:\Format_Dread\Web.txt, %x%
    MsgBox, 0, Think of a name, %URL%
    InputBox, Label, Link name, , , 300, 200
    Formatted := 
    (LTrim
    "[*][url=" URL "][Color=" Color "]" Label "[/url][/color]
    "
    )
    FileAppend, %Formatted%, C:\Format_Dread\Formatted.txt
}
Until, URL:="x"
FileAppend, [/list], Formatted.txt
Return

