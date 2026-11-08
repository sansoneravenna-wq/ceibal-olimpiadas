@echo off
title Acreditacion - Olimpiada de Ceibal
set URL=https://sansoneravenna-wq.github.io/ceibal-olimpiadas/
set PROFILE=%LOCALAPPDATA%\AcreditacionChrome
set CHROME=
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe
if exist "%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe" set CHROME=%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe
if "%CHROME%"=="" (
  if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" set CHROME=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe
)
if "%CHROME%"=="" (
  echo No encontre Google Chrome ni Microsoft Edge. Instala Chrome y volve a intentar.
  pause
  exit /b 1
)
start "" "%CHROME%" --kiosk-printing --user-data-dir="%PROFILE%" --no-first-run --app=%URL%
