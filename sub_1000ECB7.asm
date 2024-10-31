.text:1000ECB7 ; =============== S U B R O U T I N E =======================================
.text:1000ECB7
.text:1000ECB7
.text:1000ECB7 ; int __cdecl sub_1000ECB7(int, wchar_t *Source, int)
.text:1000ECB7 sub_1000ECB7    proc near               ; CODE XREF: sub_1000F3C3+1C↓p
.text:1000ECB7
.text:1000ECB7 var_8C          = dword ptr -8Ch
.text:1000ECB7 var_78          = dword ptr -78h
.text:1000ECB7 var_71          = byte ptr -71h
.text:1000ECB7 var_70          = dword ptr -70h
.text:1000ECB7 var_6C          = dword ptr -6Ch
.text:1000ECB7 var_68          = dword ptr -68h
.text:1000ECB7 FileName        = dword ptr -64h
.text:1000ECB7 var_60          = dword ptr -60h
.text:1000ECB7 var_5C          = dword ptr -5Ch
.text:1000ECB7 Destination     = word ptr -58h
.text:1000ECB7 Buffer          = word ptr -50h
.text:1000ECB7 var_30          = dword ptr -30h
.text:1000ECB7 var_4           = dword ptr -4
.text:1000ECB7 arg_0           = dword ptr  4
.text:1000ECB7 Source          = dword ptr  8
.text:1000ECB7 arg_8           = dword ptr  0Ch
.text:1000ECB7
.text:1000ECB7                 sub     esp, 78h
.text:1000ECBA                 mov     eax, dword_100A1B90
.text:1000ECBF                 xor     eax, esp
.text:1000ECC1                 mov     [esp+78h+var_4], eax
.text:1000ECC5                 push    ebx
.text:1000ECC6                 mov     ebx, ds:__imp_fwprintf
.text:1000ECCC                 push    ebp
.text:1000ECCD                 mov     ebp, [esp+80h+arg_0]
.text:1000ECD4                 push    esi
.text:1000ECD5                 mov     esi, [esp+84h+arg_8]
.text:1000ECDC                 push    edi
.text:1000ECDD                 mov     edi, [esp+88h+Source]
.text:1000ECE4                 push    edi
.text:1000ECE5                 push    offset aFilenameS ; "fileName : %s\n"
.text:1000ECEA                 push    Stream          ; Stream
.text:1000ECF0                 call    ebx ; __imp_fwprintf
.text:1000ECF2                 push    Stream          ; Stream
.text:1000ECF8                 call    ds:__imp_fflush
.text:1000ECFE                 call    sub_1000CF0E
.text:1000ED03                 push    edi             ; Source
.text:1000ED04                 mov     edi, offset word_100BD7A0
.text:1000ED09                 push    edi             ; Destination
.text:1000ED0A                 call    sub_1000A5A1
.text:1000ED0F                 push    edi
.text:1000ED10                 push    offset aTmpnameS ; "tmpName : %s\n"
.text:1000ED15                 push    Stream          ; Stream
.text:1000ED1B                 call    ebx ; __imp_fwprintf
.text:1000ED1D                 push    Stream          ; Stream
.text:1000ED23                 mov     edi, ds:__imp_fflush
.text:1000ED29                 call    edi ; __imp_fflush
.text:1000ED2B                 push    offset aMsExe   ; "MS_EXE"
.text:1000ED30                 call    ds:__imp__wgetenv
.text:1000ED36                 add     esp, 2Ch
.text:1000ED39                 test    eax, eax
.text:1000ED3B                 jz      short loc_1000ED56
.text:1000ED3D                 push    eax
.text:1000ED3E                 push    offset aMsExeS  ; "MS_EXE : %s\n"
.text:1000ED43                 push    Stream          ; Stream
.text:1000ED49                 call    ebx ; __imp_fwprintf
.text:1000ED4B                 push    Stream          ; Stream
.text:1000ED51                 call    edi ; __imp_fflush
.text:1000ED53                 add     esp, 10h
.text:1000ED56
.text:1000ED56 loc_1000ED56:                           ; CODE XREF: sub_1000ECB7+84↑j
.text:1000ED56                 cmp     dword_100BDFC4, 1
.text:1000ED5D                 jnz     short loc_1000ED77
.text:1000ED5F                 push    offset aKeeppodSwitche ; "KEEPPOD switched on\n"
.text:1000ED64                 push    Stream          ; Stream
.text:1000ED6A                 call    ebx ; __imp_fwprintf
.text:1000ED6C                 push    Stream          ; Stream
.text:1000ED72                 call    edi ; __imp_fflush
.text:1000ED74                 add     esp, 0Ch
.text:1000ED77
.text:1000ED77 loc_1000ED77:                           ; CODE XREF: sub_1000ECB7+A6↑j
.text:1000ED77                 lea     eax, [esi+620h]
.text:1000ED7D                 push    offset aNoErrors ; "No errors"
.text:1000ED82                 push    eax             ; Destination
.text:1000ED83                 mov     [esp+90h+var_78], eax
.text:1000ED87                 call    sub_10006194
.text:1000ED8C                 lea     eax, [esi+81Eh]
.text:1000ED92                 mov     edi, offset Locale
.text:1000ED97                 push    edi             ; Source
.text:1000ED98                 push    eax             ; Destination
.text:1000ED99                 mov     [esp+98h+FileName], eax
.text:1000ED9D                 call    sub_10006194
.text:1000EDA2                 lea     eax, [esi+0A20h]
.text:1000EDA8                 push    edi             ; Source
.text:1000EDA9                 push    eax             ; Destination
.text:1000EDAA                 mov     [esp+0A0h+var_60], eax
.text:1000EDAE                 call    sub_10006173
.text:1000EDB3                 add     esi, 0A1Ch
.text:1000EDB9                 and     dword ptr [esi], 0
.text:1000EDBC                 mov     [esp+0A0h+var_5C], esi
.text:1000EDC0                 call    AliasTm                                                                          ; Вызов AliasTm
.text:1000EDC5                 push    eax             ; Time                                                           ; Складывает в стек результат AliasTm
.text:1000EDC6                 push    ebp             ; int                                                            ; Какое-то целое
.text:1000EDC7                 call    sub_10019820                                                                     ; Вызов sub_10019820 с этими аргументами
.text:1000EDCC                 add     esp, 20h
.text:1000EDCF                 mov     dword_100AF6B4, eax                                                              ; Складывает результат sub_10019820 в dword_100AF6B4 (туда же складывает резульатат и sub_100106FA)
.text:1000EDD4                 cmp     eax, 8000h                                                                       ; Сравнивает результат sub_10019820 c 8000h
.text:1000EDD9                 jnz     short loc_1000EDEF                                                               ; Если не равно то переход к метке loc_1000EDEF
.text:1000EDDB                 push    [esp+88h+var_78] ; Destination
.text:1000EDDF                 push    13h             ; int
.text:1000EDE1                 call    sub_10008731                                                                     ; Вызов sub_10008731 с аргументом 13h
.text:1000EDE6                 pop     ecx
.text:1000EDE7                 pop     ecx
.text:1000EDE8                 push    13h
.text:1000EDEA                 jmp     loc_1000F384
.text:1000EDEF ; ---------------------------------------------------------------------------
.text:1000EDEF
.text:1000EDEF loc_1000EDEF:                           ; CODE XREF: sub_1000ECB7+122↑j
.text:1000EDEF                 push    edi             ; Source
.text:1000EDF0                 mov     esi, offset word_100BDBA8
.text:1000EDF5                 push    esi             ; Destination
.text:1000EDF6                 mov     dword_100A1EE4, 1
.text:1000EE00                 mov     [esp+90h+var_70], 2
.text:1000EE08                 call    sub_100047B9
.text:1000EE0D                 push    edi             ; Source
.text:1000EE0E                 mov     ebp, offset String
.text:1000EE13                 push    ebp             ; Destination
.text:1000EE14                 call    sub_100047B9
.text:1000EE19                 push    esi
.text:1000EE1A                 push    offset aIsotypedirS ; "ISOTYPEDir : (%s)\n"
.text:1000EE1F                 push    Stream          ; Stream
.text:1000EE25                 call    ebx ; __imp_fwprintf
.text:1000EE27                 push    ebp
.text:1000EE28                 push    offset aProgsdirS ; "PROGSDir   : (%s)\n"
.text:1000EE2D                 push    Stream          ; Stream
.text:1000EE33                 call    ebx ; __imp_fwprintf
.text:1000EE35                 push    Stream          ; Stream
.text:1000EE3B                 call    ds:__imp_fflush
.text:1000EE41                 push    esi
.text:1000EE42                 call    sub_1000999D
.text:1000EE47                 add     esp, 30h
.text:1000EE4A                 test    eax, eax
.text:1000EE4C                 jnz     short loc_1000EE62
.text:1000EE4E                 push    [esp+88h+var_78] ; Destination
.text:1000EE52                 push    32h ; '2'       ; int
.text:1000EE54                 call    sub_10008731
.text:1000EE59                 pop     ecx
.text:1000EE5A                 pop     ecx
.text:1000EE5B                 push    32h ; '2'
.text:1000EE5D                 jmp     loc_1000F384
.text:1000EE62 ; ---------------------------------------------------------------------------
.text:1000EE62
.text:1000EE62 loc_1000EE62:                           ; CODE XREF: sub_1000ECB7+195↑j
.text:1000EE62                 push    ebp
.text:1000EE63                 call    sub_1000999D
.text:1000EE68                 add     esp, 4
.text:1000EE6B                 test    eax, eax
.text:1000EE6D                 jnz     short loc_1000EE83
.text:1000EE6F                 push    [esp+88h+var_78] ; Destination
.text:1000EE73                 push    33h ; '3'       ; int
.text:1000EE75                 call    sub_10008731
.text:1000EE7A                 pop     ecx
.text:1000EE7B                 pop     ecx
.text:1000EE7C                 push    33h ; '3'
.text:1000EE7E                 jmp     loc_1000F384
.text:1000EE83 ; ---------------------------------------------------------------------------
.text:1000EE83
.text:1000EE83 loc_1000EE83:                           ; CODE XREF: sub_1000ECB7+1B6↑j
.text:1000EE83                 mov     esi, ds:__imp__wunlink
.text:1000EE89                 xor     ebp, ebp
.text:1000EE8B                 mov     [esp+88h+var_68], ebp
.text:1000EE8F                 mov     [esp+88h+var_71], 0
.text:1000EE94                 mov     [esp+88h+var_6C], ebp
.text:1000EE98
.text:1000EE98 loc_1000EE98:                           ; CODE XREF: sub_1000ECB7+55B↓j
.text:1000EE98                 mov     eax, [esp+88h+var_70]
.text:1000EE9C                 add     eax, 0FFFFFFFEh ; switch 10 cases
.text:1000EE9F                 cmp     eax, 9
.text:1000EEA2                 ja      def_1000EEA8    ; jumptable 1000EEA8 default case, cases 4,10
.text:1000EEA8                 jmp     ds:jpt_1000EEA8[eax*4] ; switch jump
.text:1000EEAF ; ---------------------------------------------------------------------------
.text:1000EEAF
.text:1000EEAF loc_1000EEAF:                           ; CODE XREF: sub_1000ECB7+1F1↑j
.text:1000EEAF                                         ; DATA XREF: .text:jpt_1000EEA8↓o
.text:1000EEAF                 push    offset dword_100BC784 ; jumptable 1000EEA8 case 2
.text:1000EEB4                 push    ebp
.text:1000EEB5                 push    ebp
.text:1000EEB6                 push    ebp
.text:1000EEB7                 call    sub_1000E016
.text:1000EEBC                 mov     ebp, eax
.text:1000EEBE                 add     esp, 10h
.text:1000EEC1                 test    ebp, ebp
.text:1000EEC3                 jnz     loc_1000F25B
.text:1000EEC9                 push    offset word_100BD7A0 ; ArgList
.text:1000EECE                 call    sub_1000B116
.text:1000EED3                 pop     ecx
.text:1000EED4                 test    eax, eax
.text:1000EED6                 jnz     loc_1000F26E
.text:1000EEDC                 mov     [esp+88h+var_70], 3
.text:1000EEE4                 jmp     def_1000EEA8    ; jumptable 1000EEA8 default case, cases 4,10
.text:1000EEE9 ; ---------------------------------------------------------------------------
.text:1000EEE9
.text:1000EEE9 loc_1000EEE9:                           ; CODE XREF: sub_1000ECB7+1F1↑j
.text:1000EEE9                                         ; DATA XREF: .text:jpt_1000EEA8↓o
.text:1000EEE9                 push    3               ; jumptable 1000EEA8 case 3
.text:1000EEEB                 push    offset word_100BD7A0 ; String
.text:1000EEF0                 call    ds:__imp_wcslen
.text:1000EEF6                 pop     ecx
.text:1000EEF7                 lea     eax, word_100BD79A[eax*2]
.text:1000EEFE                 push    eax             ; Source
.text:1000EEFF                 lea     eax, [esp+90h+Destination]
.text:1000EF03                 push    eax             ; Destination
.text:1000EF04                 call    ds:__imp_wcsncpy
.text:1000EF0A                 mov     ebp, ds:__imp__wcsnicmp
.text:1000EF10                 push    3               ; MaxCount
.text:1000EF12                 lea     eax, [esp+98h+Destination]
.text:1000EF16                 push    offset aPcf_0   ; "pcf"
.text:1000EF1B                 push    eax             ; String1
.text:1000EF1C                 call    ebp ; __imp__wcsnicmp
.text:1000EF1E                 add     esp, 18h
.text:1000EF21                 test    eax, eax
.text:1000EF23                 jz      loc_1000F282
.text:1000EF29                 push    3               ; MaxCount
.text:1000EF2B                 lea     eax, [esp+8Ch+Destination]
.text:1000EF2F                 push    offset aIdf_0   ; "idf"
.text:1000EF34                 push    eax             ; String1
.text:1000EF35                 call    ebp ; __imp__wcsnicmp
.text:1000EF37                 add     esp, 0Ch
.text:1000EF3A                 test    eax, eax
.text:1000EF3C                 jnz     short loc_1000EF4B
.text:1000EF3E                 mov     [esp+88h+var_70], 5
.text:1000EF46                 jmp     def_1000EEA8    ; jumptable 1000EEA8 default case, cases 4,10
.text:1000EF4B ; ---------------------------------------------------------------------------
.text:1000EF4B
.text:1000EF4B loc_1000EF4B:                           ; CODE XREF: sub_1000ECB7+285↑j
.text:1000EF4B                 push    3               ; MaxCount
.text:1000EF4D                 lea     eax, [esp+8Ch+Destination]
.text:1000EF51                 push    offset aDat_0   ; "dat"
.text:1000EF56                 push    eax             ; String1
.text:1000EF57                 call    ebp ; __imp__wcsnicmp
.text:1000EF59                 add     esp, 0Ch
.text:1000EF5C                 test    eax, eax
.text:1000EF5E                 jnz     loc_1000F296
.text:1000EF64                 mov     [esp+88h+var_70], 6
.text:1000EF6C                 jmp     def_1000EEA8    ; jumptable 1000EEA8 default case, cases 4,10
.text:1000EF71 ; ---------------------------------------------------------------------------
.text:1000EF71
.text:1000EF71 loc_1000EF71:                           ; CODE XREF: sub_1000ECB7+1F1↑j
.text:1000EF71                                         ; DATA XREF: .text:jpt_1000EEA8↓o
.text:1000EF71                 push    offset word_100BD7A0 ; jumptable 1000EEA8 case 5
.text:1000EF76                 push    offset aS       ; "%s"
.text:1000EF7B                 mov     ebp, offset word_100A1EE8
.text:1000EF80                 push    ebp             ; Buffer
.text:1000EF81                 call    sub_1000A605
.text:1000EF86                 push    offset aIdftransIdf ; "idftrans.idf"
.text:1000EF8B                 push    ebp             ; String1
.text:1000EF8C                 call    sub_10008CB0
.text:1000EF91                 add     esp, 14h
.text:1000EF94                 test    eax, eax
.text:1000EF96                 jnz     loc_1000F2AA
.text:1000EF9C                 push    offset word_100BDFC8
.text:1000EFA1                 push    offset aIdftransIdf ; "idftrans.idf"
.text:1000EFA6                 call    isoa2bw
.text:1000EFAB                 pop     ecx
.text:1000EFAC                 pop     ecx
.text:1000EFAD                 test    eax, eax
.text:1000EFAF                 jnz     loc_1000F2DE
.text:1000EFB5
.text:1000EFB5 loc_1000EFB5:                           ; CODE XREF: sub_1000ECB7+347↓j
.text:1000EFB5                 mov     [esp+88h+var_70], 7
.text:1000EFBD                 jmp     def_1000EEA8    ; jumptable 1000EEA8 default case, cases 4,10
.text:1000EFC2 ; ---------------------------------------------------------------------------
.text:1000EFC2
.text:1000EFC2 loc_1000EFC2:                           ; CODE XREF: sub_1000ECB7+1F1↑j
.text:1000EFC2                                         ; DATA XREF: .text:jpt_1000EEA8↓o
.text:1000EFC2                 push    offset word_100BD7A0 ; jumptable 1000EEA8 case 6
.text:1000EFC7                 push    offset aS       ; "%s"
.text:1000EFCC                 push    offset word_100A1EE8 ; Buffer
.text:1000EFD1                 call    sub_1000A605
.text:1000EFD6                 mov     ebp, offset aFor036Dat_0 ; "for036.dat"
.text:1000EFDB                 push    ebp             ; String2
.text:1000EFDC                 push    offset word_100A1EE8 ; String1
.text:1000EFE1                 call    sub_10008CB0
.text:1000EFE6                 add     esp, 14h
.text:1000EFE9                 test    eax, eax
.text:1000EFEB                 jnz     loc_1000F2F2
.text:1000EFF1                 push    offset aIdftransIdf ; "idftrans.idf"
.text:1000EFF6                 push    ebp
.text:1000EFF7                 call    sub_1000A17A
.text:1000EFFC                 pop     ecx
.text:1000EFFD                 pop     ecx
.text:1000EFFE                 jmp     short loc_1000EFB5
.text:1000F000 ; ---------------------------------------------------------------------------
.text:1000F000
.text:1000F000 loc_1000F000:                           ; CODE XREF: sub_1000ECB7+1F1↑j
.text:1000F000                                         ; DATA XREF: .text:jpt_1000EEA8↓o
.text:1000F000                 mov     ebp, [esp+88h+FileName] ; jumptable 1000EEA8 case 7
.text:1000F004                 push    ebp             ; Destination
.text:1000F005                 push    0FFFFFF97h      ; int
.text:1000F007                 push    offset aIdftransIdf ; "idftrans.idf"
.text:1000F00C                 call    sub_1000A857
.text:1000F011                 add     esp, 0Ch
.text:1000F014                 test    eax, eax
.text:1000F016                 jnz     short loc_1000F01C
.text:1000F018                 push    ebp             ; FileName
.text:1000F019                 call    esi ; __imp__wunlink
.text:1000F01B                 pop     ecx
.text:1000F01C
.text:1000F01C loc_1000F01C:                           ; CODE XREF: sub_1000ECB7+35F↑j
.text:1000F01C                 call    sub_10009544
.text:1000F021                 call    AliasTm
.text:1000F026                 push    eax             ; Seed
.text:1000F027                 lea     eax, [esp+8Ch+var_30]
.text:1000F02B                 push    eax             ; int
.text:1000F02C                 push    dword_100AF6B4  ; int
.text:1000F032                 call    sub_10019640
.text:1000F037                 push    0               ; int
.text:1000F039                 push    0               ; char
.text:1000F03B                 push    ebp             ; int
.text:1000F03C                 push    dword_100A1EE4  ; int
.text:1000F042                 lea     eax, [esp+0A4h+var_30]
.text:1000F046                 push    dword_100BC784  ; int
.text:1000F04C                 push    offset aIdfoff  ; "idfoff"
.text:1000F051                 push    edi             ; wchar_t *
.text:1000F052                 push    offset word_100BD7A0 ; int
.text:1000F057                 push    edi             ; wchar_t *
.text:1000F058                 push    edi             ; Source
.text:1000F059                 push    eax             ; int
.text:1000F05A                 call    sub_1000E8BE
.text:1000F05F                 add     esp, 38h
.text:1000F062                 mov     dword_1002CB5C, eax
.text:1000F067                 cmp     eax, 7CFh
.text:1000F06C                 jnz     short loc_1000F07A
.text:1000F06E                 and     dword_1002CB5C, 0
.text:1000F075                 mov     [esp+88h+var_71], 1
.text:1000F07A
.text:1000F07A loc_1000F07A:                           ; CODE XREF: sub_1000ECB7+3B5↑j
.text:1000F07A                 mov     [esp+88h+var_70], 8
.text:1000F082                 jmp     def_1000EEA8    ; jumptable 1000EEA8 default case, cases 4,10
.text:1000F087 ; ---------------------------------------------------------------------------
.text:1000F087
.text:1000F087 loc_1000F087:                           ; CODE XREF: sub_1000ECB7+1F1↑j
.text:1000F087                                         ; DATA XREF: .text:jpt_1000EEA8↓o
.text:1000F087                 push    offset VarName  ; jumptable 1000EEA8 case 8
.text:1000F08C                 call    ds:__imp__wgetenv
.text:1000F092                 pop     ecx
.text:1000F093                 cmp     eax, ebp
.text:1000F095                 jz      loc_1000F16D
.text:1000F09B                 push    offset String2  ; "NO"
.text:1000F0A0                 push    eax             ; String1
.text:1000F0A1                 call    ds:__imp_wcscmp
.text:1000F0A7                 pop     ecx
.text:1000F0A8                 pop     ecx
.text:1000F0A9                 test    eax, eax
.text:1000F0AB                 jnz     loc_1000F16D
.text:1000F0B1                 push    offset aFor036Dat_0 ; "for036.dat"
.text:1000F0B6                 call    esi ; __imp__wunlink
.text:1000F0B8                 mov     [esp+8Ch+var_8C], offset aFor051Dat ; "for051.dat"
.text:1000F0BF                 call    esi ; __imp__wunlink
.text:1000F0C1                 mov     [esp+8Ch+var_8C], offset aFor066Dat ; "for066.dat"
.text:1000F0C8                 call    esi ; __imp__wunlink
.text:1000F0CA                 mov     [esp+8Ch+var_8C], offset NewFileName ; "isogen.fls"
.text:1000F0D1                 call    esi ; __imp__wunlink
.text:1000F0D3                 mov     [esp+8Ch+var_8C], offset aIsogenIdx ; "isogen.idx"
.text:1000F0DA                 call    esi ; __imp__wunlink
.text:1000F0DC                 mov     [esp+8Ch+var_8C], offset aStdoutTxt_0 ; "stdout.txt"
.text:1000F0E3                 call    esi ; __imp__wunlink
.text:1000F0E5                 mov     [esp+8Ch+var_8C], offset aIdftransDbg ; "idftrans.dbg"
.text:1000F0EC                 call    esi ; __imp__wunlink
.text:1000F0EE                 mov     [esp+8Ch+var_8C], offset aIdftransIdf ; "idftrans.idf"
.text:1000F0F5                 call    esi ; __imp__wunlink
.text:1000F0F7                 mov     [esp+8Ch+var_8C], offset aPipelineLog ; "pipeline.log"
.text:1000F0FE                 call    esi ; __imp__wunlink
.text:1000F100                 mov     [esp+8Ch+var_8C], offset aPodisoLog ; "podiso.log"
.text:1000F107                 call    esi ; __imp__wunlink
.text:1000F109                 mov     [esp+8Ch+var_8C], offset aPodidfLog ; "podidf.log"
.text:1000F110                 call    esi ; __imp__wunlink
.text:1000F112                 mov     [esp+8Ch+var_8C], offset aPodpipeLog ; "podpipe.log"
.text:1000F119                 call    esi ; __imp__wunlink
.text:1000F11B                 xor     ebp, ebp
.text:1000F11D                 pop     ecx
.text:1000F11E                 inc     ebp
.text:1000F11F
.text:1000F11F loc_1000F11F:                           ; CODE XREF: sub_1000ECB7+4B4↓j
.text:1000F11F                 push    ebp             ; ArgList
.text:1000F120                 lea     eax, [esp+8Ch+Buffer]
.text:1000F124                 push    offset aPodisoDLog ; "podiso_%d.log"
.text:1000F129                 push    eax             ; Buffer
.text:1000F12A                 call    sub_1000A67F
.text:1000F12F                 lea     eax, [esp+94h+Buffer]
.text:1000F133                 push    eax             ; FileName
.text:1000F134                 call    esi ; __imp__wunlink
.text:1000F136                 push    ebp             ; ArgList
.text:1000F137                 lea     eax, [esp+9Ch+Buffer]
.text:1000F13B                 push    offset aPodidfDLog ; "podidf_%d.log"
.text:1000F140                 push    eax             ; Buffer
.text:1000F141                 call    sub_1000A67F
.text:1000F146                 lea     eax, [esp+0A4h+Buffer]
.text:1000F14A                 push    eax             ; FileName
.text:1000F14B                 call    esi ; __imp__wunlink
.text:1000F14D                 push    ebp             ; ArgList
.text:1000F14E                 lea     eax, [esp+0ACh+Buffer]
.text:1000F152                 push    offset aPodpipeDLog ; "podpipe_%d.log"
.text:1000F157                 push    eax             ; Buffer
.text:1000F158                 call    sub_1000A67F
.text:1000F15D                 lea     eax, [esp+0B4h+Buffer]
.text:1000F161                 push    eax             ; FileName
.text:1000F162                 call    esi ; __imp__wunlink
.text:1000F164                 add     esp, 30h
.text:1000F167                 inc     ebp
.text:1000F168                 cmp     ebp, 64h ; 'd'
.text:1000F16B                 jl      short loc_1000F11F
.text:1000F16D
.text:1000F16D loc_1000F16D:                           ; CODE XREF: sub_1000ECB7+3DE↑j
.text:1000F16D                                         ; sub_1000ECB7+3F4↑j
.text:1000F16D                 mov     [esp+88h+var_70], 9
.text:1000F175                 jmp     def_1000EEA8    ; jumptable 1000EEA8 default case, cases 4,10
.text:1000F17A ; ---------------------------------------------------------------------------
.text:1000F17A
.text:1000F17A loc_1000F17A:                           ; CODE XREF: sub_1000ECB7+1F1↑j
.text:1000F17A                                         ; DATA XREF: .text:jpt_1000EEA8↓o
.text:1000F17A                 mov     ecx, dword_1002CB5C ; jumptable 1000EEA8 case 9
.text:1000F180                 cmp     ecx, ebp
.text:1000F182                 jz      short loc_1000F1AB
.text:1000F184                 push    0FFFFFFFBh
.text:1000F186                 pop     eax
.text:1000F187                 cmp     ecx, eax
.text:1000F189                 jz      short loc_1000F1A7
.text:1000F18B                 push    0FFFFFFFCh
.text:1000F18D                 pop     eax
.text:1000F18E                 cmp     ecx, eax
.text:1000F190                 jz      short loc_1000F1A7
.text:1000F192                 push    0FFFFFFFDh
.text:1000F194                 pop     eax
.text:1000F195                 cmp     ecx, eax
.text:1000F197                 jz      short loc_1000F1A7
.text:1000F199                 xor     eax, eax
.text:1000F19B                 cmp     ecx, 0FFFFFFFEh
.text:1000F19E                 setz    al
.text:1000F1A1                 dec     eax
.text:1000F1A2                 and     eax, 0Bh
.text:1000F1A5                 dec     eax
.text:1000F1A6                 dec     eax
.text:1000F1A7
.text:1000F1A7 loc_1000F1A7:                           ; CODE XREF: sub_1000ECB7+4D2↑j
.text:1000F1A7                                         ; sub_1000ECB7+4D9↑j ...
.text:1000F1A7                 mov     [esp+88h+var_6C], eax
.text:1000F1AB
.text:1000F1AB loc_1000F1AB:                           ; CODE XREF: sub_1000ECB7+4CB↑j
.text:1000F1AB                 call    sub_100095F5
.text:1000F1B0                 mov     dword_1002CB5C, eax
.text:1000F1B5                 cmp     eax, ebp
.text:1000F1B7                 jz      short loc_1000F1E6
.text:1000F1B9                 cmp     eax, 0Eh
.text:1000F1BC                 jnz     short loc_1000F1C8
.text:1000F1BE                 mov     [esp+88h+var_6C], 22h ; '"'
.text:1000F1C6                 jmp     short loc_1000F1E6
.text:1000F1C8 ; ---------------------------------------------------------------------------
.text:1000F1C8
.text:1000F1C8 loc_1000F1C8:                           ; CODE XREF: sub_1000ECB7+505↑j
.text:1000F1C8                 cmp     eax, 0Dh
.text:1000F1CB                 jnz     short loc_1000F1D7
.text:1000F1CD                 mov     [esp+88h+var_6C], 21h ; '!'
.text:1000F1D5                 jmp     short loc_1000F1E6
.text:1000F1D7 ; ---------------------------------------------------------------------------
.text:1000F1D7
.text:1000F1D7 loc_1000F1D7:                           ; CODE XREF: sub_1000ECB7+514↑j
.text:1000F1D7                 xor     ecx, ecx
.text:1000F1D9                 cmp     eax, 0Ch
.text:1000F1DC                 setnz   cl
.text:1000F1DF                 add     ecx, 1Fh
.text:1000F1E2                 mov     [esp+88h+var_6C], ecx
.text:1000F1E6
.text:1000F1E6 loc_1000F1E6:                           ; CODE XREF: sub_1000ECB7+500↑j
.text:1000F1E6                                         ; sub_1000ECB7+50F↑j ...
.text:1000F1E6                 mov     [esp+88h+var_70], 0Bh
.text:1000F1EE                 jmp     short def_1000EEA8 ; jumptable 1000EEA8 default case, cases 4,10
.text:1000F1F0 ; ---------------------------------------------------------------------------
.text:1000F1F0
.text:1000F1F0 loc_1000F1F0:                           ; CODE XREF: sub_1000ECB7+1F1↑j
.text:1000F1F0                                         ; DATA XREF: .text:jpt_1000EEA8↓o
.text:1000F1F0                 push    [esp+88h+var_5C] ; jumptable 1000EEA8 case 11
.text:1000F1F4                 push    [esp+8Ch+var_60] ; int
.text:1000F1F8                 push    [esp+90h+FileName] ; String
.text:1000F1FC                 call    sub_1000B381
.text:1000F201                 add     esp, 0Ch
.text:1000F204                 mov     [esp+88h+var_68], 1
.text:1000F20C
.text:1000F20C def_1000EEA8:                           ; CODE XREF: sub_1000ECB7+1EB↑j
.text:1000F20C                                         ; sub_1000ECB7+1F1↑j ...
.text:1000F20C                 xor     ebp, ebp        ; jumptable 1000EEA8 default case, cases 4,10
.text:1000F20E                 cmp     [esp+88h+var_68], ebp
.text:1000F212                 jz      loc_1000EE98
.text:1000F218                 mov     eax, [esp+88h+var_6C]
.text:1000F21C                 push    9
.text:1000F21E                 pop     esi
.text:1000F21F                 cmp     eax, esi
.text:1000F221                 jg      loc_1000F322
.text:1000F227                 jz      loc_1000F312
.text:1000F22D                 cmp     eax, 0FFFFFFFBh
.text:1000F230                 jz      loc_1000F30A
.text:1000F236                 cmp     eax, 0FFFFFFFCh
.text:1000F239                 jz      loc_1000F302
.text:1000F23F                 cmp     eax, 0FFFFFFFDh
.text:1000F242                 jz      loc_1000F2FA
.text:1000F248                 cmp     eax, 0FFFFFFFEh
.text:1000F24B                 jnz     loc_1000F330
.text:1000F251                 push    [esp+88h+var_78]
.text:1000F255                 push    eax
.text:1000F256                 jmp     loc_1000F317
.text:1000F25B ; ---------------------------------------------------------------------------
.text:1000F25B
.text:1000F25B loc_1000F25B:                           ; CODE XREF: sub_1000ECB7+20C↑j
.text:1000F25B                 push    [esp+88h+var_78] ; Destination
.text:1000F25F                 push    ebp             ; int
.text:1000F260                 call    sub_10008731
.text:1000F265                 pop     ecx
.text:1000F266                 pop     ecx
.text:1000F267                 mov     eax, ebp
.text:1000F269                 jmp     loc_1000F385
.text:1000F26E ; ---------------------------------------------------------------------------
.text:1000F26E
.text:1000F26E loc_1000F26E:                           ; CODE XREF: sub_1000ECB7+21F↑j
.text:1000F26E                 push    [esp+88h+var_78] ; Destination
.text:1000F272                 push    3Ch ; '<'       ; int
.text:1000F274                 call    sub_10008731
.text:1000F279                 pop     ecx
.text:1000F27A                 pop     ecx
.text:1000F27B                 push    3Ch ; '<'
.text:1000F27D                 jmp     loc_1000F384
.text:1000F282 ; ---------------------------------------------------------------------------
.text:1000F282
.text:1000F282 loc_1000F282:                           ; CODE XREF: sub_1000ECB7+26C↑j
.text:1000F282                 push    [esp+88h+var_78] ; Destination
.text:1000F286                 push    3Dh ; '='       ; int
.text:1000F288                 call    sub_10008731
.text:1000F28D                 pop     ecx
.text:1000F28E                 pop     ecx
.text:1000F28F                 push    3Dh ; '='
.text:1000F291                 jmp     loc_1000F384
.text:1000F296 ; ---------------------------------------------------------------------------
.text:1000F296
.text:1000F296 loc_1000F296:                           ; CODE XREF: sub_1000ECB7+2A7↑j
.text:1000F296                 push    [esp+88h+var_78] ; Destination
.text:1000F29A                 push    1Ch             ; int
.text:1000F29C                 call    sub_10008731
.text:1000F2A1                 pop     ecx
.text:1000F2A2                 pop     ecx
.text:1000F2A3                 push    1Ch
.text:1000F2A5                 jmp     loc_1000F384
.text:1000F2AA ; ---------------------------------------------------------------------------
.text:1000F2AA
.text:1000F2AA loc_1000F2AA:                           ; CODE XREF: sub_1000ECB7+2DF↑j
.text:1000F2AA                 push    offset aIdftransIdf ; "idftrans.idf"
.text:1000F2AF                 push    ebp
.text:1000F2B0
.text:1000F2B0 loc_1000F2B0:                           ; CODE XREF: sub_1000ECB7+641↓j
.text:1000F2B0                 push    offset aCopybinaryfile ; "CopyBinaryFile failed : Source (%s) - T"...
.text:1000F2B5                 push    Stream          ; Stream
.text:1000F2BB                 call    ebx ; __imp_fwprintf
.text:1000F2BD                 push    Stream          ; Stream
.text:1000F2C3                 call    ds:__imp_fflush
.text:1000F2C9                 push    [esp+9Ch+var_78] ; Destination
.text:1000F2CD                 push    35h ; '5'       ; int
.text:1000F2CF                 call    sub_10008731
.text:1000F2D4                 add     esp, 1Ch
.text:1000F2D7                 push    35h ; '5'
.text:1000F2D9                 jmp     loc_1000F384
.text:1000F2DE ; ---------------------------------------------------------------------------
.text:1000F2DE
.text:1000F2DE loc_1000F2DE:                           ; CODE XREF: sub_1000ECB7+2F8↑j
.text:1000F2DE                 push    [esp+88h+var_78] ; Destination
.text:1000F2E2                 push    3Eh ; '>'       ; int
.text:1000F2E4                 call    sub_10008731
.text:1000F2E9                 pop     ecx
.text:1000F2EA                 pop     ecx
.text:1000F2EB                 push    3Eh ; '>'
.text:1000F2ED                 jmp     loc_1000F384
.text:1000F2F2 ; ---------------------------------------------------------------------------
.text:1000F2F2
.text:1000F2F2 loc_1000F2F2:                           ; CODE XREF: sub_1000ECB7+334↑j
.text:1000F2F2                 push    ebp
.text:1000F2F3                 push    offset word_100A1EE8
.text:1000F2F8                 jmp     short loc_1000F2B0
.text:1000F2FA ; ---------------------------------------------------------------------------
.text:1000F2FA
.text:1000F2FA loc_1000F2FA:                           ; CODE XREF: sub_1000ECB7+58B↑j
.text:1000F2FA                 push    [esp+88h+var_78]
.text:1000F2FE                 push    0FFFFFFFDh
.text:1000F300                 jmp     short loc_1000F317
.text:1000F302 ; ---------------------------------------------------------------------------
.text:1000F302
.text:1000F302 loc_1000F302:                           ; CODE XREF: sub_1000ECB7+582↑j
.text:1000F302                 push    [esp+88h+var_78]
.text:1000F306                 push    0FFFFFFFCh
.text:1000F308                 jmp     short loc_1000F317
.text:1000F30A ; ---------------------------------------------------------------------------
.text:1000F30A
.text:1000F30A loc_1000F30A:                           ; CODE XREF: sub_1000ECB7+579↑j
.text:1000F30A                 push    [esp+88h+var_78]
.text:1000F30E                 push    0FFFFFFFBh
.text:1000F310                 jmp     short loc_1000F317
.text:1000F312 ; ---------------------------------------------------------------------------
.text:1000F312
.text:1000F312 loc_1000F312:                           ; CODE XREF: sub_1000ECB7+570↑j
.text:1000F312                                         ; sub_1000ECB7+685↓j
.text:1000F312                 push    [esp+88h+var_78] ; Destination
.text:1000F316                 push    esi             ; int
.text:1000F317
.text:1000F317 loc_1000F317:                           ; CODE XREF: sub_1000ECB7+59F↑j
.text:1000F317                                         ; sub_1000ECB7+649↑j ...
.text:1000F317                 call    sub_10008731
.text:1000F31C                 pop     ecx
.text:1000F31D                 pop     ecx
.text:1000F31E                 mov     eax, esi
.text:1000F320                 jmp     short loc_1000F385
.text:1000F322 ; ---------------------------------------------------------------------------
.text:1000F322
.text:1000F322 loc_1000F322:                           ; CODE XREF: sub_1000ECB7+56A↑j
.text:1000F322                 sub     eax, 1Fh
.text:1000F325                 jz      short loc_1000F375
.text:1000F327                 dec     eax
.text:1000F328                 jz      short loc_1000F364
.text:1000F32A                 dec     eax
.text:1000F32B                 jz      short loc_1000F353
.text:1000F32D                 dec     eax
.text:1000F32E                 jz      short loc_1000F342
.text:1000F330
.text:1000F330 loc_1000F330:                           ; CODE XREF: sub_1000ECB7+594↑j
.text:1000F330                 cmp     [esp+88h+var_71], 1
.text:1000F335                 jnz     short loc_1000F33E
.text:1000F337                 mov     esi, 7CFh
.text:1000F33C                 jmp     short loc_1000F312
.text:1000F33E ; ---------------------------------------------------------------------------
.text:1000F33E
.text:1000F33E loc_1000F33E:                           ; CODE XREF: sub_1000ECB7+67E↑j
.text:1000F33E                 xor     eax, eax
.text:1000F340                 jmp     short loc_1000F385
.text:1000F342 ; ---------------------------------------------------------------------------
.text:1000F342
.text:1000F342 loc_1000F342:                           ; CODE XREF: sub_1000ECB7+677↑j
.text:1000F342                 push    [esp+88h+var_78] ; Destination
.text:1000F346                 push    22h ; '"'       ; int
.text:1000F348                 call    sub_10008731
.text:1000F34D                 pop     ecx
.text:1000F34E                 pop     ecx
.text:1000F34F                 push    22h ; '"'
.text:1000F351                 jmp     short loc_1000F384
.text:1000F353 ; ---------------------------------------------------------------------------
.text:1000F353
.text:1000F353 loc_1000F353:                           ; CODE XREF: sub_1000ECB7+674↑j
.text:1000F353                 push    [esp+88h+var_78] ; Destination
.text:1000F357                 push    21h ; '!'       ; int
.text:1000F359                 call    sub_10008731
.text:1000F35E                 pop     ecx
.text:1000F35F                 pop     ecx
.text:1000F360                 push    21h ; '!'
.text:1000F362                 jmp     short loc_1000F384
.text:1000F364 ; ---------------------------------------------------------------------------
.text:1000F364
.text:1000F364 loc_1000F364:                           ; CODE XREF: sub_1000ECB7+671↑j
.text:1000F364                 push    [esp+88h+var_78] ; Destination
.text:1000F368                 push    20h ; ' '       ; int
.text:1000F36A                 call    sub_10008731
.text:1000F36F                 pop     ecx
.text:1000F370                 pop     ecx
.text:1000F371                 push    20h ; ' '
.text:1000F373                 jmp     short loc_1000F384
.text:1000F375 ; ---------------------------------------------------------------------------
.text:1000F375
.text:1000F375 loc_1000F375:                           ; CODE XREF: sub_1000ECB7+66E↑j
.text:1000F375                 push    [esp+88h+var_78] ; Destination
.text:1000F379                 push    1Fh             ; int
.text:1000F37B                 call    sub_10008731
.text:1000F380                 pop     ecx
.text:1000F381                 pop     ecx
.text:1000F382                 push    1Fh
.text:1000F384
.text:1000F384 loc_1000F384:                           ; CODE XREF: sub_1000ECB7+133↑j
.text:1000F384                                         ; sub_1000ECB7+1A6↑j ...
.text:1000F384                 pop     eax
.text:1000F385
.text:1000F385 loc_1000F385:                           ; CODE XREF: sub_1000ECB7+5B2↑j
.text:1000F385                                         ; sub_1000ECB7+669↑j ...
.text:1000F385                 mov     ecx, [esp+88h+var_4]
.text:1000F38C                 pop     edi
.text:1000F38D                 pop     esi
.text:1000F38E                 pop     ebp
.text:1000F38F                 pop     ebx
.text:1000F390                 xor     ecx, esp
.text:1000F392                 call    sub_1001AE66
.text:1000F397                 add     esp, 78h
.text:1000F39A                 retn
.text:1000F39A sub_1000ECB7    endp
