Program FLAG_RUSSIA;
BEGIN
asm
{ mov ax,0B800h
 mov es,ax
 mov di,0
 mov al,0
 mov ah,10
 mov cx,800
@0:mov es:[di],ax
 add di,2
 loop @0}
 mov ax,0B800h
 mov es,ax
 mov di,0
 mov al,0
 mov ah,255
 mov cx,400
@1:mov es:[di],ax
 add di,2
 loop @1
 mov ah,10h
 int 16h
 mov al,0
 mov ah,18
 mov cx,400
@2:mov es:[di],ax
 add di,2
 loop @2
 mov ah,10h
 {int 16h}
 mov al,0
 mov ah,192
 mov cx,400
@3:mov es:[di],ax
 add di,2
 loop @3
 mov ah,10h
 int 16h
{ int 20h}
end;
END.