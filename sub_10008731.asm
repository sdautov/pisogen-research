.text:10008731 ; =============== S U B R O U T I N E =======================================
.text:10008731
.text:10008731 ; Attributes: bp-based frame
.text:10008731
.text:10008731 ; int __cdecl sub_10008731(int, wchar_t *Destination)
.text:10008731 sub_10008731    proc near               ; CODE XREF: sub_1000AFB5+28↓p
.text:10008731                                         ; sub_1000AFB5+6B↓p ...
.text:10008731
.text:10008731 arg_0           = dword ptr  8
.text:10008731 Destination     = dword ptr  0Ch
.text:10008731
.text:10008731                 push    ebp
.text:10008732                 mov     ebp, esp
.text:10008734                 push    esi
.text:10008735                 push    edi
.text:10008736                 mov     edi, [ebp+arg_0]
.text:10008739                 mov     esi, 7CFh
.text:1000873E                 cmp     edi, esi
.text:10008740                 jnz     short loc_10008749
.text:10008742                 push    offset aIsogenReported ; "ISOGEN reported drawing generation fail"...
.text:10008747                 jmp     short loc_10008787
.text:10008749 ; ---------------------------------------------------------------------------
.text:10008749
.text:10008749 loc_10008749:                           ; CODE XREF: sub_10008731+F↑j
.text:10008749                 mov     esi, 7E6h
.text:1000874E                 cmp     edi, esi
.text:10008750                 jnz     short loc_10008759
.text:10008752                 push    offset aIdfgenReported ; "IDFGEN reported disconnected pipeline"
.text:10008757                 jmp     short loc_10008787
.text:10008759 ; ---------------------------------------------------------------------------
.text:10008759
.text:10008759 loc_10008759:                           ; CODE XREF: sub_10008731+1F↑j
.text:10008759                 mov     esi, 7E7h
.text:1000875E                 cmp     edi, esi
.text:10008760                 jnz     short loc_10008769
.text:10008762                 push    offset aIdfgenReported_0 ; "IDFGEN reported disconnected pipeline :"...
.text:10008767                 jmp     short loc_10008787
.text:10008769 ; ---------------------------------------------------------------------------
.text:10008769
.text:10008769 loc_10008769:                           ; CODE XREF: sub_10008731+2F↑j
.text:10008769                 mov     esi, 7E8h
.text:1000876E                 cmp     edi, esi
.text:10008770                 jnz     short loc_10008779
.text:10008772                 push    offset aIdfgenReported_1 ; "IDFGEN reported disconnected pipeline :"...
.text:10008777                 jmp     short loc_10008787
.text:10008779 ; ---------------------------------------------------------------------------
.text:10008779
.text:10008779 loc_10008779:                           ; CODE XREF: sub_10008731+3F↑j
.text:10008779                 mov     esi, 7D1h
.text:1000877E                 cmp     edi, esi
.text:10008780                 jnz     short loc_100087AA
.text:10008782                 push    offset Source   ; "Personal Isogen Warning : Incompatible "...
.text:10008787
.text:10008787 loc_10008787:                           ; CODE XREF: sub_10008731+16↑j
.text:10008787                                         ; sub_10008731+26↑j ...
.text:10008787                 push    [ebp+Destination] ; Destination
.text:1000878A                 call    ds:__imp_wcscpy
.text:10008790                 push    esi
.text:10008791                 push    [ebp+Destination] ; Format
.text:10008794                 lea     eax, [ebp+Destination]
.text:10008797                 push    offset aSPersonalIsoge ; "%s\r\n[Personal ISOGEN code %d]"
.text:1000879C                 push    eax             ; int
.text:1000879D                 call    sub_100085B7
.text:100087A2                 add     esp, 18h
.text:100087A5                 jmp     loc_10008A52
.text:100087AA ; ---------------------------------------------------------------------------
.text:100087AA
.text:100087AA loc_100087AA:                           ; CODE XREF: sub_10008731+4F↑j
.text:100087AA                 mov     eax, 3E8h
.text:100087AF                 cmp     edi, eax
.text:100087B1                 jg      loc_100089AD
.text:100087B7                 jz      loc_100089A3
.text:100087BD                 lea     eax, [edi+7]    ; switch 72 cases
.text:100087C0                 cmp     eax, 47h
.text:100087C3                 ja      def_100087D0    ; jumptable 100087D0 default case, cases -1,0,20,25,30,35,37-40,42,50,51,54-59
.text:100087C3                                         ; jumptable 100089C3 default case
.text:100087C9                 movzx   eax, ds:byte_10008B15[eax]
.text:100087D0                 jmp     ds:jpt_100087D0[eax*4] ; switch jump
.text:100087D7 ; ---------------------------------------------------------------------------
.text:100087D7
.text:100087D7 loc_100087D7:                           ; CODE XREF: sub_10008731+9F↑j
.text:100087D7                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100087D7                 push    offset aThePersonalIso ; jumptable 100087D0 case 1
.text:100087DC                 jmp     loc_10008A32
.text:100087E1 ; ---------------------------------------------------------------------------
.text:100087E1
.text:100087E1 loc_100087E1:                           ; CODE XREF: sub_10008731+9F↑j
.text:100087E1                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100087E1                 push    offset aTheRequestedIs ; jumptable 100087D0 case 2
.text:100087E6                 jmp     loc_10008A32
.text:100087EB ; ---------------------------------------------------------------------------
.text:100087EB
.text:100087EB loc_100087EB:                           ; CODE XREF: sub_10008731+9F↑j
.text:100087EB                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100087EB                 push    offset aTheSpecifiedPc ; jumptable 100087D0 case 5
.text:100087F0                 jmp     loc_10008A32
.text:100087F5 ; ---------------------------------------------------------------------------
.text:100087F5
.text:100087F5 loc_100087F5:                           ; CODE XREF: sub_10008731+9F↑j
.text:100087F5                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100087F5                 push    offset aTheInputFileDo ; jumptable 100087D0 case 60
.text:100087FA                 jmp     loc_10008A32
.text:100087FF ; ---------------------------------------------------------------------------
.text:100087FF
.text:100087FF loc_100087FF:                           ; CODE XREF: sub_10008731+9F↑j
.text:100087FF                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100087FF                 push    offset aNoProjectFound ; jumptable 100087D0 case 3
.text:10008804                 jmp     loc_10008A32
.text:10008809 ; ---------------------------------------------------------------------------
.text:10008809
.text:10008809 loc_10008809:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008809                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008809                 push    offset aIdfgenHandshak ; jumptable 100087D0 case 4
.text:1000880E                 jmp     loc_10008A32
.text:10008813 ; ---------------------------------------------------------------------------
.text:10008813
.text:10008813 loc_10008813:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008813                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008813                 push    offset aIsogenHandshak ; jumptable 100087D0 case 8
.text:10008818                 jmp     loc_10008A32
.text:1000881D ; ---------------------------------------------------------------------------
.text:1000881D
.text:1000881D loc_1000881D:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000881D                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000881D                 push    offset aPersonalIsogen_0 ; jumptable 100087D0 case 19                            ; Печать сообщения "Personal ISOGEN handshake failed. Run terminated"
.text:10008822                 jmp     loc_10008A32
.text:10008827 ; ---------------------------------------------------------------------------
.text:10008827
.text:10008827 loc_10008827:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008827                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008827                 push    offset aIsogenPrograms ; jumptable 100087D0 case 7
.text:1000882C                 jmp     loc_10008A32
.text:10008831 ; ---------------------------------------------------------------------------
.text:10008831
.text:10008831 loc_10008831:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008831                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008831                 push    offset aCopyFlsCommand ; jumptable 100087D0 case 17
.text:10008836                 jmp     loc_10008A32
.text:1000883B ; ---------------------------------------------------------------------------
.text:1000883B
.text:1000883B loc_1000883B:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000883B                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000883B                 push    offset aPersonalIsogen_1 ; jumptable 100087D0 case 22
.text:10008840                 jmp     loc_10008A32
.text:10008845 ; ---------------------------------------------------------------------------
.text:10008845
.text:10008845 loc_10008845:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008845                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008845                 push    offset aIdfgenPrograms ; jumptable 100087D0 case 12
.text:1000884A                 jmp     loc_10008A32
.text:1000884F ; ---------------------------------------------------------------------------
.text:1000884F
.text:1000884F loc_1000884F:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000884F                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000884F                 push    offset aPersonalIsogen_2 ; jumptable 100087D0 cases 6,10,11,14,18,21,24
.text:10008854                 jmp     loc_10008A32
.text:10008859 ; ---------------------------------------------------------------------------
.text:10008859
.text:10008859 loc_10008859:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008859                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008859                 push    offset aWritebannerPro ; jumptable 100087D0 case 23
.text:1000885E                 jmp     loc_10008A32
.text:10008863 ; ---------------------------------------------------------------------------
.text:10008863
.text:10008863 loc_10008863:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008863                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008863                 push    offset aPersonalIsogen_3 ; jumptable 100087D0 case -4
.text:10008868                 jmp     loc_10008A32
.text:1000886D ; ---------------------------------------------------------------------------
.text:1000886D
.text:1000886D loc_1000886D:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000886D                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000886D                 push    offset aPersonalIsogen_4 ; jumptable 100087D0 case -3
.text:10008872                 jmp     loc_10008A32
.text:10008877 ; ---------------------------------------------------------------------------
.text:10008877
.text:10008877 loc_10008877:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008877                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008877                 push    offset aPersonalIsogen_5 ; jumptable 100087D0 case -2
.text:1000887C                 jmp     loc_10008A32
.text:10008881 ; ---------------------------------------------------------------------------
.text:10008881
.text:10008881 loc_10008881:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008881                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008881                 push    offset aPersonalIsogen_6 ; jumptable 100087D0 case -5
.text:10008886                 jmp     loc_10008A32
.text:1000888B ; ---------------------------------------------------------------------------
.text:1000888B
.text:1000888B loc_1000888B:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000888B                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000888B                 push    offset aPersonalIsogen_7 ; jumptable 100087D0 case 9
.text:10008890                 jmp     loc_10008A32
.text:10008895 ; ---------------------------------------------------------------------------
.text:10008895
.text:10008895 loc_10008895:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008895                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008895                 push    offset aPersonalIsogen_8 ; jumptable 100087D0 case -6
.text:1000889A                 jmp     loc_10008A32
.text:1000889F ; ---------------------------------------------------------------------------
.text:1000889F
.text:1000889F loc_1000889F:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000889F                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000889F                 push    offset aPersonalIsogen_9 ; jumptable 100087D0 case -7
.text:100088A4                 jmp     loc_10008A32
.text:100088A9 ; ---------------------------------------------------------------------------
.text:100088A9
.text:100088A9 loc_100088A9:                           ; CODE XREF: sub_10008731+9F↑j
.text:100088A9                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100088A9                 push    offset aPersonalIsogen_10 ; jumptable 100087D0 case 13
.text:100088AE                 jmp     loc_10008A32
.text:100088B3 ; ---------------------------------------------------------------------------
.text:100088B3
.text:100088B3 loc_100088B3:                           ; CODE XREF: sub_10008731+9F↑j
.text:100088B3                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100088B3                 push    offset aPersonalIsogen_11 ; jumptable 100087D0 case 15
.text:100088B8                 jmp     loc_10008A32
.text:100088BD ; ---------------------------------------------------------------------------
.text:100088BD
.text:100088BD loc_100088BD:                           ; CODE XREF: sub_10008731+9F↑j
.text:100088BD                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100088BD                 push    offset aPersonalIsogen_12 ; jumptable 100087D0 case 16
.text:100088C2                 jmp     loc_10008A32
.text:100088C7 ; ---------------------------------------------------------------------------
.text:100088C7
.text:100088C7 loc_100088C7:                           ; CODE XREF: sub_10008731+9F↑j
.text:100088C7                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100088C7                 push    offset aInvalidRootDir ; jumptable 100087D0 case 26
.text:100088CC                 jmp     loc_10008A32
.text:100088D1 ; ---------------------------------------------------------------------------
.text:100088D1
.text:100088D1 loc_100088D1:                           ; CODE XREF: sub_10008731+9F↑j
.text:100088D1                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100088D1                 push    offset aUnableToSetEnv ; jumptable 100087D0 case 27
.text:100088D6                 jmp     loc_10008A32
.text:100088DB ; ---------------------------------------------------------------------------
.text:100088DB
.text:100088DB loc_100088DB:                           ; CODE XREF: sub_10008731+9F↑j
.text:100088DB                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100088DB                 push    offset aUnableToGetSys ; jumptable 100087D0 case 41
.text:100088E0                 jmp     loc_10008A32
.text:100088E5 ; ---------------------------------------------------------------------------
.text:100088E5
.text:100088E5 loc_100088E5:                           ; CODE XREF: sub_10008731+9F↑j
.text:100088E5                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100088E5                 push    offset aAPcfFileIsRequ ; jumptable 100087D0 case 29
.text:100088EA                 jmp     loc_10008A32
.text:100088EF ; ---------------------------------------------------------------------------
.text:100088EF
.text:100088EF loc_100088EF:                           ; CODE XREF: sub_10008731+9F↑j
.text:100088EF                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100088EF                 push    offset aAnIdfOrDatFile ; jumptable 100087D0 case 61
.text:100088F4                 jmp     loc_10008A32
.text:100088F9 ; ---------------------------------------------------------------------------
.text:100088F9
.text:100088F9 loc_100088F9:                           ; CODE XREF: sub_10008731+9F↑j
.text:100088F9                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:100088F9                 push    offset aPersonalIsogen_13 ; jumptable 100087D0 case 62
.text:100088FE                 jmp     loc_10008A32
.text:10008903 ; ---------------------------------------------------------------------------
.text:10008903
.text:10008903 loc_10008903:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008903                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008903                 push    offset aUnknownFileExt ; jumptable 100087D0 case 28
.text:10008908                 jmp     loc_10008A32
.text:1000890D ; ---------------------------------------------------------------------------
.text:1000890D
.text:1000890D loc_1000890D:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000890D                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000890D                 push    offset aPersonalIsogen_14 ; jumptable 100087D0 case 31
.text:10008912                 jmp     loc_10008A32
.text:10008917 ; ---------------------------------------------------------------------------
.text:10008917
.text:10008917 loc_10008917:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008917                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008917                 push    offset aPersonalIsogen_15 ; jumptable 100087D0 case 32
.text:1000891C                 jmp     loc_10008A32
.text:10008921 ; ---------------------------------------------------------------------------
.text:10008921
.text:10008921 loc_10008921:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008921                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008921                 push    offset aPersonalIsogen_16 ; jumptable 100087D0 case 33
.text:10008926                 jmp     loc_10008A32
.text:1000892B ; ---------------------------------------------------------------------------
.text:1000892B
.text:1000892B loc_1000892B:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000892B                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000892B                 push    offset aPersonalIsogen_17 ; jumptable 100087D0 cases 34,36
.text:10008930                 jmp     loc_10008A32
.text:10008935 ; ---------------------------------------------------------------------------
.text:10008935
.text:10008935 loc_10008935:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008935                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008935                 push    offset aFailedWhileAtt ; jumptable 100087D0 case 43
.text:1000893A                 jmp     loc_10008A32
.text:1000893F ; ---------------------------------------------------------------------------
.text:1000893F
.text:1000893F loc_1000893F:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000893F                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000893F                 push    offset aFailedWhileAtt_0 ; jumptable 100087D0 case 44
.text:10008944                 jmp     loc_10008A32
.text:10008949 ; ---------------------------------------------------------------------------
.text:10008949
.text:10008949 loc_10008949:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008949                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008949                 push    offset aFailedWhileAtt_1 ; jumptable 100087D0 case 45
.text:1000894E                 jmp     loc_10008A32
.text:10008953 ; ---------------------------------------------------------------------------
.text:10008953
.text:10008953 loc_10008953:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008953                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008953                 push    offset aFailedToObtain ; jumptable 100087D0 case 46
.text:10008958                 jmp     loc_10008A32
.text:1000895D ; ---------------------------------------------------------------------------
.text:1000895D
.text:1000895D loc_1000895D:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000895D                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000895D                 push    offset aFailedToObtain_0 ; jumptable 100087D0 case 47
.text:10008962                 jmp     loc_10008A32
.text:10008967 ; ---------------------------------------------------------------------------
.text:10008967
.text:10008967 loc_10008967:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008967                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008967                 push    offset aCopyOplCommand ; jumptable 100087D0 case 48
.text:1000896C                 jmp     loc_10008A32
.text:10008971 ; ---------------------------------------------------------------------------
.text:10008971
.text:10008971 loc_10008971:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008971                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008971                 push    offset aCopyFileHasFai ; jumptable 100087D0 case 53
.text:10008976                 jmp     loc_10008A32
.text:1000897B ; ---------------------------------------------------------------------------
.text:1000897B
.text:1000897B loc_1000897B:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000897B                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000897B                 push    offset aFailedToUpdate ; jumptable 100087D0 case 49
.text:10008980                 jmp     loc_10008A32
.text:10008985 ; ---------------------------------------------------------------------------
.text:10008985
.text:10008985 loc_10008985:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008985                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008985                 push    offset aFailedWhileAtt_2 ; jumptable 100087D0 case 52
.text:1000898A                 jmp     loc_10008A32
.text:1000898F ; ---------------------------------------------------------------------------
.text:1000898F
.text:1000898F loc_1000898F:                           ; CODE XREF: sub_10008731+9F↑j
.text:1000898F                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:1000898F                 push    offset aIdfgenErrorUni ; jumptable 100087D0 case 63
.text:10008994                 jmp     loc_10008A32
.text:10008999 ; ---------------------------------------------------------------------------
.text:10008999
.text:10008999 loc_10008999:                           ; CODE XREF: sub_10008731+9F↑j
.text:10008999                                         ; DATA XREF: .text:jpt_100087D0↓o
.text:10008999                 push    offset aIdfgenErrorInp ; jumptable 100087D0 case 64
.text:1000899E                 jmp     loc_10008A32
.text:100089A3 ; ---------------------------------------------------------------------------
.text:100089A3
.text:100089A3 loc_100089A3:                           ; CODE XREF: sub_10008731+86↑j
.text:100089A3                 push    offset aPersonalIsogen_18 ; "Personal ISOGEN Project incomplete - so"...
.text:100089A8                 jmp     loc_10008A32
.text:100089AD ; ---------------------------------------------------------------------------
.text:100089AD
.text:100089AD loc_100089AD:                           ; CODE XREF: sub_10008731+80↑j
.text:100089AD                 mov     eax, 2711h
.text:100089B2                 cmp     edi, eax
.text:100089B4                 jg      short loc_10008A1E
.text:100089B6                 jz      short loc_10008A17
.text:100089B8                 lea     eax, [edi-3E9h] ; switch 11 cases
.text:100089BE                 cmp     eax, 0Ah
.text:100089C1                 ja      short def_100087D0 ; jumptable 100087D0 default case, cases -1,0,20,25,30,35,37-40,42,50,51,54-59
.text:100089C1                                         ; jumptable 100089C3 default case
.text:100089C3                 jmp     ds:jpt_100089C3[eax*4] ; switch jump
.text:100089CA ; ---------------------------------------------------------------------------
.text:100089CA
.text:100089CA loc_100089CA:                           ; CODE XREF: sub_10008731+292↑j
.text:100089CA                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:100089CA                 push    offset aInconsistentCo ; jumptable 100089C3 case 1001
.text:100089CF                 jmp     short loc_10008A32
.text:100089D1 ; ---------------------------------------------------------------------------
.text:100089D1
.text:100089D1 loc_100089D1:                           ; CODE XREF: sub_10008731+292↑j
.text:100089D1                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:100089D1                 push    offset aUnknownFormatR ; jumptable 100089C3 case 1002
.text:100089D6                 jmp     short loc_10008A32
.text:100089D8 ; ---------------------------------------------------------------------------
.text:100089D8
.text:100089D8 loc_100089D8:                           ; CODE XREF: sub_10008731+292↑j
.text:100089D8                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:100089D8                 push    offset aStdoutTxtTempo ; jumptable 100089C3 case 1003
.text:100089DD                 jmp     short loc_10008A32
.text:100089DF ; ---------------------------------------------------------------------------
.text:100089DF
.text:100089DF loc_100089DF:                           ; CODE XREF: sub_10008731+292↑j
.text:100089DF                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:100089DF                 push    offset aInvalidLineInI ; jumptable 100089C3 case 1004
.text:100089E4                 jmp     short loc_10008A32
.text:100089E6 ; ---------------------------------------------------------------------------
.text:100089E6
.text:100089E6 loc_100089E6:                           ; CODE XREF: sub_10008731+292↑j
.text:100089E6                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:100089E6                 push    offset aOptionsFileInv ; jumptable 100089C3 case 1005
.text:100089EB                 jmp     short loc_10008A32
.text:100089ED ; ---------------------------------------------------------------------------
.text:100089ED
.text:100089ED loc_100089ED:                           ; CODE XREF: sub_10008731+292↑j
.text:100089ED                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:100089ED                 push    offset aOptionsFileInv_0 ; jumptable 100089C3 case 1006
.text:100089F2                 jmp     short loc_10008A32
.text:100089F4 ; ---------------------------------------------------------------------------
.text:100089F4
.text:100089F4 loc_100089F4:                           ; CODE XREF: sub_10008731+292↑j
.text:100089F4                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:100089F4                 push    offset aEnvironmentVar ; jumptable 100089C3 case 1007
.text:100089F9                 jmp     short loc_10008A32
.text:100089FB ; ---------------------------------------------------------------------------
.text:100089FB
.text:100089FB loc_100089FB:                           ; CODE XREF: sub_10008731+292↑j
.text:100089FB                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:100089FB                 push    offset aMicrostationNo ; jumptable 100089C3 case 1008
.text:10008A00                 jmp     short loc_10008A32
.text:10008A02 ; ---------------------------------------------------------------------------
.text:10008A02
.text:10008A02 loc_10008A02:                           ; CODE XREF: sub_10008731+292↑j
.text:10008A02                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:10008A02                 push    offset aDefinitionOfMs ; jumptable 100089C3 case 1009
.text:10008A07                 jmp     short loc_10008A32
.text:10008A09 ; ---------------------------------------------------------------------------
.text:10008A09
.text:10008A09 loc_10008A09:                           ; CODE XREF: sub_10008731+292↑j
.text:10008A09                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:10008A09                 push    offset aMissingIsogenF ; jumptable 100089C3 case 1010
.text:10008A0E                 jmp     short loc_10008A32
.text:10008A10 ; ---------------------------------------------------------------------------
.text:10008A10
.text:10008A10 loc_10008A10:                           ; CODE XREF: sub_10008731+292↑j
.text:10008A10                                         ; DATA XREF: .text:jpt_100089C3↓o
.text:10008A10                 push    offset aMissingOptions ; jumptable 100089C3 case 1011
.text:10008A15                 jmp     short loc_10008A32
.text:10008A17 ; ---------------------------------------------------------------------------
.text:10008A17
.text:10008A17 loc_10008A17:                           ; CODE XREF: sub_10008731+285↑j
.text:10008A17                 push    offset aFailedToOpenIs ; "Failed to open ISOGEN.PCF"
.text:10008A1C                 jmp     short loc_10008A32
.text:10008A1E ; ---------------------------------------------------------------------------
.text:10008A1E
.text:10008A1E loc_10008A1E:                           ; CODE XREF: sub_10008731+283↑j
.text:10008A1E                 cmp     edi, 2712h
.text:10008A24                 jz      short loc_10008A2D
.text:10008A26
.text:10008A26 def_100087D0:                           ; CODE XREF: sub_10008731+92↑j
.text:10008A26                                         ; sub_10008731+9F↑j ...
.text:10008A26                 push    offset aUnknownPersona ; jumptable 100087D0 default case, cases -1,0,20,25,30,35,37-40,42,50,51,54-59
.text:10008A26                                         ; jumptable 100089C3 default case
.text:10008A2B                 jmp     short loc_10008A32
.text:10008A2D ; ---------------------------------------------------------------------------
.text:10008A2D
.text:10008A2D loc_10008A2D:                           ; CODE XREF: sub_10008731+2F3↑j
.text:10008A2D                 push    offset aFailedDuringWr ; "Failed during write to ISOGEN.PCF"
.text:10008A32
.text:10008A32 loc_10008A32:                           ; CODE XREF: sub_10008731+AB↑j
.text:10008A32                                         ; sub_10008731+B5↑j ...
.text:10008A32                 push    [ebp+Destination] ; Destination
.text:10008A35                 call    ds:__imp_wcscpy
.text:10008A3B                 pop     ecx
.text:10008A3C                 pop     ecx
.text:10008A3D                 push    edi
.text:10008A3E                 push    [ebp+Destination] ; Format
.text:10008A41                 lea     eax, [ebp+Destination]
.text:10008A44                 push    offset aSPersonalIsoge_0 ; "%s\r\n[Personal ISOGEN error %d]"
.text:10008A49                 push    eax             ; int
.text:10008A4A                 call    sub_100085B7
.text:10008A4F                 add     esp, 10h
.text:10008A52
.text:10008A52 loc_10008A52:                           ; CODE XREF: sub_10008731+74↑j
.text:10008A52                 pop     edi
.text:10008A53                 pop     esi
.text:10008A54                 pop     ebp
.text:10008A55                 retn
.text:10008A55 sub_10008731    endp
