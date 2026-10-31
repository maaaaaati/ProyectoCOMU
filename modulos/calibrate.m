% Ejecutar desde la carpeta modulos (donde estan sys_params.m y phi.mat)
sys_params;                             % parameters + the current phi
out = sim('Sistema_completo');          % phi doesn't affect mrx, so any value works

mtx = squeeze(out.mtx);   mrx = squeeze(out.mrx);
n0  = round(1e-3*Fs);
x   = mtx(n0:end);        y = mrx(n0:end);
d   = finddelay(x, y, round(200e-6*Fs));
tau = d*Ts + (numel(hDec)-1)/2*Ts;

phi = -2*pi*fsub*tau
save('phi.mat','phi');                  % keeps it for the next session
