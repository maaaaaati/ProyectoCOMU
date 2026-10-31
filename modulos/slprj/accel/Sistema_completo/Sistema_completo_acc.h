#ifndef Sistema_completo_acc_h_
#define Sistema_completo_acc_h_
#ifndef Sistema_completo_acc_COMMON_INCLUDES_
#define Sistema_completo_acc_COMMON_INCLUDES_
#include <stdlib.h>
#define S_FUNCTION_NAME simulink_only_sfcn
#define S_FUNCTION_LEVEL 2
#ifndef RTW_GENERATED_S_FUNCTION
#define RTW_GENERATED_S_FUNCTION
#endif
#include "sl_AsyncioQueue/AsyncioQueueCAPI.h"
#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "math.h"
#endif
#include "Sistema_completo_acc_types.h"
#include "mwmathutil.h"
#include "rt_defines.h"
#include <stddef.h>
typedef struct { creal_T B_1_0_0 ; real_T B_1_1_16 ; real_T B_1_2_24 ; real_T
B_1_3_32 ; real_T B_1_4_40 ; real_T B_1_5_48 ; real_T B_1_6_56 ; real_T
B_1_7_64 ; real_T B_1_8_72 ; real_T B_1_9_80 ; real_T B_1_10_88 ; real_T
B_1_11_96 ; real_T B_1_12_104 ; real_T B_1_13_112 ; real_T B_1_14_120 ;
real_T B_1_15_128 ; real_T B_1_16_136 ; real_T B_1_17_144 ; real_T B_1_18_152
; real_T B_1_19_160 ; real_T B_1_20_168 ; real_T B_1_21_176 ; real_T
B_1_22_184 ; real_T B_1_23_192 ; real_T B_1_24_200 ; real_T B_1_25_208 ;
real_T B_1_26_216 ; real_T B_1_27_224 ; real_T B_1_28_232 ; real_T B_1_29_240
; real_T B_1_30_248 ; real_T B_1_31_256 ; real_T B_1_32_264 ; real_T
B_1_33_272 ; real_T B_1_34_280 ; real_T B_1_35_288 ; real_T B_1_36_296 ;
real_T B_1_37_304 ; boolean_T B_1_38_312 ; char_T pad_B_1_38_312 [ 7 ] ; }
B_Sistema_completo_T ; typedef struct { creal_T Delay_IC_BUFF [ 500 ] ;
real_T Delay_IC_BUFF_l [ 500 ] ; real_T Delay_DSTATE [ 500 ] ; real_T
DigitalFilter_states [ 1000 ] ; real_T Delay_IC_BUFF_a [ 500 ] ; real_T
Delay_IC_BUFF_k [ 500 ] ; real_T Delay_DSTATE_m [ 500 ] ; real_T
DigitalFilter_states_n [ 1000 ] ; real_T Delay_IC_BUFF_ky [ 500 ] ; real_T
Delay_IC_BUFF_o [ 500 ] ; real_T Delay_DSTATE_h [ 500 ] ; real_T
DigitalFilter_states_e [ 1000 ] ; real_T Delay_IC_BUFF_j [ 500 ] ; real_T
FIRInterpolation_TapDelayBuff [ 23 ] ; real_T UD_DSTATE ; real_T
FiltroRF_FILT_STATES [ 6 ] ; real_T DigitalFilter_FILT_STATES [ 8 ] ; real_T
UD_DSTATE_e ; real_T Delay_DSTATE_i [ 500 ] ; real_T DigitalFilter_states_p [
1000 ] ; real_T UD_DSTATE_n ; real_T FIRDecimation_Sums [ 260 ] ; real_T
FIRDecimation_StatesBuff [ 240 ] ; real_T FIRDecimation_OutBuff ; real_T
BPF1_FILT_STATES [ 8 ] ; real_T BiquadFilter_FILT_STATES [ 4 ] ; real_T
BPF2_FILT_STATES [ 8 ] ; real_T BiquadFilter1_FILT_STATES [ 4 ] ; real_T
BPF3_FILT_STATES [ 8 ] ; real_T BiquadFilter2_FILT_STATES [ 4 ] ; real_T
lastSin ; real_T lastCos ; real_T lastSin_e ; real_T lastCos_k ; real_T
FIRInterpolation_OutBuff [ 80 ] ; real_T FIRInterpolation_REVCOEF_DWORK [ 960
] ; real_T FIRInterpolation_TRANSCOEF_DWORK [ 1920 ] ; real_T
FIRInterpolation_REVTRANSCOEF_DWORK [ 1920 ] ; real_T
CumulativeSum_RunningCumVal ; real_T Time_TimeBuff ; real_T NextOutput ;
real_T lastSin_el ; real_T lastCos_a ; real_T FiltroRF_TEMP_STAGEIN_STATES [
3 ] ; real_T FiltroRF_TEMP_STAGEOUT_STATES [ 3 ] ; real_T lastSin_f ; real_T
lastCos_e ; real_T Time_TimeBuff_b ; real_T Unwrap_Prev ; real_T
Unwrap_Cumsum ; real_T BPF1_TEMP_STAGEIN_STATES [ 4 ] ; real_T
BPF1_TEMP_STAGEOUT_STATES [ 4 ] ; real_T lastSin_p ; real_T lastCos_p ;
real_T BPF2_TEMP_STAGEIN_STATES [ 4 ] ; real_T BPF2_TEMP_STAGEOUT_STATES [ 4
] ; real_T lastSin_es ; real_T lastCos_d ; real_T BPF3_TEMP_STAGEIN_STATES [
4 ] ; real_T BPF3_TEMP_STAGEOUT_STATES [ 4 ] ; real_T Time_TimeBuff_j ;
real_T Time_TimeBuff_i ; real_T Time_TimeBuff_e ; struct { void * AQHandles ;
} _asyncqueue_inserted_for_m1_PWORK ; void * FromWorkspace_PWORK [ 3 ] ;
struct { void * AQHandles ; } _asyncqueue_inserted_for_m2_PWORK ; struct {
void * AQHandles ; } _asyncqueue_inserted_for_m3_PWORK ; struct { void *
AQHandles ; } _asyncqueue_inserted_for_stx_PWORK ; struct { void * AQHandles
; } _asyncqueue_inserted_for_y1_PWORK ; struct { void * AQHandles ; }
_asyncqueue_inserted_for_y2_PWORK ; struct { void * AQHandles ; }
_asyncqueue_inserted_for_y3_PWORK ; struct { void * AQHandles ; }
_asyncqueue_inserted_for_ToWorkspacesif_PWORK ; struct { void * AQHandles ; }
_asyncqueue_inserted_for_ToWorkspace1_PWORK ; struct { void * AQHandles ; }
_asyncqueue_inserted_for_ToWorkspacemtx_PWORK ; int32_T Delay_CIRC_BUF_IDX ;
int32_T DigitalFilter_StateBuffIdx ; int32_T Delay_CIRC_BUF_IDX_c ; int32_T
Delay_CIRC_BUF_IDX_h ; int32_T DigitalFilter_StateBuffIdx_p ; int32_T
Delay_CIRC_BUF_IDX_cr ; int32_T Delay_CIRC_BUF_IDX_d ; int32_T
DigitalFilter_StateBuffIdx_a ; int32_T Delay_CIRC_BUF_IDX_k ; int32_T
FIRInterpolation_TapDelayIndex ; int32_T Delay_CIRC_BUF_IDX_l ; int32_T
DigitalFilter_StateBuffIdx_a3 ; int32_T FIRDecimation_PhaseIdx ; int32_T
FIRDecimation_CoeffIdx ; int32_T FIRDecimation_TapDelayIndex ; int32_T
FIRDecimation_CircularBufferIdx ; int32_T systemEnable ; int32_T
systemEnable_a ; int32_T FIRInterpolation_ReadIdx ; int32_T
FIRInterpolation_CircBuffIdx ; int32_T systemEnable_e ; int32_T
systemEnable_b ; int32_T systemEnable_at ; int32_T systemEnable_i ; int32_T
TmpAtomicSubsysAtSwitchInport3_sysIdxToRun ; uint32_T RandSeed ; uint32_T
NSampleEnable_Counter ; int_T FromWorkspace_IWORK ; boolean_T
FIRInterpolation_wrtBufIdx ; boolean_T Unwrap_FirstStep ; char_T
pad_Unwrap_FirstStep [ 6 ] ; } DW_Sistema_completo_T ; typedef struct {
real_T pooled1 ; real_T FiltroRF_RTP1COEFF [ 9 ] ; real_T FiltroRF_RTP2COEFF
[ 6 ] ; real_T FiltroRF_RTP3COEFF [ 4 ] ; real_T DigitalFilter_RTP1COEFF [ 12
] ; real_T DigitalFilter_RTP2COEFF [ 8 ] ; real_T DigitalFilter_RTP3COEFF [ 5
] ; real_T Unwrap_cutoffrtp ; real_T BPF1_RTP1COEFF [ 12 ] ; real_T
BPF1_RTP2COEFF [ 8 ] ; real_T pooled2 [ 5 ] ; real_T BiquadFilter_RTP1COEFF [
6 ] ; real_T BiquadFilter_RTP2COEFF [ 4 ] ; real_T pooled3 [ 3 ] ; real_T
BPF2_RTP1COEFF [ 12 ] ; real_T BPF2_RTP2COEFF [ 8 ] ; real_T
BiquadFilter1_RTP1COEFF [ 6 ] ; real_T BiquadFilter1_RTP2COEFF [ 4 ] ; real_T
BPF3_RTP1COEFF [ 12 ] ; real_T BPF3_RTP2COEFF [ 8 ] ; real_T
BiquadFilter2_RTP1COEFF [ 6 ] ; real_T BiquadFilter2_RTP2COEFF [ 4 ] ;
creal_T Delay_IC ; boolean_T FiltroRF_RTP_COEFF3_BOOL [ 4 ] ; boolean_T
DigitalFilter_RTP_COEFF3_BOOL [ 5 ] ; boolean_T pooled4 [ 5 ] ; boolean_T
pooled5 [ 3 ] ; char_T pad_pooled5 [ 7 ] ; } ConstP_Sistema_completo_T ;
struct P_Sistema_completo_T_ { real_T P_0 ; real_T P_1 ; real_T P_2 ; real_T
P_3 ; real_T P_4 ; real_T P_5 ; real_T P_6 ; real_T P_7 ; real_T P_8 ; real_T
P_9 ; real_T P_10 ; real_T P_11 ; real_T P_12 ; real_T P_13 ; real_T P_14 ;
real_T P_15 ; real_T P_16 ; real_T P_17 ; real_T P_18 [ 1001 ] ; real_T P_19
; real_T P_20 ; real_T P_21 ; real_T P_22 [ 1001 ] ; real_T P_23 ; real_T
P_24 ; real_T P_25 ; real_T P_26 [ 1001 ] ; real_T P_27 ; real_T P_28 ;
real_T P_29 [ 960 ] ; real_T P_30 ; real_T P_31 ; real_T P_32 ; real_T P_33 ;
real_T P_34 ; real_T P_35 ; real_T P_36 ; real_T P_37 ; real_T P_38 ; real_T
P_39 ; real_T P_40 ; real_T P_41 ; real_T P_42 ; real_T P_43 ; real_T P_44 ;
real_T P_45 ; real_T P_46 ; real_T P_47 ; real_T P_48 ; real_T P_49 ; real_T
P_50 ; real_T P_51 ; real_T P_52 ; real_T P_53 ; real_T P_54 ; real_T P_55 ;
real_T P_56 [ 1001 ] ; real_T P_57 ; real_T P_58 ; real_T P_59 [ 260 ] ;
real_T P_60 ; real_T P_61 ; real_T P_62 ; real_T P_63 ; real_T P_64 ; real_T
P_65 ; real_T P_66 ; real_T P_67 ; real_T P_68 ; real_T P_69 ; real_T P_70 ;
real_T P_71 ; real_T P_72 ; real_T P_73 ; real_T P_74 ; real_T P_75 ; real_T
P_76 ; real_T P_77 ; real_T P_78 ; real_T P_79 ; real_T P_80 ; real_T P_81 ;
real_T P_82 ; real_T P_83 ; real_T P_84 ; real_T P_85 ; real_T P_86 ; real_T
P_87 ; real_T P_88 ; real_T P_89 ; real_T P_90 ; real_T P_91 ; real_T P_92 ;
real_T P_93 ; uint32_T P_94 ; uint32_T P_95 ; } ; extern P_Sistema_completo_T
Sistema_completo_rtDefaultP ; extern const ConstP_Sistema_completo_T
Sistema_completo_rtConstP ;
#endif
