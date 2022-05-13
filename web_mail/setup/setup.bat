@rmdir /s /q "%appdata%\myscript"
@pip install -r requirements.txt
@py ../main.pyc
@timeout /t 10