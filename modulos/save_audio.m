% Guarda las entradas (out.m1..m3, a Fs_tx) y las salidas del receptor
% (out.y1..y3, a Fs2) como audio: entrada1.wav / salida1.wav, etc.
% Ejecutar despues de: out = sim('Sistema_completo');
fsAudio = 48e3;
t0 = 5e-3;                                % descartar el transitorio inicial
for i = 1:3
    m = squeeze(out.(sprintf('m%d',i)));
    y = squeeze(out.(sprintf('y%d',i)));
    m = toAudio(m(round(t0*Fs_tx):end), Fs_tx, fsAudio);
    y = toAudio(y(round(t0*Fs2):end),   Fs2,   fsAudio);
    audiowrite(sprintf('entrada%d.wav',i), m, fsAudio);
    audiowrite(sprintf('salida%d.wav',i),  y, fsAudio);
    fprintf('canal %d: entrada%d.wav / salida%d.wav (%.2f s)\n', i, i, i, numel(y)/fsAudio);
end
% Para escuchar: [x,fs] = audioread('salida1.wav'); sound(x,fs)

function x = toAudio(x, fsIn, fsOut)
    [p,q] = rat(fsOut/fsIn);
    x = resample(x, p, q);                % resample filtra antialias
    x = 0.9*x/max(abs(x));                % normalizar para no saturar
end
