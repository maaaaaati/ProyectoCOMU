#ifndef Sistema_completo_h_
#define Sistema_completo_h_
#ifndef Sistema_completo_COMMON_INCLUDES_
#define Sistema_completo_COMMON_INCLUDES_
#include <stdlib.h>
#include "sl_AsyncioQueue/AsyncioQueueCAPI.h"
#include "rtwtypes.h"
#include "sigstream_rtw.h"
#include "simtarget/slSimTgtSigstreamRTW.h"
#include "simtarget/slSimTgtSlioCoreRTW.h"
#include "simtarget/slSimTgtSlioClientsRTW.h"
#include "simtarget/slSimTgtSlioSdiRTW.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "raccel.h"
#include "slsv_diagnostic_codegen_c_api.h"
#include "rt_logging_simtarget.h"
#include "rt_nonfinite.h"
#include "math.h"
#include "dt_info.h"
#include "ext_work.h"
#include "iHalideDiscreteFIR_TDF.hpp"
#endif
#include "Sistema_completo_types.h"
#include <stddef.h>
#include "mwmathutil.h"
#include "rtw_modelmap.h"
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include <string.h>
#define MODEL_NAME Sistema_completo
#define NSAMPLE_TIMES (4) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (24) 
#define NUM_ZC_EVENTS (0) 
#ifndef NCSTATES
#define NCSTATES (0)   
#elif NCSTATES != 0
#error Invalid specification of NCSTATES defined in compiler command
#endif
#ifndef rtmGetDataMapInfo
#define rtmGetDataMapInfo(rtm) (*rt_dataMapInfoPtr)
#endif
#ifndef rtmSetDataMapInfo
#define rtmSetDataMapInfo(rtm, val) (rt_dataMapInfoPtr = &val)
#endif
#ifndef IN_RACCEL_MAIN
#endif
typedef struct { creal_T kighipaduf ; real_T g2q11ntlah ; real_T kixbqa3bex ;
real_T pls351f1nu ; real_T cxuiswwone ; real_T p24ukxo3wg ; real_T imicixm0ul
; real_T j4d1yxgksw ; real_T fbgvu153tn ; real_T mws5mh0kpf ; real_T
hsf1w3hgwk ; real_T en4en5iu4h ; real_T f50zme3if4 ; real_T maz05zif1k ;
real_T n1clg3l1ri ; real_T mwx5oenudz ; real_T ez52gbxbdl ; real_T peltauet2t
; real_T pyyhpzmchb ; real_T is3f1x5amv ; real_T fqjus33m5v ; real_T
hgm5nh33tp ; real_T iq4arzhf0e ; boolean_T lvjmipbiw2 ; } B ; typedef struct
{ creal_T gxvv3p05n3 [ 500 ] ; real_T pwgfhsxfno [ 500 ] ; real_T ontergu5br
[ 500 ] ; real_T oj5zhmvlbo [ 1000 ] ; real_T mexmujcrok [ 500 ] ; real_T
hdzimhdfjk [ 500 ] ; real_T nb12l1guvw [ 500 ] ; real_T okqt2iwz0i [ 1000 ] ;
real_T jerfuzr3if [ 500 ] ; real_T blwm1gcgtp [ 500 ] ; real_T iw5uctck4q [
500 ] ; real_T pll4gfzeg3 [ 1000 ] ; real_T lymv3q2w1w [ 500 ] ; real_T
lf4bu3bufv [ 23 ] ; real_T mq34lan1rc ; real_T f4dzyidapn [ 6 ] ; real_T
huuvyklxe3 [ 8 ] ; real_T ficjzepgf2 ; real_T dc43avk30a [ 500 ] ; real_T
i0org3s1wd [ 1000 ] ; real_T jjxmkft25d ; real_T afir2yq4ff [ 260 ] ; real_T
c115pq21qg [ 240 ] ; real_T g2jnj5jb1o ; real_T c5skmav14m [ 8 ] ; real_T
k52gcfwqrs [ 4 ] ; real_T pxgnl3szdx [ 8 ] ; real_T iksq1m1z4p [ 4 ] ; real_T
cjbyook23j [ 8 ] ; real_T jczmekm25l [ 4 ] ; real_T nr5j51alg3 ; real_T
mw1l0ntqqj ; real_T n4nitbyuvb ; real_T cjqtcnluwe ; real_T hres021l3k [ 80 ]
; real_T fouzigmufa [ 960 ] ; real_T mkgtavhvf1 [ 1920 ] ; real_T ecym0dqgx0
[ 1920 ] ; real_T j40uj1rp1l ; real_T c3fepwctru ; real_T b4hpr3asmy ; real_T
km1h12yqxr ; real_T jol3kxhq22 ; real_T pseu3ihqxp [ 3 ] ; real_T aeprdsn0og
[ 3 ] ; real_T fdhk3asmem ; real_T b4ghkzhass ; real_T la3qijwhmz ; real_T
ls0yshiwfe ; real_T e0gupjmxtk ; real_T ladul4b5j3 [ 4 ] ; real_T brp332zy3r
[ 4 ] ; real_T ijsgewbf4w ; real_T caqy4monle ; real_T jhr1k0405p [ 4 ] ;
real_T pjlpvqncwo [ 4 ] ; real_T oiz3y4uw4b ; real_T gpyjihtco5 ; real_T
jarom03fgg [ 4 ] ; real_T fegjlcoonv [ 4 ] ; real_T l50rjuzd3m ; real_T
gbp1p10vhw ; real_T mc55xyvtxw ; struct { void * AQHandles ; } om4gj25ddy ;
struct { void * TimePtr ; void * DataPtr ; void * RSimInfoPtr ; } gzqxjb1b0l
; struct { void * AQHandles ; } lw3qjjh1ac ; struct { void * AQHandles ; }
pygzpmyas4 ; struct { void * AQHandles ; } enxgxarfpg ; struct { void *
AQHandles ; } lkt11acjmd ; struct { void * AQHandles ; } g4culvilmx ; struct
{ void * AQHandles ; } dvfdvgi0og ; struct { void * AQHandles ; } h5xvz1tavz
; struct { void * AQHandles ; } bg2hmrytqm ; struct { void * AQHandles ; }
kitvv1ogfk ; int32_T jrgbcdjtfi ; int32_T a12mzriv2h ; int32_T mkzfeqfdkc ;
int32_T gpcsebfwux ; int32_T abkckospcn ; int32_T hrwaz5qj15 ; int32_T
ed2uwfoxh1 ; int32_T epie04ejlp ; int32_T oz5zvqcqhy ; int32_T kw1ocj0aui ;
int32_T ioux0w1lzy ; int32_T bjxuhudysq ; int32_T fm3gxhxp5n ; int32_T
hjbk5bbtdv ; int32_T ohooch5yjb ; int32_T imjbmqw4ie ; int32_T isbv3d54lg ;
int32_T avvlqvx1pa ; int32_T cpcfhzqhzc ; int32_T phx4pnfrbk ; int32_T
iqbuhmbedo ; int32_T ervltxmtte ; int32_T dumqnsm4hi ; int32_T cvhpbpnmdh ;
int32_T lvdva2ah41 ; int32_T hakjia2zlt ; int32_T ld2nplw25p ; int32_T
dviwmljfda ; int32_T en0ge5w3mf ; int32_T nc2zc5olbs ; int32_T cv35dn1sn5 ;
int32_T enby2w2cr3 ; int32_T pzriersj00 ; int32_T phoc2wg3tw ; uint32_T
k2mkxvsau3 ; uint32_T fokpkrhrmo ; struct { int_T PrevIndex ; } oq4omlqh0q ;
boolean_T lz3dxbb31q ; boolean_T en403huoe4 ; } DW ; typedef struct {
rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo ; struct P_ {
FrmWksBus_13687638544677556503 FrmWksBus_13687638544677556503_TU ; real_T
K_FDM ; real_T deltaf ; real_T df ; real_T fIF ; real_T fLO ; real_T fc1 ;
real_T fc2 ; real_T fc3 ; real_T fc_tx ; real_T fm [ 3 ] ; real_T fsub [ 3 ]
; real_T noiseVar ; real_T phi [ 3 ] ; real_T Difference_ICPrevInput ; real_T
Difference_ICPrevInput_gotc4affpc ; real_T Difference_ICPrevInput_edwttnrqhu
; real_T SSBAMModulatorPassband_Ph ; real_T SSBAMModulatorPassband1_Ph ;
real_T SSBAMModulatorPassband2_Ph ; real_T FMModulatorPassband_Ph ; uint32_T
NSampleEnable_ActiveLevel ; uint32_T FMDemodulatorPassband_Ho ; real_T
Tono1_Amp ; real_T Tono1_Bias ; real_T Tono1_Phase ; real_T Tono1_Hsin ;
real_T Tono1_HCos ; real_T Tono1_PSin ; real_T Tono1_PCos ; real_T Tono3_Amp
; real_T Tono3_Bias ; real_T Tono3_Phase ; real_T Tono3_Hsin ; real_T
Tono3_HCos ; real_T Tono3_PSin ; real_T Tono3_PCos ; real_T
Delay_InitialCondition ; real_T DigitalFilter_InitialStates ; real_T
DigitalFilter_Coefficients [ 1001 ] ; real_T Gain_Gain ; real_T
Delay_InitialCondition_ic2jxxipsb ; real_T
DigitalFilter_InitialStates_n23yy1ad5o ; real_T
DigitalFilter_Coefficients_gmzndttfmd [ 1001 ] ; real_T Gain_Gain_igffxefjiw
; real_T Delay_InitialCondition_ojbnb5cjsv ; real_T
DigitalFilter_InitialStates_f5btbrxf3l ; real_T
DigitalFilter_Coefficients_d0rdtttyfy [ 1001 ] ; real_T Gain_Gain_i5aqfjm2ld
; real_T FIRInterpolation_FILTER_COEFF [ 960 ] ; real_T RuidoAWGN_Mean ;
real_T RuidoAWGN_Seed ; real_T SineWave6_Amp ; real_T SineWave6_Bias ; real_T
SineWave6_Hsin ; real_T SineWave6_HCos ; real_T SineWave6_PSin ; real_T
SineWave6_PCos ; real_T LO_Amp ; real_T LO_Bias ; real_T LO_Phase ; real_T
LO_Hsin ; real_T LO_HCos ; real_T LO_PSin ; real_T LO_PCos ; real_T
Gain2_Gain ; real_T Delay_InitialCondition_p4vo4kuras ; real_T
DigitalFilter_InitialStates_enxfi4tgly ; real_T
DigitalFilter_Coefficients_p5yy1nelsp [ 1001 ] ; real_T Gain1_Gain ; real_T
FIRDecimation_FILT [ 260 ] ; real_T Gain4_Gain ; real_T SineWave7_Amp ;
real_T SineWave7_Bias ; real_T SineWave7_Hsin ; real_T SineWave7_HCos ;
real_T SineWave7_PSin ; real_T SineWave7_PCos ; real_T Gain5_Gain ; real_T
SineWave8_Amp ; real_T SineWave8_Bias ; real_T SineWave8_Hsin ; real_T
SineWave8_HCos ; real_T SineWave8_PSin ; real_T SineWave8_PCos ; real_T
Gain3_Gain ; } ; extern const char_T * RT_MEMORY_ALLOCATION_ERROR ; extern B
rtB ; extern DW rtDW ; extern P rtP ; extern mxArray *
mr_Sistema_completo_GetDWork ( ) ; extern void mr_Sistema_completo_SetDWork ( const mxArray * ssDW ) ; extern mxArray * mr_Sistema_completo_GetSimStateDisallowedBlocks ( ) ; extern const rtwCAPI_ModelMappingStaticInfo * Sistema_completo_GetCAPIStaticMap ( void ) ; void raccel_InitializeSubmodelGlobalParams ( void ) ; void raccel_ParamWriterUpdateSubmodelGlobalParams ( void ) ; void raccel_RuntimeUpdateSubmodelGlobalParams ( void ) ; extern SimStruct * rtS ; extern DataMapInfo * rt_dataMapInfoPtr ; extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T tid ) ; void MdlOutputsParameterSampleTime ( SimStruct * const , int_T ) ; void MdlUpdate ( int_T tid ) ; void MdlTerminate ( SimStruct * const ) ; void MdlInitializeSizes ( SimStruct * const ) ; void MdlInitializeSampleTimes ( SimStruct * const ) ; void raccel_register_model ( SimStruct * , ssExecutionInfo * ) ;
#endif
