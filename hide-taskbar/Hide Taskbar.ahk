;; Hide Taskbar
#z::	; Win + Z 
	WinExist("ahk_class Shell_TrayWnd")

	t := !t

	If (t = "1") {
		WinHide, ahk_class Shell_TrayWnd
		WinHide, Start ahk_class Button
	} Else {
		WinShow, ahk_class Shell_TrayWnd
		WinShow, Start ahk_class Button
	}
return

;; Minimize All windows expect current one
#x:: 	; Win + X
	hWnd := WinExist("A")
	WinGet, id, list,,, Program Manager
	Loop, %id%
	{
		this_ID := id%A_Index%
		WinGetTitle, active_title, A
		WinGetTitle, title, ahk_id %this_ID%
		If title = %active_title%
 			 Continue
		WinMinimize, %title%
	}
return