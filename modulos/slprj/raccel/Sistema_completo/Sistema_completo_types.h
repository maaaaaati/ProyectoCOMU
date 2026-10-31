#ifndef Sistema_completo_types_h_
#define Sistema_completo_types_h_
#include "rtwtypes.h"
#ifndef DEFINED_TYPEDEF_FOR_FrmWksBus_13687638544677556503_
#define DEFINED_TYPEDEF_FOR_FrmWksBus_13687638544677556503_
typedef struct { real_T * time0 ; real_T * signals0 ; uint32_T numPoints0 ;
uint8_T sl_padding0 [ 4 ] ; } FrmWksBus_13687638544677556503 ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_6vjZE1zVXiMs9MoZnA9ZPB_
#define DEFINED_TYPEDEF_FOR_struct_6vjZE1zVXiMs9MoZnA9ZPB_
typedef struct { real_T firstCoeffMode ; real_T firstCoeffWordLength ; real_T
firstCoeffFracLength ; real_T prodOutputMode ; real_T prodOutputWordLength ;
real_T prodOutputFracLength ; real_T accumMode ; real_T accumWordLength ;
real_T accumFracLength ; real_T outputMode ; real_T outputWordLength ; real_T
outputFracLength ; real_T roundingMode ; real_T overflowMode ; real_T
arithmetic ; real_T inputWordLength ; real_T inputFracLength ; }
struct_6vjZE1zVXiMs9MoZnA9ZPB ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_7MI28d4P3kqN9FtNvHHSNF_
#define DEFINED_TYPEDEF_FOR_struct_7MI28d4P3kqN9FtNvHHSNF_
typedef struct { real_T CoeffSource ; real_T FilterStruct ; real_T SOSCoeffs
[ 24 ] ; real_T ScaleValues [ 5 ] ; real_T OptimizeScaleValues ; real_T
ScaleValueMode ; real_T IC ; real_T ICnum ; real_T ICden ; }
struct_7MI28d4P3kqN9FtNvHHSNF ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_7jXJOYg0OAOIUP3MY9lBlC_
#define DEFINED_TYPEDEF_FOR_struct_7jXJOYg0OAOIUP3MY9lBlC_
typedef struct { real_T CoeffSource ; real_T FilterStruct ; real_T SOSCoeffs
[ 18 ] ; real_T ScaleValues ; real_T OptimizeScaleValues ; real_T
ScaleValueMode ; real_T IC ; real_T ICnum ; real_T ICden ; }
struct_7jXJOYg0OAOIUP3MY9lBlC ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_OqFXjLvn5OaL7T2IwklUZH_
#define DEFINED_TYPEDEF_FOR_struct_OqFXjLvn5OaL7T2IwklUZH_
typedef struct { real_T CoeffSource ; real_T h [ 260 ] ; real_T D ; real_T
filtStruct ; real_T outBufIC ; real_T AllowArbitraryInputLength ; real_T
ParallelChSim ; } struct_OqFXjLvn5OaL7T2IwklUZH ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_QF1iKO2icJOx89eqUXUXeE_
#define DEFINED_TYPEDEF_FOR_struct_QF1iKO2icJOx89eqUXUXeE_
typedef struct { real_T CoeffSource ; real_T FilterStruct ; real_T SOSCoeffs
[ 24 ] ; real_T ScaleValues ; real_T OptimizeScaleValues ; real_T
ScaleValueMode ; real_T IC ; real_T ICnum ; real_T ICden ; }
struct_QF1iKO2icJOx89eqUXUXeE ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_VnXXuhdATDBKPQ8PPAIORH_
#define DEFINED_TYPEDEF_FOR_struct_VnXXuhdATDBKPQ8PPAIORH_
typedef struct { real_T CoeffSource ; real_T h [ 960 ] ; real_T L ; real_T
outBufIC ; real_T ParallelChSim ; } struct_VnXXuhdATDBKPQ8PPAIORH ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_Ys0g6NvmxKEOD5COiDA9mC_
#define DEFINED_TYPEDEF_FOR_struct_Ys0g6NvmxKEOD5COiDA9mC_
typedef struct { real_T accumMode ; real_T accumWordLength ; real_T
accumFracLength ; real_T outputMode ; real_T outputWordLength ; real_T
outputFracLength ; real_T roundingMode ; real_T overflowMode ; }
struct_Ys0g6NvmxKEOD5COiDA9mC ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_advsopL1F9Ect2zUPC8Nz_
#define DEFINED_TYPEDEF_FOR_struct_advsopL1F9Ect2zUPC8Nz_
typedef struct { real_T outputMode ; real_T outputWordLength ; real_T
outputFracLength ; real_T accumMode ; real_T accumWordLength ; real_T
accumFracLength ; real_T prodOutputMode ; real_T prodOutputWordLength ;
real_T prodOutputFracLength ; real_T memoryMode ; real_T memoryWordLength ;
real_T memoryFracLength ; real_T firstCoeffMode ; real_T firstCoeffWordLength
; real_T firstCoeffFracLength ; real_T roundingMode ; real_T overflowMode ;
real_T inputWordLength ; real_T inputFracLength ; real_T arithmetic ; real_T
denAccumFracLength ; real_T denProdOutputFracLength ; real_T
secondCoeffFracLength ; real_T scaleValueFracLength ; real_T
denStateFracLength ; real_T stageInputMode ; real_T stageInputWordLength ;
real_T stageInputFracLength ; real_T stageOutputMode ; real_T
stageOutputWordLength ; real_T stageOutputFracLength ; real_T
multiplicandMode ; real_T multiplicandWordLength ; real_T
multiplicandFracLength ; } struct_advsopL1F9Ect2zUPC8Nz ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_yn90l72wgYLP8sSFlNpSXH_
#define DEFINED_TYPEDEF_FOR_struct_yn90l72wgYLP8sSFlNpSXH_
typedef struct { real_T CoeffSource ; real_T FilterStruct ; real_T SOSCoeffs
[ 12 ] ; real_T ScaleValues ; real_T OptimizeScaleValues ; real_T
ScaleValueMode ; real_T IC ; real_T ICnum ; real_T ICden ; }
struct_yn90l72wgYLP8sSFlNpSXH ;
#endif
#ifndef SS_UINT64
#define SS_UINT64 28
#endif
#ifndef SS_INT64
#define SS_INT64 29
#endif
typedef struct P_ P ;
#endif
