%clear all;
clc;

En = SharedMemory('En');
StartEn = fi(1,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

SMR = SharedMemory('SMR2');
Scr = SharedMemory('ScrnAddrs');

L =[];
V = [];
align = [];

V = SMR(:);
L = Scr(:);
if(isempty(L) || isempty(L))
    disp(align);
else
   [align,aliLength] = SW_FPGAAlignment( q, s, V, L(2), L(3));
   plot = plotAlgnmentSW( q, s, V, L(2), L(3), L(1), aliLength );
end
disp(align);



StartEn = fi(0,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(3);

StartEn = fi(1,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(10);

V = SMR(:);
L = Scr(:);
if(isempty(L) || isempty(L))
    disp(align);
else
   [align,aliLength] = SW_FPGAAlignment( q, s, V, L(2), L(3));
   plot = plotAlgnmentSW( q, s, V, L(2), L(3), L(1), aliLength );
end
disp(align);

StartEn = fi(0,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(5);

StartEn = fi(1,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(10);

V = SMR(:);
L = Scr(:);
if(isempty(L) || isempty(L))
    disp(align);
else
   [align,aliLength] = SW_FPGAAlignment( q, s, V, L(2), L(3));
   plot = plotAlgnmentSW( q, s, V, L(2), L(3), L(1), aliLength );
end
disp(align);

StartEn = fi(0,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(5);

StartEn = fi(1,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(10);

V = SMR(:);
L = Scr(:);
if(isempty(L) || isempty(L))
    disp(align);
else
   [align,aliLength] = SW_FPGAAlignment( q, s, V, L(2), L(3));
   plot = plotAlgnmentSW( q, s, V, L(2), L(3), L(1), aliLength );
end
disp(align);

StartEn = fi(0,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(5);

StartEn = fi(1,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(10);

V = SMR(:);
L = Scr(:);
if(isempty(L) || isempty(L))
    disp(align);
else
   [align,aliLength] = SW_FPGAAlignment( q, s, V, L(2), L(3));
   plot = plotAlgnmentSW( q, s, V, L(2), L(3), L(1), aliLength );
end
disp(align);

StartEn = fi(0,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(5);

StartEn = fi(1,1,k,kbp,'RoundingMethod','Round','OverflowAction','Saturate');
En(0) = str2num(StartEn.dec);

pause(10);

V = SMR(:);
L = Scr(:);
if(isempty(L) || isempty(L))
    disp(align);
else
   [align,aliLength] = SW_FPGAAlignment( q, s, V, L(2), L(3));
   plot = plotAlgnmentSW( q, s, V, L(2), L(3), L(1), aliLength );
end
disp(align);







%release;


