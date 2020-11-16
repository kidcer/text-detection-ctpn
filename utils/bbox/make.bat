@ECHO OFF
del *.c
python setup.py install
for /r "./build/" %%x in (*.pyd) do move "%%x" ./
rmdir /s /q build