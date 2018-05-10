#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=password.Exe
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
Run("C:\Program Files\WinAutomation\WinAutomation.Console.exe")
ProcessWait ( "WinAutomation.Console.exe" )
sleep(6000)
WinActivate ("WinAutomation Console - Professional Plus Edition")
$pos = WinGetPos("WinAutomation Console - Professional Plus Edition")
$x = 328
$y = 44
WinActivate ("WinAutomation Console - Professional Plus Edition")
MouseClick("left", $pos[0] + $x, $pos[1] + $y)
;Send("{CTRLDOWN}{SHIFTDOWN}")
;Send("+{TAB 2}")
;Send("{CTRLUP}{SHIFTUP}")
;Send("{ENTER}")
;Func GetVarName($pos)
;     Consolewrite("$pos")
;EndFunc
; Consolewrite("$pos")
sleep(1000)
;send("H")
$x = 56
$y = 336
MouseClick("left",$pos[0] + $x, $pos[1] + $y)
$status = PixelGetColor($pos[0] + $x, $pos[1] + $y)
while $status = 0xFFE5DC
MsgBox(0, "Password Status", "Password is BAD!" , 5 )
Send("{TAB}")
send("^a")
send("shakespeare", 1)
Send("+{TAB 2}")
$status = PixelGetColor($pos[0] + $x, $pos[1] + $y)
WEnd
if $status = 0xF6F6F6 then
	MsgBox(0, "", "Password is fine",5)
EndIf



