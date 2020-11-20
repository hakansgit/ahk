; SetTitleMatchMode, 2 ; 2 = a partial match on the title

; ; MICROSOFT TEAMS - Toggle Mute
; F12::
; WinGet, winid, ID, A	; Save the current window ID
; if WinExist("Meeting") ;Yes, every Teams meeting has that in the title bar - even if it's not visible to you
; {
; 	WinActivate ; Without any parameters this activates the previously retrieved window - in this case your meeting
; 	Send, ^+M   ; Teams' native Mute shortcut
;         WinActivate ahk_id %winid% ; Restore previous window focus
; 	return
; }

#UseHook
F12::
;#HotkeyInterval 200

WinGet, active_id, ID, A
SetTitleMatchMode, 2
;DetectHiddenWindows, O
WinGet, fensterID, List, Meeting
Loop, %fensterID% { ; will run loop for number of windows in array
  WinActivate, % "ahk_id " fensterID%A_Index%
  Send ^+m
  Send !a
}
SoundBeep, 200, 100
WinActivate, ahk_id %active_id%
Return

F11::
;#HotkeyInterval 200

WinGet, active_id, ID, A
SetTitleMatchMode, 2
;DetectHiddenWindows, On
WinGet, fensterID, List, Meeting
Loop, %fensterID% { ; will run loop for number of windows in array
  WinActivate, % "ahk_id " fensterID%A_Index%
  Send ^+o
  Send !v
}
SoundBeep, 200, 100
WinActivate, ahk_id %active_id%
Return

