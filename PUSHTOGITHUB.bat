@echo off
setlocal enabledelayedexpansion
title Push to GitHub
cd /d "%~dp0"

set "REPO_URL=https://github.com/XBased420/Friends-Family-Event-Planning-App.git"
set "BRANCH=main"
set "LIVE_URL=https://xbased420.github.io/Friends-Family-Event-Planning-App/"

echo.
echo  ================================================
echo    PUSH TO GITHUB
echo    %CD%
echo  ================================================
echo.

REM ---------- 1. Is git installed? ----------
where git >nul 2>&1
if errorlevel 1 (
  echo  [X] Git is not installed on this PC.
  echo.
  echo      Download it from https://git-scm.com  ^(accept every default^)
  echo      then close this window, reopen it, and run this file again.
  echo.
  pause
  exit /b 1
)

REM ---------- 2. Does git know who you are? ----------
set "GITNAME="
for /f "delims=" %%i in ('git config --global user.name 2^>nul') do set "GITNAME=%%i"
if "!GITNAME!"=="" (
  echo  First time setup - git needs your name and email.
  echo.
  set /p "GITNAME=  Your name: "
  git config --global user.name "!GITNAME!"
)
set "GITMAIL="
for /f "delims=" %%i in ('git config --global user.email 2^>nul') do set "GITMAIL=%%i"
if "!GITMAIL!"=="" (
  set /p "GITMAIL=  Your GitHub email: "
  git config --global user.email "!GITMAIL!"
  echo.
)

REM ---------- 3. Connect this folder to the repo if it isn't already ----------
if not exist ".git" (
  echo  Connecting this folder to GitHub for the first time...
  echo.
  git init >nul
  git branch -M %BRANCH% >nul 2>&1
  git remote add origin %REPO_URL%
  git fetch origin %BRANCH%
  if errorlevel 1 (
    echo  [X] Could not reach the repo. Check your internet, then try again.
    pause
    exit /b 1
  )
  REM adopt the remote history WITHOUT touching your local files
  git reset --soft origin/%BRANCH%
  echo  Connected.
  echo.
)

REM ---------- 4. Stage everything ----------
git add -A

git diff --cached --quiet
if not errorlevel 1 (
  echo  Nothing has changed since the last push. You're already up to date.
  echo.
  pause
  exit /b 0
)

echo  Files changing in this push:
echo.
git diff --cached --name-status
echo.

REM ---------- 5. Commit ----------
set "MSG="
set /p "MSG=  Commit message ^(press Enter for a timestamp^): "
if "!MSG!"=="" set "MSG=Update %DATE% %TIME%"

git commit -m "!MSG!" >nul
if errorlevel 1 (
  echo  [X] Commit failed. Read the message above.
  pause
  exit /b 1
)

REM ---------- 6. Push ----------
echo.
echo  Pushing...
git push -u origin %BRANCH%
if errorlevel 1 (
  echo.
  echo  [X] Push failed.
  echo.
  echo      If a browser window opened asking you to sign in to GitHub,
  echo      finish that and run this file again - the first push needs it.
  echo.
  echo      If it says "rejected" or "behind", someone edited the repo on
  echo      github.com. Run:  git pull --rebase    then run this again.
  echo.
  pause
  exit /b 1
)

echo.
echo  ================================================
echo    DONE - pushed to %BRANCH%
echo  ================================================
echo.
echo    Live in about a minute at:
echo    %LIVE_URL%
echo.
echo    On your phone: force-close the app and reopen it,
echo    or Safari will show you the cached version.
echo.
pause
