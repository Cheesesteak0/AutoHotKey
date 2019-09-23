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