@echo off
set DIR=%~dp0
set APP_BASE_NAME=%~n0
set GRADLE_HOME=
set DEFAULT_JVM_OPTS=

set CMD_LINE_ARGS=%*
"%DIR%\gradlew" %CMD_LINE_ARGS%


