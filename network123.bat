@ECHO OFF

REM Define the target host to ping
SET HostToPing=google.com

REM Define the log file name
SET LogFile=network_info.txt

REM Clear or create a new log file
ECHO. > %LogFile%

REM Ping the target host and log the results
ECHO PING Test for %HostToPing% >> %LogFile%
PING -n 4 %HostToPing% >> %LogFile%
ECHO. >> %LogFile%

REM Tracert to the target host and log the results
ECHO TRACERT for %HostToPing% >> %LogFile%
TRACERT %HostToPing% >> %LogFile%
ECHO. >> %LogFile%

REM Display IP configuration and log the results
ECHO IP Configuration >> %LogFile%
ipconfig /all >> %LogFile%
ECHO. >> %LogFile%

REM Display active network connections and log the results
ECHO Active Network Connections >> %LogFile%
netstat -ano >> %LogFile%

ECHO Script execution complete. Results are saved in %LogFile%.

REM Pause to keep the window open
PAUSE
