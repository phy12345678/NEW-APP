@echo off
chcp 65001 > nul
echo [1/4] Capacitor 패키지 설치 중...
call npm install
echo [2/4] 안드로이드 네이티브 프로젝트 생성 중...
call npx cap add android
echo [3/4] 게임 리소스 동기화 중...
call npx cap sync android
echo [4/4] APK 파일 빌드 중...
cd android
call gradlew.bat assembleDebug
echo.
echo 완료! APK 파일 위치: android\app\build\outputs\apk\debug\app-debug.apk
pause
