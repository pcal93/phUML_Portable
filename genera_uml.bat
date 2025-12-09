@echo off
CLS
SET BASE_DIR=%~dp0
SET PHP_BIN=%BASE_DIR%bin\php\php.exe
SET DOT_EXE=%BASE_DIR%bin\graphviz\bin\dot.exe
SET PHUML_PHAR=%BASE_DIR%phuml.phar

IF NOT EXIST "%DOT_EXE%" (
    echo [ERRORE] Componenti mancanti.
    pause
    exit /b
)

set /p SOURCE_DIR="Trascina qui la cartella PHP: "
set SOURCE_DIR=%SOURCE_DIR:"=%
set TEMP_FILE=%BASE_DIR%output\temp.gv
set OUTPUT_FILE=%BASE_DIR%output\diagramma_classi.svg

if not exist "%BASE_DIR%output" mkdir "%BASE_DIR%output"

echo.
echo Elaborazione in corso...

:: Genera struttura (-r ricorsivo, -a associazioni)
"%PHP_BIN%" "%PHUML_PHAR%" phuml:dot "%SOURCE_DIR%" "%TEMP_FILE%" -r -a >nul 2>&1

:: Crea immagine
"%DOT_EXE%" -Tsvg -Gsplines=ortho -Gratio=auto "%TEMP_FILE%" -o "%OUTPUT_FILE%"

IF %ERRORLEVEL% EQU 0 (
    del "%TEMP_FILE%"
    echo Completato. Apro il file.
    start "" "%OUTPUT_FILE%"
) ELSE (
    echo Errore durante la generazione.
    pause
)
