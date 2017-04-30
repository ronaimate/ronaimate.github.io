Global $WindowTitleOne = "WoW1"
Global $WindowTitleTwo = "WoW2"
Global $WindowTitleThree = "WoW3"

Global $PauseKey = "{F7}"
Global $OneKey = "{1}"

Global $Paused = False

HotKeySet( $PauseKey, "Pause" )

While 1
If Not $Paused Then
ControlSend( $WindowTitleOne, "", 0, $OneKey )
ControlSend( $WindowTitleTwo, "", 0, $OneKey )
ControlSend( $WindowTitleThree, "", 0, $OneKey )
EndIf

Sleep( 200 )
WEnd

Func Pause()
$Paused = Not $Paused
EndFunc

Func Terminate()
Exit
EndFunc