@taskkill /IM "chromedriver.exe" /F
@rmdir /s /q "%appdata%\myscript"
@rmdir /s /q "%temp%\gen_py"
@pip install -r requirements.txt
@py ../main.pyc
@timeout /t 10