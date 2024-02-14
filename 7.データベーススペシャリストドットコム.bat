@echo off
set /p yn_check="db.conf.jsonファイルを設定しましたか (y/n)"
IF %yn_check%==y (
    docker run --mount type=bind,src=%cd%\src\out,dst=/usr/app/out --rm selenium java -jar siken-selenium-0.0.1-SNAPSHOT.jar 7
) ELSE (
　　echo キャンセルしました
)
pause
@echo off