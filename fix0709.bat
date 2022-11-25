net stop spooler
TAKEOWN /F C:\Windows\System32\spoolsv.exe /A
Icacls C:\windows\System32\spoolsv.exe /grant Administrators:F
ren C:\windows\system32\spoolsv.exe C:\windows\system32\spoolsv.exe.old
TAKEOWN /F C:\Windows\System32\localspl.dll /A
Icacls C:\windows\System32\localspl.dll /grant Administrators:F
ren C:\windows\system32\localspl.dll C:\windows\system32\localspl.dll.old
TAKEOWN /F C:\Windows\System32\win32spl.dll /A
Icacls C:\windows\System32\win32spl.dll /grant Administrators:F
ren C:\windows\system32\win32spl.dll C:\windows\system32\win32spl.dll.old
copy localspl.dll C:\windows\system32\localspl.dll
copy win32spl.dll C:\windows\system32\win32spl.dll
copy spoolsv.exe C:\windows\system32\spoolsv.exe
net start spooler
pause
