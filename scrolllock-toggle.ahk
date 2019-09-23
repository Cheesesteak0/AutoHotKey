ScrollLock::StartClose("Wheelswitch.exe")

StartClose(exe)
{
Process, Exist, %exe% ; check to see if program is running
If (ErrorLevel = 0) ; If program is not running -> Run
    {
    Run, %exe%
    }
Else ; If program is running, ErrorLevel = process id for the target program -> Close
    {
    Process, Close, %ErrorLevel%
    }
}
return

^Esc::ExitApp

;the purpose of this is to toggle the Application switcher on and off. Unfortunately it
;did not work with the original script so I have it using the .exe file instead
