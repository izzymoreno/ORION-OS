Program FLAG_ISRAEL;
BEGIN
asm
 mov ax,0B800h
 mov es,ax
 mov di,0
 mov al,0
 mov ah,0
 mov cx,2000
@0:mov es:[di],ax
 add di,2
 loop @0
 mov ah,10h
 int 16h
 mov ax,0B800h
 mov es,ax
 mov di,0
{ mov al,0
 mov ah,0
 mov cx,2000
@1:mov es:[di],ax
 add di,2
 loop @1
 mov ah,10h
 int 16h}
 mov al,0
 mov ah,18
 mov cx,240
@2:mov es:[di],ax
 add di,2
 loop @2
 mov ah,10h
 {int 16h}
 mov al,0
 mov ah,255
 mov cx,800
@3:mov es:[di],ax
 add di,2
 loop @3
 mov al,0
 mov ah,18
 mov cx,240
@4:mov es:[di],ax
 add di,2
 loop @4
 int 16h
{ int 20h}
end;
END.