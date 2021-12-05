V = SMR(:);
L = Scr(:);
[align,aliLength] = SW_FPGAAlignment( q, s, V, L(2), L(3));
plot = plotAlgnmentSW( q, s, V, L(2), L(3), L(1), aliLength );