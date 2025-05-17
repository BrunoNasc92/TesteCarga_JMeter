@echo off
SET JMETER_HOME=C:\jmeter

:: Data e hora para pasta de relatório
FOR /F "tokens=1-4 delims=/ " %%a in ('date /t') do (
    SET DD=%%a
    SET MM=%%b
    SET YYYY=%%c
)
FOR /F "tokens=1-2 delims=: " %%a in ('time /t') do (
    SET HH=%%a
    SET MN=%%b
)
SET REPORT_DIR=%JMETER_HOME%\results\report-%YYYY%%MM%%DD%-%HH%%MN%

:: Cria pasta de resultados se necessário
IF NOT EXIST "%JMETER_HOME%\results" (
    mkdir "%JMETER_HOME%\results"
)

:: Remove result.jtl antigo se existir
IF EXIST "%JMETER_HOME%\results\result.jtl" (
    del /f "%JMETER_HOME%\results\result.jtl"
)

:: Executa o JMeter
"%JMETER_HOME%\bin\jmeter.bat" -n -t "%JMETER_HOME%\load_test.jmx" -l "%JMETER_HOME%\results\result.jtl" -e -o "%REPORT_DIR%"

:: Mensagem final
echo.
echo ✅ Teste concluído com sucesso!
echo 📊 Relatório gerado em: %REPORT_DIR%\index.html
pause
