@echo off
set /p yn_check="co.conf.json�t�@�C����ݒ肵�܂����� (y/n)"
IF %yn_check%==y (
    docker run --mount type=bind,src=%cd%\src\out,dst=/usr/app/out --rm selenium java -jar siken-selenium-0.0.1-SNAPSHOT.jar 6
) ELSE (
�@�@echo �L�����Z�����܂���
)
pause
@echo off