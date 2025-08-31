#j::
{
    CurrClipboard := ClipboardAll()
    A_Clipboard := ""
    Send "^c"
    
    if (ClipWait(1))
    {
        Sleep(100)
        if (text_highlighted)
        {
            ;MsgBox A_Clipboard
            if not InStr(A_Clipboard, " ") {
                search_term := A_Clipboard
            } else {
                search_term := StrReplace(A_Clipboard, " ", "%20")
            }
            Run "C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory=Default https://jisho.org/search/" search_term
        }
    }
    Sleep(100)
    A_Clipboard := CurrClipboard
    CurrClipboard := ""
    return
}

OnClipboardChange ClipChanged

ClipChanged(ClipBoardStatus)
{
    global text_highlighted
    if(ClipBoardStatus=1) {
        text_highlighted := true
    } else {
        text_highlighted := false
    }
    return
}