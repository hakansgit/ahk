#include CaptureScreen.ahk

dir = %A_MyDocuments%\screenCaptures
If !FileExist(dir) {
 FileCreateDir, %dir%
 If ErrorLevel
  MsgBox, 48, Error, An error occurred when creating the directory.`n`n%dir%
 Else MsgBox, 64, Success, Directory was created.`n`n%dir%
} 

*~$printscreen::
f1:= dir . "\" . a_now . "_capture.png"
CaptureScreen(1,,F1)
;CaptureScreen(1)
;CaptureScreen(2)
;CaptureScreen(3)
;CaptureScreen("100, 100, 200, 200")
;CaptureScreen("100, 100, 200, 200, 400, 400")
; run,%f1%
return