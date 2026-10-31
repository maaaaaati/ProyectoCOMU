%% Parametros globales
% Dos tasas: el FDM trabaja a Fs_tx y se interpola xL hasta Fs, la tasa
% de RF/FI que necesitan el modulador FM y el receptor superheterodino.
Fs_tx = 500e3;           % Muestreo del modulo FDM [Hz]
Ts_tx = 1/Fs_tx;
Fs    = 20e6;            % Muestreo RF/FI [Hz] (filtros RF y FI del receptor disenados a 20 MHz)
Ts    = 1/Fs;            % Paso fijo del modelo
L     = Fs/Fs_tx;        % Factor de interpolacion (40)

%% Escalamiento RF (nominal x 1/5: 10 MHz -> 2 MHz, 1.7 MHz -> 340 kHz)
kEsc = 1/5;              % Factor de escalamiento simulado/nominal
fc  = 2e6;               % Portadora FM [Hz]
if exist('fc_gui','var'), fc = fc_gui; end   % radio_gui fija la portadora
fIF = 340e3;             % Frecuencia intermedia [Hz]
df  = 60e3;              % Desviacion de frecuencia [Hz] (Carson: 2*(60+58) = 236 kHz)
desint = 0;              % Desintonia del receptor respecto al transmisor [Hz]
if exist('desint_gui','var'), desint = desint_gui; end
fc_tx = fc;  deltaf = df;                % el transmisor emite en fc
fc_rx = fc + desint;     % frecuencia a la que esta sintonizado el receptor
fLO  = fc_rx + fIF;      % LO por encima de la frecuencia sintonizada
fimg = fc_rx + 2*fIF;    % Frecuencia imagen

% Canal AWGN: CNR medida en el ancho de Carson (Inf = canal ideal)
CNRdB = Inf;
if exist('CNR_gui','var'), CNRdB = CNR_gui; end
BT = 2*(df + 58.03e3);                   % Ancho de banda de Carson [Hz]
Pc = 1/2;                                % Potencia de la portadora FM (amplitud 1)
noiseVar = Pc*(Fs/2)/(10^(CNRdB/10)*BT); % varianza de ruido blanco en 0..Fs/2

% Filtro RF centrado en la sintonia: deja pasar Carson, rechaza la imagen
[z,p,k] = ellip(3, 0.5, 50, [fc_rx-150e3, fc_rx+150e3]/(Fs/2), 'bandpass');
sosRF = zp2sos(z,p,k);

%% Transmisor FDM (SSB-USB)
fc1 = 30e3;              % Subportadoras [Hz]
fc2 = 36e3;
fc3 = 46e3;
B   = [4e3 8e3 12e3];    % Ancho de banda de cada audio [Hz]
fm  = [2e3 5e3 10e3];    % Tonos de prueba, uno por canal [Hz]
Nh  = 1000;              % Orden Hilbert
K_FDM = 1/3;             % Escalado de la suma FDM

Tsim = 0.5;             % Duracion [s] (0.05 s = 1e6 pasos a 20 MHz)
if exist('Tsim_gui','var'), Tsim = Tsim_gui; end
audio2 = cargar_audio('hola.m4a', B(2), Fs_tx, Tsim);


%% Receptor
D    = 20;  Fs2 = Fs/D;  Ts2 = 1/Fs2;
hDec = fir1(240, 400e3/(Fs/2));
fsub = [fc1 fc2 fc3];    % Subportadoras para la demodulacion coherente

% Pasabanda por canal antes del producto (aisla cada subbanda SSB-USB)
for i = 1:3
    [z,p,k] = ellip(4, 0.5, 60, [fsub(i), fsub(i)+B(i)+500]/(Fs2/2), 'bandpass');
    sosBP{i} = zp2sos(z,p,k);
end
[sosBP1, sosBP2, sosBP3] = sosBP{:};

% Pasabajos de audio por canal
for i = 1:3
    [z,p,k] = butter(4, B(i)/(Fs2/2));
    sosLP{i} = zp2sos(z,p,k);
end
[sosAud1, sosAud2, sosAud3] = sosLP{:};
clear i z p k sosBP sosLP

% Correccion de fase: la guardada por calibrate, o cero
if isfile('phi.mat')
    load('phi.mat','phi');
else
    phi = zeros(1,3);
end
