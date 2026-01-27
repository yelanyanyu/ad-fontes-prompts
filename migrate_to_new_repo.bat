@echo off
echo ==========================================
echo Starting Migration to ad-fontes-manager...
echo ==========================================

echo [1/3] Splitting tool/yaml2pg into temporary branch 'split-yaml2pg'...
git subtree split --prefix=tool/yaml2pg -b split-yaml2pg
if %errorlevel% neq 0 (
    echo Error: Failed to split subtree.
    echo Please make sure you are in the project root and git is installed.
    pause
    exit /b %errorlevel%
)

echo [2/3] Pushing to remote repository...
git push https://github.com/yelanyanyu/ad-fontes-manager.git split-yaml2pg:main
if %errorlevel% neq 0 (
    echo Error: Failed to push to remote.
    echo Please check your network and permissions for the repository.
    echo You may need to handle authentication if prompted.
    pause
    exit /b %errorlevel%
)

echo [3/3] Cleaning up temporary branch...
git branch -D split-yaml2pg

echo ==========================================
echo Migration Completed Successfully!
echo ==========================================
pause
