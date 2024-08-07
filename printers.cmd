@echo off

@REM Canon_6030 Url
set Canon_6030_Url="https://www.dropbox.com/scl/fi/m2tznhch5h3q3t9c1aeti/LBP6030_V2111_WP_EN.exe?rlkey=3moh1m0vvk05bres72ygpglrc&st=s0km86rh&dl=0"
set Canon_6030_File="LBP6030_V2111_WP_EN.exe"
@REM Thermal printer
set pos_Url="https://www.dropbox.com/scl/fi/h3g3y0s19ael2fhl2z2kg/Thermal_printer.exe?rlkey=xcueh3f0jcm8ub9ia3sakp431&st=788nqj3v&dl=0"
set pos_File="Thermal_printer.exe"
@REM BARCODE printer
set BARCODE_Url="https://www.dropbox.com/scl/fi/jnpe5h17kqu0w1ahf7cqa/4BARCODE_2019.1_M-2.exe?rlkey=n821h1heahvysemcl98k7imod&st=ht6hl92f&dl=0"
set BARCODE_File="4BARCODE_2019.1_M-2.exe"
@REM IPOS JJ
set IPOS_JJ_Url="https://www.dropbox.com/scl/fi/oflbr8m52bjr7ilrw5mfh/JJ-Drive-V7.17.exe?rlkey=tgge9ayjq25hp05cihg7zk5lv&st=5bczxlv3&dl=0"
set IPOS_JJ_File="JJ-Drive-V7.17.exe"
@REM POS 80 Series
set POS_80_Series_Url="https://www.dropbox.com/scl/fi/lh17yiq8squudlgw9d86i/POS-80-Series.exe?rlkey=60ii8te041ssix5nnjw3noexu&st=n69hmf7t&dl=0"
set POS_80_Series_File="POS-80-Series.exe"
@REM AG POS Printer
set AG_POS_Url="https://www.dropbox.com/scl/fi/iyai1v98115j30rgg0dux/AG_Printer.exe?rlkey=ebpsa8h8twq9isj96lrz6xcpi&st=q1q5reis&dl=0"
set AG_POS_File="AG_Printer.exe"
@REM ZJ_Printer
set ZJ_Url="https://www.dropbox.com/scl/fi/iimc78o9ow8uupi9hoqtf/ZJ-Printer.exe?rlkey=cgbbzhbebh4ha4hj7sfsq0mrx&st=k0e5khaw&dl=0"
set ZJ_File="ZJ-Printer.exe"
@REM XPrinter
set xpriner_Url="https://www.dropbox.com/scl/fi/cqt1vbk36ne7byxwih95l/XPrinter.exe?rlkey=4dkwwg36y948qo6ufjib1e4oj&st=5p1naka3&dl=0"
set xpriner_File="XPrinter.exe"
@REM HPRT Printer
set HPRT_Url="https://www.dropbox.com/scl/fi/mcc04owwq75jfaa9dj4na/HPRT_2022.1.exe?rlkey=yqfs4w0hp4hwhixmlas4mebbf&st=aylovokd&dl=0"
set HPRT_File="HPRT_2022.1.exe"
@REM Printer Tool
set Printer_Tool_Url="https://www.dropbox.com/scl/fi/w36cj9klh00ginyhp21wq/printer-tools.rar?rlkey=oj1imyo9hvenqf7txcyp6nqcj&st=ejiwbu1o&dl=0"
set Printer_Tool_File="printer-tools.rar"
:main
cls
title Download PRINTERS
@REM color 9f
color f4
@echo off
echo Press 1 If You Want To Download  Canon 6030
echo Press 2 If You Want To Download  Thermal printer
echo Press 3 If You Want To Download  BARCODE printer
echo Press 4 If You Want To Download  IPOS JJ printer
echo Press 5 If You Want To Download  POS 80 Series
echo Press 6 If You Want To Download  AG POS Printer
echo Press 7 If You Want To Download  ZJ Printer
echo Press 8 If You Want To Download  XPrinter
echo Press 9 If You Want To Download  HPRT Printer
echo Press 10 If You Want To Download Printer Tool
set /p Selected=What Do You Want: 

if "%Selected%" == "1" (
    set url=%Canon_6030_Url%
    set output=%Canon_6030_File%
    goto download
)
if "%Selected%" == "2" (
    set url=%pos_Url%
    set output=%pos_File%
    goto download
)
if "%Selected%" == "3" (
    set url=%BARCODE_Url%
    set output=%BARCODE_File%
    goto download
)
if "%Selected%" == "4" (
    set url=%IPOS_JJ_Url%
    set output=%IPOS_JJ_File%
    goto download
)
if "%Selected%" == "5" (
    set url=%POS_80_Series_Url%
    set output=%POS_80_Series_File%
    goto download
)
if "%Selected%" == "6" (
    set url=%AG_POS_Url%
    set output=%AG_POS_File%
    goto download
)
if "%Selected%" == "7" (
    set url=%ZJ_Url%
    set output=%ZJ_File%
    goto download
)
if "%Selected%" == "8" (
    set url=%xpriner_Url%
    set output=%xpriner_File%
    goto download
)
if "%Selected%" == "9" (
    set url=%HPRT_Url%
    set output=%HPRT_File%
    goto download
)
if "%Selected%" == "10" (
    set url=%Printer_Tool_Url%
    set output=%Printer_Tool_File%
    goto download
)
    goto End

:download
curl -L --progress-bar --retry 5 --retry-delay 10 -C - -o %output% %url%
if %errorlevel% neq 0 (
    echo Download interrupted. Retrying...
    timeout /t 10
    goto download
)

echo Download Complete. Waiting To Opening The File...
start "" %output%

:End

   