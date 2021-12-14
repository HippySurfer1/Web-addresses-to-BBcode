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
Address := "a"
x := 0
InputBox, Color, Enter a colour, Enter a Label color, , 400, 300
InputBox, DesCol, Enter a colour, Enter a Description color, , 400, 300
Loop, Read, C:\Format_Dread\Web.txt
{
    x := x+1
    FileReadLine, Address, C:\Format_Dread\Web.txt, %x%
    MsgBox, 0, Think of a name and description, 
    (LTrim
    %Address%
    
    x  %x%
    )
    InputBox, Label, Link name, A link label for %Address%, , 300, 200
    InputBox, Description, Site Description, A description for %Address%, , 400, 200
    Formatted := 
    (LTrim
    "[color=" Color "][*][/color][url=" Address "][color=" Color "]" Label "[/url][/color][color=" DesCol "]-----" Description "[/color]
    "
    )
    FileAppend, %Formatted%, C:\Format_Dread\Formatted.txt
}
FileAppend, [/list], Formatted.txt
Return

