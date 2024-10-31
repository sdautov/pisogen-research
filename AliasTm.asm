.text:100085D1 ; [00000006 BYTES: COLLAPSED FUNCTION _gmtime64. PRESS CTRL-NUMPAD+ TO EXPAND]
.text:100085D7 ; [00000006 BYTES: COLLAPSED FUNCTION _time64. PRESS CTRL-NUMPAD+ TO EXPAND]
.text:100085DD ; Exported entry   2. AliasTm
.text:100085DD
.text:100085DD ; =============== S U B R O U T I N E =======================================
.text:100085DD
.text:100085DD ; Attributes: bp-based frame
.text:100085DD
.text:100085DD                 public AliasTm
.text:100085DD AliasTm         proc near               ; CODE XREF: sub_1000ECB7+109↓p
.text:100085DD                                         ; sub_1000ECB7+36A↓p ...
.text:100085DD
.text:100085DD Time            = qword ptr -8
.text:100085DD
.text:100085DD                 push    ebp
.text:100085DE                 mov     ebp, esp
.text:100085E0                 push    ecx
.text:100085E1                 push    ecx
.text:100085E2                 lea     eax, [ebp+Time]
.text:100085E5                 push    eax             ; Time
.text:100085E6                 call    ds:__imp__time64                                                                 ; Текущее время
.text:100085EC                 mov     eax, dword ptr [ebp+Time]
.text:100085EF                 pop     ecx
.text:100085F0                 leave
.text:100085F1                 retn
.text:100085F1 AliasTm         endp
