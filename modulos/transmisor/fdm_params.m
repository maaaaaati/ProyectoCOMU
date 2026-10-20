%% Parametros FDM
Fs = 500e3;              % Muestreo del modulo FDM [Hz]
Ts = 1/Fs;              % Periodo de muestreo [s]

fc1 = 30e3;             % Subportadoras [Hz]
fc2 = 36e3;
fc3 = 46e3;

a1 = 1;                 % Ganancias de los canales
a2 = 1;
a3 = 1;

Nh = 1000;              % Orden Hilbert inicial para pruebas con tonos
K_FDM = 1/3;            % Escalado inicial; ajustar por medicion

Tsim = 0.2;             % Duracion inicial [s]
