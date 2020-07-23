#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



MsgBox, 0, ControlMyPC AutoHotKey script by ludrol v0.1,
(
	How to use:
		click into twitch chat, 
		use arrows to move mouse
		use shift + arrows to move mouse slowly
		use control + arrows to drag mouse 
		use alt + arrow to use arrows
		F4 ends the script
)







Bigger(key) {

Random, rand, 0, 1
	if(rand=1){
	StringUpper, key, key
    return	key
	}

return key
}
BiggerString(text)
{

Loop, parse, text
{
temp .= Bigger(A_LoopField)
}
return temp
}





F4::
ExitApp







up::
sleep 1075
tmp := BiggerString("up")
Send %tmp% {Enter}
return
down::
sleep 1075
tmp := BiggerString("down")
Send %tmp% {Enter}
return
right::
sleep 1075
tmp := BiggerString("right")
Send %tmp% {Enter}
return
left::
sleep 1075
tmp := BiggerString("left")
Send %tmp% {Enter}
return



;control drag



^up::
sleep 1075
tmp := BiggerString("drag mouse up")
Send %tmp% {Enter}
return
^down::
sleep 1075
tmp := BiggerString("drag mouse down")
Send %tmp% {Enter}
return
^right:: 
sleep 1075
tmp := BiggerString("drag mouse right")
Send %tmp% {Enter}
return
^left::
sleep 1075
tmp := BiggerString("drag mouse left")
Send %tmp% {Enter}
return



;shift slow



+up::
sleep 1075
tmp := BiggerString("light up")
Send %tmp% {Enter}
return
+down::
sleep 1075
tmp := BiggerString("light down")
Send %tmp% {Enter}
return
+right::
sleep 1075
tmp := BiggerString("light right")
Send %tmp% {Enter}
return
+left::
sleep 1075
tmp := BiggerString("light left")
Send %tmp% {Enter}
return



;alt arrow



!up::
sleep 1075
tmp := BiggerString("arrow up")
Send %tmp% {Enter}
return
!down::
sleep 1075
tmp := BiggerString("arrow down")
Send %tmp% {Enter}
return
!right::
sleep 1075
tmp := BiggerString("arrow right")
Send %tmp% {Enter}
return
!left::
sleep 1075
tmp := BiggerString("arrow left")
Send %tmp% {Enter}
return
