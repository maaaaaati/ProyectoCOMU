function src = cargar_audio(archivo, Bw, Fs_tx, Tsim)
% Prepara un audio propio para un bloque From Workspace de Sistema_completo.
% Devuelve [t x]: mono, limitado a Bw [Hz], remuestreado a Fs_tx y
% normalizado a pico 1. Si el audio es mas corto que Tsim, el bloque
% (con "Form output after final data value by" = Setting to zero) entrega
% ceros al terminar; si es mas largo, se recorta.
[a, fsA] = audioread(archivo);
a = mean(a, 2);                          % estereo -> mono
a = lowpass(a, Bw, fsA);                 % que no invada la subbanda vecina
[p, q] = rat(Fs_tx/fsA);
a = resample(a, p, q);                   % p.ej. 48 kHz -> 500 kHz (125/12)
a = a/max(abs(a));
a = a(1:min(end, round(Tsim*Fs_tx)+1));
t = (0:numel(a)-1).'/Fs_tx;
src = [t a];
end
