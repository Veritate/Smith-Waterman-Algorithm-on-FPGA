%A sequencia query tem de ser maior que a dataset -- s>q

Base = 'ACGT'; %Bases
%Sub = ['-' Base];


Nq = length(qCode); % Tamanho da sequencia q
Ns = length(sCode); % Tamanho da sequencia s para processamento no BT
nb = ceil(log2(Ns));%numero de bit para o processamento de s

memoryLength = nb; 

nb_bool = 1;
bp_bool = 0;

%%%%%%%%%%%%%
const_val_lenqs = Nq-1;
const_num_b_lenqs = ceil(log2(Nq));
nb_lqC = ceil(log2(Nq)); %u+bias
bp_lqC = 0;
%%%%%%%%%%%%Counter Forward Vars%%%%%%%%%%
counter_val = Ns-1;
counter_num_b = ceil(log2(Ns));
val_counter = Ns-1;
nb_counter = ceil(log2(Ns));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%Storage Memory RAM Vars%%%%%%%%%%%
stRAM = length(sCode);
in_stRAM = zeros(1,length(sCode));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%en_sign = [ones(1,length(sCode)) zeros(1,length(sCode)-1) zeros(1,6*length(sCode)-1)];
%en_sign = [ones(1,length(sCode)) zeros(1,length(sCode)-1) zeros(1,6*length(sCode)-1)];
times_repeat = 10;
countRepeat = Ns*(times_repeat+1);
nbCR = ceil(log2(countRepeat));


%High for big sequences 16
NBitsCalcInt = 16;%Forward add/sub selection 
NBitsIn = 16;
NBitsK = 10;
NBitsScoreBus = 10;
MSBits = floor(log2(abs(MS))+1) + 1; %Signed
MiSBits = floor(log2(abs(MiS))+1)+1; %Signed
MSBits_MiSBits = max(MSBits,MiSBits);
gBits = floor(log2(abs(g))+1); %Unsigend
%Sub(flip(SeqA(1:min(find(SeqA==-2))-1))+2)



Ts=1;%periodo de amostragem
k = ceil(log2(length(Base)));%numero de bits para base
kbp = 0;%binary point para base

SMR_len = Nq*3;
nb_SMR = ceil(log2(SMR_len));





