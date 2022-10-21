Program LOADER;
asm
mov ax,0003h
int 10h
mov ah,2
mov dl,65
mov cx,26
@push cx
int21h
pop cx
inc dl
dec cx
jnz@

---------
push ds
push cs
push ax
push bx
push es

end;
