@echo off
echo Dockerイメージビルド
docker image rm selenium
docker build -t selenium .
pause
@echo off