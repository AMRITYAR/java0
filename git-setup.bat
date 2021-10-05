@echo off
set GITCONFIG="%HOMEPATH%\.gitconfig"
if exist %GITCONFIG% (goto DELETE) else (goto MAIN)
:DELETE
del %GITCONFIG%
:MAIN
set USERNAME=
set /P USERNAME="User Name:"
set EMAIL=
set /P EMAIL="E-Mail:"
echo.
git config --global user.name "%USERNAME%"
git config --global user.email "%EMAIL%"
git config --global core.editor "code --wait"
git config --global merge.tool "vscode"
git config --global mergetool.vscode.cmd "code --wait \"$MERGED\""
git config --global diff.tool "vscode"
git config --global difftool.vscode.cmd "code --wait --diff \"$LOCAL\" \"$REMOTE\""
type %GITCONFIG%
echo.
pause
