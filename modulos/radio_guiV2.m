function radio_gui
% Interfaz tipo radio para Sistema_completo.
% El usuario ve frecuencias nominales (portadora 10 MHz, FI 1.7 MHz); el
% modelo trabaja con las escaladas (x kEsc) que calcula sys_params.

cd(fileparts(mfilename('fullpath')));      % sys_params y phi.mat viven aqui
mdl = 'Sistema_completo';
evalin('base', 'clear fc_gui Tsim_gui desint_gui CNR_gui; sys_params');
P = @(name) evalin('base', name);          % leer parametros del workspace base
kEsc = P('kEsc');  fIF = P('fIF');  df = P('df');  fsub = P('fsub');  B = P('B');
Fs = P('Fs');  Fs2 = P('Fs2');  Fs_tx = P('Fs_tx');
fmaxFDM = max(fsub + B);                   % frecuencia maxima de la senal FDM
bandaFI = [140e3 540e3];                   % banda a -3 dB del filtro FI (medida)
fsAudio = 48e3;
out = [];

%% Ventana
fig = uifigure('Name', 'Radio FDM / FM', 'Position', [80 60 1250 740], ...
    'CloseRequestFcn', @alCerrar);
g = uigridlayout(fig, [1 2], 'ColumnWidth', {330, '1x'});

pan = uipanel(g, 'Title', 'Sintonia', 'FontWeight', 'bold');
gl = uigridlayout(pan, [17 2], 'RowHeight', {26, 22, 120, 26, 22, 22, 22, 22, 22, 22, 26, 100, 26, 30, 30, 30, '1x'}, ...
    'ColumnWidth', {'1x', '1x'}, 'RowSpacing', 6, 'Scrollable', 'on');

% Emisora: donde transmite el transmisor (la portadora seleccionable)
uilabel(gl, 'Text', 'Portadora Tx (MHz)', 'FontWeight', 'bold');
fcTx = uieditfield(gl, 'numeric', 'Limits', [6 14], 'Value', 10, 'ValueDisplayFormat', '%.2f', ...
    'ValueChangedFcn', @(s, e) refrescar());

% Dial del receptor: el LO se calcula a partir de esta frecuencia
lbl = uilabel(gl, 'Text', 'Sintonia del receptor (MHz)', 'FontWeight', 'bold');
lbl.Layout.Column = [1 2];
knob = uiknob(gl, 'Limits', [6 14], 'Value', 10, 'MajorTicks', 6:2:14, ...
    'ValueChangingFcn', @(s, e) mostrar(e.Value), 'ValueChangedFcn', @(s, e) sincronizar(s.Value));
knob.Layout.Column = [1 2];
campo = uieditfield(gl, 'numeric', 'Limits', [6 14], 'Value', 10, 'ValueDisplayFormat', '%.2f MHz', ...
    'HorizontalAlignment', 'center', 'FontSize', 16, 'ValueChangedFcn', @(s, e) sincronizar(s.Value));
campo.Layout.Column = [1 2];

txtFc  = filaDato('Portadora (Tx)');
txtRx  = filaDato('Receptor sintonizado');
txtIF  = filaDato('Frec. intermedia');
txtLO  = filaDato('Oscilador local');
txtImg = filaDato('Frec. imagen');
txtBW  = filaDato('Ancho Carson');

% Canal AWGN: sin ruido la FM ignora la atenuacion de los filtros y la desintonia no se nota
ruido = uicheckbox(gl, 'Text', 'Ruido, CNR (dB)', 'Value', true);
cnr = uispinner(gl, 'Limits', [0 60], 'Step', 1, 'Value', 15, 'ValueDisplayFormat', '%.0f');

grupo = uibuttongroup(gl, 'Title', 'Canal', 'SelectionChangedFcn', @(s, e) graficarCanal());
grupo.Layout.Column = [1 2];
for i = 1:3
    uiradiobutton(grupo, 'Text', sprintf('Canal %d  (%g kHz, subportadora %g kHz)', i, B(i)/1e3, fsub(i)/1e3), ...
        'Position', [10 55-25*(i-1) 290 22]);
end

uilabel(gl, 'Text', 'Duracion (s)');
dur = uispinner(gl, 'Limits', [0.05 5], 'Step', 0.05, 'Value', 0.1, 'ValueDisplayFormat', '%.2f');

btnSint = uibutton(gl, 'Text', 'Sintonizar', 'FontWeight', 'bold', 'ButtonPushedFcn', @(s, e) sintonizar());
btnSint.Layout.Column = [1 2];
btnIn  = uibutton(gl, 'Text', 'Escuchar entrada', 'Enable', 'off', 'ButtonPushedFcn', @(s, e) escuchar('m'));
btnOut = uibutton(gl, 'Text', 'Escuchar salida',  'Enable', 'off', 'ButtonPushedFcn', @(s, e) escuchar('y'));
btnWav = uibutton(gl, 'Text', 'Guardar WAV (entradas y salidas)', 'Enable', 'off', 'ButtonPushedFcn', @(s, e) guardarWav());
btnWav.Layout.Column = [1 2];
estado = uilabel(gl, 'Text', 'Elija la portadora Tx, sintonice el receptor con la perilla y pulse Sintonizar.', 'WordWrap', 'on', 'VerticalAlignment', 'top');
estado.Layout.Column = [1 2];

ga = uigridlayout(g, [2 2]);
axRF  = uiaxes(ga);  axIF = uiaxes(ga);  axFDM = uiaxes(ga);
txtCorr = uilabel(ga, 'Text', 'Correlacion entrada/salida: -', 'FontSize', 20, 'FontWeight', 'bold', ...
    'HorizontalAlignment', 'center', 'WordWrap', 'on');
title(axRF, 'Espectro RF recibido');  title(axIF, 'Espectro en FI');
title(axFDM, 'FDM demodulado');

mostrar(knob.Value);

%% Funciones
    function t = filaDato(nombre)
        uilabel(gl, 'Text', nombre);
        t = uilabel(gl, 'Text', '', 'FontWeight', 'bold');
    end

    function sincronizar(v)
        knob.Value = v;  campo.Value = v;
        mostrar(v);
    end

    function refrescar()
        mostrar(campo.Value);
    end

    function mostrar(frxNom)
        % Valores nominales (lo que ve el usuario); entre parentesis, los simulados
        fc = fcTx.Value*1e6*kEsc;
        frx = frxNom*1e6*kEsc;
        fila(txtFc,  fc);
        fila(txtRx,  frx);
        fila(txtIF,  fIF);
        fila(txtLO,  frx + fIF);
        fila(txtImg, frx + 2*fIF);
        fila(txtBW,  2*(df + fmaxFDM));
    end

    function fila(t, fSim)
        t.Text = sprintf('%.3f MHz  (%.0f kHz)', fSim/kEsc/1e6, fSim/1e3);
    end

    function sintonizar()
        fc = fcTx.Value*1e6*kEsc;
        frx = campo.Value*1e6*kEsc;
        if ruido.Value, CNRdB = cnr.Value; else, CNRdB = Inf; end
        assignin('base', 'fc_gui', fc);
        assignin('base', 'desint_gui', frx - fc);
        assignin('base', 'CNR_gui', CNRdB);
        assignin('base', 'Tsim_gui', dur.Value);
        dlg = uiprogressdlg(fig, 'Title', 'Simulando', 'Indeterminate', 'on', ...
            'Message', sprintf('Tx %.2f MHz, receptor %.2f MHz, %.2f s de senal...', fcTx.Value, campo.Value, dur.Value));
        try
            out = sim(mdl);
        catch err
            close(dlg);
            uialert(fig, err.message, 'Error de simulacion');
            return
        end
        close(dlg);
        set([btnIn btnOut btnWav], 'Enable', 'on');
        estado.Text = sprintf('Tx en %.2f MHz, receptor en %.2f MHz (OL %.2f MHz), CNR %g dB.', ...
            fcTx.Value, frx/kEsc/1e6, (frx + fIF)/kEsc/1e6, CNRdB);
        try
            graficarRF(fc, frx);
        catch err
            uialert(fig, err.message, 'Error al graficar los espectros');
        end
        graficarCanal();
    end

    function graficarRF(fc, frx)
        % Ejes en MHz nominales: escalamiento transparente para el usuario
        if ~all(ismember({'stx', 'sif'}, out.who))
            error(['La simulacion no devolvio stx/sif: hay una version vieja de %s cargada en memoria. ' ...
                'Cierrela con close_system(''%s'', 0) y vuelva a pulsar Sintonizar.'], mdl, mdl);
        end
        [Pr, f] = pwelch(squeeze(out.stx), hann(8192), [], 8192, Fs);
        plot(axRF, f/kEsc/1e6, 10*log10(Pr));
        xlim(axRF, [0 20]);  xlabel(axRF, 'MHz');  ylabel(axRF, 'dB/Hz');  grid(axRF, 'on');
        xline(axRF, fc/kEsc/1e6, 'g', 'Tx');
        xline(axRF, frx/kEsc/1e6, 'k--', 'Rx');
        xline(axRF, (frx + fIF)/kEsc/1e6, 'b--', 'OL');
        xline(axRF, (frx + 2*fIF)/kEsc/1e6, 'r:', 'Imagen');

        % En FI la senal queda en fLO - fc = fIF + desintonia
        [Pi, f] = pwelch(squeeze(out.sif), hann(8192), [], 8192, Fs);
        cla(axIF);
        plot(axIF, f/kEsc/1e6, 10*log10(Pi));
        xlim(axIF, [0 4]);  xlabel(axIF, 'MHz');  ylabel(axIF, 'dB/Hz');  grid(axIF, 'on');
        xregion(axIF, bandaFI(1)/kEsc/1e6, bandaFI(2)/kEsc/1e6, 'FaceColor', [0.6 0.9 0.6]);
        xline(axIF, fIF/kEsc/1e6, 'g', 'FI');
        xline(axIF, (frx + fIF - fc)/kEsc/1e6, 'k--', 'Senal');
    end

    function graficarCanal()
        if isempty(out), return, end
        i = canal();
        mrx = squeeze(out.mrx);  mrx = mrx(max(1, end-2^18+1):end);
        [Pf, f] = pwelch(mrx, hann(2^15), [], 2^15, Fs);
        cla(axFDM);
        plot(axFDM, f/1e3, 10*log10(Pf));
        xlim(axFDM, [0 70]);  xlabel(axFDM, 'kHz');  ylabel(axFDM, 'dB/Hz');  grid(axFDM, 'on');
        xregion(axFDM, fsub(i)/1e3, (fsub(i) + B(i))/1e3, 'FaceColor', [1 0.8 0]);
        title(axFDM, sprintf('FDM demodulado (canal %d resaltado)', i));

        % Correlacion entrada/salida: salida a Fs_tx y alineada por el retardo
        m = squeeze(out.(sprintf('m%d', i)));
        y = remuestrear(squeeze(out.(sprintf('y%d', i))), Fs2, Fs_tx);
        n = min(numel(m), numel(y));  m = m(1:n);  y = y(1:n);
        d = max(0, finddelay(m, y, round(5e-3*Fs_tx)));
        c = corrcoef(m(1:end-d), y(1+d:end));
        txtCorr.Text = sprintf('Canal %d\nCorrelacion entrada/salida: %.2f\nRetardo: %.0f us', ...
            i, abs(c(1, 2)), d/Fs_tx*1e6);
    end

    function i = canal()
        i = find(grupo.Children(end:-1:1) == grupo.SelectedObject);
    end

    function escuchar(prefijo)
        i = canal();
        x = squeeze(out.(sprintf('%s%d', prefijo, i)));
        if prefijo == 'm', fsx = Fs_tx; else, fsx = Fs2; end
        x = remuestrear(x, fsx, fsAudio);
        sound(0.9*x/max(abs(x)), fsAudio);
    end

    function x = remuestrear(x, fsIn, fsOut)
        [p, q] = rat(fsOut/fsIn);              % p/q reducidos (resample filtra antialias)
        x = resample(x, p, q);
    end

    function guardarWav()
        assignin('base', 'out', out);
        evalin('base', 'save_audio');
        estado.Text = sprintf('WAV guardados en %s (entrada1-3, salida1-3).', pwd);
    end

    function alCerrar(~, ~)
        evalin('base', 'clear fc_gui Tsim_gui desint_gui CNR_gui');   % que sim() manual vuelva a los valores por defecto
        delete(fig);
    end
end
