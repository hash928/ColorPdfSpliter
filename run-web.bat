@echo off
cd /d "%~dp0web"

REM 复制Python脚本到web目录（若已存在则不覆盖）
if not exist "ColorPdfSpliter.py" (
    copy "..\ColorPdfSpliter.py" "." >nul
    echo [OK] ColorPdfSpliter.py 已复制
) else (
    echo [OK] ColorPdfSpliter.py 已存在
)

echo.
echo ================================
echo  ColorPdfSpliter Web 服务启动中
echo ================================
echo.
echo 请在浏览器中访问:
echo   http://localhost:4000
echo.
echo 关闭此窗口即可停止服务
echo ================================
echo.

REM 打开浏览器
start http://localhost:4000

REM 启动HTTP服务
python -m http.server 4000

pause
