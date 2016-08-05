#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode, 2
SendLevel 0
global CxPressed := 0

#IfWinNotActive emacs
{

^x::
	CxPressed = 1
return

^g::
	CxPressed = 0
	SendInput, {Esc}
return


$^s::
	if CxPressed 
	{
		SendInput, ^s
		CxPressed = 0
	}
	else
	{
		SendInput, ^f
	}
return


^n::
	SendInput, {down}
return 


^p::
	SendInput, {up}
return


^a::
	SendInput, {Home}
return


^e::
	SendInput, {End}
return


^f::
	SendInput, {right}
return


^b::
	SendInput, {left}
return


!w::
	SendInput, ^c
return


^w::
	SendInput, ^x
return

^y::
	SendInput, ^v
return

}

#IfWinActive emacs


^Space::
	SendInput, ^@
return


#IfWinActive