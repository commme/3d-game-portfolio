@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo   3D 게임 포트폴리오 - GitHub 올리기
echo ============================================
echo.

where git >nul 2>nul
if errorlevel 1 (
  echo [오류] Git이 설치되어 있지 않습니다.
  echo  https://git-scm.com/download/win 에서 설치 후 다시 실행하세요.
  pause
  exit /b
)

echo [1/5] 이전에 잘못 생성된 .git 폴더 정리...
if exist ".git" rmdir /s /q ".git"

echo [2/5] Git 저장소 초기화...
git init
git add .
git -c user.name="휴먼" -c user.email="eunhwanyu87@gmail.com" commit -m "3D 게임 포트폴리오 + 모델 갤러리 + 고도화 가이드"
git branch -M main

echo.
echo [3/5] GitHub에서 '빈' 저장소를 먼저 만드세요 (README 추가 X).
echo       그런 다음 그 저장소 주소를 아래에 붙여넣으세요.
echo       예) https://github.com/사용자이름/저장소이름.git
echo.
set /p URL="저장소 URL 붙여넣기: "

echo [4/5] 원격 저장소 연결...
git remote remove origin >nul 2>nul
git remote add origin %URL%

echo [5/5] 업로드(push)... (GitHub 로그인 창이 뜨면 로그인하세요)
git push -u origin main

echo.
echo ============================================
echo   완료! GitHub 저장소 페이지를 새로고침해 확인하세요.
echo   (웹으로 게임 배포: 저장소 Settings ^> Pages ^> Branch: main /root 저장
echo    → https://사용자이름.github.io/저장소이름/portfolio.html )
echo ============================================
pause
