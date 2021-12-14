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
Loop
{
    Rainbow := 
    MsgBox, 0, , OK to delete Rainbow.txt
    FileDelete, C:\Format_Dread\Rainbow.txt
    Red := 255
    Blue := 0
    Green := 0
    x := 0
    InputBox, Text, Type text in, , , 600, 300
    WinActivate, Type text in
    Sleep, 333
    StringLen, Length, Text
    Inc := (255/(Length/3))
    Increment := floor(Inc)
    Cyc := (255/Increment)
    Cycles := (Floor(Cyc))+.1
    While Cycles>A_Index
    {
        Gosub, DecToHex
        Red := Red-Increment
        Green := Green+Increment
    }
    Red := 0
    Blue := 0
    Green := 255
    While Cycles>A_Index
    {
        Gosub, DecToHex
        Blue := Blue+Increment
        Green := Green-Increment
    }
    Red := 0
    Blue := 255
    Green := 0
    While Cycles>A_Index
    {
        Gosub, DecToHex
        Red := Red+Increment
        Blue := Blue-Increment
    }
    MsgBox, 0, , 
    (LTrim
    Last Loop Stats
    Length--%Length%
    Letters Processed %x%
    If Letters Procesed is < Length add a character.
    Output to ColorCycling.txt 
    %Rainbow%
    Cycles--%Cycles%
    Inc--%Inc%
    Increment---%Increment%
    Cyc---%Cyc%
    [color=#%Redhex%%Bluehex%%Greenhex%]%RBtext%[/color]
    red %Red% ---%Redhex%
    blue %Blue%---%Bluehex%
    green %Green%----%Greenhex%
    
    )
    FileAppend, %Rainbow%, C:\Format_Dread\Rainbow.txt
    FileCopy, C:\Format_Dread\Rainbow.txt, C:\Format_Dread\ColorCycling.txt
}
DecToHex:
x := x+1
RBText := SubStr(Text, x, 1)
Redhex := Format("{:02X}", Red)
Bluehex := Format("{:02X}", Blue)
Greenhex := Format("{:02X}", Green)
Rain := "[color=#" RedhexGreenhexBluehex "]" RBtext "[/color]"
Rainbow := RainbowRain
Return
Return

