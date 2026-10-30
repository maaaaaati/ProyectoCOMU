%% Parametros Transmisor (FM + FDM)
Fs = 20e3;              % Muestreo del modulo FDM [Hz]
Ts = 1/Fs;              % Periodo de muestreo [s]

fc_tx = 100e3;             % Portadora [Hz]
deltaf = 10e3;          % Desviacion de frecuencia [Hz]
fc1 = 30e3;             % Subportadoras [Hz]
fc2 = 36e3;
fc3 = 46e3;

Nh = 1000;              % Orden Hilbert inicial para pruebas con tonos
K_FDM = 1/3;            % Escalado inicial; ajustar por medicion

Tsim = 0.2;             % Duracion inicial [s]
