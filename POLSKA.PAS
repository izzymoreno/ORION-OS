Program FLAG_POLSHA;
BEGIN
asm
 mov ax,0B800h
 mov es,ax
 mov di,0
 mov al,0
 mov ah,0
 mov cx,0
@1:mov es:[di],ax
 add di,2
 loop @1
 mov ah,10h
 int 16h
 mov al,0
 mov ah,255
 mov cx,800
@2:mov es:[di],ax
 add di,2
 loop @2
 mov ah,10h
 {int 16h}
 mov al,0
 mov ah,192
 mov cx,800
@3:mov es:[di],ax
 add di,2
 loop @3
 mov ah,10h
 int 16h
{ int 20h}
end;
END.