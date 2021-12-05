%Var Start SW
%ST = 0;
%release(ST);
start = 0;
%pause(1);
disp('...')

while(start>=0)
    init = get_param('sw_8v2_SM/sinit', 'RuntimeObject');
    start = init.InputPort(1).Data;
    if(start==1)
        fprintf('Init SW!\n')
        fprintf('...\n')
    end
    disp('...')
end

disp('Out Loop')