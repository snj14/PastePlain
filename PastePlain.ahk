#Requires AutoHotkey v2.0
#SingleInstance Force

; paste plain
+^v::{
    ;OnClipboardChange(ClipNotify, 0)
    ClipSaved := ClipboardAll()
    A_Clipboard := A_Clipboard
    if(!ClipWait(1)){
        return
    }
    Send("^v")
    sleep 100
    A_Clipboard := ClipSaved
    ;OnClipboardChange(ClipNotify, 1)
}

