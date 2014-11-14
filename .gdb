# ~/.gdb
# show the 4 instructions which include the next one to be executed.
display/4i $pc
# show the current EFLAGS.
display/t $ps
display/16wx $ebp - 0x20
display/16wx $esp
display/x $edi
display/x $esi
display/x $ebx
display/x $edx
display/x $ecx
display/x $eax
