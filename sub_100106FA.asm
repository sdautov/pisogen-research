.text:100106FA ; =============== S U B R O U T I N E =======================================
.text:100106FA
.text:100106FA ; Attributes: bp-based frame fpd=1310h
.text:100106FA
.text:100106FA ; int __cdecl sub_100106FA(int, int, int, int, int, wchar_t *String, int, char, int, int)
.text:100106FA sub_100106FA    proc near               ; CODE XREF: sub_10011D42+C2↓p
.text:100106FA                                         ; sub_10011EED+58↓p ...
.text:100106FA
.text:100106FA FileName        = dword ptr -1394h
.text:100106FA var_1384        = byte ptr -1384h
.text:100106FA var_1380        = dword ptr -1380h
.text:100106FA FullPath        = dword ptr -137Ch
.text:100106FA var_1378        = dword ptr -1378h
.text:100106FA var_1374        = dword ptr -1374h
.text:100106FA var_1370        = dword ptr -1370h
.text:100106FA var_136C        = dword ptr -136Ch
.text:100106FA var_1368        = dword ptr -1368h
.text:100106FA var_1364        = dword ptr -1364h
.text:100106FA var_1360        = dword ptr -1360h
.text:100106FA var_135C        = dword ptr -135Ch
.text:100106FA var_1358        = dword ptr -1358h
.text:100106FA var_1351        = byte ptr -1351h
.text:100106FA var_1350        = byte ptr -1350h
.text:100106FA var_134F        = byte ptr -134Fh
.text:100106FA var_134E        = byte ptr -134Eh
.text:100106FA var_134D        = byte ptr -134Dh
.text:100106FA Source          = dword ptr -134Ch
.text:100106FA ArgList         = byte ptr -1348h
.text:100106FA var_1344        = dword ptr -1344h
.text:100106FA var_1340        = dword ptr -1340h
.text:100106FA Dir             = word ptr -133Ch
.text:100106FA var_1138        = word ptr -1138h
.text:100106FA var_F34         = word ptr -0F34h
.text:100106FA Filename        = word ptr -0D30h
.text:100106FA Str             = word ptr -0B2Ch
.text:100106FA Ext             = word ptr -928h
.text:100106FA String1         = word ptr -724h
.text:100106FA Buffer          = word ptr -518h
.text:100106FA var_30C         = word ptr -30Ch
.text:100106FA var_28C         = word ptr -28Ch
.text:100106FA var_80          = word ptr -80h
.text:100106FA var_60          = dword ptr -60h
.text:100106FA Drive           = word ptr -34h
.text:100106FA var_2C          = word ptr -2Ch
.text:100106FA Destination     = word ptr -0Ch
.text:100106FA var_4           = dword ptr -4
.text:100106FA arg_0           = dword ptr  8
.text:100106FA arg_4           = dword ptr  0Ch
.text:100106FA arg_8           = dword ptr  10h
.text:100106FA arg_C           = dword ptr  14h
.text:100106FA arg_10          = dword ptr  18h
.text:100106FA String          = dword ptr  1Ch
.text:100106FA arg_18          = dword ptr  20h
.text:100106FA arg_1C          = byte ptr  24h
.text:100106FA arg_20          = dword ptr  28h
.text:100106FA arg_24          = dword ptr  2Ch
.text:100106FA
.text:100106FA                 push    ebp
.text:100106FB                 lea     ebp, [esp-1310h]
.text:10010702                 mov     eax, 1384h
.text:10010707                 call    __alloca_probe
.text:1001070C                 mov     eax, dword_100A1B90
.text:10010711                 xor     eax, ebp
.text:10010713                 mov     [ebp+1310h+var_4], eax
.text:10010719                 mov     eax, [ebp+1310h+arg_0]
.text:1001071F                 mov     ecx, [ebp+1310h+arg_C]
.text:10010725                 push    ebx
.text:10010726                 push    esi
.text:10010727                 mov     esi, ds:__imp_fwprintf
.text:1001072D                 mov     [ebp+1310h+var_136C], eax
.text:10010730                 mov     eax, [ebp+1310h+arg_4]
.text:10010736                 push    edi
.text:10010737                 mov     edi, [ebp+1310h+String]
.text:1001073D                 mov     [ebp+1310h+var_1364], eax
.text:10010740                 mov     eax, [ebp+1310h+arg_8]
.text:10010746                 mov     [ebp+1310h+Source], ecx
.text:10010749                 mov     ecx, [ebp+1310h+arg_10]
.text:1001074F                 push    eax
.text:10010750                 mov     [ebp+1310h+var_1360], ecx
.text:10010753                 mov     ecx, [ebp+1310h+arg_24]
.text:10010759                 push    offset aFilenameS ; "fileName : %s\n"
.text:1001075E                 push    Stream          ; Stream
.text:10010764                 mov     [ebp+1310h+FullPath], eax
.text:10010767                 mov     [ebp+1310h+var_1378], ecx
.text:1001076A                 call    esi ; __imp_fwprintf
.text:1001076C                 push    Stream          ; Stream
.text:10010772                 mov     ebx, ds:__imp_fflush
.text:10010778                 call    ebx ; __imp_fflush
.text:1001077A                 add     esp, 10h
.text:1001077D                 call    sub_1000D373
.text:10010782                 test    eax, eax
.text:10010784                 jz      short loc_1001079F
.text:10010786                 push    eax
.text:10010787                 push    offset aPersonalIsogen_32 ; "Personal Isogen Version : %s\n"
.text:1001078C                 push    Stream          ; Stream
.text:10010792                 call    esi ; __imp_fwprintf
.text:10010794                 push    Stream          ; Stream
.text:1001079A                 call    ebx ; __imp_fflush
.text:1001079C                 add     esp, 10h
.text:1001079F
.text:1001079F loc_1001079F:                           ; CODE XREF: sub_100106FA+8A↑j
.text:1001079F                 cmp     [ebp+1310h+arg_1C], 1
.text:100107A6                 jnz     short loc_100107C6
.text:100107A8                 push    [ebp+1310h+arg_20]
.text:100107AE                 push    offset aBatchModeRunno ; "Batch Mode : RunNo = %d\n"
.text:100107B3                 push    Stream          ; Stream
.text:100107B9                 call    esi ; __imp_fwprintf
.text:100107BB                 push    Stream          ; Stream
.text:100107C1                 call    ebx ; __imp_fflush
.text:100107C3                 add     esp, 10h
.text:100107C6
.text:100107C6 loc_100107C6:                           ; CODE XREF: sub_100106FA+AC↑j
.text:100107C6                 call    sub_1000CF0E
.text:100107CB                 lea     eax, [ebp+1310h+Ext]
.text:100107D1                 push    eax             ; Ext
.text:100107D2                 lea     eax, [ebp+1310h+Filename]
.text:100107D8                 push    eax             ; Filename
.text:100107D9                 lea     eax, [ebp+1310h+Dir]
.text:100107DC                 push    eax             ; Dir
.text:100107DD                 lea     eax, [ebp+1310h+Drive]
.text:100107E3                 push    eax             ; Drive
.text:100107E4                 push    [ebp+1310h+FullPath] ; FullPath
.text:100107E7                 call    ds:__imp__wsplitpath
.text:100107ED                 lea     eax, [ebp+1310h+Ext]
.text:100107F3                 push    eax             ; String
.text:100107F4                 call    ds:__imp_wcslen
.text:100107FA                 add     esp, 18h
.text:100107FD                 test    eax, eax
.text:100107FF                 jnz     short loc_10010814
.text:10010801                 lea     eax, [ebp+1310h+Ext]
.text:10010807                 push    offset aPcf_0   ; "pcf"
.text:1001080C                 push    eax             ; Destination
.text:1001080D                 call    sub_1000A5A1
.text:10010812                 pop     ecx
.text:10010813                 pop     ecx
.text:10010814
.text:10010814 loc_10010814:                           ; CODE XREF: sub_100106FA+105↑j
.text:10010814                 lea     eax, [ebp+1310h+Ext]
.text:1001081A                 push    eax             ; Ext
.text:1001081B                 lea     eax, [ebp+1310h+Filename]
.text:10010821                 push    eax             ; Filename
.text:10010822                 lea     eax, [ebp+1310h+Dir]
.text:10010825                 push    eax             ; Dir
.text:10010826                 lea     eax, [ebp+1310h+Drive]
.text:1001082C                 push    eax             ; Drive
.text:1001082D                 push    101h            ; BufferCount
.text:10010832                 push    offset word_100BD7A0 ; Buffer
.text:10010837                 call    ds:__imp__wmakepath_s
.text:1001083D                 push    offset word_100BD7A0
.text:10010842                 push    offset aTmpnameS ; "tmpName : %s\n"
.text:10010847                 push    Stream          ; Stream
.text:1001084D                 call    esi ; __imp_fwprintf
.text:1001084F                 push    Stream          ; Stream
.text:10010855                 call    ebx ; __imp_fflush
.text:10010857                 push    offset aMsExe   ; "MS_EXE"
.text:1001085C                 call    ds:__imp__wgetenv
.text:10010862                 add     esp, 2Ch
.text:10010865                 test    eax, eax
.text:10010867                 jz      short loc_10010882
.text:10010869                 push    eax
.text:1001086A                 push    offset aMsExeS  ; "MS_EXE : %s\n"
.text:1001086F                 push    Stream          ; Stream
.text:10010875                 call    esi ; __imp_fwprintf
.text:10010877                 push    Stream          ; Stream
.text:1001087D                 call    ebx ; __imp_fflush
.text:1001087F                 add     esp, 10h
.text:10010882
.text:10010882 loc_10010882:                           ; CODE XREF: sub_100106FA+16D↑j
.text:10010882                 cmp     dword_100BDFC4, 1
.text:10010889                 jnz     short loc_100108A3
.text:1001088B                 push    offset aKeeppodSwitche ; "KEEPPOD switched on\n"
.text:10010890                 push    Stream          ; Stream
.text:10010896                 call    esi ; __imp_fwprintf
.text:10010898                 push    Stream          ; Stream
.text:1001089E                 call    ebx ; __imp_fflush
.text:100108A0                 add     esp, 0Ch
.text:100108A3
.text:100108A3 loc_100108A3:                           ; CODE XREF: sub_100106FA+18F↑j
.text:100108A3                 lea     eax, [edi+620h]
.text:100108A9                 push    offset aNoErrors ; "No errors"
.text:100108AE                 push    eax             ; Destination
.text:100108AF                 mov     [ebp+1310h+var_1340], eax
.text:100108B2                 call    sub_10006194
.text:100108B7                 lea     eax, [edi+81Eh]
.text:100108BD                 mov     ebx, offset Locale
.text:100108C2                 push    ebx             ; Source
.text:100108C3                 push    eax             ; Destination
.text:100108C4                 mov     [ebp+1310h+var_1358], eax
.text:100108C7                 call    sub_10006194
.text:100108CC                 lea     eax, [edi+0A20h]
.text:100108D2                 push    ebx             ; Source
.text:100108D3                 push    eax             ; Destination
.text:100108D4                 mov     [ebp+1310h+var_1374], eax
.text:100108D7                 call    sub_10006173
.text:100108DC                 lea     eax, [edi+0A1Ch]
.text:100108E2                 and     dword ptr [eax], 0
.text:100108E5                 mov     [ebp+1310h+var_1370], eax
.text:100108E8                 call    AliasTm                                                                          ; Вызов AliasTm
.text:100108ED                 push    eax             ; Time                                                           ; Складывает в стек результат AliasTm
.text:100108EE                 push    [ebp+1310h+var_1364] ; int                                                       ; И какое-то целое по какому-то адресу
.text:100108F1                 call    sub_10019820                                                                     ; Вызов sub_10019820 с этими аргументами
.text:100108F6                 add     esp, 20h
.text:100108F9                 mov     dword_100AF6B4, eax                                                              ; Складывает результат sub_10019820 в dword_100AF6B4
.text:100108FE                 cmp     eax, 8000h                                                                       ; Сравнивает результат sub_10019820 c 8000h
.text:10010903                 jnz     short loc_10010918                                                               ; Если не равно то переход к метке loc_10010918
.text:10010905                 push    [ebp+1310h+var_1340] ; Destination
.text:10010908                 push    13h             ; int
.text:1001090A                 call    sub_10008731                                                                     ; Вызов sub_10008731 с аргументом 13h
.text:1001090F                 pop     ecx
.text:10010910                 pop     ecx
.text:10010911                 push    13h
.text:10010913                 jmp     loc_10011CFD
.text:10010918 ; ---------------------------------------------------------------------------
.text:10010918
.text:10010918 loc_10010918:                           ; CODE XREF: sub_100106FA+209↑j
.text:10010918                 push    edi
.text:10010919                 push    offset aPisogenRootS ; "Pisogen Root    : (%s)\n"
.text:1001091E                 push    Stream          ; Stream
.text:10010924                 call    esi ; __imp_fwprintf
.text:10010926                 lea     eax, [edi+200h]
.text:1001092C                 push    eax
.text:1001092D                 push    offset aPisogenProject_0 ; "Pisogen Project : (%s)\n"
.text:10010932                 push    Stream          ; Stream
.text:10010938                 call    esi ; __imp_fwprintf
.text:1001093A                 lea     eax, [edi+400h]
.text:10010940                 push    eax
.text:10010941                 push    offset aPisogenStyleS ; "Pisogen Style   : (%s)\n"
.text:10010946                 push    Stream          ; Stream
.text:1001094C                 call    esi ; __imp_fwprintf
.text:1001094E                 mov     eax, [edi+600h]
.text:10010954                 add     esp, 24h
.text:10010957                 sub     eax, 0
.text:1001095A                 mov     ebx, offset aUnknown ; "Unknown"
.text:1001095F                 jz      short loc_10010988
.text:10010961                 dec     eax
.text:10010962                 jz      short loc_10010981
.text:10010964                 dec     eax
.text:10010965                 jz      short loc_1001097A
.text:10010967                 dec     eax
.text:10010968                 lea     eax, [ebp+1310h+var_28C]
.text:1001096E                 jz      short loc_10010973
.text:10010970                 push    ebx
.text:10010971                 jmp     short loc_10010993
.text:10010973 ; ---------------------------------------------------------------------------
.text:10010973
.text:10010973 loc_10010973:                           ; CODE XREF: sub_100106FA+274↑j
.text:10010973                 push    offset aUser    ; "USER"
.text:10010978                 jmp     short loc_10010993
.text:1001097A ; ---------------------------------------------------------------------------
.text:1001097A
.text:1001097A loc_1001097A:                           ; CODE XREF: sub_100106FA+26B↑j
.text:1001097A                 push    offset aFtin    ; "FTIN"
.text:1001097F                 jmp     short loc_1001098D
.text:10010981 ; ---------------------------------------------------------------------------
.text:10010981
.text:10010981 loc_10010981:                           ; CODE XREF: sub_100106FA+268↑j
.text:10010981                 push    offset aMm      ; "MM"
.text:10010986                 jmp     short loc_1001098D
.text:10010988 ; ---------------------------------------------------------------------------
.text:10010988
.text:10010988 loc_10010988:                           ; CODE XREF: sub_100106FA+265↑j
.text:10010988                 push    offset aM       ; "M"
.text:1001098D
.text:1001098D loc_1001098D:                           ; CODE XREF: sub_100106FA+285↑j
.text:1001098D                                         ; sub_100106FA+28C↑j
.text:1001098D                 lea     eax, [ebp+1310h+var_28C]
.text:10010993
.text:10010993 loc_10010993:                           ; CODE XREF: sub_100106FA+277↑j
.text:10010993                                         ; sub_100106FA+27E↑j
.text:10010993                 push    eax             ; Destination
.text:10010994                 call    sub_1000A5E4
.text:10010999                 pop     ecx
.text:1001099A                 pop     ecx
.text:1001099B                 lea     eax, [ebp+1310h+var_28C]
.text:100109A1                 push    eax
.text:100109A2                 push    dword ptr [edi+600h]
.text:100109A8                 push    offset aDimensionUnits ; "Dimension Units : %d (%s)\n"
.text:100109AD                 push    Stream          ; Stream
.text:100109B3                 call    esi ; __imp_fwprintf
.text:100109B5                 mov     eax, [edi+608h]
.text:100109BB                 add     esp, 10h
.text:100109BE                 cmp     eax, 10h
.text:100109C1                 jz      short loc_100109E4
.text:100109C3                 cmp     eax, 20h ; ' '
.text:100109C6                 jz      short loc_100109DD
.text:100109C8                 cmp     eax, 30h ; '0'
.text:100109CB                 lea     eax, [ebp+1310h+var_28C]
.text:100109D1                 jz      short loc_100109D6
.text:100109D3                 push    ebx
.text:100109D4                 jmp     short loc_100109EF
.text:100109D6 ; ---------------------------------------------------------------------------
.text:100109D6
.text:100109D6 loc_100109D6:                           ; CODE XREF: sub_100106FA+2D7↑j
.text:100109D6                 push    offset aUser    ; "USER"
.text:100109DB                 jmp     short loc_100109EF
.text:100109DD ; ---------------------------------------------------------------------------
.text:100109DD
.text:100109DD loc_100109DD:                           ; CODE XREF: sub_100106FA+2CC↑j
.text:100109DD                 push    offset aLb      ; "LB"
.text:100109E2                 jmp     short loc_100109E9
.text:100109E4 ; ---------------------------------------------------------------------------
.text:100109E4
.text:100109E4 loc_100109E4:                           ; CODE XREF: sub_100106FA+2C7↑j
.text:100109E4                 push    offset aKg      ; "KG"
.text:100109E9
.text:100109E9 loc_100109E9:                           ; CODE XREF: sub_100106FA+2E8↑j
.text:100109E9                 lea     eax, [ebp+1310h+var_28C]
.text:100109EF
.text:100109EF loc_100109EF:                           ; CODE XREF: sub_100106FA+2DA↑j
.text:100109EF                                         ; sub_100106FA+2E1↑j
.text:100109EF                 push    eax             ; Destination
.text:100109F0                 call    sub_1000A5E4
.text:100109F5                 pop     ecx
.text:100109F6                 pop     ecx
.text:100109F7                 lea     eax, [ebp+1310h+var_28C]
.text:100109FD                 push    eax
.text:100109FE                 push    dword ptr [edi+608h]
.text:10010A04                 push    offset aWeightUnitsDS ; "Weight Units    : %d (%s)\n"
.text:10010A09                 push    Stream          ; Stream
.text:10010A0F                 call    esi ; __imp_fwprintf
.text:10010A11                 mov     eax, [edi+60Ch]
.text:10010A17                 add     esp, 10h
.text:10010A1A                 cmp     eax, 70h ; 'p'
.text:10010A1D                 jg      short loc_10010A61
.text:10010A1F                 jz      short loc_10010A5A
.text:10010A21                 sub     eax, 64h ; 'd'
.text:10010A24                 jz      short loc_10010A53
.text:10010A26                 sub     eax, 4
.text:10010A29                 jz      short loc_10010A4C
.text:10010A2B                 sub     eax, 4
.text:10010A2E                 jz      short loc_10010A45
.text:10010A30                 dec     eax
.text:10010A31                 dec     eax
.text:10010A32                 jz      short loc_10010A3E
.text:10010A34                 dec     eax
.text:10010A35                 jnz     short loc_10010A72
.text:10010A37                 push    offset aSmartdxf ; "SMARTDXF"
.text:10010A3C                 jmp     short loc_10010A96
.text:10010A3E ; ---------------------------------------------------------------------------
.text:10010A3E
.text:10010A3E loc_10010A3E:                           ; CODE XREF: sub_100106FA+338↑j
.text:10010A3E                 push    offset aSmartigr ; "SMARTIGR"
.text:10010A43                 jmp     short loc_10010A96
.text:10010A45 ; ---------------------------------------------------------------------------
.text:10010A45
.text:10010A45 loc_10010A45:                           ; CODE XREF: sub_100106FA+334↑j
.text:10010A45                 push    offset aDgn     ; "DGN"
.text:10010A4A                 jmp     short loc_10010A96
.text:10010A4C ; ---------------------------------------------------------------------------
.text:10010A4C
.text:10010A4C loc_10010A4C:                           ; CODE XREF: sub_100106FA+32F↑j
.text:10010A4C                 push    offset aDxf     ; "DXF"
.text:10010A51                 jmp     short loc_10010A96
.text:10010A53 ; ---------------------------------------------------------------------------
.text:10010A53
.text:10010A53 loc_10010A53:                           ; CODE XREF: sub_100106FA+32A↑j
.text:10010A53                 push    offset aIsogen  ; "ISOGEN"
.text:10010A58                 jmp     short loc_10010A96
.text:10010A5A ; ---------------------------------------------------------------------------
.text:10010A5A
.text:10010A5A loc_10010A5A:                           ; CODE XREF: sub_100106FA+325↑j
.text:10010A5A                 push    offset aSmartdgn ; "SMARTDGN"
.text:10010A5F                 jmp     short loc_10010A96
.text:10010A61 ; ---------------------------------------------------------------------------
.text:10010A61
.text:10010A61 loc_10010A61:                           ; CODE XREF: sub_100106FA+323↑j
.text:10010A61                 sub     eax, 71h ; 'q'
.text:10010A64                 jz      short loc_10010A91
.text:10010A66                 dec     eax
.text:10010A67                 jz      short loc_10010A8A
.text:10010A69                 dec     eax
.text:10010A6A                 jz      short loc_10010A83
.text:10010A6C                 dec     eax
.text:10010A6D                 jz      short loc_10010A7C
.text:10010A6F                 dec     eax
.text:10010A70                 jz      short loc_10010A75
.text:10010A72
.text:10010A72 loc_10010A72:                           ; CODE XREF: sub_100106FA+33B↑j
.text:10010A72                 push    ebx
.text:10010A73                 jmp     short loc_10010A96
.text:10010A75 ; ---------------------------------------------------------------------------
.text:10010A75
.text:10010A75 loc_10010A75:                           ; CODE XREF: sub_100106FA+376↑j
.text:10010A75                 push    offset aSmartdgn8 ; "SMARTDGN8"
.text:10010A7A                 jmp     short loc_10010A96
.text:10010A7C ; ---------------------------------------------------------------------------
.text:10010A7C
.text:10010A7C loc_10010A7C:                           ; CODE XREF: sub_100106FA+373↑j
.text:10010A7C                 push    offset aUser    ; "USER"
.text:10010A81                 jmp     short loc_10010A96
.text:10010A83 ; ---------------------------------------------------------------------------
.text:10010A83
.text:10010A83 loc_10010A83:                           ; CODE XREF: sub_100106FA+370↑j
.text:10010A83                 push    offset aSmartsha ; "SMARTSHA"
.text:10010A88                 jmp     short loc_10010A96
.text:10010A8A ; ---------------------------------------------------------------------------
.text:10010A8A
.text:10010A8A loc_10010A8A:                           ; CODE XREF: sub_100106FA+36D↑j
.text:10010A8A                 push    offset aPod     ; "POD"
.text:10010A8F                 jmp     short loc_10010A96
.text:10010A91 ; ---------------------------------------------------------------------------
.text:10010A91
.text:10010A91 loc_10010A91:                           ; CODE XREF: sub_100106FA+36A↑j
.text:10010A91                 push    offset aSmartdwg ; "SMARTDWG"
.text:10010A96
.text:10010A96 loc_10010A96:                           ; CODE XREF: sub_100106FA+342↑j
.text:10010A96                                         ; sub_100106FA+349↑j ...
.text:10010A96                 lea     eax, [ebp+1310h+var_28C]
.text:10010A9C                 push    eax             ; Destination
.text:10010A9D                 call    sub_1000A5E4
.text:10010AA2                 pop     ecx
.text:10010AA3                 pop     ecx
.text:10010AA4                 lea     eax, [ebp+1310h+var_28C]
.text:10010AAA                 push    eax
.text:10010AAB                 push    dword ptr [edi+60Ch]
.text:10010AB1                 push    offset aDrawingFormatD ; "Drawing Format  : %d (%s)\n"
.text:10010AB6                 push    Stream          ; Stream
.text:10010ABC                 call    esi ; __imp_fwprintf
.text:10010ABE                 mov     eax, [edi+610h]
.text:10010AC4                 add     esp, 10h
.text:10010AC7                 sub     eax, 0C8h
.text:10010ACC                 jz      short loc_10010AFF
.text:10010ACE                 dec     eax
.text:10010ACF                 jz      short loc_10010AF8
.text:10010AD1                 dec     eax
.text:10010AD2                 jz      short loc_10010AF1
.text:10010AD4                 dec     eax
.text:10010AD5                 jz      short loc_10010AEA
.text:10010AD7                 dec     eax
.text:10010AD8                 lea     eax, [ebp+1310h+var_28C]
.text:10010ADE                 jz      short loc_10010AE3
.text:10010AE0                 push    ebx
.text:10010AE1                 jmp     short loc_10010B0A
.text:10010AE3 ; ---------------------------------------------------------------------------
.text:10010AE3
.text:10010AE3 loc_10010AE3:                           ; CODE XREF: sub_100106FA+3E4↑j
.text:10010AE3                 push    offset aUser    ; "USER"
.text:10010AE8                 jmp     short loc_10010B0A
.text:10010AEA ; ---------------------------------------------------------------------------
.text:10010AEA
.text:10010AEA loc_10010AEA:                           ; CODE XREF: sub_100106FA+3DB↑j
.text:10010AEA                 push    offset aBr      ; "BR"
.text:10010AEF                 jmp     short loc_10010B04
.text:10010AF1 ; ---------------------------------------------------------------------------
.text:10010AF1
.text:10010AF1 loc_10010AF1:                           ; CODE XREF: sub_100106FA+3D8↑j
.text:10010AF1                 push    offset aBl      ; "BL"
.text:10010AF6                 jmp     short loc_10010B04
.text:10010AF8 ; ---------------------------------------------------------------------------
.text:10010AF8
.text:10010AF8 loc_10010AF8:                           ; CODE XREF: sub_100106FA+3D5↑j
.text:10010AF8                 push    offset aTr      ; "TR"
.text:10010AFD                 jmp     short loc_10010B04
.text:10010AFF ; ---------------------------------------------------------------------------
.text:10010AFF
.text:10010AFF loc_10010AFF:                           ; CODE XREF: sub_100106FA+3D2↑j
.text:10010AFF                 push    offset aTl      ; "TL"
.text:10010B04
.text:10010B04 loc_10010B04:                           ; CODE XREF: sub_100106FA+3F5↑j
.text:10010B04                                         ; sub_100106FA+3FC↑j ...
.text:10010B04                 lea     eax, [ebp+1310h+var_28C]
.text:10010B0A
.text:10010B0A loc_10010B0A:                           ; CODE XREF: sub_100106FA+3E7↑j
.text:10010B0A                                         ; sub_100106FA+3EE↑j
.text:10010B0A                 push    eax             ; Destination
.text:10010B0B                 call    sub_1000A5E4
.text:10010B10                 pop     ecx
.text:10010B11                 pop     ecx
.text:10010B12                 lea     eax, [ebp+1310h+var_28C]
.text:10010B18                 push    eax
.text:10010B19                 push    dword ptr [edi+610h]
.text:10010B1F                 push    offset aViewpointDS ; "Viewpoint       : %d (%s)\n"
.text:10010B24                 push    Stream          ; Stream
.text:10010B2A                 call    esi ; __imp_fwprintf
.text:10010B2C                 push    dword ptr [edi+614h]
.text:10010B32                 push    offset aToleranceD ; "Tolerance       : %d\n"
.text:10010B37                 push    Stream          ; Stream
.text:10010B3D                 call    esi ; __imp_fwprintf
.text:10010B3F                 push    dword ptr [edi+618h]
.text:10010B45                 push    offset aMessageLevelD ; "Message Level   : %d\n"
.text:10010B4A                 push    Stream          ; Stream
.text:10010B50                 call    esi ; __imp_fwprintf
.text:10010B52                 push    dword ptr [edi+61Ch]
.text:10010B58                 push    offset aDemoModeD ; "Demo Mode       : %d\n"
.text:10010B5D                 push    Stream          ; Stream
.text:10010B63                 call    esi ; __imp_fwprintf
.text:10010B65                 push    Stream          ; Stream
.text:10010B6B                 call    ds:__imp_fflush
.text:10010B71                 mov     ebx, ds:__imp_wcslen
.text:10010B77                 push    edi             ; String
.text:10010B78                 call    ebx ; __imp_wcslen
.text:10010B7A                 add     esp, 3Ch
.text:10010B7D                 test    eax, eax
.text:10010B7F                 jbe     short loc_10010BB0
.text:10010B81                 lea     eax, [edi+200h]
.text:10010B87                 push    eax             ; String
.text:10010B88                 call    ebx ; __imp_wcslen
.text:10010B8A                 pop     ecx
.text:10010B8B                 test    eax, eax
.text:10010B8D                 jbe     short loc_10010BB0
.text:10010B8F                 lea     eax, [edi+400h]
.text:10010B95                 push    eax             ; String
.text:10010B96                 call    ebx ; __imp_wcslen
.text:10010B98                 pop     ecx
.text:10010B99                 test    eax, eax
.text:10010B9B                 jbe     short loc_10010BB0
.text:10010B9D                 push    edi             ; Source
.text:10010B9E                 mov     dword_100AEEAC, 1
.text:10010BA8                 call    sub_1000BD56
.text:10010BAD                 pop     ecx
.text:10010BAE                 jmp     short loc_10010BBA
.text:10010BB0 ; ---------------------------------------------------------------------------
.text:10010BB0
.text:10010BB0 loc_10010BB0:                           ; CODE XREF: sub_100106FA+485↑j
.text:10010BB0                                         ; sub_100106FA+493↑j ...
.text:10010BB0                 and     dword_100AEEAC, 0
.text:10010BB7                 xor     eax, eax
.text:10010BB9                 inc     eax
.text:10010BBA
.text:10010BBA loc_10010BBA:                           ; CODE XREF: sub_100106FA+4B4↑j
.text:10010BBA                 push    eax
.text:10010BBB                 push    dword_100AEEAC
.text:10010BC1                 mov     dword_100A1EE4, eax
.text:10010BC6                 push    offset aProjectModeDVe ; "Project Mode : %d : Version %d\n"
.text:10010BCB                 push    Stream          ; Stream
.text:10010BD1                 call    esi ; __imp_fwprintf
.text:10010BD3                 push    Stream          ; Stream
.text:10010BD9                 call    ds:__imp_fflush
.text:10010BDF                 add     esp, 14h
.text:10010BE2                 cmp     dword_100AEEAC, 1
.text:10010BE9                 push    [ebp+1310h+Source] ; Source
.text:10010BEC                 jnz     loc_10010CC7
.text:10010BF2                 xor     eax, eax
.text:10010BF4                 inc     eax
.text:10010BF5                 mov     dword ptr [ebp+1310h+ArgList], eax
.text:10010BF8                 cmp     dword_100A1EE4, eax
.text:10010BFE                 jnz     short loc_10010C64
.text:10010C00                 call    ebx ; __imp_wcslen
.text:10010C02                 pop     ecx
.text:10010C03                 mov     ebx, offset word_100BDBA8
.text:10010C08                 test    eax, eax
.text:10010C0A                 jnz     short loc_10010C2B
.text:10010C0C                 lea     eax, [edi+400h]
.text:10010C12                 push    eax
.text:10010C13                 lea     eax, [edi+200h]
.text:10010C19                 push    eax
.text:10010C1A                 push    edi             ; ArgList
.text:10010C1B                 push    offset aSpisogenProjec_0 ; "%sPISOGEN\\PROJECTS\\%s\\%s"
.text:10010C20                 push    ebx             ; Buffer
.text:10010C21                 call    sub_1000A605
.text:10010C26                 add     esp, 14h
.text:10010C29                 jmp     short loc_10010C36
.text:10010C2B ; ---------------------------------------------------------------------------
.text:10010C2B
.text:10010C2B loc_10010C2B:                           ; CODE XREF: sub_100106FA+510↑j
.text:10010C2B                 push    [ebp+1310h+Source] ; Source
.text:10010C2E                 push    ebx             ; Destination
.text:10010C2F                 call    sub_100047B9
.text:10010C34                 pop     ecx
.text:10010C35                 pop     ecx
.text:10010C36
.text:10010C36 loc_10010C36:                           ; CODE XREF: sub_100106FA+52F↑j
.text:10010C36                 push    edi             ; ArgList
.text:10010C37                 push    offset aSpisogenProgra_0 ; "%sPISOGEN\\PROGRAMS"
.text:10010C3C                 push    offset String   ; Buffer
.text:10010C41                 call    sub_1000A605
.text:10010C46                 add     esp, 0Ch
.text:10010C49
.text:10010C49 loc_10010C49:                           ; CODE XREF: sub_100106FA+5B6↓j
.text:10010C49                 push    [ebp+1310h+var_1360]
.text:10010C4C                 push    ebx             ; ArgList
.text:10010C4D                 push    offset aSS_1    ; "%s\\%s"
.text:10010C52                 push    offset FileName ; Buffer
.text:10010C57                 call    sub_1000A605
.text:10010C5C                 add     esp, 10h
.text:10010C5F                 jmp     loc_10010CF8
.text:10010C64 ; ---------------------------------------------------------------------------
.text:10010C64
.text:10010C64 loc_10010C64:                           ; CODE XREF: sub_100106FA+504↑j
.text:10010C64                 call    ebx ; __imp_wcslen
.text:10010C66                 pop     ecx
.text:10010C67                 mov     ebx, offset word_100BDBA8
.text:10010C6C                 test    eax, eax
.text:10010C6E                 jnz     short loc_10010C8F
.text:10010C70                 lea     eax, [edi+400h]
.text:10010C76                 push    eax
.text:10010C77                 lea     eax, [edi+200h]
.text:10010C7D                 push    eax
.text:10010C7E                 push    edi             ; ArgList
.text:10010C7F                 push    offset aSSS_0   ; "%s%s\\%s"
.text:10010C84                 push    ebx             ; Buffer
.text:10010C85                 call    sub_1000A605
.text:10010C8A                 add     esp, 14h
.text:10010C8D                 jmp     short loc_10010C9A
.text:10010C8F ; ---------------------------------------------------------------------------
.text:10010C8F
.text:10010C8F loc_10010C8F:                           ; CODE XREF: sub_100106FA+574↑j
.text:10010C8F                 push    [ebp+1310h+Source] ; Source
.text:10010C92                 push    ebx             ; Destination
.text:10010C93                 call    sub_100047B9
.text:10010C98                 pop     ecx
.text:10010C99                 pop     ecx
.text:10010C9A
.text:10010C9A loc_10010C9A:                           ; CODE XREF: sub_100106FA+593↑j
.text:10010C9A                 push    100h            ; nBufferLength
.text:10010C9F                 push    offset String   ; Destination
.text:10010CA4                 call    sub_10009D35
.text:10010CA9                 pop     ecx
.text:10010CAA                 pop     ecx
.text:10010CAB                 mov     [ebp+1310h+var_1344], eax
.text:10010CAE                 test    eax, eax
.text:10010CB0                 jz      short loc_10010C49
.text:10010CB2
.text:10010CB2 loc_10010CB2:                           ; CODE XREF: sub_100106FA+70E↓j
.text:10010CB2                                         ; sub_100106FA+71E↓j ...
.text:10010CB2                 push    [ebp+1310h+var_1340] ; Destination
.text:10010CB5
.text:10010CB5 loc_10010CB5:                           ; CODE XREF: sub_100106FA+6E7↓j
.text:10010CB5                 push    [ebp+1310h+var_1344] ; int
.text:10010CB8                 call    sub_10008731
.text:10010CBD                 mov     eax, [ebp+1310h+var_1344]
.text:10010CC0                 pop     ecx
.text:10010CC1                 pop     ecx
.text:10010CC2                 jmp     loc_10011CFE
.text:10010CC7 ; ---------------------------------------------------------------------------
.text:10010CC7
.text:10010CC7 loc_10010CC7:                           ; CODE XREF: sub_100106FA+4F2↑j
.text:10010CC7                 mov     ebx, offset word_100BDBA8
.text:10010CCC                 push    ebx             ; Destination
.text:10010CCD                 mov     dword ptr [ebp+1310h+ArgList], 2
.text:10010CD4                 call    sub_100047B9
.text:10010CD9                 push    offset Locale   ; Source
.text:10010CDE                 push    offset String   ; Destination
.text:10010CE3                 call    sub_100047B9
.text:10010CE8                 push    [ebp+1310h+var_1360] ; Source
.text:10010CEB                 push    offset FileName ; Destination
.text:10010CF0                 call    sub_100047B9
.text:10010CF5                 add     esp, 18h
.text:10010CF8
.text:10010CF8 loc_10010CF8:                           ; CODE XREF: sub_100106FA+565↑j
.text:10010CF8                 push    ebx
.text:10010CF9                 push    offset aIsotypedirS ; "ISOTYPEDir : (%s)\n"
.text:10010CFE                 push    Stream          ; Stream
.text:10010D04                 call    esi ; __imp_fwprintf
.text:10010D06                 push    offset String
.text:10010D0B                 push    offset aProgsdirS ; "PROGSDir   : (%s)\n"
.text:10010D10                 push    Stream          ; Stream
.text:10010D16                 call    esi ; __imp_fwprintf
.text:10010D18                 push    offset FileName
.text:10010D1D                 push    offset aFlsfileS ; "FLSFile    : (%s)\n"
.text:10010D22                 push    Stream          ; Stream
.text:10010D28                 call    esi ; __imp_fwprintf
.text:10010D2A                 push    Stream          ; Stream
.text:10010D30                 call    ds:__imp_fflush
.text:10010D36                 push    ebx
.text:10010D37                 call    sub_1000999D
.text:10010D3C                 add     esp, 2Ch
.text:10010D3F                 test    eax, eax
.text:10010D41                 jnz     short loc_10010D56
.text:10010D43                 push    [ebp+1310h+var_1340] ; Destination
.text:10010D46                 push    32h ; '2'       ; int
.text:10010D48                 call    sub_10008731
.text:10010D4D                 pop     ecx
.text:10010D4E                 pop     ecx
.text:10010D4F                 push    32h ; '2'
.text:10010D51                 jmp     loc_10011CFD
.text:10010D56 ; ---------------------------------------------------------------------------
.text:10010D56
.text:10010D56 loc_10010D56:                           ; CODE XREF: sub_100106FA+647↑j
.text:10010D56                 push    offset String
.text:10010D5B                 call    sub_1000999D
.text:10010D60                 add     esp, 4
.text:10010D63                 test    eax, eax
.text:10010D65                 jnz     short loc_10010D7A
.text:10010D67                 push    [ebp+1310h+var_1340] ; Destination
.text:10010D6A                 push    33h ; '3'       ; int
.text:10010D6C                 call    sub_10008731
.text:10010D71                 pop     ecx
.text:10010D72                 pop     ecx
.text:10010D73                 push    33h ; '3'
.text:10010D75                 jmp     loc_10011CFD
.text:10010D7A ; ---------------------------------------------------------------------------
.text:10010D7A
.text:10010D7A loc_10010D7A:                           ; CODE XREF: sub_100106FA+66B↑j
.text:10010D7A                 mov     eax, [edi+604h]
.text:10010D80                 and     [ebp+1310h+var_1360], 0
.text:10010D84                 and     [ebp+1310h+var_135C], 0
.text:10010D88                 mov     [ebp+1310h+var_1380], eax
.text:10010D8B                 mov     eax, [edi+600h]
.text:10010D91                 mov     [ebp+1310h+var_134F], 0
.text:10010D95                 mov     [ebp+1310h+var_1350], 0
.text:10010D99                 mov     [ebp+1310h+var_1351], 0
.text:10010D9D                 mov     [ebp+1310h+var_134D], 0
.text:10010DA1                 mov     [ebp+1310h+var_134E], 0
.text:10010DA5                 mov     [ebp+1310h+Source], eax
.text:10010DA8
.text:10010DA8 loc_10010DA8:                           ; CODE XREF: sub_100106FA+F04↓j
.text:10010DA8                 mov     ebx, offset word_100AF2B0
.text:10010DAD
.text:10010DAD def_10010DB6:                           ; CODE XREF: sub_100106FA+6BA↓j
.text:10010DAD                                         ; sub_100106FA+72B↓j ...
.text:10010DAD                 mov     eax, dword ptr [ebp+1310h+ArgList] ; jumptable 10010DB6 default case
.text:10010DB0                 dec     eax             ; switch 11 cases
.text:10010DB1                 cmp     eax, 0Ah
.text:10010DB4                 ja      short def_10010DB6 ; jumptable 10010DB6 default case
.text:10010DB6                 jmp     ds:jpt_10010DB6[eax*4] ; switch jump
.text:10010DBD ; ---------------------------------------------------------------------------
.text:10010DBD
.text:10010DBD loc_10010DBD:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:10010DBD                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:10010DBD                 push    offset dword_100BC784 ; jumptable 10010DB6 case 1
.text:10010DC2                 lea     eax, [edi+400h]
.text:10010DC8                 push    eax
.text:10010DC9                 lea     eax, [edi+200h]
.text:10010DCF                 push    eax
.text:10010DD0                 push    edi
.text:10010DD1                 call    sub_1000E016
.text:10010DD6                 add     esp, 10h
.text:10010DD9                 push    [ebp+1310h+var_1340] ; Destination
.text:10010DDC                 mov     [ebp+1310h+var_1344], eax
.text:10010DDF                 test    eax, eax
.text:10010DE1                 jnz     loc_10010CB5
.text:10010DE7                 push    offset word_100BD7A0 ; ArgList
.text:10010DEC                 lea     eax, [edi+400h]
.text:10010DF2                 push    eax             ; wchar_t *
.text:10010DF3                 lea     eax, [edi+200h]
.text:10010DF9                 push    eax             ; String
.text:10010DFA                 push    edi             ; Source
.text:10010DFB                 call    sub_1000AFB5
.text:10010E00                 add     esp, 14h
.text:10010E03                 mov     [ebp+1310h+var_1344], eax
.text:10010E06                 test    eax, eax
.text:10010E08                 jnz     loc_10010CB2
.text:10010E0E                 call    sub_10008D19
.text:10010E13                 mov     [ebp+1310h+var_1344], eax
.text:10010E16                 test    eax, eax
.text:10010E18                 jnz     loc_10010CB2
.text:10010E1E
.text:10010E1E loc_10010E1E:                           ; CODE XREF: sub_100106FA+757↓j
.text:10010E1E                 mov     dword ptr [ebp+1310h+ArgList], 3
.text:10010E25                 jmp     short def_10010DB6 ; jumptable 10010DB6 default case
.text:10010E27 ; ---------------------------------------------------------------------------
.text:10010E27
.text:10010E27 loc_10010E27:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:10010E27                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:10010E27                 xor     eax, eax        ; jumptable 10010DB6 case 2
.text:10010E29                 push    offset dword_100BC784
.text:10010E2E                 push    eax
.text:10010E2F                 push    eax
.text:10010E30                 push    eax
.text:10010E31                 call    sub_1000E016
.text:10010E36                 add     esp, 10h
.text:10010E39                 mov     [ebp+1310h+var_1344], eax
.text:10010E3C                 test    eax, eax
.text:10010E3E                 jnz     loc_10010CB2
.text:10010E44                 push    offset word_100BD7A0 ; ArgList
.text:10010E49                 call    sub_1000B116
.text:10010E4E                 pop     ecx
.text:10010E4F                 test    eax, eax
.text:10010E51                 jz      short loc_10010E1E
.text:10010E53                 push    [ebp+1310h+var_1340] ; Destination
.text:10010E56                 push    3Ch ; '<'       ; int
.text:10010E58                 call    sub_10008731
.text:10010E5D                 pop     ecx
.text:10010E5E                 pop     ecx
.text:10010E5F                 push    3Ch ; '<'
.text:10010E61                 jmp     loc_10011CFD
.text:10010E66 ; ---------------------------------------------------------------------------
.text:10010E66
.text:10010E66 loc_10010E66:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:10010E66                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:10010E66                 push    3               ; jumptable 10010DB6 case 3
.text:10010E68                 push    offset word_100BD7A0 ; String
.text:10010E6D                 call    ds:__imp_wcslen
.text:10010E73                 pop     ecx
.text:10010E74                 lea     eax, word_100BD79A[eax*2]
.text:10010E7B                 push    eax             ; Source
.text:10010E7C                 lea     eax, [ebp+1310h+Destination]
.text:10010E82                 push    eax             ; Destination
.text:10010E83                 call    ds:__imp_wcsncpy
.text:10010E89                 push    3               ; MaxCount
.text:10010E8B                 lea     eax, [ebp+1310h+Destination]
.text:10010E91                 push    offset aPcf_0   ; "pcf"
.text:10010E96                 push    eax             ; String1
.text:10010E97                 call    ds:__imp__wcsnicmp
.text:10010E9D                 add     esp, 18h
.text:10010EA0                 test    eax, eax
.text:10010EA2                 jnz     short loc_10010EB0
.text:10010EA4                 mov     dword ptr [ebp+1310h+ArgList], 4
.text:10010EAB                 jmp     def_10010DB6    ; jumptable 10010DB6 default case
.text:10010EB0 ; ---------------------------------------------------------------------------
.text:10010EB0
.text:10010EB0 loc_10010EB0:                           ; CODE XREF: sub_100106FA+7A8↑j
.text:10010EB0                 push    3               ; MaxCount
.text:10010EB2                 lea     eax, [ebp+1310h+Destination]
.text:10010EB8                 push    offset aIdf_0   ; "idf"
.text:10010EBD                 push    eax             ; String1
.text:10010EBE                 call    ds:__imp__wcsnicmp
.text:10010EC4                 add     esp, 0Ch
.text:10010EC7                 test    eax, eax
.text:10010EC9                 jnz     short loc_10010EE4
.text:10010ECB                 cmp     [ebp+1310h+arg_18], 2
.text:10010ED2                 jz      loc_10011A91
.text:10010ED8                 mov     dword ptr [ebp+1310h+ArgList], 5
.text:10010EDF                 jmp     def_10010DB6    ; jumptable 10010DB6 default case
.text:10010EE4 ; ---------------------------------------------------------------------------
.text:10010EE4
.text:10010EE4 loc_10010EE4:                           ; CODE XREF: sub_100106FA+7CF↑j
.text:10010EE4                 push    3               ; MaxCount
.text:10010EE6                 lea     eax, [ebp+1310h+Destination]
.text:10010EEC                 push    offset aDat_0   ; "dat"
.text:10010EF1                 push    eax             ; String1
.text:10010EF2                 call    ds:__imp__wcsnicmp
.text:10010EF8                 add     esp, 0Ch
.text:10010EFB                 test    eax, eax
.text:10010EFD                 jnz     short loc_10010F18
.text:10010EFF                 cmp     [ebp+1310h+arg_18], 2
.text:10010F06                 jz      loc_10011A91
.text:10010F0C                 mov     dword ptr [ebp+1310h+ArgList], 6
.text:10010F13                 jmp     def_10010DB6    ; jumptable 10010DB6 default case
.text:10010F18 ; ---------------------------------------------------------------------------
.text:10010F18
.text:10010F18 loc_10010F18:                           ; CODE XREF: sub_100106FA+803↑j
.text:10010F18                 lea     eax, [ebp+1310h+Destination]
.text:10010F1E                 push    eax
.text:10010F1F                 push    offset aUnrecognisedFi ; "Unrecognised file extension : (%s)\n"
.text:10010F24                 push    Stream          ; Stream
.text:10010F2A                 call    esi ; __imp_fwprintf
.text:10010F2C                 push    offset aDeterminingFil ; "Determining file format ..."
.text:10010F31                 push    Stream          ; Stream
.text:10010F37                 call    esi ; __imp_fwprintf
.text:10010F39                 push    Stream          ; Stream
.text:10010F3F                 call    ds:__imp_fflush
.text:10010F45                 push    offset word_100BD7A0 ; FileName
.text:10010F4A                 call    sub_100099A1
.text:10010F4F                 add     esp, 1Ch
.text:10010F52                 mov     dword ptr [ebp+1310h+ArgList], eax
.text:10010F55                 test    eax, eax
.text:10010F57                 jz      loc_10011AA4
.text:10010F5D                 sub     eax, 4
.text:10010F60                 jz      short loc_10010F76
.text:10010F62                 dec     eax
.text:10010F63                 jz      short loc_10010F6F
.text:10010F65                 dec     eax
.text:10010F66                 jnz     short loc_10010F85
.text:10010F68                 push    offset aIdfBinary ; " : IDF (Binary)\n"
.text:10010F6D                 jmp     short loc_10010F7B
.text:10010F6F ; ---------------------------------------------------------------------------
.text:10010F6F
.text:10010F6F loc_10010F6F:                           ; CODE XREF: sub_100106FA+869↑j
.text:10010F6F                 push    offset aIdfAscii ; " : IDF (Ascii)\n"
.text:10010F74                 jmp     short loc_10010F7B
.text:10010F76 ; ---------------------------------------------------------------------------
.text:10010F76
.text:10010F76 loc_10010F76:                           ; CODE XREF: sub_100106FA+866↑j
.text:10010F76                 push    offset aPcf_1   ; " : PCF\n"
.text:10010F7B
.text:10010F7B loc_10010F7B:                           ; CODE XREF: sub_100106FA+873↑j
.text:10010F7B                                         ; sub_100106FA+87A↑j
.text:10010F7B                 push    Stream          ; Stream
.text:10010F81                 call    esi ; __imp_fwprintf
.text:10010F83                 pop     ecx
.text:10010F84                 pop     ecx
.text:10010F85
.text:10010F85 loc_10010F85:                           ; CODE XREF: sub_100106FA+86C↑j
.text:10010F85                 push    Stream          ; Stream
.text:10010F8B                 call    ds:__imp_fflush
.text:10010F91
.text:10010F91 loc_10010F91:                           ; CODE XREF: sub_100106FA+1260↓j
.text:10010F91                 pop     ecx
.text:10010F92                 jmp     def_10010DB6    ; jumptable 10010DB6 default case
.text:10010F97 ; ---------------------------------------------------------------------------
.text:10010F97
.text:10010F97 loc_10010F97:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:10010F97                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:10010F97                 cmp     dword_100AEEAC, 1 ; jumptable 10010DB6 case 4
.text:10010F9E                 push    offset aIsogenIdx ; "isogen.idx"
.text:10010FA3                 jnz     loc_1001105D
.text:10010FA9                 call    sub_10008CE4
.text:10010FAE                 mov     [esp+1394h+FileName], offset aIsogenPcf ; "isogen.pcf"
.text:10010FB5                 call    sub_10008CE4
.text:10010FBA                 cmp     dword_100A1EE4, 1
.text:10010FC1                 pop     ecx
.text:10010FC2                 push    offset word_100BD7A0 ; ArgList
.text:10010FC7                 jnz     short loc_1001102E
.text:10010FC9                 push    edi             ; ArgList
.text:10010FCA                 push    offset aSpisogenTemfil_0 ; "%sPISOGEN\\TEMFILES\\%s"
.text:10010FCF                 push    ebx             ; Buffer
.text:10010FD0                 call    sub_1000A605
.text:10010FD5                 push    offset aIsogenPcf ; "isogen.pcf"
.text:10010FDA                 push    offset aS       ; "%s"
.text:10010FDF                 push    offset word_100BD9A8 ; Buffer
.text:10010FE4                 call    sub_1000A605
.text:10010FE9                 push    offset word_100BD9A8 ; String2
.text:10010FEE                 push    ebx             ; String1
.text:10010FEF                 call    sub_10008CB0
.text:10010FF4                 add     esp, 24h
.text:10010FF7
.text:10010FF7 loc_10010FF7:                           ; CODE XREF: sub_100106FA+961↓j
.text:10010FF7                 test    eax, eax
.text:10010FF9                 jnz     loc_10011AD1
.text:10010FFF                 push    offset FileName ; Source
.text:10011004                 push    ebx             ; Destination
.text:10011005                 call    sub_100047B9
.text:1001100A                 push    offset NewFileName ; "isogen.fls"
.text:1001100F                 push    offset aS       ; "%s"
.text:10011014                 push    offset word_100BD9A8 ; Buffer
.text:10011019                 call    sub_1000A605
.text:1001101E                 push    offset word_100BD9A8 ; String2
.text:10011023                 push    ebx             ; String1
.text:10011024                 call    sub_10008CB0
.text:10011029                 add     esp, 1Ch
.text:1001102C                 jmp     short loc_100110A2
.text:1001102E ; ---------------------------------------------------------------------------
.text:1001102E
.text:1001102E loc_1001102E:                           ; CODE XREF: sub_100106FA+8CD↑j
.text:1001102E                 push    offset aS       ; "%s"
.text:10011033                 push    ebx             ; Buffer
.text:10011034                 call    sub_1000A605
.text:10011039                 push    offset aIsogenPcf ; "isogen.pcf"
.text:1001103E                 push    offset aS       ; "%s"
.text:10011043                 push    offset word_100BD9A8 ; Buffer
.text:10011048                 call    sub_1000A605
.text:1001104D                 push    offset word_100BD9A8 ; String2
.text:10011052                 push    ebx             ; String1
.text:10011053                 call    sub_10008CB0
.text:10011058                 add     esp, 20h
.text:1001105B                 jmp     short loc_10010FF7
.text:1001105D ; ---------------------------------------------------------------------------
.text:1001105D
.text:1001105D loc_1001105D:                           ; CODE XREF: sub_100106FA+8A9↑j
.text:1001105D                 call    sub_10008CE4
.text:10011062                 mov     [esp+1394h+FileName], offset aIsogenPcf ; "isogen.pcf"
.text:10011069                 call    sub_10008CE4
.text:1001106E                 mov     [esp+1394h+FileName], offset word_100BD7A0 ; ArgList
.text:10011075                 push    offset aS       ; "%s"
.text:1001107A                 push    ebx             ; Buffer
.text:1001107B                 call    sub_1000A605
.text:10011080                 push    offset aIsogenPcf ; "isogen.pcf"
.text:10011085                 push    offset aS       ; "%s"
.text:1001108A                 push    offset word_100BD9A8 ; Buffer
.text:1001108F                 call    sub_1000A605
.text:10011094                 push    offset word_100BD9A8 ; String2
.text:10011099                 push    ebx             ; String1
.text:1001109A                 call    sub_10008CB0
.text:1001109F                 add     esp, 20h
.text:100110A2
.text:100110A2 loc_100110A2:                           ; CODE XREF: sub_100106FA+932↑j
.text:100110A2                 test    eax, eax
.text:100110A4                 jnz     loc_10011AD1
.text:100110AA                 lea     eax, [ebp+1310h+var_1368]
.text:100110AD                 push    eax             ; int
.text:100110AE                 push    offset aIsogenPcf ; "isogen.pcf"
.text:100110B3                 push    4               ; int
.text:100110B5                 call    sub_1000B9F7
.text:100110BA                 add     esp, 0Ch
.text:100110BD                 mov     [ebp+1310h+var_1344], eax
.text:100110C0                 test    eax, eax
.text:100110C2                 jnz     loc_10010CB2
.text:100110C8                 lea     eax, [ebp+1310h+Str]
.text:100110CE                 push    offset aIsogenPcf ; "isogen.pcf"
.text:100110D3                 push    eax             ; Destination
.text:100110D4                 call    sub_1000A5A1
.text:100110D9                 lea     eax, [ebp+1310h+Str]
.text:100110DF                 push    2Eh ; '.'       ; Ch
.text:100110E1                 push    eax             ; Str
.text:100110E2                 call    ds:__imp_wcschr
.text:100110E8                 add     esp, 10h
.text:100110EB                 test    eax, eax
.text:100110ED                 jz      short loc_10011103
.text:100110EF                 lea     ecx, [ebp+1310h+Str]
.text:100110F5                 sub     eax, ecx
.text:100110F7                 sar     eax, 1
.text:100110F9                 xor     ecx, ecx
.text:100110FB                 mov     [ebp+eax*2+1310h+Str], cx
.text:10011103
.text:10011103 loc_10011103:                           ; CODE XREF: sub_100106FA+9F3↑j
.text:10011103                 push    [ebp+1310h+var_1358]
.text:10011106                 push    offset aMessage ; "MESSAGE"
.text:1001110B                 call    sub_10008D47
.text:10011110                 pop     ecx
.text:10011111                 pop     ecx
.text:10011112                 test    eax, eax
.text:10011114                 jnz     loc_10011B04
.text:1001111A                 cmp     dword_100A1EE4, 1
.text:10011121                 push    [ebp+1310h+var_1358]
.text:10011124                 jnz     short loc_1001112D
.text:10011126                 push    offset word_100A1EE8
.text:1001112B                 jmp     short loc_10011132
.text:1001112D ; ---------------------------------------------------------------------------
.text:1001112D
.text:1001112D loc_1001112D:                           ; CODE XREF: sub_100106FA+A2A↑j
.text:1001112D                 push    offset word_100BD7A0
.text:10011132
.text:10011132 loc_10011132:                           ; CODE XREF: sub_100106FA+A31↑j
.text:10011132                 push    offset NewFileName ; "isogen.fls"
.text:10011137                 push    4
.text:10011139                 call    sub_1000F4AC
.text:1001113E                 add     esp, 10h
.text:10011141                 mov     [ebp+1310h+var_1344], eax
.text:10011144                 test    eax, eax
.text:10011146                 jnz     loc_10010CB2
.text:1001114C                 lea     eax, [ebp+1310h+var_30C]
.text:10011152                 push    offset aOptionSwitches ; "OPTION-SWITCHES-LONG"
.text:10011157                 push    eax             ; Destination
.text:10011158                 call    sub_1000A621
.text:1001115D                 lea     eax, [ebp+1310h+String1]
.text:10011163                 push    eax
.text:10011164                 lea     eax, [ebp+1310h+var_30C]
.text:1001116A                 push    eax
.text:1001116B                 mov     byte ptr [ebp+1310h+var_1364], 1
.text:1001116F                 call    sub_10008D47
.text:10011174                 add     esp, 10h
.text:10011177                 test    eax, eax
.text:10011179                 jz      short loc_100111AE
.text:1001117B                 lea     eax, [ebp+1310h+var_30C]
.text:10011181                 push    offset aOptionSwitches_0 ; "OPTION-SWITCHES-SHORT"
.text:10011186                 push    eax             ; Destination
.text:10011187                 call    sub_1000A621
.text:1001118C                 lea     eax, [ebp+1310h+String1]
.text:10011192                 push    eax
.text:10011193                 lea     eax, [ebp+1310h+var_30C]
.text:10011199                 push    eax
.text:1001119A                 mov     byte ptr [ebp+1310h+var_1364], 0
.text:1001119E                 call    sub_10008D47
.text:100111A3                 add     esp, 10h
.text:100111A6                 test    eax, eax
.text:100111A8                 jnz     loc_10011B17
.text:100111AE
.text:100111AE loc_100111AE:                           ; CODE XREF: sub_100106FA+A7F↑j
.text:100111AE                 cmp     dword_100AEEAC, 1
.text:100111B5                 jnz     loc_10011274
.text:100111BB                 lea     eax, [ebp+1310h+Ext]
.text:100111C1                 push    eax             ; Ext
.text:100111C2                 lea     eax, [ebp+1310h+Filename]
.text:100111C8                 push    eax             ; Filename
.text:100111C9                 push    0               ; Dir
.text:100111CB                 lea     eax, [ebp+1310h+String1]
.text:100111D1                 push    0               ; Drive
.text:100111D3                 push    eax             ; FullPath
.text:100111D4                 call    ds:__imp__wsplitpath
.text:100111DA                 lea     eax, [ebp+1310h+Ext]
.text:100111E0                 push    eax             ; Ext
.text:100111E1                 lea     eax, [ebp+1310h+Filename]
.text:100111E7                 push    eax             ; Filename
.text:100111E8                 push    0               ; Dir
.text:100111EA                 push    0               ; Drive
.text:100111EC                 lea     eax, [ebp+1310h+Buffer]
.text:100111F2                 push    105h            ; BufferCount
.text:100111F7                 push    eax             ; Buffer
.text:100111F8                 call    ds:__imp__wmakepath_s
.text:100111FE                 lea     eax, [ebp+1310h+Buffer]
.text:10011204                 push    eax             ; String2
.text:10011205                 lea     eax, [ebp+1310h+String1]
.text:1001120B                 push    eax             ; String1
.text:1001120C                 call    sub_10008CB0
.text:10011211                 add     esp, 34h
.text:10011214                 test    eax, eax
.text:10011216                 lea     eax, [ebp+1310h+Buffer]
.text:1001121C                 jnz     loc_10011B2A
.text:10011222                 push    [ebp+1310h+var_1364]
.text:10011225                 push    eax
.text:10011226                 lea     eax, [ebp+1310h+Source]
.text:10011229                 push    eax
.text:1001122A                 push    dword ptr [edi+614h]
.text:10011230                 lea     eax, [edi+400h]
.text:10011236                 push    eax
.text:10011237                 lea     eax, [edi+200h]
.text:1001123D                 push    eax
.text:1001123E                 push    edi
.text:1001123F                 call    sub_1000B13D
.text:10011244                 add     esp, 1Ch
.text:10011247                 mov     [ebp+1310h+var_1344], eax
.text:1001124A                 test    eax, eax
.text:1001124C                 jnz     loc_10010CB2
.text:10011252                 lea     eax, [ebp+1310h+Buffer]
.text:10011258                 push    eax
.text:10011259                 lea     eax, [ebp+1310h+var_30C]
.text:1001125F                 push    eax
.text:10011260                 call    sub_1000E24E
.text:10011265                 pop     ecx
.text:10011266                 pop     ecx
.text:10011267                 mov     [ebp+1310h+var_1344], eax
.text:1001126A                 test    eax, eax
.text:1001126C                 jnz     loc_10010CB2
.text:10011272                 jmp     short loc_100112B0
.text:10011274 ; ---------------------------------------------------------------------------
.text:10011274
.text:10011274 loc_10011274:                           ; CODE XREF: sub_100106FA+ABB↑j
.text:10011274                 lea     eax, [ebp+1310h+String1]
.text:1001127A                 push    eax             ; Source
.text:1001127B                 lea     eax, [ebp+1310h+Buffer]
.text:10011281                 push    eax             ; Destination
.text:10011282                 call    sub_1000A5E4
.text:10011287                 push    [ebp+1310h+var_1364]
.text:1001128A                 lea     eax, [ebp+1310h+Buffer]
.text:10011290                 push    eax
.text:10011291                 lea     eax, [ebp+1310h+Source]
.text:10011294                 push    eax
.text:10011295                 push    dword ptr [edi+614h]
.text:1001129B                 xor     eax, eax
.text:1001129D                 push    eax
.text:1001129E                 push    eax
.text:1001129F                 push    eax
.text:100112A0                 call    sub_1000B13D
.text:100112A5                 add     esp, 24h
.text:100112A8                 test    eax, eax
.text:100112AA                 jnz     loc_10011B55
.text:100112B0
.text:100112B0 loc_100112B0:                           ; CODE XREF: sub_100106FA+B78↑j
.text:100112B0                 push    offset OldFileName ; "isogen.slf"
.text:100112B5                 call    sub_10008CE4
.text:100112BA                 push    [ebp+1310h+var_1358] ; FileName
.text:100112BD                 call    sub_1000D570
.text:100112C2                 pop     ecx
.text:100112C3                 pop     ecx
.text:100112C4                 test    eax, eax
.text:100112C6                 jnz     loc_10011B69
.text:100112CC                 call    AliasTm
.text:100112D1                 push    eax             ; Seed
.text:100112D2                 lea     eax, [ebp+1310h+var_60]
.text:100112D8                 push    eax             ; int
.text:100112D9                 push    dword_100AF6B4  ; int
.text:100112DF                 call    sub_10019640
.text:100112E4                 lea     eax, [ebp+1310h+var_60]
.text:100112EA                 push    eax
.text:100112EB                 call    sub_1000EA24
.text:100112F0                 add     esp, 10h
.text:100112F3                 cmp     dword_100AEEAC, 1
.text:100112FA                 mov     dword_1002CB5C, eax
.text:100112FF                 push    offset aIsogenPcf ; "isogen.pcf"
.text:10011304                 jnz     short loc_1001131A
.text:10011306                 call    sub_10008CE4
.text:1001130B                 mov     [esp+1394h+FileName], offset NewFileName ; "isogen.fls"
.text:10011312                 call    sub_10008CE4
.text:10011317                 pop     ecx
.text:10011318                 jmp     short loc_10011325
.text:1001131A ; ---------------------------------------------------------------------------
.text:1001131A
.text:1001131A loc_1001131A:                           ; CODE XREF: sub_100106FA+C0A↑j
.text:1001131A                 call    sub_10008CE4
.text:1001131F                 pop     ecx
.text:10011320                 call    sub_10009A33
.text:10011325
.text:10011325 loc_10011325:                           ; CODE XREF: sub_100106FA+C1E↑j
.text:10011325                 mov     eax, dword_1002CB5C
.text:1001132A                 test    eax, eax
.text:1001132C                 jz      short loc_10011351
.text:1001132E                 cmp     eax, 16h
.text:10011331                 jnz     short loc_10011339
.text:10011333                 mov     [ebp+1310h+var_134F], 1
.text:10011337                 jmp     short loc_10011351
.text:10011339 ; ---------------------------------------------------------------------------
.text:10011339
.text:10011339 loc_10011339:                           ; CODE XREF: sub_100106FA+C37↑j
.text:10011339                 cmp     eax, 17h
.text:1001133C                 jnz     short loc_10011344
.text:1001133E                 mov     [ebp+1310h+var_1350], 1
.text:10011342                 jmp     short loc_10011351
.text:10011344 ; ---------------------------------------------------------------------------
.text:10011344
.text:10011344 loc_10011344:                           ; CODE XREF: sub_100106FA+C42↑j
.text:10011344                 cmp     eax, 18h
.text:10011347                 jnz     loc_10011B7C
.text:1001134D                 mov     [ebp+1310h+var_1351], 1
.text:10011351
.text:10011351 loc_10011351:                           ; CODE XREF: sub_100106FA+C32↑j
.text:10011351                                         ; sub_100106FA+C3D↑j ...
.text:10011351                 cmp     [ebp+1310h+arg_18], 2
.text:10011358                 jnz     short loc_10011363
.text:1001135A                 mov     [ebp+1310h+var_1360], 1
.text:10011361                 jmp     short loc_1001136A
.text:10011363 ; ---------------------------------------------------------------------------
.text:10011363
.text:10011363 loc_10011363:                           ; CODE XREF: sub_100106FA+C5E↑j
.text:10011363                 mov     dword ptr [ebp+1310h+ArgList], 7
.text:1001136A
.text:1001136A loc_1001136A:                           ; CODE XREF: sub_100106FA+C67↑j
.text:1001136A                 cmp     [ebp+1310h+var_136C], 0
.text:1001136E                 jz      loc_10011A07
.text:10011374                 lea     eax, [ebp+1310h+var_1384]
.text:10011377                 push    eax
.text:10011378                 push    [ebp+1310h+var_136C]
.text:1001137B                 call    sub_10007C28
.text:10011380                 pop     ecx
.text:10011381                 pop     ecx
.text:10011382                 jmp     loc_10011A07
.text:10011387 ; ---------------------------------------------------------------------------
.text:10011387
.text:10011387 loc_10011387:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:10011387                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:10011387                 push    edi             ; jumptable 10010DB6 case 5
.text:10011388                 push    offset Destination ; Destination
.text:1001138D                 call    sub_100047B9
.text:10011392                 push    offset Destination ; String
.text:10011397                 call    ds:__imp_wcslen
.text:1001139D                 add     esp, 0Ch
.text:100113A0                 cmp     word_100AF0AE[eax*2], 5Ch ; '\'
.text:100113A9                 jz      short loc_100113BC
.text:100113AB                 push    offset asc_100201E0 ; "\\"
.text:100113B0                 push    offset Destination ; Destination
.text:100113B5                 call    sub_1000A580
.text:100113BA                 pop     ecx
.text:100113BB                 pop     ecx
.text:100113BC
.text:100113BC loc_100113BC:                           ; CODE XREF: sub_100106FA+CAF↑j
.text:100113BC                 cmp     dword_100A1EE4, 1
.text:100113C3                 push    offset word_100BD7A0 ; ArgList
.text:100113C8                 jnz     short loc_100113E3
.text:100113CA                 push    offset Destination ; ArgList
.text:100113CF                 push    offset aSpisogenTemfil ; "%spisogen\\temfiles\\%s"
.text:100113D4                 push    offset word_100A1EE8 ; Buffer
.text:100113D9                 call    sub_1000A605
.text:100113DE                 add     esp, 10h
.text:100113E1                 jmp     short loc_100113F5
.text:100113E3 ; ---------------------------------------------------------------------------
.text:100113E3
.text:100113E3 loc_100113E3:                           ; CODE XREF: sub_100106FA+CCE↑j
.text:100113E3                 push    offset aS       ; "%s"
.text:100113E8                 push    offset word_100A1EE8 ; Buffer
.text:100113ED                 call    sub_1000A605
.text:100113F2                 add     esp, 0Ch
.text:100113F5
.text:100113F5 loc_100113F5:                           ; CODE XREF: sub_100106FA+CE7↑j
.text:100113F5                 push    offset aIdftransIdf ; "idftrans.idf"
.text:100113FA                 push    offset word_100A1EE8 ; String1
.text:100113FF                 call    sub_10008CB0
.text:10011404                 pop     ecx
.text:10011405                 pop     ecx
.text:10011406                 test    eax, eax
.text:10011408                 jnz     loc_10011BE6
.text:1001140E                 lea     eax, [ebp+1310h+var_1368]
.text:10011411                 push    eax             ; int
.text:10011412                 push    offset aIdftransIdf ; "idftrans.idf"
.text:10011417                 push    5               ; int
.text:10011419                 call    sub_1000B9F7
.text:1001141E                 add     esp, 0Ch
.text:10011421                 mov     [ebp+1310h+var_1344], eax
.text:10011424                 test    eax, eax
.text:10011426                 jnz     loc_10010CB2
.text:1001142C                 call    AliasTm
.text:10011431                 push    eax             ; Seed
.text:10011432                 lea     eax, [ebp+1310h+var_60]
.text:10011438                 push    eax             ; int
.text:10011439                 push    dword_100AF6B4  ; int
.text:1001143F                 call    sub_10019640
.text:10011444                 lea     eax, [ebp+1310h+Source]
.text:10011447                 push    eax             ; int
.text:10011448                 push    dword ptr [edi+614h] ; int
.text:1001144E                 lea     eax, [edi+400h]
.text:10011454                 push    [ebp+1310h+var_1358] ; int
.text:10011457                 push    eax             ; int
.text:10011458                 lea     eax, [edi+200h]
.text:1001145E                 push    eax             ; int
.text:1001145F                 lea     eax, [ebp+1310h+var_60]
.text:10011465                 push    edi             ; ArgList
.text:10011466                 push    eax             ; int
.text:10011467                 call    sub_10010296
.text:1001146C                 add     esp, 28h
.text:1001146F                 test    eax, eax
.text:10011471                 jnz     loc_10011BF5
.text:10011477                 push    [ebp+1310h+var_1368]
.text:1001147A                 lea     eax, [edi+400h]
.text:10011480                 push    eax
.text:10011481                 lea     eax, [edi+200h]
.text:10011487                 push    eax
.text:10011488                 push    edi
.text:10011489                 call    sub_1000B525
.text:1001148E                 add     esp, 10h
.text:10011491                 test    eax, eax
.text:10011493                 jnz     loc_10011BF5
.text:10011499                 push    offset Locale
.text:1001149E                 push    offset aIdftransIdf ; "idftrans.idf"
.text:100114A3                 call    isoa2bw
.text:100114A8                 pop     ecx
.text:100114A9                 pop     ecx
.text:100114AA                 test    eax, eax
.text:100114AC                 jnz     loc_10011BFD
.text:100114B2                 mov     dword ptr [ebp+1310h+ArgList], 7
.text:100114B9                 jmp     def_10010DB6    ; jumptable 10010DB6 default case
.text:100114BE ; ---------------------------------------------------------------------------
.text:100114BE
.text:100114BE loc_100114BE:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:100114BE                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:100114BE                 push    edi             ; jumptable 10010DB6 case 6
.text:100114BF                 mov     ebx, offset Destination
.text:100114C4                 push    ebx             ; Destination
.text:100114C5                 call    sub_100047B9
.text:100114CA                 push    ebx             ; String
.text:100114CB                 call    ds:__imp_wcslen
.text:100114D1                 add     esp, 0Ch
.text:100114D4                 cmp     word_100AF0AE[eax*2], 5Ch ; '\'
.text:100114DD                 jz      short loc_100114EC
.text:100114DF                 push    offset asc_100201E0 ; "\\"
.text:100114E4                 push    ebx             ; Destination
.text:100114E5                 call    sub_1000A580
.text:100114EA                 pop     ecx
.text:100114EB                 pop     ecx
.text:100114EC
.text:100114EC loc_100114EC:                           ; CODE XREF: sub_100106FA+DE3↑j
.text:100114EC                 cmp     dword_100A1EE4, 1
.text:100114F3                 push    offset word_100BD7A0 ; ArgList
.text:100114F8                 jnz     short loc_1001150F
.text:100114FA                 push    ebx             ; ArgList
.text:100114FB                 push    offset aSpisogenTemfil ; "%spisogen\\temfiles\\%s"
.text:10011500                 push    offset word_100A1EE8 ; Buffer
.text:10011505                 call    sub_1000A605
.text:1001150A                 add     esp, 10h
.text:1001150D                 jmp     short loc_10011521
.text:1001150F ; ---------------------------------------------------------------------------
.text:1001150F
.text:1001150F loc_1001150F:                           ; CODE XREF: sub_100106FA+DFE↑j
.text:1001150F                 push    offset aS       ; "%s"
.text:10011514                 push    offset word_100A1EE8 ; Buffer
.text:10011519                 call    sub_1000A605
.text:1001151E                 add     esp, 0Ch
.text:10011521
.text:10011521 loc_10011521:                           ; CODE XREF: sub_100106FA+E13↑j
.text:10011521                 mov     ebx, offset aFor036Dat_0 ; "for036.dat"
.text:10011526                 push    ebx             ; String2
.text:10011527                 push    offset word_100A1EE8 ; String1
.text:1001152C                 call    sub_10008CB0
.text:10011531                 pop     ecx
.text:10011532                 pop     ecx
.text:10011533                 test    eax, eax
.text:10011535                 jnz     loc_10011C10
.text:1001153B                 lea     eax, [ebp+1310h+var_1368]
.text:1001153E                 push    eax             ; int
.text:1001153F                 push    ebx             ; FileName
.text:10011540                 push    6               ; int
.text:10011542                 call    sub_1000B9F7
.text:10011547                 add     esp, 0Ch
.text:1001154A                 mov     [ebp+1310h+var_1344], eax
.text:1001154D                 test    eax, eax
.text:1001154F                 jnz     loc_10010CB2
.text:10011555                 push    edi             ; int
.text:10011556                 push    ebx             ; OldFileName
.text:10011557                 call    sub_1000AABA
.text:1001155C                 mov     ebx, eax
.text:1001155E                 pop     ecx
.text:1001155F                 pop     ecx
.text:10011560                 test    ebx, ebx
.text:10011562                 jnz     loc_10011C13
.text:10011568                 push    offset aIdftransIdf ; "idftrans.idf"
.text:1001156D                 push    offset aFor036Dat_0 ; "for036.dat"
.text:10011572                 call    sub_1000A17A
.text:10011577                 call    AliasTm
.text:1001157C                 push    eax             ; Seed
.text:1001157D                 lea     eax, [ebp+1310h+var_60]
.text:10011583                 push    eax             ; int
.text:10011584                 push    dword_100AF6B4  ; int
.text:1001158A                 call    sub_10019640
.text:1001158F                 lea     eax, [ebp+1310h+Source]
.text:10011592                 push    eax             ; int
.text:10011593                 push    dword ptr [edi+614h] ; int
.text:10011599                 lea     eax, [edi+400h]
.text:1001159F                 push    [ebp+1310h+var_1358] ; int
.text:100115A2                 lea     ebx, [edi+200h]
.text:100115A8                 push    eax             ; int
.text:100115A9                 push    ebx             ; int
.text:100115AA                 lea     eax, [ebp+1310h+var_60]
.text:100115B0                 push    edi             ; ArgList
.text:100115B1                 push    eax             ; int
.text:100115B2                 call    sub_10010296
.text:100115B7                 add     esp, 30h
.text:100115BA                 test    eax, eax
.text:100115BC                 jnz     loc_10011BF5
.text:100115C2                 push    [ebp+1310h+var_1368]
.text:100115C5                 lea     eax, [edi+400h]
.text:100115CB                 push    eax
.text:100115CC                 push    ebx
.text:100115CD                 push    edi
.text:100115CE                 call    sub_1000B525
.text:100115D3                 add     esp, 10h
.text:100115D6                 test    eax, eax
.text:100115D8                 jnz     loc_10011BF5
.text:100115DE                 push    offset Locale
.text:100115E3                 push    offset aIdftransIdf ; "idftrans.idf"
.text:100115E8                 call    isoa2bw
.text:100115ED                 pop     ecx
.text:100115EE                 pop     ecx
.text:100115EF                 test    eax, eax
.text:100115F1                 jnz     loc_10011BFD
.text:100115F7                 mov     dword ptr [ebp+1310h+ArgList], 7
.text:100115FE                 jmp     loc_10010DA8
.text:10011603 ; ---------------------------------------------------------------------------
.text:10011603
.text:10011603 loc_10011603:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:10011603                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:10011603                 push    edi             ; jumptable 10010DB6 case 7
.text:10011604                 push    offset aFor036Dat_0 ; "for036.dat"
.text:10011609                 call    sub_1000AABA
.text:1001160E                 pop     ecx
.text:1001160F                 pop     ecx
.text:10011610                 mov     [ebp+1310h+var_1344], eax
.text:10011613                 test    eax, eax
.text:10011615                 jnz     loc_10010CB2
.text:1001161B                 mov     eax, [ebp+1310h+var_1368]
.text:1001161E                 sub     eax, 0
.text:10011621                 jz      short loc_10011643
.text:10011623                 dec     eax
.text:10011624                 jz      short loc_10011636
.text:10011626                 dec     eax
.text:10011627                 lea     eax, [ebp+1310h+var_2C]
.text:1001162D                 jz      short loc_10011649
.text:1001162F                 push    offset aUnknown ; "Unknown"
.text:10011634                 jmp     short loc_1001164E
.text:10011636 ; ---------------------------------------------------------------------------
.text:10011636
.text:10011636 loc_10011636:                           ; CODE XREF: sub_100106FA+F2A↑j
.text:10011636                 push    offset aIn      ; "IN"
.text:1001163B                 lea     eax, [ebp+1310h+var_2C]
.text:10011641                 jmp     short loc_1001164E
.text:10011643 ; ---------------------------------------------------------------------------
.text:10011643
.text:10011643 loc_10011643:                           ; CODE XREF: sub_100106FA+F27↑j
.text:10011643                 lea     eax, [ebp+1310h+var_2C]
.text:10011649
.text:10011649 loc_10011649:                           ; CODE XREF: sub_100106FA+F33↑j
.text:10011649                 push    offset aMm      ; "MM"
.text:1001164E
.text:1001164E loc_1001164E:                           ; CODE XREF: sub_100106FA+F3A↑j
.text:1001164E                                         ; sub_100106FA+F47↑j
.text:1001164E                 push    eax             ; Destination
.text:1001164F                 call    sub_1000A661
.text:10011654                 pop     ecx
.text:10011655                 pop     ecx
.text:10011656                 lea     eax, [ebp+1310h+var_2C]
.text:1001165C                 push    eax
.text:1001165D                 push    offset aBoreUnitsS ; "Bore Units : %s"
.text:10011662                 push    Stream          ; Stream
.text:10011668                 call    esi ; __imp_fwprintf
.text:1001166A                 push    Stream          ; Stream
.text:10011670                 call    ds:__imp_fflush
.text:10011676                 mov     eax, [ebp+1310h+Source]
.text:10011679                 add     esp, 10h
.text:1001167C                 sub     eax, 0
.text:1001167F                 jz      short loc_100116A2
.text:10011681                 dec     eax
.text:10011682                 jz      short loc_1001169B
.text:10011684                 dec     eax
.text:10011685                 lea     eax, [ebp+1310h+var_2C]
.text:1001168B                 jz      short loc_10011694
.text:1001168D                 push    offset aUnknown ; "Unknown"
.text:10011692                 jmp     short loc_100116AD
.text:10011694 ; ---------------------------------------------------------------------------
.text:10011694
.text:10011694 loc_10011694:                           ; CODE XREF: sub_100106FA+F91↑j
.text:10011694                 push    offset aIn      ; "IN"
.text:10011699                 jmp     short loc_100116AD
.text:1001169B ; ---------------------------------------------------------------------------
.text:1001169B
.text:1001169B loc_1001169B:                           ; CODE XREF: sub_100106FA+F88↑j
.text:1001169B                 push    offset aMm      ; "MM"
.text:100116A0                 jmp     short loc_100116A7
.text:100116A2 ; ---------------------------------------------------------------------------
.text:100116A2
.text:100116A2 loc_100116A2:                           ; CODE XREF: sub_100106FA+F85↑j
.text:100116A2                 push    offset aM       ; "M"
.text:100116A7
.text:100116A7 loc_100116A7:                           ; CODE XREF: sub_100106FA+FA6↑j
.text:100116A7                 lea     eax, [ebp+1310h+var_2C]
.text:100116AD
.text:100116AD loc_100116AD:                           ; CODE XREF: sub_100106FA+F98↑j
.text:100116AD                                         ; sub_100106FA+F9F↑j
.text:100116AD                 push    eax             ; Destination
.text:100116AE                 call    sub_1000A661
.text:100116B3                 pop     ecx
.text:100116B4                 pop     ecx
.text:100116B5                 lea     eax, [ebp+1310h+var_2C]
.text:100116BB                 push    eax
.text:100116BC                 push    offset aDimensionUnits_0 ; " : Dimension Units : %s\n"
.text:100116C1                 push    Stream          ; Stream
.text:100116C7                 call    esi ; __imp_fwprintf
.text:100116C9                 push    Stream          ; Stream
.text:100116CF                 call    ds:__imp_fflush
.text:100116D5                 push    [ebp+1310h+Source] ; int
.text:100116D8                 push    [ebp+1310h+var_1380] ; int
.text:100116DB                 push    offset aFor036Dat_0 ; "for036.dat"
.text:100116E0                 call    sub_1000BC3A
.text:100116E5                 add     esp, 1Ch
.text:100116E8                 test    eax, eax
.text:100116EA                 jl      loc_10011C25
.text:100116F0                 jle     short loc_100116F6
.text:100116F2                 mov     [ebp+1310h+var_134D], 1
.text:100116F6
.text:100116F6 loc_100116F6:                           ; CODE XREF: sub_100106FA+FF6↑j
.text:100116F6                 push    [ebp+1310h+FullPath] ; int
.text:100116F9                 push    offset aFor036Dat_0 ; "for036.dat"
.text:100116FE                 call    sub_1000D144
.text:10011703                 push    offset aIdftransIdf ; "idftrans.idf"
.text:10011708                 push    offset aFor036Dat_0 ; "for036.dat"
.text:1001170D                 call    sub_1000A17A
.text:10011712                 call    sub_10009544
.text:10011717                 call    AliasTm
.text:1001171C                 push    eax             ; Seed
.text:1001171D                 lea     eax, [ebp+1310h+var_60]
.text:10011723                 push    eax             ; int
.text:10011724                 push    dword_100AF6B4  ; int
.text:1001172A                 call    sub_10019640
.text:1001172F                 push    [ebp+1310h+arg_20] ; int
.text:10011735                 lea     eax, [edi+400h]
.text:1001173B                 push    dword ptr [ebp+1310h+arg_1C] ; char
.text:10011741                 push    [ebp+1310h+var_1358] ; int
.text:10011744                 push    dword_100A1EE4  ; int
.text:1001174A                 push    dword_100BC784  ; int
.text:10011750                 push    offset aIdfoff  ; "idfoff"
.text:10011755                 push    eax             ; wchar_t *
.text:10011756                 push    offset word_100BD7A0 ; int
.text:1001175B                 lea     eax, [edi+200h]
.text:10011761                 push    eax             ; wchar_t *
.text:10011762                 lea     eax, [ebp+1310h+var_60]
.text:10011768                 push    edi             ; Source
.text:10011769                 push    eax             ; int
.text:1001176A                 call    sub_1000E8BE
.text:1001176F                 add     esp, 48h
.text:10011772                 mov     dword_1002CB5C, eax
.text:10011777                 cmp     eax, 7CFh
.text:1001177C                 jnz     short loc_10011789
.text:1001177E                 and     dword_1002CB5C, 0
.text:10011785                 mov     [ebp+1310h+var_134E], 1
.text:10011789
.text:10011789 loc_10011789:                           ; CODE XREF: sub_100106FA+1082↑j
.text:10011789                 cmp     [ebp+1310h+var_1378], 0
.text:1001178D                 jz      short loc_1001179F
.text:1001178F                 push    offset word_100BE1D0 ; Source
.text:10011794                 push    [ebp+1310h+var_1378] ; Destination
.text:10011797                 call    ds:__imp_wcscpy
.text:1001179D                 pop     ecx
.text:1001179E                 pop     ecx
.text:1001179F
.text:1001179F loc_1001179F:                           ; CODE XREF: sub_100106FA+1093↑j
.text:1001179F                 mov     dword ptr [ebp+1310h+ArgList], 8
.text:100117A6                 jmp     def_10010DB6    ; jumptable 10010DB6 default case
.text:100117AB ; ---------------------------------------------------------------------------
.text:100117AB
.text:100117AB loc_100117AB:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:100117AB                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:100117AB                 push    offset VarName  ; jumptable 10010DB6 case 8
.text:100117B0                 call    ds:__imp__wgetenv
.text:100117B6                 pop     ecx
.text:100117B7                 test    eax, eax
.text:100117B9                 jz      loc_100118CA
.text:100117BF                 push    offset String2  ; "NO"
.text:100117C4                 push    eax             ; String1
.text:100117C5                 call    ds:__imp_wcscmp
.text:100117CB                 pop     ecx
.text:100117CC                 pop     ecx
.text:100117CD                 test    eax, eax
.text:100117CF                 jnz     loc_100118CA
.text:100117D5                 push    offset aFor036Dat_0 ; "for036.dat"
.text:100117DA                 call    ds:__imp__wunlink
.text:100117E0                 mov     [esp+1394h+FileName], offset aFor051Dat ; "for051.dat"
.text:100117E7                 call    ds:__imp__wunlink
.text:100117ED                 mov     [esp+1394h+FileName], offset aFor066Dat ; "for066.dat"
.text:100117F4                 call    ds:__imp__wunlink
.text:100117FA                 mov     [esp+1394h+FileName], offset NewFileName ; "isogen.fls"
.text:10011801                 call    ds:__imp__wunlink
.text:10011807                 mov     [esp+1394h+FileName], offset aIsogenIdx ; "isogen.idx"
.text:1001180E                 call    ds:__imp__wunlink
.text:10011814                 mov     [esp+1394h+FileName], offset aStdoutTxt_0 ; "stdout.txt"
.text:1001181B                 call    ds:__imp__wunlink
.text:10011821                 mov     [esp+1394h+FileName], offset aIdftransDbg ; "idftrans.dbg"
.text:10011828                 call    ds:__imp__wunlink
.text:1001182E                 mov     [esp+1394h+FileName], offset aIdftransIdf ; "idftrans.idf"
.text:10011835                 call    ds:__imp__wunlink
.text:1001183B                 mov     [esp+1394h+FileName], offset aPipelineLog ; "pipeline.log"
.text:10011842                 call    ds:__imp__wunlink
.text:10011848                 mov     [esp+1394h+FileName], offset aPodisoLog ; "podiso.log"
.text:1001184F                 call    ds:__imp__wunlink
.text:10011855                 mov     [esp+1394h+FileName], offset aPodidfLog ; "podidf.log"
.text:1001185C                 call    ds:__imp__wunlink
.text:10011862                 mov     [esp+1394h+FileName], offset aPodpipeLog ; "podpipe.log"
.text:10011869                 call    ds:__imp__wunlink
.text:1001186F                 pop     ecx
.text:10011870                 mov     dword ptr [ebp+1310h+ArgList], 1
.text:10011877
.text:10011877 loc_10011877:                           ; CODE XREF: sub_100106FA+11A8↓j
.text:10011877                 push    dword ptr [ebp+1310h+ArgList] ; ArgList
.text:1001187A                 lea     eax, [ebp+1310h+var_80]
.text:10011880                 push    offset aPodisoDLog ; "podiso_%d.log"
.text:10011885                 push    eax             ; Buffer
.text:10011886                 call    sub_1000A67F
.text:1001188B                 lea     eax, [ebp+1310h+var_80]
.text:10011891                 push    eax             ; FileName
.text:10011892                 call    ds:__imp__wunlink
.text:10011898                 add     esp, 10h
.text:1001189B                 inc     dword ptr [ebp+1310h+ArgList]
.text:1001189E                 cmp     dword ptr [ebp+1310h+ArgList], 64h ; 'd'
.text:100118A2                 jl      short loc_10011877
.text:100118A4                 push    offset aIdfimportLog ; "IDFImport.log"
.text:100118A9                 call    ds:__imp__wunlink
.text:100118AF                 mov     [esp+1394h+FileName], offset aPodexportLog ; "PODExport.log"
.text:100118B6                 call    ds:__imp__wunlink
.text:100118BC                 mov     [esp+1394h+FileName], offset aPodfileLog ; "PODFile.log"
.text:100118C3                 call    ds:__imp__wunlink
.text:100118C9                 pop     ecx
.text:100118CA
.text:100118CA loc_100118CA:                           ; CODE XREF: sub_100106FA+10BF↑j
.text:100118CA                                         ; sub_100106FA+10D5↑j
.text:100118CA                 cmp     dword_100A1EE4, 2
.text:100118D1                 jnz     short loc_1001193C
.text:100118D3                 cmp     [ebp+1310h+arg_18], 1
.text:100118DA                 jnz     short loc_1001193C
.text:100118DC                 lea     eax, [ebp+1310h+var_F34]
.text:100118E2                 push    eax             ; Ext
.text:100118E3                 lea     eax, [ebp+1310h+var_1138]
.text:100118E9                 push    eax             ; Filename
.text:100118EA                 push    0               ; Dir
.text:100118EC                 push    0               ; Drive
.text:100118EE                 push    offset word_100BD7A0 ; FullPath
.text:100118F3                 call    ds:__imp__wsplitpath
.text:100118F9                 push    offset word_100BD7A0 ; ArgList
.text:100118FE                 push    offset aS       ; "%s"
.text:10011903                 push    ebx             ; Buffer
.text:10011904                 call    sub_1000A605
.text:10011909                 lea     eax, [ebp+1310h+var_F34]
.text:1001190F                 push    eax
.text:10011910                 lea     eax, [ebp+1310h+var_1138]
.text:10011916                 push    eax
.text:10011917                 lea     eax, [edi+200h]
.text:1001191D                 push    eax
.text:1001191E                 push    edi             ; ArgList
.text:1001191F                 push    offset aSSInputsSS ; "%s%s\\INPUTS\\%s%s"
.text:10011924                 push    offset word_100BD9A8 ; Buffer
.text:10011929                 call    sub_1000A605
.text:1001192E                 push    offset word_100BD9A8 ; String2
.text:10011933                 push    ebx             ; String1
.text:10011934                 call    sub_10008CB0
.text:10011939                 add     esp, 40h
.text:1001193C
.text:1001193C loc_1001193C:                           ; CODE XREF: sub_100106FA+11D7↑j
.text:1001193C                                         ; sub_100106FA+11E0↑j
.text:1001193C                 cmp     [ebp+1310h+var_136C], 0
.text:10011940                 mov     dword ptr [ebp+1310h+ArgList], 9
.text:10011947                 jz      def_10010DB6    ; jumptable 10010DB6 default case
.text:1001194D                 lea     eax, [ebp+1310h+var_1384]
.text:10011950                 push    eax
.text:10011951                 push    [ebp+1310h+var_136C]
.text:10011954                 call    sub_10007C36
.text:10011959                 pop     ecx
.text:1001195A                 jmp     loc_10010F91
.text:1001195F ; ---------------------------------------------------------------------------
.text:1001195F
.text:1001195F loc_1001195F:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:1001195F                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:1001195F                 mov     eax, dword_1002CB5C ; jumptable 10010DB6 case 9
.text:10011964                 test    eax, eax
.text:10011966                 jz      short loc_1001198E
.text:10011968                 push    0FFFFFFFBh
.text:1001196A                 pop     ecx
.text:1001196B                 cmp     eax, ecx
.text:1001196D                 jz      short loc_1001198B
.text:1001196F                 push    0FFFFFFFCh
.text:10011971                 pop     ecx
.text:10011972                 cmp     eax, ecx
.text:10011974                 jz      short loc_1001198B
.text:10011976                 push    0FFFFFFFDh
.text:10011978                 pop     ecx
.text:10011979                 cmp     eax, ecx
.text:1001197B                 jz      short loc_1001198B
.text:1001197D                 xor     ecx, ecx
.text:1001197F                 cmp     eax, 0FFFFFFFEh
.text:10011982                 setz    cl
.text:10011985                 dec     ecx
.text:10011986                 and     ecx, 0Bh
.text:10011989                 dec     ecx
.text:1001198A                 dec     ecx
.text:1001198B
.text:1001198B loc_1001198B:                           ; CODE XREF: sub_100106FA+1273↑j
.text:1001198B                                         ; sub_100106FA+127A↑j ...
.text:1001198B                 mov     [ebp+1310h+var_135C], ecx
.text:1001198E
.text:1001198E loc_1001198E:                           ; CODE XREF: sub_100106FA+126C↑j
.text:1001198E                 push    [ebp+1310h+var_1358] ; wchar_t *
.text:10011991                 call    sub_1000E226
.text:10011996                 pop     ecx
.text:10011997                 mov     dword_1002CB5C, eax
.text:1001199C                 test    eax, eax
.text:1001199E                 jz      short loc_100119D8
.text:100119A0                 cmp     eax, 0Fh
.text:100119A3                 jnz     short loc_100119AE
.text:100119A5                 mov     [ebp+1310h+var_135C], 24h ; '$'
.text:100119AC                 jmp     short loc_100119D8
.text:100119AE ; ---------------------------------------------------------------------------
.text:100119AE
.text:100119AE loc_100119AE:                           ; CODE XREF: sub_100106FA+12A9↑j
.text:100119AE                 cmp     eax, 0Eh
.text:100119B1                 jnz     short loc_100119BC
.text:100119B3                 mov     [ebp+1310h+var_135C], 22h ; '"'
.text:100119BA                 jmp     short loc_100119D8
.text:100119BC ; ---------------------------------------------------------------------------
.text:100119BC
.text:100119BC loc_100119BC:                           ; CODE XREF: sub_100106FA+12B7↑j
.text:100119BC                 cmp     eax, 0Dh
.text:100119BF                 jnz     short loc_100119CA
.text:100119C1                 mov     [ebp+1310h+var_135C], 21h ; '!'
.text:100119C8                 jmp     short loc_100119D8
.text:100119CA ; ---------------------------------------------------------------------------
.text:100119CA
.text:100119CA loc_100119CA:                           ; CODE XREF: sub_100106FA+12C5↑j
.text:100119CA                 xor     ecx, ecx
.text:100119CC                 cmp     eax, 0Ch
.text:100119CF                 setnz   cl
.text:100119D2                 add     ecx, 1Fh
.text:100119D5                 mov     [ebp+1310h+var_135C], ecx
.text:100119D8
.text:100119D8 loc_100119D8:                           ; CODE XREF: sub_100106FA+12A4↑j
.text:100119D8                                         ; sub_100106FA+12B2↑j ...
.text:100119D8                 xor     eax, eax
.text:100119DA                 cmp     dword_100AEEAC, 1
.text:100119E1                 setnz   al
.text:100119E4                 add     eax, 0Ah
.text:100119E7                 mov     dword ptr [ebp+1310h+ArgList], eax
.text:100119EA                 jmp     def_10010DB6    ; jumptable 10010DB6 default case
.text:100119EF ; ---------------------------------------------------------------------------
.text:100119EF
.text:100119EF loc_100119EF:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:100119EF                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:100119EF                 push    [ebp+1310h+var_1370] ; jumptable 10010DB6 case 11
.text:100119F2                 push    [ebp+1310h+var_1374] ; int
.text:100119F5                 push    [ebp+1310h+var_1358] ; String
.text:100119F8                 call    sub_1000B381
.text:100119FD                 add     esp, 0Ch
.text:10011A00                 mov     [ebp+1310h+var_1360], 1
.text:10011A07
.text:10011A07 loc_10011A07:                           ; CODE XREF: sub_100106FA+C74↑j
.text:10011A07                                         ; sub_100106FA+C88↑j
.text:10011A07                 cmp     [ebp+1310h+var_1360], 0
.text:10011A0B                 jz      def_10010DB6    ; jumptable 10010DB6 default case
.text:10011A11
.text:10011A11 loc_10011A11:                           ; CODE XREF: sub_100106FA+1382↓j
.text:10011A11                 mov     eax, [ebp+1310h+var_135C]
.text:10011A14                 push    1Fh
.text:10011A16                 pop     esi
.text:10011A17                 cmp     eax, esi
.text:10011A19                 jg      loc_10011C60
.text:10011A1F                 jz      loc_10011C7E
.text:10011A25                 cmp     eax, 0FFFFFFFBh
.text:10011A28                 jz      loc_10011C56
.text:10011A2E                 cmp     eax, 0FFFFFFFCh
.text:10011A31                 jz      loc_10011C4C
.text:10011A37                 cmp     eax, 0FFFFFFFDh
.text:10011A3A                 jz      loc_10011C42
.text:10011A40                 cmp     eax, 0FFFFFFFEh
.text:10011A43                 jz      loc_10011C38
.text:10011A49                 cmp     eax, 9
.text:10011A4C                 jnz     loc_10011C73
.text:10011A52                 push    [ebp+1310h+var_1340] ; Destination
.text:10011A55                 push    eax             ; int
.text:10011A56
.text:10011A56 loc_10011A56:                           ; CODE XREF: sub_100106FA+1543↓j
.text:10011A56                                         ; sub_100106FA+154D↓j ...
.text:10011A56                 call    sub_10008731
.text:10011A5B                 pop     ecx
.text:10011A5C                 pop     ecx
.text:10011A5D                 push    9
.text:10011A5F                 jmp     loc_10011CFD
.text:10011A64 ; ---------------------------------------------------------------------------
.text:10011A64
.text:10011A64 loc_10011A64:                           ; CODE XREF: sub_100106FA+6BC↑j
.text:10011A64                                         ; DATA XREF: .text:jpt_10010DB6↓o
.text:10011A64                 push    [ebp+1310h+var_1370] ; jumptable 10010DB6 case 10
.text:10011A67                 push    [ebp+1310h+var_1374] ; int
.text:10011A6A                 push    [ebp+1310h+var_1358] ; String
.text:10011A6D                 call    sub_1000B381
.text:10011A72                 add     esp, 0Ch
.text:10011A75                 call    sub_100086C6
.text:10011A7A                 test    eax, eax
.text:10011A7C                 jz      short loc_10011A11
.text:10011A7E                 push    [ebp+1310h+var_1340] ; Destination
.text:10011A81                 push    18h             ; int
.text:10011A83                 call    sub_10008731
.text:10011A88                 pop     ecx
.text:10011A89                 pop     ecx
.text:10011A8A                 push    18h
.text:10011A8C                 jmp     loc_10011CFD
.text:10011A91 ; ---------------------------------------------------------------------------
.text:10011A91
.text:10011A91 loc_10011A91:                           ; CODE XREF: sub_100106FA+7D8↑j
.text:10011A91                                         ; sub_100106FA+80C↑j
.text:10011A91                 push    [ebp+1310h+var_1340] ; Destination
.text:10011A94                 push    1Dh             ; int
.text:10011A96                 call    sub_10008731
.text:10011A9B                 pop     ecx
.text:10011A9C                 pop     ecx
.text:10011A9D                 push    1Dh
.text:10011A9F                 jmp     loc_10011CFD
.text:10011AA4 ; ---------------------------------------------------------------------------
.text:10011AA4
.text:10011AA4 loc_10011AA4:                           ; CODE XREF: sub_100106FA+85D↑j
.text:10011AA4                 push    offset aUnknown_1 ; " : Unknown\n"
.text:10011AA9                 push    Stream          ; Stream
.text:10011AAF                 call    esi ; __imp_fwprintf
.text:10011AB1                 push    Stream          ; Stream
.text:10011AB7                 call    ds:__imp_fflush
.text:10011ABD                 push    [ebp+1310h+var_1340] ; Destination
.text:10011AC0                 push    1Ch             ; int
.text:10011AC2                 call    sub_10008731
.text:10011AC7                 add     esp, 14h
.text:10011ACA                 push    1Ch
.text:10011ACC                 jmp     loc_10011CFD
.text:10011AD1 ; ---------------------------------------------------------------------------
.text:10011AD1
.text:10011AD1 loc_10011AD1:                           ; CODE XREF: sub_100106FA+8FF↑j
.text:10011AD1                                         ; sub_100106FA+9AA↑j
.text:10011AD1                 push    offset word_100BD9A8
.text:10011AD6                 push    ebx
.text:10011AD7
.text:10011AD7 loc_10011AD7:                           ; CODE XREF: sub_100106FA+14F6↓j
.text:10011AD7                 push    offset aCopybinaryfile ; "CopyBinaryFile failed : Source (%s) - T"...
.text:10011ADC                 push    Stream          ; Stream
.text:10011AE2                 call    esi ; __imp_fwprintf
.text:10011AE4                 push    Stream          ; Stream
.text:10011AEA                 call    ds:__imp_fflush
.text:10011AF0                 push    [ebp+1310h+var_1340] ; Destination
.text:10011AF3                 push    35h ; '5'       ; int
.text:10011AF5                 call    sub_10008731
.text:10011AFA                 add     esp, 1Ch
.text:10011AFD                 push    35h ; '5'
.text:10011AFF                 jmp     loc_10011CFD
.text:10011B04 ; ---------------------------------------------------------------------------
.text:10011B04
.text:10011B04 loc_10011B04:                           ; CODE XREF: sub_100106FA+A1A↑j
.text:10011B04                 push    [ebp+1310h+var_1340] ; Destination
.text:10011B07                 push    2Eh ; '.'       ; int
.text:10011B09                 call    sub_10008731
.text:10011B0E                 pop     ecx
.text:10011B0F                 pop     ecx
.text:10011B10                 push    2Eh ; '.'
.text:10011B12                 jmp     loc_10011CFD
.text:10011B17 ; ---------------------------------------------------------------------------
.text:10011B17
.text:10011B17 loc_10011B17:                           ; CODE XREF: sub_100106FA+AAE↑j
.text:10011B17                 push    [ebp+1310h+var_1340] ; Destination
.text:10011B1A                 push    2Fh ; '/'       ; int
.text:10011B1C                 call    sub_10008731
.text:10011B21                 pop     ecx
.text:10011B22                 pop     ecx
.text:10011B23                 push    2Fh ; '/'
.text:10011B25                 jmp     loc_10011CFD
.text:10011B2A ; ---------------------------------------------------------------------------
.text:10011B2A
.text:10011B2A loc_10011B2A:                           ; CODE XREF: sub_100106FA+B22↑j
.text:10011B2A                 push    eax
.text:10011B2B                 lea     eax, [ebp+1310h+String1]
.text:10011B31                 push    eax
.text:10011B32                 push    offset aCopybinaryfile ; "CopyBinaryFile failed : Source (%s) - T"...
.text:10011B37                 push    Stream          ; Stream
.text:10011B3D                 call    esi ; __imp_fwprintf
.text:10011B3F                 push    Stream          ; Stream
.text:10011B45                 call    ds:__imp_fflush
.text:10011B4B                 add     esp, 14h
.text:10011B4E                 push    30h ; '0'
.text:10011B50                 jmp     loc_10011CFD
.text:10011B55 ; ---------------------------------------------------------------------------
.text:10011B55
.text:10011B55 loc_10011B55:                           ; CODE XREF: sub_100106FA+BB0↑j
.text:10011B55                 mov     esi, eax
.text:10011B57
.text:10011B57 loc_10011B57:                           ; CODE XREF: sub_100106FA+14FE↓j
.text:10011B57                 push    [ebp+1310h+var_1340] ; Destination
.text:10011B5A                 push    eax             ; int
.text:10011B5B
.text:10011B5B loc_10011B5B:                           ; CODE XREF: sub_100106FA+1588↓j
.text:10011B5B                 call    sub_10008731
.text:10011B60                 pop     ecx
.text:10011B61                 pop     ecx
.text:10011B62                 mov     eax, esi
.text:10011B64                 jmp     loc_10011CFE
.text:10011B69 ; ---------------------------------------------------------------------------
.text:10011B69
.text:10011B69 loc_10011B69:                           ; CODE XREF: sub_100106FA+BCC↑j
.text:10011B69                 push    [ebp+1310h+var_1340] ; Destination
.text:10011B6C                 push    17h             ; int
.text:10011B6E                 call    sub_10008731
.text:10011B73                 pop     ecx
.text:10011B74                 pop     ecx
.text:10011B75                 push    17h
.text:10011B77                 jmp     loc_10011CFD
.text:10011B7C ; ---------------------------------------------------------------------------
.text:10011B7C
.text:10011B7C loc_10011B7C:                           ; CODE XREF: sub_100106FA+C4D↑j
.text:10011B7C                 push    [ebp+1310h+var_1340] ; Destination
.text:10011B7F                 cmp     eax, 2
.text:10011B82                 jnz     short loc_10011B94
.text:10011B84                 push    3Fh ; '?'       ; int
.text:10011B86                 call    sub_10008731
.text:10011B8B                 pop     ecx
.text:10011B8C                 pop     ecx
.text:10011B8D                 push    3Fh ; '?'
.text:10011B8F                 jmp     loc_10011CFD
.text:10011B94 ; ---------------------------------------------------------------------------
.text:10011B94
.text:10011B94 loc_10011B94:                           ; CODE XREF: sub_100106FA+1488↑j
.text:10011B94                 cmp     eax, 3
.text:10011B97                 jnz     short loc_10011BA9
.text:10011B99                 push    40h ; '@'       ; int
.text:10011B9B                 call    sub_10008731
.text:10011BA0                 pop     ecx
.text:10011BA1                 pop     ecx
.text:10011BA2                 push    40h ; '@'
.text:10011BA4                 jmp     loc_10011CFD
.text:10011BA9 ; ---------------------------------------------------------------------------
.text:10011BA9
.text:10011BA9 loc_10011BA9:                           ; CODE XREF: sub_100106FA+149D↑j
.text:10011BA9                 cmp     eax, 0FFFFFFFFh
.text:10011BAC                 jnz     short loc_10011BBE
.text:10011BAE
.text:10011BAE loc_10011BAE:                           ; CODE XREF: sub_100106FA+14DB↓j
.text:10011BAE                 push    0Dh             ; int
.text:10011BB0                 call    sub_10008731
.text:10011BB5                 pop     ecx
.text:10011BB6                 pop     ecx
.text:10011BB7                 push    0Dh
.text:10011BB9                 jmp     loc_10011CFD
.text:10011BBE ; ---------------------------------------------------------------------------
.text:10011BBE
.text:10011BBE loc_10011BBE:                           ; CODE XREF: sub_100106FA+14B2↑j
.text:10011BBE                 cmp     eax, 0FFFFFFFAh
.text:10011BC1                 jnz     short loc_10011BD2
.text:10011BC3                 push    eax             ; int
.text:10011BC4                 call    sub_10008731
.text:10011BC9                 pop     ecx
.text:10011BCA                 pop     ecx
.text:10011BCB                 push    0FFFFFFFAh
.text:10011BCD                 jmp     loc_10011CFD
.text:10011BD2 ; ---------------------------------------------------------------------------
.text:10011BD2
.text:10011BD2 loc_10011BD2:                           ; CODE XREF: sub_100106FA+14C7↑j
.text:10011BD2                 cmp     eax, 0FFFFFFF9h
.text:10011BD5                 jnz     short loc_10011BAE
.text:10011BD7                 push    eax             ; int
.text:10011BD8                 call    sub_10008731
.text:10011BDD                 pop     ecx
.text:10011BDE                 pop     ecx
.text:10011BDF                 push    0FFFFFFF9h
.text:10011BE1                 jmp     loc_10011CFD
.text:10011BE6 ; ---------------------------------------------------------------------------
.text:10011BE6
.text:10011BE6 loc_10011BE6:                           ; CODE XREF: sub_100106FA+D0E↑j
.text:10011BE6                 push    offset aIdftransIdf ; "idftrans.idf"
.text:10011BEB
.text:10011BEB loc_10011BEB:                           ; CODE XREF: sub_100106FA+1517↓j
.text:10011BEB                 push    offset word_100A1EE8
.text:10011BF0                 jmp     loc_10011AD7
.text:10011BF5 ; ---------------------------------------------------------------------------
.text:10011BF5
.text:10011BF5 loc_10011BF5:                           ; CODE XREF: sub_100106FA+D77↑j
.text:10011BF5                                         ; sub_100106FA+D99↑j ...
.text:10011BF5                 push    0Dh
.text:10011BF7                 pop     esi
.text:10011BF8                 jmp     loc_10011B57
.text:10011BFD ; ---------------------------------------------------------------------------
.text:10011BFD
.text:10011BFD loc_10011BFD:                           ; CODE XREF: sub_100106FA+DB2↑j
.text:10011BFD                                         ; sub_100106FA+EF7↑j
.text:10011BFD                 push    [ebp+1310h+var_1340] ; Destination
.text:10011C00                 push    3Eh ; '>'       ; int
.text:10011C02                 call    sub_10008731
.text:10011C07                 pop     ecx
.text:10011C08                 pop     ecx
.text:10011C09                 push    3Eh ; '>'
.text:10011C0B                 jmp     loc_10011CFD
.text:10011C10 ; ---------------------------------------------------------------------------
.text:10011C10
.text:10011C10 loc_10011C10:                           ; CODE XREF: sub_100106FA+E3B↑j
.text:10011C10                 push    ebx
.text:10011C11                 jmp     short loc_10011BEB
.text:10011C13 ; ---------------------------------------------------------------------------
.text:10011C13
.text:10011C13 loc_10011C13:                           ; CODE XREF: sub_100106FA+E68↑j
.text:10011C13                 push    [ebp+1310h+var_1340] ; Destination
.text:10011C16                 push    ebx             ; int
.text:10011C17                 call    sub_10008731
.text:10011C1C                 pop     ecx
.text:10011C1D                 pop     ecx
.text:10011C1E                 mov     eax, ebx
.text:10011C20                 jmp     loc_10011CFE
.text:10011C25 ; ---------------------------------------------------------------------------
.text:10011C25
.text:10011C25 loc_10011C25:                           ; CODE XREF: sub_100106FA+FF0↑j
.text:10011C25                 push    [ebp+1310h+var_1340] ; Destination
.text:10011C28                 push    2Bh ; '+'       ; int
.text:10011C2A                 call    sub_10008731
.text:10011C2F                 pop     ecx
.text:10011C30                 pop     ecx
.text:10011C31                 push    2Bh ; '+'
.text:10011C33                 jmp     loc_10011CFD
.text:10011C38 ; ---------------------------------------------------------------------------
.text:10011C38
.text:10011C38 loc_10011C38:                           ; CODE XREF: sub_100106FA+1349↑j
.text:10011C38                 push    [ebp+1310h+var_1340]
.text:10011C3B                 push    0FFFFFFFEh
.text:10011C3D                 jmp     loc_10011A56
.text:10011C42 ; ---------------------------------------------------------------------------
.text:10011C42
.text:10011C42 loc_10011C42:                           ; CODE XREF: sub_100106FA+1340↑j
.text:10011C42                 push    [ebp+1310h+var_1340]
.text:10011C45                 push    0FFFFFFFDh
.text:10011C47                 jmp     loc_10011A56
.text:10011C4C ; ---------------------------------------------------------------------------
.text:10011C4C
.text:10011C4C loc_10011C4C:                           ; CODE XREF: sub_100106FA+1337↑j
.text:10011C4C                 push    [ebp+1310h+var_1340]
.text:10011C4F                 push    0FFFFFFFCh
.text:10011C51                 jmp     loc_10011A56
.text:10011C56 ; ---------------------------------------------------------------------------
.text:10011C56
.text:10011C56 loc_10011C56:                           ; CODE XREF: sub_100106FA+132E↑j
.text:10011C56                 push    [ebp+1310h+var_1340]
.text:10011C59                 push    0FFFFFFFBh
.text:10011C5B                 jmp     loc_10011A56
.text:10011C60 ; ---------------------------------------------------------------------------
.text:10011C60
.text:10011C60 loc_10011C60:                           ; CODE XREF: sub_100106FA+131F↑j
.text:10011C60                 sub     eax, 20h ; ' '
.text:10011C63                 jz      loc_10011CEF
.text:10011C69                 dec     eax
.text:10011C6A                 jz      short loc_10011CDF
.text:10011C6C                 dec     eax
.text:10011C6D                 jz      short loc_10011CCF
.text:10011C6F                 dec     eax
.text:10011C70                 dec     eax
.text:10011C71                 jz      short loc_10011CBF
.text:10011C73
.text:10011C73 loc_10011C73:                           ; CODE XREF: sub_100106FA+1352↑j
.text:10011C73                 cmp     [ebp+1310h+var_134D], 1
.text:10011C77                 jnz     short loc_10011C87
.text:10011C79                 mov     esi, 7D1h
.text:10011C7E
.text:10011C7E loc_10011C7E:                           ; CODE XREF: sub_100106FA+1325↑j
.text:10011C7E                                         ; sub_100106FA+1598↓j ...
.text:10011C7E                 push    [ebp+1310h+var_1340]
.text:10011C81                 push    esi
.text:10011C82                 jmp     loc_10011B5B
.text:10011C87 ; ---------------------------------------------------------------------------
.text:10011C87
.text:10011C87 loc_10011C87:                           ; CODE XREF: sub_100106FA+157D↑j
.text:10011C87                 cmp     [ebp+1310h+var_134F], 1
.text:10011C8B                 jnz     short loc_10011C94
.text:10011C8D                 mov     esi, 7E6h
.text:10011C92                 jmp     short loc_10011C7E
.text:10011C94 ; ---------------------------------------------------------------------------
.text:10011C94
.text:10011C94 loc_10011C94:                           ; CODE XREF: sub_100106FA+1591↑j
.text:10011C94                 cmp     [ebp+1310h+var_1350], 1
.text:10011C98                 jnz     short loc_10011CA1
.text:10011C9A                 mov     esi, 7E7h
.text:10011C9F                 jmp     short loc_10011C7E
.text:10011CA1 ; ---------------------------------------------------------------------------
.text:10011CA1
.text:10011CA1 loc_10011CA1:                           ; CODE XREF: sub_100106FA+159E↑j
.text:10011CA1                 cmp     [ebp+1310h+var_1351], 1
.text:10011CA5                 jnz     short loc_10011CAE
.text:10011CA7                 mov     esi, 7E8h
.text:10011CAC                 jmp     short loc_10011C7E
.text:10011CAE ; ---------------------------------------------------------------------------
.text:10011CAE
.text:10011CAE loc_10011CAE:                           ; CODE XREF: sub_100106FA+15AB↑j
.text:10011CAE                 cmp     [ebp+1310h+var_134E], 1
.text:10011CB2                 jnz     short loc_10011CBB
.text:10011CB4                 mov     esi, 7CFh
.text:10011CB9                 jmp     short loc_10011C7E
.text:10011CBB ; ---------------------------------------------------------------------------
.text:10011CBB
.text:10011CBB loc_10011CBB:                           ; CODE XREF: sub_100106FA+15B8↑j
.text:10011CBB                 xor     eax, eax
.text:10011CBD                 jmp     short loc_10011CFE
.text:10011CBF ; ---------------------------------------------------------------------------
.text:10011CBF
.text:10011CBF loc_10011CBF:                           ; CODE XREF: sub_100106FA+1577↑j
.text:10011CBF                 push    [ebp+1310h+var_1340] ; Destination
.text:10011CC2                 push    24h ; '$'       ; int
.text:10011CC4                 call    sub_10008731
.text:10011CC9                 pop     ecx
.text:10011CCA                 pop     ecx
.text:10011CCB                 push    24h ; '$'
.text:10011CCD                 jmp     short loc_10011CFD
.text:10011CCF ; ---------------------------------------------------------------------------
.text:10011CCF
.text:10011CCF loc_10011CCF:                           ; CODE XREF: sub_100106FA+1573↑j
.text:10011CCF                 push    [ebp+1310h+var_1340] ; Destination
.text:10011CD2                 push    22h ; '"'       ; int
.text:10011CD4                 call    sub_10008731
.text:10011CD9                 pop     ecx
.text:10011CDA                 pop     ecx
.text:10011CDB                 push    22h ; '"'
.text:10011CDD                 jmp     short loc_10011CFD
.text:10011CDF ; ---------------------------------------------------------------------------
.text:10011CDF
.text:10011CDF loc_10011CDF:                           ; CODE XREF: sub_100106FA+1570↑j
.text:10011CDF                 push    [ebp+1310h+var_1340] ; Destination
.text:10011CE2                 push    21h ; '!'       ; int
.text:10011CE4                 call    sub_10008731
.text:10011CE9                 pop     ecx
.text:10011CEA                 pop     ecx
.text:10011CEB                 push    21h ; '!'
.text:10011CED                 jmp     short loc_10011CFD
.text:10011CEF ; ---------------------------------------------------------------------------
.text:10011CEF
.text:10011CEF loc_10011CEF:                           ; CODE XREF: sub_100106FA+1569↑j
.text:10011CEF                 push    [ebp+1310h+var_1340] ; Destination
.text:10011CF2                 push    20h ; ' '       ; int
.text:10011CF4                 call    sub_10008731
.text:10011CF9                 pop     ecx
.text:10011CFA                 pop     ecx
.text:10011CFB                 push    20h ; ' '
.text:10011CFD
.text:10011CFD loc_10011CFD:                           ; CODE XREF: sub_100106FA+219↑j
.text:10011CFD                                         ; sub_100106FA+657↑j ...
.text:10011CFD                 pop     eax
.text:10011CFE
.text:10011CFE loc_10011CFE:                           ; CODE XREF: sub_100106FA+5C8↑j
.text:10011CFE                                         ; sub_100106FA+146A↑j ...
.text:10011CFE                 mov     ecx, [ebp+1310h+var_4]
.text:10011D04                 pop     edi
.text:10011D05                 pop     esi
.text:10011D06                 xor     ecx, ebp
.text:10011D08                 pop     ebx
.text:10011D09                 call    sub_1001AE66
.text:10011D0E                 add     ebp, 1310h
.text:10011D14                 leave
.text:10011D15                 retn
.text:10011D15 sub_100106FA    endp
