###########################################################################
## Makefile generated for component 'Sistema_completo'. 
## 
## Makefile     : Sistema_completo.mk
## Generated on : Sat Oct 31 15:10:13 2026
## Final product: .\Sistema_completo.dll
## Product type : shared library
## 
###########################################################################

###########################################################################
## MACROS
###########################################################################

# Macro Descriptions:
# PRODUCT_NAME            Name of the system to build
# MAKEFILE                Name of this makefile
# COMPILER_COMMAND_FILE   Compiler command listing model reference header paths
# CMD_FILE                Command file
# DEF_FILE                Definition file

PRODUCT_NAME              = Sistema_completo
MAKEFILE                  = Sistema_completo.mk
MATLAB_ROOT               = C:\PROGRA~1\MATLAB\R2026b
MATLAB_BIN                = C:\PROGRA~1\MATLAB\R2026b\bin
MATLAB_ARCH_BIN           = $(MATLAB_BIN)\win64
START_DIR                 = C:\Users\matia\Downloads\ProyectoCOMU\ProyectoCOMU\modulos
SOLVER                    = 
SOLVER_OBJ                = 
CLASSIC_INTERFACE         = 1
TGT_FCN_LIB               = ISO_C
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 0
RELATIVE_PATH_TO_ANCHOR   = ..\..\..
COMPILER_COMMAND_FILE     = Sistema_completo_comp.rsp
CMD_FILE                  = Sistema_completo.rsp
DEF_FILE                  = $(PRODUCT_NAME).def
C_STANDARD_OPTS           = 
CPP_STANDARD_OPTS         = 
NODEBUG                   = 1

###########################################################################
## TOOLCHAIN SPECIFICATIONS
###########################################################################

# Toolchain Name:          Microsoft Visual C++ 2022 v17.0 | nmake (64-bit Windows)
# Supported Version(s):    17.0
# ToolchainInfo Version:   2026b
# Specification Revision:  1.0
# 
#-------------------------------------------
# Macros assumed to be defined elsewhere
#-------------------------------------------

# C_STANDARD_OPTS
# CPP_STANDARD_OPTS
# NODEBUG
# cvarsdll
# cvarsmt
# conlibsmt
# ldebug
# conflags
# cflags

#-----------
# MACROS
#-----------

MW_EXTERNLIB_DIR    = $(MATLAB_ROOT)\extern\lib\win64\microsoft
MW_LIB_DIR          = $(MATLAB_ROOT)\lib\win64
CPU                 = AMD64
APPVER              = 5.02
CVARSFLAG           = $(cvarsmt)
CFLAGS_ADDITIONAL   = -D_CRT_SECURE_NO_WARNINGS
CPPFLAGS_ADDITIONAL = -EHs -D_CRT_SECURE_NO_WARNINGS /wd4251 /Zc:__cplusplus
LIBS_TOOLCHAIN      = $(conlibs)

TOOLCHAIN_SRCS = 
TOOLCHAIN_INCS = 
TOOLCHAIN_LIBS = 

#------------------------
# BUILD TOOL COMMANDS
#------------------------

# C Compiler: Microsoft Visual C Compiler
CC = cl

# Linker: Microsoft Visual C Linker
LD = link

# C++ Compiler: Microsoft Visual C++ Compiler
CPP = cl

# C++ Linker: Microsoft Visual C++ Linker
CPP_LD = link

# Archiver: Microsoft Visual C/C++ Archiver
AR = lib

# MEX Tool: MEX Tool
MEX_PATH = $(MATLAB_ARCH_BIN)
MEX = "$(MEX_PATH)\mex"

# Download: Download
DOWNLOAD =

# Execute: Execute
EXECUTE = $(PRODUCT)

# Builder: NMAKE Utility
MAKE = nmake


#-------------------------
# Directives/Utilities
#-------------------------

CDEBUG              = -Z7
C_OUTPUT_FLAG       = -Fo
LDDEBUG             = /DEBUG
OUTPUT_FLAG         = -out:
CPPDEBUG            = -Z7
CPP_OUTPUT_FLAG     = -Fo
CPPLDDEBUG          = /DEBUG
OUTPUT_FLAG         = -out:
ARDEBUG             =
STATICLIB_OUTPUT_FLAG = -out:
MEX_DEBUG           = -g
RM                  = @del
ECHO                = @echo
MV                  = @ren
RUN                 = @cmd /C

#----------------------------------------
# "Faster Builds" Build Configuration
#----------------------------------------

MEX_CPPFLAGS         =
MEX_CPPLDFLAGS       =
MEX_CFLAGS           =
MEX_LDFLAGS          =



#---------------------------
# Model-Specific Options
#---------------------------

CFLAGS = $(cflags) $(cvarsdll) $(CFLAGS_ADDITIONAL) $(C_STANDARD_OPTS) /Od /Oy-

LDFLAGS = $(ldebug) $(conflags) $(LIBS_TOOLCHAIN)

SHAREDLIB_LDFLAGS = $(ldebug) $(conflags) $(LIBS_TOOLCHAIN) -dll -def:$(DEF_FILE)

CPPFLAGS = /TP $(cflags) $(cvarsdll) $(CPPFLAGS_ADDITIONAL) $(CPP_STANDARD_OPTS) /Od /Oy-

CPP_LDFLAGS = $(ldebug) $(conflags) $(LIBS_TOOLCHAIN)

CPP_SHAREDLIB_LDFLAGS = $(ldebug) $(conflags) $(LIBS_TOOLCHAIN) -dll -def:$(DEF_FILE)

ARFLAGS = /nologo

DOWNLOAD_FLAGS = 

EXECUTE_FLAGS = 

MAKE_FLAGS = -f $(MAKEFILE)

###########################################################################
## OUTPUT INFO
###########################################################################

PRODUCT = .\Sistema_completo.dll
PRODUCT_TYPE = "shared library"
BUILD_TYPE = "Shared Library Target"

###########################################################################
## INCLUDE PATHS
###########################################################################

INCLUDES_BUILDINFO = 

INCLUDES = $(INCLUDES_BUILDINFO)

###########################################################################
## DEFINES
###########################################################################

DEFINES_BUILD_ARGS = -DCLASSIC_INTERFACE=1 -DALLOCATIONFCN=0 -DONESTEPFCN=0 -DTERMFCN=1 -DMULTI_INSTANCE_CODE=0 -DINTEGER_CODE=0
DEFINES_CUSTOM = -DEXT_MODE -DIS_RAPID_ACCEL
DEFINES_OPTS = -DTGTCONN -DIS_SIM_TARGET -DENABLE_SLEXEC_SSBRIDGE=1 -DNRT -DRSIM_PARAMETER_LOADING -DRSIM_WITH_SL_SOLVER -DUSE_LOCALHOST -DMODEL_HAS_DYNAMICALLY_LOADED_SFCNS=0 -DON_TARGET_WAIT_FOR_START=0 -DTID01EQ=0
DEFINES_STANDARD = -DMODEL=Sistema_completo -DNUMST=3 -DNCSTATES=0 -DHAVESTDIO

DEFINES = $(DEFINES_BUILD_ARGS) $(DEFINES_CUSTOM) $(DEFINES_OPTS) $(DEFINES_STANDARD)

###########################################################################
## SOURCE FILES
###########################################################################

SRCS = $(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo.c $(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo_capi.c $(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo_data.c $(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo_tgtconn.c $(START_DIR)\slprj\raccel\Sistema_completo\rt_nonfinite.c $(MATLAB_ROOT)\rtw\c\raccel\raccel_main.c $(MATLAB_ROOT)\rtw\c\raccel\raccel_sup.c $(MATLAB_ROOT)\rtw\c\raccel\raccel_mat.c $(MATLAB_ROOT)\simulink\include\simulink_solver_api.c $(MATLAB_ROOT)\rtw\c\src\rapid\raccel_utils.c $(MATLAB_ROOT)\rtw\c\src\rapid\slsa_sim_common_utils.c $(MATLAB_ROOT)\rtw\c\src\ext_mode\common\ext_svr.c $(MATLAB_ROOT)\rtw\c\src\ext_mode\common\updown.c $(MATLAB_ROOT)\rtw\c\src\ext_mode\common\ext_work.c $(MATLAB_ROOT)\rtw\c\src\ext_mode\common\rtiostream_interface.c $(MATLAB_ROOT)\toolbox\coder\rtiostream\src\rtiostreamtcpip\rtiostream_tcpip.c $(MATLAB_ROOT)\toolbox\coder\rtiostream\src\utils\rtiostream_utils.c

ALL_SRCS = $(SRCS)

###########################################################################
## OBJECTS
###########################################################################

OBJS = Sistema_completo.obj Sistema_completo_capi.obj Sistema_completo_data.obj Sistema_completo_tgtconn.obj rt_nonfinite.obj raccel_main.obj raccel_sup.obj raccel_mat.obj simulink_solver_api.obj raccel_utils.obj slsa_sim_common_utils.obj ext_svr.obj updown.obj ext_work.obj rtiostream_interface.obj rtiostream_tcpip.obj rtiostream_utils.obj

ALL_OBJS = $(OBJS)

###########################################################################
## PREBUILT OBJECT FILES
###########################################################################

PREBUILT_OBJS = 

###########################################################################
## LIBRARIES
###########################################################################

LIBS = 

###########################################################################
## SYSTEM LIBRARIES
###########################################################################

SYSTEM_LIBS = /LIBPATH:"$(MATLAB_ROOT)\extern\lib\win64\microsoft" "$(MW_EXTERNLIB_DIR)\libmwdsp_halidesim.lib" "$(MW_LIB_DIR)\libmwipp.lib" "$(MW_EXTERNLIB_DIR)\libmwipp.lib" "$(MW_EXTERNLIB_DIR)\libut.lib" "$(MW_EXTERNLIB_DIR)\libmx.lib" "$(MW_EXTERNLIB_DIR)\libmex.lib" "$(MW_EXTERNLIB_DIR)\libmat.lib" "$(MW_EXTERNLIB_DIR)\libmwmathutil.lib" "$(MW_EXTERNLIB_DIR)\libmwslsa_engine.lib" "$(MW_EXTERNLIB_DIR)\libmwslexec_simbridge.lib" "$(MW_EXTERNLIB_DIR)\libmwsl_fileio.lib" "$(MW_EXTERNLIB_DIR)\libmwsigstream.lib" "$(MW_EXTERNLIB_DIR)\libmwsl_AsyncioQueue.lib" "$(MW_EXTERNLIB_DIR)\libmwsl_services.lib" "$(MW_EXTERNLIB_DIR)\libmwsdi_raccel.lib" "$(MW_EXTERNLIB_DIR)\libmwcoder_target_services.lib" "$(MW_EXTERNLIB_DIR)\libmwcoder_ParamTuningTgtAppSvc.lib" "$(MW_EXTERNLIB_DIR)\libmwslpointerutil.lib" "$(MW_EXTERNLIB_DIR)\libmwfoundation_i18n_init_c_api.lib" "$(MW_EXTERNLIB_DIR)\libmwsimulinkcoder_capi.lib" "$(MW_EXTERNLIB_DIR)\libmwsl_simtarget_instrumentation.lib" "$(MW_EXTERNLIB_DIR)\libfixedpoint.lib" "$(MW_EXTERNLIB_DIR)\libmwslexec_simlog.lib" "$(MW_EXTERNLIB_DIR)\libmwstringutil.lib"

###########################################################################
## ADDITIONAL TOOLCHAIN FLAGS
###########################################################################

#---------------
# C Compiler
#---------------

CFLAGS_ = -utf-8 /wd4459
CFLAGS_BASIC = $(DEFINES) @$(COMPILER_COMMAND_FILE)

CFLAGS = $(CFLAGS) $(CFLAGS_) $(CFLAGS_BASIC)

#-----------
# Linker
#-----------

LDFLAGS_ = -LARGEADDRESSAWARE

LDFLAGS = $(LDFLAGS) $(LDFLAGS_)

#--------------------------
# Shared Library Linker
#--------------------------

SHAREDLIB_LDFLAGS_ = -LARGEADDRESSAWARE

SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS) $(SHAREDLIB_LDFLAGS_)

#-----------------
# C++ Compiler
#-----------------

CPPFLAGS_ = -utf-8 /wd4459
CPPFLAGS_BASIC = $(DEFINES) @$(COMPILER_COMMAND_FILE)

CPPFLAGS = $(CPPFLAGS) $(CPPFLAGS_) $(CPPFLAGS_BASIC)

#---------------
# C++ Linker
#---------------

CPP_LDFLAGS_ = -LARGEADDRESSAWARE

CPP_LDFLAGS = $(CPP_LDFLAGS) $(CPP_LDFLAGS_)

#------------------------------
# C++ Shared Library Linker
#------------------------------

CPP_SHAREDLIB_LDFLAGS_ = -LARGEADDRESSAWARE

CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS) $(CPP_SHAREDLIB_LDFLAGS_)

###########################################################################
## INLINED COMMANDS
###########################################################################


!include $(MATLAB_ROOT)\rtw\c\tools\vcdefs.mak


###########################################################################
## PHONY TARGETS
###########################################################################

.PHONY : all build clean info prebuild download execute set_environment_variables


all : build
	@cmd /C @echo ### Successfully generated all binary outputs.


build : set_environment_variables prebuild $(PRODUCT)


prebuild : 


download : $(PRODUCT)


execute : download


set_environment_variables : 
	@set INCLUDE=$(INCLUDES);$(INCLUDE)
	@set LIB=$(LIB)


###########################################################################
## FINAL TARGET
###########################################################################

#----------------------------------------
# Create a shared library
#----------------------------------------

$(PRODUCT) : $(OBJS) $(PREBUILT_OBJS)
	@cmd /C @echo ### Creating shared library "$(PRODUCT)" ...
	$(LD) $(SHAREDLIB_LDFLAGS) -out:$(PRODUCT) @$(CMD_FILE) $(SYSTEM_LIBS) $(TOOLCHAIN_LIBS)
	@cmd /C @echo ### Created: "$(PRODUCT)"


###########################################################################
## INTERMEDIATE TARGETS
###########################################################################

#---------------------
# SOURCE-TO-OBJECT
#---------------------

.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(RELATIVE_PATH_TO_ANCHOR)}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(RELATIVE_PATH_TO_ANCHOR)}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(RELATIVE_PATH_TO_ANCHOR)}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(RELATIVE_PATH_TO_ANCHOR)}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\comm\src\sfun}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\comm\src\sfun}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\comm\src\sfun}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\comm\src\sfun}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(START_DIR)}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(START_DIR)}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(START_DIR)}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(START_DIR)}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(START_DIR)\slprj\raccel\Sistema_completo}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(START_DIR)\slprj\raccel\Sistema_completo}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(START_DIR)\slprj\raccel\Sistema_completo}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(START_DIR)\slprj\raccel\Sistema_completo}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\rtw\c\src}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\rtw\c\src}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\rtw\c\src}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\rtw\c\src}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\simulink\src}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\simulink\src}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\simulink\src}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\simulink\src}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\simulink\blocks\src}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\simulink\blocks\src}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\simulink\blocks\src}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\simulink\blocks\src}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\rtw\c\src\ext_mode\common}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\rtw\c\src\ext_mode\common}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\rtw\c\src\ext_mode\common}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\rtw\c\src\ext_mode\common}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\rtiostreamtcpip}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\rtiostreamtcpip}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\rtiostreamtcpip}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\rtiostreamtcpip}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\utils}.c.obj:
	$(CC) $(CFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\utils}.cpp.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\utils}.cc.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


{$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\utils}.cxx.obj:
	$(CPP) $(CPPFLAGS) -Fo"$@" "$<"


Sistema_completo.obj : "$(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo.c"


Sistema_completo_capi.obj : "$(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo_capi.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo_capi.c"


Sistema_completo_data.obj : "$(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo_data.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo_data.c"


Sistema_completo_tgtconn.obj : "$(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo_tgtconn.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(START_DIR)\slprj\raccel\Sistema_completo\Sistema_completo_tgtconn.c"


rt_nonfinite.obj : "$(START_DIR)\slprj\raccel\Sistema_completo\rt_nonfinite.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(START_DIR)\slprj\raccel\Sistema_completo\rt_nonfinite.c"


raccel_main.obj : "$(MATLAB_ROOT)\rtw\c\raccel\raccel_main.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\rtw\c\raccel\raccel_main.c"


raccel_sup.obj : "$(MATLAB_ROOT)\rtw\c\raccel\raccel_sup.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\rtw\c\raccel\raccel_sup.c"


raccel_mat.obj : "$(MATLAB_ROOT)\rtw\c\raccel\raccel_mat.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\rtw\c\raccel\raccel_mat.c"


simulink_solver_api.obj : "$(MATLAB_ROOT)\simulink\include\simulink_solver_api.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\simulink\include\simulink_solver_api.c"


raccel_utils.obj : "$(MATLAB_ROOT)\rtw\c\src\rapid\raccel_utils.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\rtw\c\src\rapid\raccel_utils.c"


slsa_sim_common_utils.obj : "$(MATLAB_ROOT)\rtw\c\src\rapid\slsa_sim_common_utils.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\rtw\c\src\rapid\slsa_sim_common_utils.c"


ext_svr.obj : "$(MATLAB_ROOT)\rtw\c\src\ext_mode\common\ext_svr.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\rtw\c\src\ext_mode\common\ext_svr.c"


updown.obj : "$(MATLAB_ROOT)\rtw\c\src\ext_mode\common\updown.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\rtw\c\src\ext_mode\common\updown.c"


ext_work.obj : "$(MATLAB_ROOT)\rtw\c\src\ext_mode\common\ext_work.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\rtw\c\src\ext_mode\common\ext_work.c"


rtiostream_interface.obj : "$(MATLAB_ROOT)\rtw\c\src\ext_mode\common\rtiostream_interface.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\rtw\c\src\ext_mode\common\rtiostream_interface.c"


rtiostream_tcpip.obj : "$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\rtiostreamtcpip\rtiostream_tcpip.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\rtiostreamtcpip\rtiostream_tcpip.c"


rtiostream_utils.obj : "$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\utils\rtiostream_utils.c"
	$(CC) $(CFLAGS) -Fo"$@" "$(MATLAB_ROOT)\toolbox\coder\rtiostream\src\utils\rtiostream_utils.c"


###########################################################################
## DEPENDENCIES
###########################################################################

$(ALL_OBJS) : rtw_proj.tmw $(COMPILER_COMMAND_FILE) $(MAKEFILE)


###########################################################################
## MISCELLANEOUS TARGETS
###########################################################################

info : 
	@cmd /C @echo ### PRODUCT = $(PRODUCT)
	@cmd /C @echo ### PRODUCT_TYPE = $(PRODUCT_TYPE)
	@cmd /C @echo ### BUILD_TYPE = $(BUILD_TYPE)
	@cmd /C @echo ### INCLUDES = $(INCLUDES)
	@cmd /C @echo ### DEFINES = $(DEFINES)
	@cmd /C @echo ### ALL_SRCS = $(ALL_SRCS)
	@cmd /C @echo ### ALL_OBJS = $(ALL_OBJS)
	@cmd /C @echo ### LIBS = $(LIBS)
	@cmd /C @echo ### MODELREF_LIBS = $(MODELREF_LIBS)
	@cmd /C @echo ### SYSTEM_LIBS = $(SYSTEM_LIBS)
	@cmd /C @echo ### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)
	@cmd /C @echo ### CFLAGS = $(CFLAGS)
	@cmd /C @echo ### LDFLAGS = $(LDFLAGS)
	@cmd /C @echo ### SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS)
	@cmd /C @echo ### CPPFLAGS = $(CPPFLAGS)
	@cmd /C @echo ### CPP_LDFLAGS = $(CPP_LDFLAGS)
	@cmd /C @echo ### CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS)
	@cmd /C @echo ### ARFLAGS = $(ARFLAGS)
	@cmd /C @echo ### MEX_CFLAGS = $(MEX_CFLAGS)
	@cmd /C @echo ### MEX_CPPFLAGS = $(MEX_CPPFLAGS)
	@cmd /C @echo ### MEX_LDFLAGS = $(MEX_LDFLAGS)
	@cmd /C @echo ### MEX_CPPLDFLAGS = $(MEX_CPPLDFLAGS)
	@cmd /C @echo ### DOWNLOAD_FLAGS = $(DOWNLOAD_FLAGS)
	@cmd /C @echo ### EXECUTE_FLAGS = $(EXECUTE_FLAGS)
	@cmd /C @echo ### MAKE_FLAGS = $(MAKE_FLAGS)


clean : 
	$(ECHO) "### Deleting all derived files ..."
	@if exist $(PRODUCT) $(RM) $(PRODUCT)
	$(RM) $(ALL_OBJS)
	$(ECHO) "### Deleted all derived files."


