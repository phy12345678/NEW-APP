# 실제 안드로이드 앱(.apk) 설치 파일 만들기 가이드

## 방법 A: PC에 아무 프로그램도 안 깔고 `.apk` 파일 받기 (GitHub 자동 빌드 · 가장 간단)
1. GitHub(https://github.com)에서 새 저장소(Repository)를 하나 만듭니다.
2. 압축을 푼 폴더 안의 모든 파일(`package.json`, `capacitor.config.json`, `www/`, `.github/` 포함)을 업로드합니다.
3. 저장소 상단 **[Actions]** 탭으로 들어가면 **Build Android APK** 작업이 자동으로 실행됩니다(약 2분 소요).
4. 완료 후 하단 **Artifacts** 영역의 **`relic-tycoon-android-apk`**를 클릭하면 실제 안드로이드 설치 파일(`app-debug.apk`)이 다운로드됩니다.
5. 해당 `.apk` 파일을 스마트폰으로 옮겨 실행하면 일반 앱처럼 설치됩니다.

## 방법 B: 내 PC에서 직접 `.apk` 빌드하기
PC에 **Node.js**와 **Android Studio(Android SDK)**가 설치되어 있다면:
1. 압축을 푼 폴더에서 **`build_apk.bat`** 파일을 더블클릭해 실행합니다.
2. 빌드가 끝나면 `android\app\build\outputs\apk\debug\app-debug.apk` 파일이 생성됩니다.
