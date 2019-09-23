PrintScreen::
Run, "File path goes here"\.ahk file or .exe
return
^PrintScreen:
Process,Close,application.exe

return
^Esc::ExitApp

;used to open and close all the ahk scripts I use daily
;the closing function is something I am still working on, you can hold down
;the Ctrl-Esc keys for a few seconds to close all the currently running .ahk 
;scripts but I figured using a hot key for it would be better