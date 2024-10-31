.text:10019820 ; =============== S U B R O U T I N E =======================================
.text:10019820
.text:10019820
.text:10019820 ; int __cdecl sub_10019820(int, __time32_t Time)
.text:10019820 sub_10019820    proc near               ; CODE XREF: sub_1000ECB7+110↑p
.text:10019820                                         ; sub_100106FA+1F7↑p ...
.text:10019820
.text:10019820 var_25          = byte ptr -25h
.text:10019820 Str1            = byte ptr -24h
.text:10019820 Str2            = byte ptr -18h
.text:10019820 var_C           = byte ptr -0Ch
.text:10019820 arg_0           = dword ptr  4
.text:10019820 Time            = dword ptr  8
.text:10019820
.text:10019820                 sub     esp, 24h
.text:10019823                 lea     eax, [esp+24h+Str2]
.text:10019827                 lea     ecx, [esp+24h+Time]
.text:1001982B                 push    ebx
.text:1001982C                 push    ebp
.text:1001982D                 push    esi
.text:1001982E                 mov     esi, [esp+30h+Time]
.text:10019832                 push    edi
.text:10019833                 push    esi             ; Time
.text:10019834                 push    eax             ; int
.text:10019835                 push    ecx             ; int
.text:10019836                 mov     ebp, 8000h                                                                       ; Складывает в ebp 8000h (видимо, как начальное значение)
.text:1001983B                 call    sub_100196E0
.text:10019840                 add     esi, 0FFFFFFC4h
.text:10019843                 lea     edx, [esp+40h+var_C]
.text:10019847                 push    esi             ; Time
.text:10019848                 lea     eax, [esp+44h+Time]
.text:1001984C                 push    edx             ; int
.text:1001984D                 push    eax             ; int
.text:1001984E                 call    sub_100196E0
.text:10019853                 mov     ebx, [esp+4Ch+arg_0]
.text:10019857                 mov     esi, [esp+4Ch+Time]
.text:1001985B                 add     esp, 18h
.text:1001985E                 xor     edi, edi                                                                         ; Обнуление регистра edi
.text:10019860
.text:10019860 loc_10019860:                           ; CODE XREF: sub_10019820+AB↓j
.text:10019860                 test    edi, edi                                                                         ; Проверка на 0
.text:10019862                 jnz     short loc_1001986B
.text:10019864                 mov     esi, offset unk_100A1B1C
.text:10019869                 jmp     short loc_10019881
.text:1001986B ; ---------------------------------------------------------------------------
.text:1001986B
.text:1001986B loc_1001986B:                           ; CODE XREF: sub_10019820+42↑j
.text:1001986B                 cmp     edi, 1                                                                           ; Сравнение edi c 1
.text:1001986E                 jnz     short loc_10019877
.text:10019870                 mov     esi, offset unk_100A1ACC
.text:10019875                 jmp     short loc_10019881
.text:10019877 ; ---------------------------------------------------------------------------
.text:10019877
.text:10019877 loc_10019877:                           ; CODE XREF: sub_10019820+4E↑j
.text:10019877                 cmp     edi, 2                                                                           ; Сравнение edi c 2
.text:1001987A                 jnz     short loc_10019881
.text:1001987C                 mov     esi, offset unk_100A1AF4
.text:10019881
.text:10019881 loc_10019881:                           ; CODE XREF: sub_10019820+49↑j
.text:10019881                                         ; sub_10019820+55↑j ...
.text:10019881                 xor     eax, eax
.text:10019883
.text:10019883 loc_10019883:                           ; CODE XREF: sub_10019820+73↓j
.text:10019883                 mov     ecx, [esi]
.text:10019885                 inc     eax
.text:10019886                 add     esi, 4
.text:10019889                 cmp     eax, 0Ah
.text:1001988C                 mov     dl, [ecx+ebx]
.text:1001988F                 mov     [esp+eax+34h+var_25], dl
.text:10019893                 jl      short loc_10019883
.text:10019895                 lea     eax, [esp+34h+Str2]
.text:10019899                 push    0Ah             ; MaxCount
.text:1001989B                 lea     ecx, [esp+38h+Str1]
.text:1001989F                 push    eax             ; Str2
.text:100198A0                 push    ecx             ; Str1
.text:100198A1                 call    strncmp
.text:100198A6                 add     esp, 0Ch
.text:100198A9                 test    eax, eax
.text:100198AB                 jz      short loc_100198C5
.text:100198AD                 lea     edx, [esp+34h+var_C]
.text:100198B1                 push    0Ah             ; MaxCount
.text:100198B3                 lea     eax, [esp+38h+Str1]
.text:100198B7                 push    edx             ; Str2
.text:100198B8                 push    eax             ; Str1
.text:100198B9                 call    strncmp
.text:100198BE                 add     esp, 0Ch
.text:100198C1                 test    eax, eax
.text:100198C3                 jnz     short loc_100198C7
.text:100198C5
.text:100198C5 loc_100198C5:                           ; CODE XREF: sub_10019820+8B↑j
.text:100198C5                 mov     ebp, edi                                                                         ; Складывает edi в ebp
.text:100198C7
.text:100198C7 loc_100198C7:                           ; CODE XREF: sub_10019820+A3↑j
.text:100198C7                 inc     edi                                                                              ; Инкремент edi
.text:100198C8                 cmp     edi, 3                                                                           ; Сравнение edi c 3
.text:100198CB                 jl      short loc_10019860
.text:100198CD                 pop     edi
.text:100198CE                 mov     eax, ebp                                                                         ; Складывает ebp в eax (возвращаемое значение)
.text:100198D0                 pop     esi
.text:100198D1                 pop     ebp
.text:100198D2                 pop     ebx
.text:100198D3                 add     esp, 24h
.text:100198D6                 retn
.text:100198D6 sub_10019820    endp
.text:100198D6
.text:100198D6 ; ---------------------------------------------------------------------------
.text:100198D7                 align 10h
