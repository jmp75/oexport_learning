# oexport_learning

> Learn and diagnose things with the pascal OExport library/package

## Simpletest

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
