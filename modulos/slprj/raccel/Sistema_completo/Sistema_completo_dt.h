#include "ext_types.h"
static DataTypeInfo rtDataTypeInfoTable [ ] = { { "real_T" , 0 , 8 } , {
"real32_T" , 1 , 4 } , { "int8_T" , 2 , 1 } , { "uint8_T" , 3 , 1 } , {
"int16_T" , 4 , 2 } , { "uint16_T" , 5 , 2 } , { "int32_T" , 6 , 4 } , {
"uint32_T" , 7 , 4 } , { "boolean_T" , 8 , 1 } , { "fcn_call_T" , 9 , 0 } , {
"int_T" , 10 , 4 } , { "pointer_T" , 11 , 8 } , { "action_T" , 12 , 8 } , {
"timer_uint32_pair_T" , 13 , 8 } , { "physical_connection" , 14 , 8 } , {
"int64_T" , 15 , 8 } , { "uint64_T" , 16 , 8 } , { "pointer_T" , 17 , 8 } , {
"FrmWksBus_13687638544677556503" , 18 , 24 } , {
"struct_QF1iKO2icJOx89eqUXUXeE" , 19 , 256 } , {
"struct_advsopL1F9Ect2zUPC8Nz" , 20 , 272 } , {
"struct_yn90l72wgYLP8sSFlNpSXH" , 21 , 160 } , {
"struct_7MI28d4P3kqN9FtNvHHSNF" , 22 , 288 } , {
"struct_OqFXjLvn5OaL7T2IwklUZH" , 23 , 2128 } , {
"struct_6vjZE1zVXiMs9MoZnA9ZPB" , 24 , 136 } , {
"struct_7jXJOYg0OAOIUP3MY9lBlC" , 25 , 208 } , {
"struct_VnXXuhdATDBKPQ8PPAIORH" , 26 , 7712 } , {
"struct_Ys0g6NvmxKEOD5COiDA9mC" , 27 , 64 } , { "uint64_T" , 28 , 8 } , {
"int64_T" , 29 , 8 } , { "uint_T" , 30 , 32 } , { "char_T" , 31 , 8 } , {
"uchar_T" , 32 , 8 } , { "time_T" , 33 , 8 } } ; static uint_T
rtDataTypeSizes [ ] = { sizeof ( real_T ) , sizeof ( real32_T ) , sizeof ( int8_T ) , sizeof ( uint8_T ) , sizeof ( int16_T ) , sizeof ( uint16_T ) , sizeof ( int32_T ) , sizeof ( uint32_T ) , sizeof ( boolean_T ) , sizeof ( fcn_call_T ) , sizeof ( int_T ) , sizeof ( pointer_T ) , sizeof ( action_T ) , 2 * sizeof ( uint32_T ) , sizeof ( int32_T ) , sizeof ( int64_T ) , sizeof ( uint64_T ) , sizeof ( pointer_T ) , sizeof ( FrmWksBus_13687638544677556503 ) , sizeof ( struct_QF1iKO2icJOx89eqUXUXeE ) , sizeof ( struct_advsopL1F9Ect2zUPC8Nz ) , sizeof ( struct_yn90l72wgYLP8sSFlNpSXH ) , sizeof ( struct_7MI28d4P3kqN9FtNvHHSNF ) , sizeof ( struct_OqFXjLvn5OaL7T2IwklUZH ) , sizeof ( struct_6vjZE1zVXiMs9MoZnA9ZPB ) , sizeof ( struct_7jXJOYg0OAOIUP3MY9lBlC ) , sizeof ( struct_VnXXuhdATDBKPQ8PPAIORH ) , sizeof ( struct_Ys0g6NvmxKEOD5COiDA9mC ) , sizeof ( uint64_T ) , sizeof ( int64_T ) , sizeof ( uint_T ) , sizeof ( char_T ) , sizeof ( uchar_T ) , sizeof ( time_T ) } ; static const char_T * rtDataTypeNames [ ] = { "real_T" , "real32_T" , "int8_T" , "uint8_T" , "int16_T" , "uint16_T" , "int32_T" , "uint32_T" , "boolean_T" , "fcn_call_T" , "int_T" , "pointer_T" , "action_T" , "timer_uint32_pair_T" , "physical_connection" , "int64_T" , "uint64_T" , "pointer_T" , "FrmWksBus_13687638544677556503" , "struct_QF1iKO2icJOx89eqUXUXeE" , "struct_advsopL1F9Ect2zUPC8Nz" , "struct_yn90l72wgYLP8sSFlNpSXH" , "struct_7MI28d4P3kqN9FtNvHHSNF" , "struct_OqFXjLvn5OaL7T2IwklUZH" , "struct_6vjZE1zVXiMs9MoZnA9ZPB" , "struct_7jXJOYg0OAOIUP3MY9lBlC" , "struct_VnXXuhdATDBKPQ8PPAIORH" , "struct_Ys0g6NvmxKEOD5COiDA9mC" , "uint64_T" , "int64_T" , "uint_T" , "char_T" , "uchar_T" , "time_T" } ; static DataTypeTransition rtBTransitions [ ] = { { ( char_T * ) ( & rtB . kighipaduf . re ) , 0 , 1 , 2 } , { ( char_T * ) ( & rtB . g2q11ntlah ) , 0 , 0 , 22 } , { ( char_T * ) ( & rtB . lvjmipbiw2 ) , 8 , 0 , 1 } , { ( char_T * ) ( & rtDW . gxvv3p05n3 [ 0 ] . re ) , 0 , 1 , 1000 } , { ( char_T * ) ( & rtDW . pwgfhsxfno [ 0 ] ) , 0 , 0 , 14508 } , { ( char_T * ) ( & rtDW . om4gj25ddy . AQHandles ) , 11 , 0 , 11 } , { ( char_T * ) ( & rtDW . jrgbcdjtfi ) , 6 , 0 , 34 } , { ( char_T * ) ( & rtDW . k2mkxvsau3 ) , 7 , 0 , 2 } , { ( char_T * ) ( & rtDW . oq4omlqh0q . PrevIndex ) , 10 , 0 , 1 } , { ( char_T * ) ( & rtDW . lz3dxbb31q ) , 8 , 0 , 2 } } ; static DataTypeTransitionTable rtBTransTable = { 10U , rtBTransitions } ; static DataTypeTransition rtPTransitions [ ] = { { ( char_T * ) ( & rtP . FrmWksBus_13687638544677556503_TU ) , 18 , 0 , 1 } , { ( char_T * ) ( & rtP . K_FDM ) , 0 , 0 , 26 } , { ( char_T * ) ( & rtP . NSampleEnable_ActiveLevel ) , 7 , 0 , 2 } , { ( char_T * ) ( & rtP . Tono1_Amp ) , 0 , 0 , 5281 } } ; static DataTypeTransitionTable rtPTransTable = { 4U , rtPTransitions } ;
