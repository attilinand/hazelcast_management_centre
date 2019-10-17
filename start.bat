@ECHO OFF

set argC=0
for %%x in (%*) do Set /A argC+=1
set help=false

if %argC% equ 1 set help=true
if %argC% gtr 4 set help=true
if %argC% equ 1 ( echo "" if %1% equ "--help" help=true )

if %help% == true (
    echo usage: start.bat
    echo usage: start.bat [port] [path]
    echo usage: start.bat [port] [path] [classpath]
)

if %argC% == 4 (
    echo From version 3.11 onwards, WAR file is not expanded anymore. No need to pass expandWarPath parameter.
    java -cp "hazelcast-mancenter-3.12.war;%3" Launcher %1 %2
)

if %argC% == 3 (
    java -cp "hazelcast-mancenter-3.12.war;%3" Launcher %1 %2
)

if %argC% == 2 (
    java -cp hazelcast-mancenter-3.12.war Launcher %1 %2
)

if %argC% == 0 (
    java -cp hazelcast-mancenter-3.12.war Launcher
)
