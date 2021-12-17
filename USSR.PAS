Program FLAG_USSR;
BEGIN
asm
 mov ax,0B800h
 mov es,ax
 mov di,0
 mov al,0
 mov ah,72
 mov cx,400
@1:mov es:[di],ax
 {mov es,ax}
 add di,2
 loop @1
 mov ah,10h
 mov al,0
 mov ah,72
 mov cx,400
@2:mov es:[di],ax
 {mov es,ax}
 add di,2
 loop @2
 mov ah,10h
 {int 16h}
 mov al,0
 mov ah,72
 mov cx,400
@3:mov es:[di],ax
 add di,2
 loop @3
 mov ah,10h
{ int 20h}
end;
END.