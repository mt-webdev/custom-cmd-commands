@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
echo Custom cmd commands:
echo.

call :ColorText 0a "force-origin"
echo :
echo. - git fetch --all && git reset --hard origin/%1
echo.

call :ColorText 0a "'src'"
echo :
echo. - cd C:/Source
echo.

call :ColorText 0a "gc"
echo :
echo. - git checkout %1
echo.

call :ColorText 0a "merge"
echo :
echo. - git merge --no-commit
echo.

call :ColorText 0a "switch"
echo :
echo. - git checkout
echo.

call :ColorText 0a "reset-h-s"
echo :
echo. - git reset --hard(soft) HEAD~1
echo.

call :ColorText 0a "new-branch"
echo :
echo. - git checkout -b branch
echo.

call :ColorText 0a "push-branch"
echo :
echo. - git push -u origin branch
echo.

call :ColorText 0a "cherry (no commit)"
echo :
echo. - git cherry-pick -n hash
echo.

call :ColorText 0a "ys"
echo :
echo. - yarn start
echo.

call :ColorText 0a "cleanup"
echo :
echo. - rimraf node_modules .awcache
echo.


call :ColorText 0a "code-cmd"
echo :
echo. - code "C:\Software\cmd"
echo.


call :ColorText 0a "custom-cmd"
echo :
echo. - prints all custom commands available
echo.


call :ColorText 0a "lint"
echo :
echo. - npm run lint out lint.txt
echo.


call :ColorText 0a "prod"
echo :
echo. - npm run build:prod
echo.


call :ColorText 0a "rwd"
echo :
echo. - npm run watch:dev
echo.

call :ColorText 0a "hmr"
echo :
echo. - npm run watch:dev:hmr
echo.

call :ColorText 0a "publishdir"
echo :
echo. - explorer %userprofile%\desktop\publishfolder
echo.

call :ColorText 0a "a2"
echo :
echo. - cd C:\Source\DEV-GIT\Angular2
echo.

call :ColorText 0a "a1"
echo :
echo. - cd C:\Source\DEV-GIT\Angular1
echo.

call :ColorText 0a "git-tfs"
echo :
echo. - cd C:\Source\DEV
echo.

call :ColorText 0a "deploy-a1"
echo :
echo. - Deploys the current AngularJs application onto the test-system
echo.

call :ColorText 0a "deploy-a2"
echo :
echo. - Deploys the current Angular application onto the test-system
echo.

goto :eof

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof