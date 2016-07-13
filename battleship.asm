INCLUDE Irvine32.inc

.data
arrayTop db ' ','1','2','3','4','5','6','7','8','9','10',0
arrayA db 'A','-','-','-','-','-','-','-','-','-','-',0
arrayB db 'B','-','-','-','-','-','-','-','-','-','-',0
arrayC db 'C','-','-','-','-','-','-','-','-','-','-',0
arrayD db 'D','-','-','-','-','-','-','-','-','-','-',0
arrayE db 'E','-','-','-','-','-','-','-','-','-','-',0
arrayF db 'F','-','-','-','-','-','-','-','-','-','-',0
arrayG db 'G','-','-','-','-','-','-','-','-','-','-',0
arrayH db 'H','-','-','-','-','-','-','-','-','-','-',0
arrayI db 'I','-','-','-','-','-','-','-','-','-','-',0
arrayJ db 'J','-','-','-','-','-','-','-','-','-','-',0

UserROW db ?
UserCol db ?
UserInRow db "Please enter a leter: ",0
UserInCol db "Please Enter a number: ",0

randVal db ?
randValint dword ?
shipSize dword ?

message1 db "The Row is: ",0
message2 db "The Column is: ",0 
message3 db "Board space: ",0
message4 db "Aircraft Carrier: ",0
message5 db "Battleship: ",0
message6 db "Submarine: ",0
message7 db "Destroyer: ",0
message8 db "Patrol Boat: ",0

.code
main PROC

Call Randomize
Call WriteBoard
Call LoopShips
Call WriteBoard
Call UserInput



exit
main endp

WriteBoard PROC

;Prints Top Row
mov esi,0
mov eax, 0
mov esi, offset arrayTop
mov ecx, sizeof arrayTop
BoardDisplay:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplay
Call CRLF

;Prints A Row
mov esi,0
mov eax, 0
mov esi, offset arrayA
mov ecx, sizeof arrayA
BoardDisplayTop:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayTop
Call CRLF

;Prints B Row
mov esi,0
mov eax, 0
mov esi, offset arrayB
mov ecx, sizeof arrayB
BoardDisplayA:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayA
Call CRLF

;Prints C Row
mov esi,0
mov eax, 0
mov esi, offset arrayC
mov ecx, sizeof arrayC
BoardDisplayB:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayB
Call CRLF

;Prints D Row
mov esi,0
mov eax, 0
mov esi, offset arrayD
mov ecx, sizeof arrayD
BoardDisplayC:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayC
Call CRLF

;Prints E Row
mov esi,0
mov eax, 0
mov esi, offset arrayE
mov ecx, sizeof arrayE
BoardDisplayD:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayD
Call CRLF

;Prints F Row
mov esi,0
mov eax, 0
mov esi, offset arrayF
mov ecx, sizeof arrayF
BoardDisplayE:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayE
Call CRLF

;Prints G Row
mov esi,0
mov eax, 0
mov esi, offset arrayG
mov ecx, sizeof arrayG
BoardDisplayF:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayF
Call CRLF

;Prints H Row
mov esi,0
mov eax, 0
mov esi, offset arrayH
mov ecx, sizeof arrayH
BoardDisplayG:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayG
Call CRLF

;Prints I Row
mov esi,0
mov eax, 0
mov esi, offset arrayI
mov ecx, sizeof arrayI
BoardDisplayH:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayH
Call CRLF

;Prints J Row
mov esi,0
mov eax, 0
mov esi, offset arrayJ
mov ecx, sizeof arrayJ
BoardDisplayI:
	mov al, [esi]
	Call WriteChar
	mov al,' '
	Call WriteChar
	inc esi
Loop BoardDisplayI
Call CRLF



ret
WriteBoard endp

loopShips PROC
mov shipsize, 4
call RandomShips
mov shipsize, 3
call RandomShips
mov shipsize, 2
call RandomShips
mov shipsize, 2
call RandomShips
mov shipsize, 1
call RandomShips

ret
loopShips endp



RandomShips PROC 


mov edx, offset message1
call writestring
mov al, 10
Call RandomRange
add al, 65
mov randVal, al
call writechar
call crlf



mov edx, offset message2
call writestring
mov al, 10
Call RandomRange
call writeint
mov randValInt, eax
call crlf


cmp randVal, 65
je isA
cmp randVal, 66
je isB
cmp randVal, 67
je isC
cmp randVal, 68
je isD
cmp randVal, 69
je isE
cmp randVal, 70
je isF
cmp randVal, 71
je isG
cmp randVal, 72
je isH
cmp randVal, 73
je isI
cmp randVal, 74
je isJ 


isA: 
mov edx, offset arraya
mov esi, 0
mov esi, randValInt
mov arraya[esi], 'X'
mov ecx, shipsize
shiploop1: 
	inc esi
	mov arraya[esi], 'X'
	loop shiploop1
jmp done

isB: 
mov edx, offset arrayb
mov esi, 0
mov esi, randValInt
mov arrayb[esi], 'X'
mov ecx, shipsize
shiploop2: 
	inc esi
	mov arrayb[esi], 'X'
	loop shiploop2
jmp done

isC: 
mov edx, offset arrayc
mov esi, 0
mov esi, randValInt
mov arrayc[esi], 'X'
mov ecx, shipsize
shiploop3: 
	inc esi
	mov arrayc[esi], 'X'
	loop shiploop3
jmp done

isD: 
mov edx, offset arrayd
mov esi, 0
mov esi, randValInt
mov arrayd[esi], 'X'
mov ecx, shipsize
shiploop4: 
	inc esi
	mov arrayd[esi], 'X'
	loop shiploop4
jmp done

isE: 
mov edx, offset arraye
mov esi, 0
mov esi, randValInt
mov arraye[esi], 'X'
mov ecx, shipsize
shiploop5: 
	inc esi
	mov arraye[esi], 'X'
	loop shiploop5
jmp done

isF: 
mov edx, offset arrayf
mov esi, 0
mov esi, randValInt
mov arrayf[esi], 'X'
mov ecx, shipsize
shiploop6: 
	inc esi
	mov arrayf[esi], 'X'
	loop shiploop6
jmp done

isG: 

mov edx, offset arrayg
mov esi, 0
mov esi, randValInt
mov arrayg[esi], 'X'
mov ecx, shipsize
shiploop7: 
	inc esi
	mov arrayg[esi], 'X'
	loop shiploop7
jmp done

isH: 
mov edx, offset arrayh
mov esi, 0
mov esi, randValInt
mov arrayh[esi], 'X'
mov ecx, shipsize
shiploop8: 
	inc esi
	mov arrayh[esi], 'X'
	loop shiploop8
jmp done

isI: 
mov edx, offset arrayi
mov esi, 0
mov esi, randValInt
mov arrayi[esi], 'X'
mov ecx, shipsize
shiploop9: 
	inc esi
	mov arrayi[esi], 'X'
	loop shiploop9
jmp done

isJ: 
mov edx, offset arrayj
mov esi, 0
mov esi, randValInt
mov arrayj[esi], 'X'
mov ecx, shipsize
shiploop10: 
	inc esi
	mov arrayj[esi], 'X'
	loop shiploop10
jmp done
done:

call crlf
ret

RandomShips ENDP

UserInput Proc USES EAX EBX ECX EDX ESI EDI
mov edx, offset UserInROW
Call WriteString
Call CRLF
Call ReadChar
Call WriteChar
mov UserRow,AL
Call CRLF
mov edx, offset UserInCol
Call WriteString
Call CRlF
Call ReadInt
mov UserCol,al

ret
UserInput Endp

END main