# oexport_learning

> Learn and diagnose things with the pascal OExport library/package

## Simpletest

### Linux

Using Lazarus on Linux Debian, adapting from [oexport-help/getting-started/](https://www.kluug.at/oexport-help/getting-started/)

```
Lazarus 2.2.6+dfsg2-2 (rev Debian package 2.2.6+dfsg2-2) 
FPC 3.2.2 
x86_64-linux-gtk2
```

After compiling via the Lazarus IDE:

```sh
./simpletest
```

results in an empty zero byte `simple.xlsx` and:

```text
An unhandled exception occurred at $000000000063F334:
EAccessViolation: Access violation
  $000000000063F334  INITIALIZECRITICALSECTION,  line 661 of include/winapi.inc
  $00000000004E3BBA  DOLOCKCANVAS,  line 445 of include/canvas.inc
  $00000000005A1FA6
  $00000000004A24B5  _GETDIGITEXTENT,  line 85 of OExport/units/OExport_Vcl.pas
  $000000000043DE1E  GETEXCELDEFFONTWIDTH,  line 11336 of OExport.pas
  $000000000044AA83  CREATESHEET,  line 14790 of OExport.pas
  $00000000004482BB  CREATECONTENTS,  line 14157 of OExport.pas
  $000000000044DEED  DOEXPORT,  line 15259 of OExport.pas
  $000000000043E743  _SAVETOSTREAM,  line 11534 of OExport.pas
  $000000000043D646  SAVETOFILE,  line 11212 of OExport.pas
  $000000000043D753  SAVETOFILE,  line 11231 of OExport.pas
  $00000000004015D5  CREATEDOCUMENT,  line 45 of simpletest.lpr
  $0000000000401635  main,  line 56 of simpletest.lpr
```

### Windows

Same thing:

```
C:\Users\abcacb\src\oexport_learning>simpletest.exe
An unhandled exception occurred at $000000010016BACE:
EAccessViolation: Access violation
  $000000010016BACE  INITIALIZECRITICALSECTION,  line 666 of include/winapi.inc
  $00000001000AA2AA  DOLOCKCANVAS,  line 446 of include/canvas.inc
  $000000010010D18B
  $00000001000AD172  LOCK,  line 1852 of include/canvas.inc
  $0000000100091002  _GETDIGITEXTENT,  line 85 of ../../units/OExport_Vcl.pas
  $000000010002C18B  GETEXCELDEFFONTWIDTH,  line 11336 of ../../units/OExport.pas
  $0000000100037DE6  CREATESHEET,  line 14790 of ../../units/OExport.pas
  $0000000100034DA4  CREATECONTENTS,  line 14157 of ../../units/OExport.pas
  $000000010003B7FB  DOEXPORT,  line 15259 of ../../units/OExport.pas
  $000000010002C664  _SAVETOSTREAM,  line 11534 of ../../units/OExport.pas
  $000000010002BDC8  SAVETOFILE,  line 11212 of ../../units/OExport.pas
  $000000010002BEE8  SAVETOFILE,  line 11231 of ../../units/OExport.pas
  $0000000100001B66  CREATEDOCUMENT,  line 45 of simpletest.lpr
  $0000000100001BAA  main,  line 56 of simpletest.lpr
  $0000000100001BC6
  $0000000100014DB0
  $00000001000018A0
```
