%% Parámetros transmisor
Fs = 500e3;              % Muestreo del modulo FDM [Hz]
Ts = 1/Fs;              % Periodo de muestreo [s]

fc_tx = 100e3;             % Portadora [Hz]
deltaf = 10e3;          % Desviacion de frecuencia [Hz]
fc1 = 30e3;             % Subportadoras [Hz]
fc2 = 36e3;
fc3 = 46e3;

Nh = 1000;              % Orden Hilbert inicial para pruebas con tonos
K_FDM = 1/3;            % Escalado inicial; ajustar por medicion

Tsim = 0.2;             % Duracion inicial [s]

%% Parametros Receptor
fc_rx   = 2e6;  fIF = 340e3;
fLO  = fc_rx + fIF;
fimg = fc_rx + 2*fIF;
% Fs   = 20e6; Ts = 1/Fs;
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

