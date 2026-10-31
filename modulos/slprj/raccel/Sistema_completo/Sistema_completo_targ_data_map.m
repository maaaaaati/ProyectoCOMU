    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 4;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc paramMap
        ;%
        paramMap.nSections           = nTotSects;
        paramMap.sectIdxOffset       = sectIdxOffset;
            paramMap.sections(nTotSects) = dumSection; %prealloc
        paramMap.nTotData            = -1;

        ;%
        ;% Auto data (rtP)
        ;%
            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtP.FrmWksBus_13687638544677556503_TU
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 20;
            section.data(20)  = dumData; %prealloc

                    ;% rtP.K_FDM
                    section.data(1).logicalSrcIdx = 1;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.deltaf
                    section.data(2).logicalSrcIdx = 2;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.df
                    section.data(3).logicalSrcIdx = 3;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.fIF
                    section.data(4).logicalSrcIdx = 4;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.fLO
                    section.data(5).logicalSrcIdx = 5;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.fc1
                    section.data(6).logicalSrcIdx = 6;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.fc2
                    section.data(7).logicalSrcIdx = 7;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.fc3
                    section.data(8).logicalSrcIdx = 8;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.fc_tx
                    section.data(9).logicalSrcIdx = 9;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.fm
                    section.data(10).logicalSrcIdx = 10;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.fsub
                    section.data(11).logicalSrcIdx = 11;
                    section.data(11).dtTransOffset = 12;

                    ;% rtP.noiseVar
                    section.data(12).logicalSrcIdx = 12;
                    section.data(12).dtTransOffset = 15;

                    ;% rtP.phi
                    section.data(13).logicalSrcIdx = 13;
                    section.data(13).dtTransOffset = 16;

                    ;% rtP.Difference_ICPrevInput
                    section.data(14).logicalSrcIdx = 14;
                    section.data(14).dtTransOffset = 19;

                    ;% rtP.Difference_ICPrevInput_gotc4affpc
                    section.data(15).logicalSrcIdx = 15;
                    section.data(15).dtTransOffset = 20;

                    ;% rtP.Difference_ICPrevInput_edwttnrqhu
                    section.data(16).logicalSrcIdx = 16;
                    section.data(16).dtTransOffset = 21;

                    ;% rtP.SSBAMModulatorPassband_Ph
                    section.data(17).logicalSrcIdx = 17;
                    section.data(17).dtTransOffset = 22;

                    ;% rtP.SSBAMModulatorPassband1_Ph
                    section.data(18).logicalSrcIdx = 18;
                    section.data(18).dtTransOffset = 23;

                    ;% rtP.SSBAMModulatorPassband2_Ph
                    section.data(19).logicalSrcIdx = 19;
                    section.data(19).dtTransOffset = 24;

                    ;% rtP.FMModulatorPassband_Ph
                    section.data(20).logicalSrcIdx = 20;
                    section.data(20).dtTransOffset = 25;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtP.NSampleEnable_ActiveLevel
                    section.data(1).logicalSrcIdx = 21;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.FMDemodulatorPassband_Ho
                    section.data(2).logicalSrcIdx = 22;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 63;
            section.data(63)  = dumData; %prealloc

                    ;% rtP.Tono1_Amp
                    section.data(1).logicalSrcIdx = 23;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Tono1_Bias
                    section.data(2).logicalSrcIdx = 24;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Tono1_Phase
                    section.data(3).logicalSrcIdx = 25;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Tono1_Hsin
                    section.data(4).logicalSrcIdx = 26;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Tono1_HCos
                    section.data(5).logicalSrcIdx = 27;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Tono1_PSin
                    section.data(6).logicalSrcIdx = 28;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Tono1_PCos
                    section.data(7).logicalSrcIdx = 29;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Tono3_Amp
                    section.data(8).logicalSrcIdx = 30;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Tono3_Bias
                    section.data(9).logicalSrcIdx = 31;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Tono3_Phase
                    section.data(10).logicalSrcIdx = 32;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Tono3_Hsin
                    section.data(11).logicalSrcIdx = 33;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Tono3_HCos
                    section.data(12).logicalSrcIdx = 34;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.Tono3_PSin
                    section.data(13).logicalSrcIdx = 35;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.Tono3_PCos
                    section.data(14).logicalSrcIdx = 36;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.Delay_InitialCondition
                    section.data(15).logicalSrcIdx = 37;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.DigitalFilter_InitialStates
                    section.data(16).logicalSrcIdx = 38;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.DigitalFilter_Coefficients
                    section.data(17).logicalSrcIdx = 39;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.Gain_Gain
                    section.data(18).logicalSrcIdx = 40;
                    section.data(18).dtTransOffset = 1017;

                    ;% rtP.Delay_InitialCondition_ic2jxxipsb
                    section.data(19).logicalSrcIdx = 41;
                    section.data(19).dtTransOffset = 1018;

                    ;% rtP.DigitalFilter_InitialStates_n23yy1ad5o
                    section.data(20).logicalSrcIdx = 42;
                    section.data(20).dtTransOffset = 1019;

                    ;% rtP.DigitalFilter_Coefficients_gmzndttfmd
                    section.data(21).logicalSrcIdx = 43;
                    section.data(21).dtTransOffset = 1020;

                    ;% rtP.Gain_Gain_igffxefjiw
                    section.data(22).logicalSrcIdx = 44;
                    section.data(22).dtTransOffset = 2021;

                    ;% rtP.Delay_InitialCondition_ojbnb5cjsv
                    section.data(23).logicalSrcIdx = 45;
                    section.data(23).dtTransOffset = 2022;

                    ;% rtP.DigitalFilter_InitialStates_f5btbrxf3l
                    section.data(24).logicalSrcIdx = 46;
                    section.data(24).dtTransOffset = 2023;

                    ;% rtP.DigitalFilter_Coefficients_d0rdtttyfy
                    section.data(25).logicalSrcIdx = 47;
                    section.data(25).dtTransOffset = 2024;

                    ;% rtP.Gain_Gain_i5aqfjm2ld
                    section.data(26).logicalSrcIdx = 48;
                    section.data(26).dtTransOffset = 3025;

                    ;% rtP.FIRInterpolation_FILTER_COEFF
                    section.data(27).logicalSrcIdx = 49;
                    section.data(27).dtTransOffset = 3026;

                    ;% rtP.RuidoAWGN_Mean
                    section.data(28).logicalSrcIdx = 50;
                    section.data(28).dtTransOffset = 3986;

                    ;% rtP.RuidoAWGN_Seed
                    section.data(29).logicalSrcIdx = 51;
                    section.data(29).dtTransOffset = 3987;

                    ;% rtP.SineWave6_Amp
                    section.data(30).logicalSrcIdx = 52;
                    section.data(30).dtTransOffset = 3988;

                    ;% rtP.SineWave6_Bias
                    section.data(31).logicalSrcIdx = 53;
                    section.data(31).dtTransOffset = 3989;

                    ;% rtP.SineWave6_Hsin
                    section.data(32).logicalSrcIdx = 54;
                    section.data(32).dtTransOffset = 3990;

                    ;% rtP.SineWave6_HCos
                    section.data(33).logicalSrcIdx = 55;
                    section.data(33).dtTransOffset = 3991;

                    ;% rtP.SineWave6_PSin
                    section.data(34).logicalSrcIdx = 56;
                    section.data(34).dtTransOffset = 3992;

                    ;% rtP.SineWave6_PCos
                    section.data(35).logicalSrcIdx = 57;
                    section.data(35).dtTransOffset = 3993;

                    ;% rtP.LO_Amp
                    section.data(36).logicalSrcIdx = 58;
                    section.data(36).dtTransOffset = 3994;

                    ;% rtP.LO_Bias
                    section.data(37).logicalSrcIdx = 59;
                    section.data(37).dtTransOffset = 3995;

                    ;% rtP.LO_Phase
                    section.data(38).logicalSrcIdx = 60;
                    section.data(38).dtTransOffset = 3996;

                    ;% rtP.LO_Hsin
                    section.data(39).logicalSrcIdx = 61;
                    section.data(39).dtTransOffset = 3997;

                    ;% rtP.LO_HCos
                    section.data(40).logicalSrcIdx = 62;
                    section.data(40).dtTransOffset = 3998;

                    ;% rtP.LO_PSin
                    section.data(41).logicalSrcIdx = 63;
                    section.data(41).dtTransOffset = 3999;

                    ;% rtP.LO_PCos
                    section.data(42).logicalSrcIdx = 64;
                    section.data(42).dtTransOffset = 4000;

                    ;% rtP.Gain2_Gain
                    section.data(43).logicalSrcIdx = 65;
                    section.data(43).dtTransOffset = 4001;

                    ;% rtP.Delay_InitialCondition_p4vo4kuras
                    section.data(44).logicalSrcIdx = 66;
                    section.data(44).dtTransOffset = 4002;

                    ;% rtP.DigitalFilter_InitialStates_enxfi4tgly
                    section.data(45).logicalSrcIdx = 67;
                    section.data(45).dtTransOffset = 4003;

                    ;% rtP.DigitalFilter_Coefficients_p5yy1nelsp
                    section.data(46).logicalSrcIdx = 68;
                    section.data(46).dtTransOffset = 4004;

                    ;% rtP.Gain1_Gain
                    section.data(47).logicalSrcIdx = 69;
                    section.data(47).dtTransOffset = 5005;

                    ;% rtP.FIRDecimation_FILT
                    section.data(48).logicalSrcIdx = 70;
                    section.data(48).dtTransOffset = 5006;

                    ;% rtP.Gain4_Gain
                    section.data(49).logicalSrcIdx = 71;
                    section.data(49).dtTransOffset = 5266;

                    ;% rtP.SineWave7_Amp
                    section.data(50).logicalSrcIdx = 72;
                    section.data(50).dtTransOffset = 5267;

                    ;% rtP.SineWave7_Bias
                    section.data(51).logicalSrcIdx = 73;
                    section.data(51).dtTransOffset = 5268;

                    ;% rtP.SineWave7_Hsin
                    section.data(52).logicalSrcIdx = 74;
                    section.data(52).dtTransOffset = 5269;

                    ;% rtP.SineWave7_HCos
                    section.data(53).logicalSrcIdx = 75;
                    section.data(53).dtTransOffset = 5270;

                    ;% rtP.SineWave7_PSin
                    section.data(54).logicalSrcIdx = 76;
                    section.data(54).dtTransOffset = 5271;

                    ;% rtP.SineWave7_PCos
                    section.data(55).logicalSrcIdx = 77;
                    section.data(55).dtTransOffset = 5272;

                    ;% rtP.Gain5_Gain
                    section.data(56).logicalSrcIdx = 78;
                    section.data(56).dtTransOffset = 5273;

                    ;% rtP.SineWave8_Amp
                    section.data(57).logicalSrcIdx = 79;
                    section.data(57).dtTransOffset = 5274;

                    ;% rtP.SineWave8_Bias
                    section.data(58).logicalSrcIdx = 80;
                    section.data(58).dtTransOffset = 5275;

                    ;% rtP.SineWave8_Hsin
                    section.data(59).logicalSrcIdx = 81;
                    section.data(59).dtTransOffset = 5276;

                    ;% rtP.SineWave8_HCos
                    section.data(60).logicalSrcIdx = 82;
                    section.data(60).dtTransOffset = 5277;

                    ;% rtP.SineWave8_PSin
                    section.data(61).logicalSrcIdx = 83;
                    section.data(61).dtTransOffset = 5278;

                    ;% rtP.SineWave8_PCos
                    section.data(62).logicalSrcIdx = 84;
                    section.data(62).dtTransOffset = 5279;

                    ;% rtP.Gain3_Gain
                    section.data(63).logicalSrcIdx = 85;
                    section.data(63).dtTransOffset = 5280;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section


            ;%
            ;% Non-auto Data (parameter)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        paramMap.nTotData = nTotData;



    ;%**************************
    ;% Create Block Output Map *
    ;%**************************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 3;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc sigMap
        ;%
        sigMap.nSections           = nTotSects;
        sigMap.sectIdxOffset       = sectIdxOffset;
            sigMap.sections(nTotSects) = dumSection; %prealloc
        sigMap.nTotData            = -1;

        ;%
        ;% Auto data (rtB)
        ;%
            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.kighipaduf
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 22;
            section.data(22)  = dumData; %prealloc

                    ;% rtB.g2q11ntlah
                    section.data(1).logicalSrcIdx = 1;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.kixbqa3bex
                    section.data(2).logicalSrcIdx = 2;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.pls351f1nu
                    section.data(3).logicalSrcIdx = 3;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.cxuiswwone
                    section.data(4).logicalSrcIdx = 4;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.p24ukxo3wg
                    section.data(5).logicalSrcIdx = 5;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.imicixm0ul
                    section.data(6).logicalSrcIdx = 6;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.j4d1yxgksw
                    section.data(7).logicalSrcIdx = 7;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.fbgvu153tn
                    section.data(8).logicalSrcIdx = 8;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.mws5mh0kpf
                    section.data(9).logicalSrcIdx = 9;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.hsf1w3hgwk
                    section.data(10).logicalSrcIdx = 10;
                    section.data(10).dtTransOffset = 9;

                    ;% rtB.en4en5iu4h
                    section.data(11).logicalSrcIdx = 11;
                    section.data(11).dtTransOffset = 10;

                    ;% rtB.f50zme3if4
                    section.data(12).logicalSrcIdx = 12;
                    section.data(12).dtTransOffset = 11;

                    ;% rtB.maz05zif1k
                    section.data(13).logicalSrcIdx = 13;
                    section.data(13).dtTransOffset = 12;

                    ;% rtB.n1clg3l1ri
                    section.data(14).logicalSrcIdx = 14;
                    section.data(14).dtTransOffset = 13;

                    ;% rtB.mwx5oenudz
                    section.data(15).logicalSrcIdx = 15;
                    section.data(15).dtTransOffset = 14;

                    ;% rtB.ez52gbxbdl
                    section.data(16).logicalSrcIdx = 16;
                    section.data(16).dtTransOffset = 15;

                    ;% rtB.peltauet2t
                    section.data(17).logicalSrcIdx = 17;
                    section.data(17).dtTransOffset = 16;

                    ;% rtB.pyyhpzmchb
                    section.data(18).logicalSrcIdx = 18;
                    section.data(18).dtTransOffset = 17;

                    ;% rtB.is3f1x5amv
                    section.data(19).logicalSrcIdx = 19;
                    section.data(19).dtTransOffset = 18;

                    ;% rtB.fqjus33m5v
                    section.data(20).logicalSrcIdx = 20;
                    section.data(20).dtTransOffset = 19;

                    ;% rtB.hgm5nh33tp
                    section.data(21).logicalSrcIdx = 21;
                    section.data(21).dtTransOffset = 20;

                    ;% rtB.iq4arzhf0e
                    section.data(22).logicalSrcIdx = 22;
                    section.data(22).dtTransOffset = 21;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.lvjmipbiw2
                    section.data(1).logicalSrcIdx = 23;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section


            ;%
            ;% Non-auto Data (signal)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        sigMap.nTotData = nTotData;



    ;%*******************
    ;% Create DWork Map *
    ;%*******************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 7;
        sectIdxOffset = 3;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc dworkMap
        ;%
        dworkMap.nSections           = nTotSects;
        dworkMap.sectIdxOffset       = sectIdxOffset;
            dworkMap.sections(nTotSects) = dumSection; %prealloc
        dworkMap.nTotData            = -1;

        ;%
        ;% Auto data (rtDW)
        ;%
            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gxvv3p05n3
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 62;
            section.data(62)  = dumData; %prealloc

                    ;% rtDW.pwgfhsxfno
                    section.data(1).logicalSrcIdx = 1;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.ontergu5br
                    section.data(2).logicalSrcIdx = 2;
                    section.data(2).dtTransOffset = 500;

                    ;% rtDW.oj5zhmvlbo
                    section.data(3).logicalSrcIdx = 3;
                    section.data(3).dtTransOffset = 1000;

                    ;% rtDW.mexmujcrok
                    section.data(4).logicalSrcIdx = 4;
                    section.data(4).dtTransOffset = 2000;

                    ;% rtDW.hdzimhdfjk
                    section.data(5).logicalSrcIdx = 5;
                    section.data(5).dtTransOffset = 2500;

                    ;% rtDW.nb12l1guvw
                    section.data(6).logicalSrcIdx = 6;
                    section.data(6).dtTransOffset = 3000;

                    ;% rtDW.okqt2iwz0i
                    section.data(7).logicalSrcIdx = 7;
                    section.data(7).dtTransOffset = 3500;

                    ;% rtDW.jerfuzr3if
                    section.data(8).logicalSrcIdx = 8;
                    section.data(8).dtTransOffset = 4500;

                    ;% rtDW.blwm1gcgtp
                    section.data(9).logicalSrcIdx = 9;
                    section.data(9).dtTransOffset = 5000;

                    ;% rtDW.iw5uctck4q
                    section.data(10).logicalSrcIdx = 10;
                    section.data(10).dtTransOffset = 5500;

                    ;% rtDW.pll4gfzeg3
                    section.data(11).logicalSrcIdx = 11;
                    section.data(11).dtTransOffset = 6000;

                    ;% rtDW.lymv3q2w1w
                    section.data(12).logicalSrcIdx = 12;
                    section.data(12).dtTransOffset = 7000;

                    ;% rtDW.lf4bu3bufv
                    section.data(13).logicalSrcIdx = 13;
                    section.data(13).dtTransOffset = 7500;

                    ;% rtDW.mq34lan1rc
                    section.data(14).logicalSrcIdx = 14;
                    section.data(14).dtTransOffset = 7523;

                    ;% rtDW.f4dzyidapn
                    section.data(15).logicalSrcIdx = 15;
                    section.data(15).dtTransOffset = 7524;

                    ;% rtDW.huuvyklxe3
                    section.data(16).logicalSrcIdx = 16;
                    section.data(16).dtTransOffset = 7530;

                    ;% rtDW.ficjzepgf2
                    section.data(17).logicalSrcIdx = 17;
                    section.data(17).dtTransOffset = 7538;

                    ;% rtDW.dc43avk30a
                    section.data(18).logicalSrcIdx = 18;
                    section.data(18).dtTransOffset = 7539;

                    ;% rtDW.i0org3s1wd
                    section.data(19).logicalSrcIdx = 19;
                    section.data(19).dtTransOffset = 8039;

                    ;% rtDW.jjxmkft25d
                    section.data(20).logicalSrcIdx = 20;
                    section.data(20).dtTransOffset = 9039;

                    ;% rtDW.afir2yq4ff
                    section.data(21).logicalSrcIdx = 21;
                    section.data(21).dtTransOffset = 9040;

                    ;% rtDW.c115pq21qg
                    section.data(22).logicalSrcIdx = 22;
                    section.data(22).dtTransOffset = 9300;

                    ;% rtDW.g2jnj5jb1o
                    section.data(23).logicalSrcIdx = 23;
                    section.data(23).dtTransOffset = 9540;

                    ;% rtDW.c5skmav14m
                    section.data(24).logicalSrcIdx = 24;
                    section.data(24).dtTransOffset = 9541;

                    ;% rtDW.k52gcfwqrs
                    section.data(25).logicalSrcIdx = 25;
                    section.data(25).dtTransOffset = 9549;

                    ;% rtDW.pxgnl3szdx
                    section.data(26).logicalSrcIdx = 26;
                    section.data(26).dtTransOffset = 9553;

                    ;% rtDW.iksq1m1z4p
                    section.data(27).logicalSrcIdx = 27;
                    section.data(27).dtTransOffset = 9561;

                    ;% rtDW.cjbyook23j
                    section.data(28).logicalSrcIdx = 28;
                    section.data(28).dtTransOffset = 9565;

                    ;% rtDW.jczmekm25l
                    section.data(29).logicalSrcIdx = 29;
                    section.data(29).dtTransOffset = 9573;

                    ;% rtDW.nr5j51alg3
                    section.data(30).logicalSrcIdx = 30;
                    section.data(30).dtTransOffset = 9577;

                    ;% rtDW.mw1l0ntqqj
                    section.data(31).logicalSrcIdx = 31;
                    section.data(31).dtTransOffset = 9578;

                    ;% rtDW.n4nitbyuvb
                    section.data(32).logicalSrcIdx = 32;
                    section.data(32).dtTransOffset = 9579;

                    ;% rtDW.cjqtcnluwe
                    section.data(33).logicalSrcIdx = 33;
                    section.data(33).dtTransOffset = 9580;

                    ;% rtDW.hres021l3k
                    section.data(34).logicalSrcIdx = 34;
                    section.data(34).dtTransOffset = 9581;

                    ;% rtDW.fouzigmufa
                    section.data(35).logicalSrcIdx = 35;
                    section.data(35).dtTransOffset = 9661;

                    ;% rtDW.mkgtavhvf1
                    section.data(36).logicalSrcIdx = 36;
                    section.data(36).dtTransOffset = 10621;

                    ;% rtDW.ecym0dqgx0
                    section.data(37).logicalSrcIdx = 37;
                    section.data(37).dtTransOffset = 12541;

                    ;% rtDW.j40uj1rp1l
                    section.data(38).logicalSrcIdx = 38;
                    section.data(38).dtTransOffset = 14461;

                    ;% rtDW.c3fepwctru
                    section.data(39).logicalSrcIdx = 39;
                    section.data(39).dtTransOffset = 14462;

                    ;% rtDW.b4hpr3asmy
                    section.data(40).logicalSrcIdx = 40;
                    section.data(40).dtTransOffset = 14463;

                    ;% rtDW.km1h12yqxr
                    section.data(41).logicalSrcIdx = 41;
                    section.data(41).dtTransOffset = 14464;

                    ;% rtDW.jol3kxhq22
                    section.data(42).logicalSrcIdx = 42;
                    section.data(42).dtTransOffset = 14465;

                    ;% rtDW.pseu3ihqxp
                    section.data(43).logicalSrcIdx = 43;
                    section.data(43).dtTransOffset = 14466;

                    ;% rtDW.aeprdsn0og
                    section.data(44).logicalSrcIdx = 44;
                    section.data(44).dtTransOffset = 14469;

                    ;% rtDW.fdhk3asmem
                    section.data(45).logicalSrcIdx = 45;
                    section.data(45).dtTransOffset = 14472;

                    ;% rtDW.b4ghkzhass
                    section.data(46).logicalSrcIdx = 46;
                    section.data(46).dtTransOffset = 14473;

                    ;% rtDW.la3qijwhmz
                    section.data(47).logicalSrcIdx = 47;
                    section.data(47).dtTransOffset = 14474;

                    ;% rtDW.ls0yshiwfe
                    section.data(48).logicalSrcIdx = 48;
                    section.data(48).dtTransOffset = 14475;

                    ;% rtDW.e0gupjmxtk
                    section.data(49).logicalSrcIdx = 49;
                    section.data(49).dtTransOffset = 14476;

                    ;% rtDW.ladul4b5j3
                    section.data(50).logicalSrcIdx = 50;
                    section.data(50).dtTransOffset = 14477;

                    ;% rtDW.brp332zy3r
                    section.data(51).logicalSrcIdx = 51;
                    section.data(51).dtTransOffset = 14481;

                    ;% rtDW.ijsgewbf4w
                    section.data(52).logicalSrcIdx = 52;
                    section.data(52).dtTransOffset = 14485;

                    ;% rtDW.caqy4monle
                    section.data(53).logicalSrcIdx = 53;
                    section.data(53).dtTransOffset = 14486;

                    ;% rtDW.jhr1k0405p
                    section.data(54).logicalSrcIdx = 54;
                    section.data(54).dtTransOffset = 14487;

                    ;% rtDW.pjlpvqncwo
                    section.data(55).logicalSrcIdx = 55;
                    section.data(55).dtTransOffset = 14491;

                    ;% rtDW.oiz3y4uw4b
                    section.data(56).logicalSrcIdx = 56;
                    section.data(56).dtTransOffset = 14495;

                    ;% rtDW.gpyjihtco5
                    section.data(57).logicalSrcIdx = 57;
                    section.data(57).dtTransOffset = 14496;

                    ;% rtDW.jarom03fgg
                    section.data(58).logicalSrcIdx = 58;
                    section.data(58).dtTransOffset = 14497;

                    ;% rtDW.fegjlcoonv
                    section.data(59).logicalSrcIdx = 59;
                    section.data(59).dtTransOffset = 14501;

                    ;% rtDW.l50rjuzd3m
                    section.data(60).logicalSrcIdx = 60;
                    section.data(60).dtTransOffset = 14505;

                    ;% rtDW.gbp1p10vhw
                    section.data(61).logicalSrcIdx = 61;
                    section.data(61).dtTransOffset = 14506;

                    ;% rtDW.mc55xyvtxw
                    section.data(62).logicalSrcIdx = 62;
                    section.data(62).dtTransOffset = 14507;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 11;
            section.data(11)  = dumData; %prealloc

                    ;% rtDW.om4gj25ddy.AQHandles
                    section.data(1).logicalSrcIdx = 63;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.gzqxjb1b0l.TimePtr
                    section.data(2).logicalSrcIdx = 64;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.lw3qjjh1ac.AQHandles
                    section.data(3).logicalSrcIdx = 65;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.pygzpmyas4.AQHandles
                    section.data(4).logicalSrcIdx = 66;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.enxgxarfpg.AQHandles
                    section.data(5).logicalSrcIdx = 67;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.lkt11acjmd.AQHandles
                    section.data(6).logicalSrcIdx = 68;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.g4culvilmx.AQHandles
                    section.data(7).logicalSrcIdx = 69;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.dvfdvgi0og.AQHandles
                    section.data(8).logicalSrcIdx = 70;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.h5xvz1tavz.AQHandles
                    section.data(9).logicalSrcIdx = 71;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.bg2hmrytqm.AQHandles
                    section.data(10).logicalSrcIdx = 72;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.kitvv1ogfk.AQHandles
                    section.data(11).logicalSrcIdx = 73;
                    section.data(11).dtTransOffset = 10;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 34;
            section.data(34)  = dumData; %prealloc

                    ;% rtDW.jrgbcdjtfi
                    section.data(1).logicalSrcIdx = 74;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.a12mzriv2h
                    section.data(2).logicalSrcIdx = 75;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.mkzfeqfdkc
                    section.data(3).logicalSrcIdx = 76;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.gpcsebfwux
                    section.data(4).logicalSrcIdx = 77;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.abkckospcn
                    section.data(5).logicalSrcIdx = 78;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.hrwaz5qj15
                    section.data(6).logicalSrcIdx = 79;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.ed2uwfoxh1
                    section.data(7).logicalSrcIdx = 80;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.epie04ejlp
                    section.data(8).logicalSrcIdx = 81;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.oz5zvqcqhy
                    section.data(9).logicalSrcIdx = 82;
                    section.data(9).dtTransOffset = 8;

                    ;% rtDW.kw1ocj0aui
                    section.data(10).logicalSrcIdx = 83;
                    section.data(10).dtTransOffset = 9;

                    ;% rtDW.ioux0w1lzy
                    section.data(11).logicalSrcIdx = 84;
                    section.data(11).dtTransOffset = 10;

                    ;% rtDW.bjxuhudysq
                    section.data(12).logicalSrcIdx = 85;
                    section.data(12).dtTransOffset = 11;

                    ;% rtDW.fm3gxhxp5n
                    section.data(13).logicalSrcIdx = 86;
                    section.data(13).dtTransOffset = 12;

                    ;% rtDW.hjbk5bbtdv
                    section.data(14).logicalSrcIdx = 87;
                    section.data(14).dtTransOffset = 13;

                    ;% rtDW.ohooch5yjb
                    section.data(15).logicalSrcIdx = 88;
                    section.data(15).dtTransOffset = 14;

                    ;% rtDW.imjbmqw4ie
                    section.data(16).logicalSrcIdx = 89;
                    section.data(16).dtTransOffset = 15;

                    ;% rtDW.isbv3d54lg
                    section.data(17).logicalSrcIdx = 90;
                    section.data(17).dtTransOffset = 16;

                    ;% rtDW.avvlqvx1pa
                    section.data(18).logicalSrcIdx = 91;
                    section.data(18).dtTransOffset = 17;

                    ;% rtDW.cpcfhzqhzc
                    section.data(19).logicalSrcIdx = 92;
                    section.data(19).dtTransOffset = 18;

                    ;% rtDW.phx4pnfrbk
                    section.data(20).logicalSrcIdx = 93;
                    section.data(20).dtTransOffset = 19;

                    ;% rtDW.iqbuhmbedo
                    section.data(21).logicalSrcIdx = 94;
                    section.data(21).dtTransOffset = 20;

                    ;% rtDW.ervltxmtte
                    section.data(22).logicalSrcIdx = 95;
                    section.data(22).dtTransOffset = 21;

                    ;% rtDW.dumqnsm4hi
                    section.data(23).logicalSrcIdx = 96;
                    section.data(23).dtTransOffset = 22;

                    ;% rtDW.cvhpbpnmdh
                    section.data(24).logicalSrcIdx = 97;
                    section.data(24).dtTransOffset = 23;

                    ;% rtDW.lvdva2ah41
                    section.data(25).logicalSrcIdx = 98;
                    section.data(25).dtTransOffset = 24;

                    ;% rtDW.hakjia2zlt
                    section.data(26).logicalSrcIdx = 99;
                    section.data(26).dtTransOffset = 25;

                    ;% rtDW.ld2nplw25p
                    section.data(27).logicalSrcIdx = 100;
                    section.data(27).dtTransOffset = 26;

                    ;% rtDW.dviwmljfda
                    section.data(28).logicalSrcIdx = 101;
                    section.data(28).dtTransOffset = 27;

                    ;% rtDW.en0ge5w3mf
                    section.data(29).logicalSrcIdx = 102;
                    section.data(29).dtTransOffset = 28;

                    ;% rtDW.nc2zc5olbs
                    section.data(30).logicalSrcIdx = 103;
                    section.data(30).dtTransOffset = 29;

                    ;% rtDW.cv35dn1sn5
                    section.data(31).logicalSrcIdx = 104;
                    section.data(31).dtTransOffset = 30;

                    ;% rtDW.enby2w2cr3
                    section.data(32).logicalSrcIdx = 105;
                    section.data(32).dtTransOffset = 31;

                    ;% rtDW.pzriersj00
                    section.data(33).logicalSrcIdx = 106;
                    section.data(33).dtTransOffset = 32;

                    ;% rtDW.phoc2wg3tw
                    section.data(34).logicalSrcIdx = 107;
                    section.data(34).dtTransOffset = 33;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.k2mkxvsau3
                    section.data(1).logicalSrcIdx = 108;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.fokpkrhrmo
                    section.data(2).logicalSrcIdx = 109;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.oq4omlqh0q.PrevIndex
                    section.data(1).logicalSrcIdx = 110;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.lz3dxbb31q
                    section.data(1).logicalSrcIdx = 111;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.en403huoe4
                    section.data(2).logicalSrcIdx = 112;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section


            ;%
            ;% Non-auto Data (dwork)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        dworkMap.nTotData = nTotData;



    ;%
    ;% Add individual maps to base struct.
    ;%

    targMap.paramMap  = paramMap;
    targMap.signalMap = sigMap;
    targMap.dworkMap  = dworkMap;

    ;%
    ;% Add checksums to base struct.
    ;%


    targMap.checksum0 = 2366584602;
    targMap.checksum1 = 2537140158;
    targMap.checksum2 = 2998455862;
    targMap.checksum3 = 1286255776;

