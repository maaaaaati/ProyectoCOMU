fc_rx   = 2e6;  fIF = 340e3;
fLO  = fc_rx + fIF;
fimg = fc_rx + 2*fIF;
Fs   = 20e6; Ts = 1/Fs;
df   = 60e3;
D    = 20;  Fs2 = Fs/D;  Ts2 = 1/Fs2;
hDec = fir1(240, 400e3/(Fs/2));
[z,p,k] = butter(4, 15e3/(Fs2/2));
sosAud  = zp2sos(z,p,k);
fsub = [20e3 60e3 100e3];

% phase correction: load the saved one, or start from zero
if isfile('phi.mat')
    load('phi.mat','phi');
else
    phi = zeros(1,3);
end