#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TrueBeer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TrueBeer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/BumperService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/DeadBot.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ES_Main.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/EventChecker.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/FindPath.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseShark.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseSideTapeService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SecondTower.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/Service.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SideTapeService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TapeService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TheBrain.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerSearch.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerShark.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TrackWireService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/motors.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/shooting.c C:/ECE118/src/AD.c C:/ECE118/src/BOARD.c C:/ECE118/src/ES_CheckEvents.c C:/ECE118/src/ES_Framework.c C:/ECE118/src/ES_KeyboardInput.c C:/ECE118/src/ES_PostList.c C:/ECE118/src/ES_Queue.c C:/ECE118/src/ES_TattleTale.c C:/ECE118/src/ES_Timers.c C:/ECE118/src/IO_Ports.c C:/ECE118/src/LED.c C:/ECE118/src/RC_Servo.c C:/ECE118/src/pwm.c C:/ECE118/src/serial.c C:/ECE118/src/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1329943840/BumperService.o ${OBJECTDIR}/_ext/1329943840/DeadBot.o ${OBJECTDIR}/_ext/1329943840/ES_Main.o ${OBJECTDIR}/_ext/1329943840/EventChecker.o ${OBJECTDIR}/_ext/1329943840/FindPath.o ${OBJECTDIR}/_ext/1329943840/ReverseShark.o ${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o ${OBJECTDIR}/_ext/1329943840/SecondTower.o ${OBJECTDIR}/_ext/1329943840/Service.o ${OBJECTDIR}/_ext/1329943840/SideTapeService.o ${OBJECTDIR}/_ext/1329943840/TapeService.o ${OBJECTDIR}/_ext/1329943840/TheBrain.o ${OBJECTDIR}/_ext/1329943840/TowerSearch.o ${OBJECTDIR}/_ext/1329943840/TowerShark.o ${OBJECTDIR}/_ext/1329943840/TrackWireService.o ${OBJECTDIR}/_ext/1329943840/motors.o ${OBJECTDIR}/_ext/1329943840/shooting.o ${OBJECTDIR}/_ext/1975241074/AD.o ${OBJECTDIR}/_ext/1975241074/BOARD.o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o ${OBJECTDIR}/_ext/1975241074/LED.o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o ${OBJECTDIR}/_ext/1975241074/pwm.o ${OBJECTDIR}/_ext/1975241074/serial.o ${OBJECTDIR}/_ext/1975241074/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1329943840/BumperService.o.d ${OBJECTDIR}/_ext/1329943840/DeadBot.o.d ${OBJECTDIR}/_ext/1329943840/ES_Main.o.d ${OBJECTDIR}/_ext/1329943840/EventChecker.o.d ${OBJECTDIR}/_ext/1329943840/FindPath.o.d ${OBJECTDIR}/_ext/1329943840/ReverseShark.o.d ${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o.d ${OBJECTDIR}/_ext/1329943840/SecondTower.o.d ${OBJECTDIR}/_ext/1329943840/Service.o.d ${OBJECTDIR}/_ext/1329943840/SideTapeService.o.d ${OBJECTDIR}/_ext/1329943840/TapeService.o.d ${OBJECTDIR}/_ext/1329943840/TheBrain.o.d ${OBJECTDIR}/_ext/1329943840/TowerSearch.o.d ${OBJECTDIR}/_ext/1329943840/TowerShark.o.d ${OBJECTDIR}/_ext/1329943840/TrackWireService.o.d ${OBJECTDIR}/_ext/1329943840/motors.o.d ${OBJECTDIR}/_ext/1329943840/shooting.o.d ${OBJECTDIR}/_ext/1975241074/AD.o.d ${OBJECTDIR}/_ext/1975241074/BOARD.o.d ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d ${OBJECTDIR}/_ext/1975241074/LED.o.d ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d ${OBJECTDIR}/_ext/1975241074/pwm.o.d ${OBJECTDIR}/_ext/1975241074/serial.o.d ${OBJECTDIR}/_ext/1975241074/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1329943840/BumperService.o ${OBJECTDIR}/_ext/1329943840/DeadBot.o ${OBJECTDIR}/_ext/1329943840/ES_Main.o ${OBJECTDIR}/_ext/1329943840/EventChecker.o ${OBJECTDIR}/_ext/1329943840/FindPath.o ${OBJECTDIR}/_ext/1329943840/ReverseShark.o ${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o ${OBJECTDIR}/_ext/1329943840/SecondTower.o ${OBJECTDIR}/_ext/1329943840/Service.o ${OBJECTDIR}/_ext/1329943840/SideTapeService.o ${OBJECTDIR}/_ext/1329943840/TapeService.o ${OBJECTDIR}/_ext/1329943840/TheBrain.o ${OBJECTDIR}/_ext/1329943840/TowerSearch.o ${OBJECTDIR}/_ext/1329943840/TowerShark.o ${OBJECTDIR}/_ext/1329943840/TrackWireService.o ${OBJECTDIR}/_ext/1329943840/motors.o ${OBJECTDIR}/_ext/1329943840/shooting.o ${OBJECTDIR}/_ext/1975241074/AD.o ${OBJECTDIR}/_ext/1975241074/BOARD.o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o ${OBJECTDIR}/_ext/1975241074/LED.o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o ${OBJECTDIR}/_ext/1975241074/pwm.o ${OBJECTDIR}/_ext/1975241074/serial.o ${OBJECTDIR}/_ext/1975241074/timers.o

# Source Files
SOURCEFILES=C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/BumperService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/DeadBot.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ES_Main.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/EventChecker.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/FindPath.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseShark.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseSideTapeService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SecondTower.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/Service.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SideTapeService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TapeService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TheBrain.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerSearch.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerShark.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TrackWireService.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/motors.c C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/shooting.c C:/ECE118/src/AD.c C:/ECE118/src/BOARD.c C:/ECE118/src/ES_CheckEvents.c C:/ECE118/src/ES_Framework.c C:/ECE118/src/ES_KeyboardInput.c C:/ECE118/src/ES_PostList.c C:/ECE118/src/ES_Queue.c C:/ECE118/src/ES_TattleTale.c C:/ECE118/src/ES_Timers.c C:/ECE118/src/IO_Ports.c C:/ECE118/src/LED.c C:/ECE118/src/RC_Servo.c C:/ECE118/src/pwm.c C:/ECE118/src/serial.c C:/ECE118/src/timers.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/TrueBeer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\ECE118\bootloader320.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1329943840/BumperService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/BumperService.c  .generated_files/flags/default/1e2fbc71de0fa519df2a55c22be2c5ca2845408e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/BumperService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/BumperService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/BumperService.o.d" -o ${OBJECTDIR}/_ext/1329943840/BumperService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/BumperService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/DeadBot.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/DeadBot.c  .generated_files/flags/default/55988f7278f4971f75caaf698d0ce8ed1e2814be .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/DeadBot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/DeadBot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/DeadBot.o.d" -o ${OBJECTDIR}/_ext/1329943840/DeadBot.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/DeadBot.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/ES_Main.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ES_Main.c  .generated_files/flags/default/5a8b8205235a580a295ff498350b1acb4c9e0ba6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/ES_Main.o.d" -o ${OBJECTDIR}/_ext/1329943840/ES_Main.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/EventChecker.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/EventChecker.c  .generated_files/flags/default/b72efde60577bfc0e2caccad2ac03e8494df4a70 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/EventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/EventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/EventChecker.o.d" -o ${OBJECTDIR}/_ext/1329943840/EventChecker.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/EventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/FindPath.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/FindPath.c  .generated_files/flags/default/91fe5cc108962a63b36580d319087b2901b709f0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/FindPath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/FindPath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/FindPath.o.d" -o ${OBJECTDIR}/_ext/1329943840/FindPath.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/FindPath.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/ReverseShark.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseShark.c  .generated_files/flags/default/c01c8fa09cc6a0d728d48f1ee65fbf65c31ccb4f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ReverseShark.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ReverseShark.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/ReverseShark.o.d" -o ${OBJECTDIR}/_ext/1329943840/ReverseShark.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseShark.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseSideTapeService.c  .generated_files/flags/default/a42f143458a2b548ddca95028755bfec5da2d0f6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o.d" -o ${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseSideTapeService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/SecondTower.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SecondTower.c  .generated_files/flags/default/8d49d8703bbf6d9e0a28ed6b73b20c9a0a00181 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/SecondTower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/SecondTower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/SecondTower.o.d" -o ${OBJECTDIR}/_ext/1329943840/SecondTower.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SecondTower.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/Service.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/Service.c  .generated_files/flags/default/1316cedae9a4e6bbe86b1f700503ae2b89204fc0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/Service.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/Service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/Service.o.d" -o ${OBJECTDIR}/_ext/1329943840/Service.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/Service.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/SideTapeService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SideTapeService.c  .generated_files/flags/default/81a07201bf9556df037b7f4db0aede181d59f062 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/SideTapeService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/SideTapeService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/SideTapeService.o.d" -o ${OBJECTDIR}/_ext/1329943840/SideTapeService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SideTapeService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TapeService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TapeService.c  .generated_files/flags/default/b3eb116489471cb15792ebf3fd6945e048ed643d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TapeService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TapeService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TapeService.o.d" -o ${OBJECTDIR}/_ext/1329943840/TapeService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TapeService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TheBrain.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TheBrain.c  .generated_files/flags/default/aaa54c2dffcaf0a62d802dcbc4dff455d3135b4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TheBrain.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TheBrain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TheBrain.o.d" -o ${OBJECTDIR}/_ext/1329943840/TheBrain.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TheBrain.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TowerSearch.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerSearch.c  .generated_files/flags/default/fa384c95dc815e8e11c7a7668a89081459dc019d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TowerSearch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TowerSearch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TowerSearch.o.d" -o ${OBJECTDIR}/_ext/1329943840/TowerSearch.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerSearch.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TowerShark.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerShark.c  .generated_files/flags/default/8c4d7283bf2c3bc97693774a19d217ec07322fd .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TowerShark.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TowerShark.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TowerShark.o.d" -o ${OBJECTDIR}/_ext/1329943840/TowerShark.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerShark.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TrackWireService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TrackWireService.c  .generated_files/flags/default/427012b5f00b4979876c612dc15af4762af9f20a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TrackWireService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TrackWireService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TrackWireService.o.d" -o ${OBJECTDIR}/_ext/1329943840/TrackWireService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TrackWireService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/motors.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/motors.c  .generated_files/flags/default/91c8a76a23d3d564c70903bcb9a8446e8e1bc564 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/motors.o.d" -o ${OBJECTDIR}/_ext/1329943840/motors.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/motors.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/shooting.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/shooting.c  .generated_files/flags/default/fee2f998edcbdf862b779e5ae7296f765f86a4d3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/shooting.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/shooting.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/shooting.o.d" -o ${OBJECTDIR}/_ext/1329943840/shooting.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/shooting.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/AD.o: C:/ECE118/src/AD.c  .generated_files/flags/default/b83ac87ac5ee931c0bcd996cbf9069139e420bab .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/AD.o.d" -o ${OBJECTDIR}/_ext/1975241074/AD.o C:/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/BOARD.o: C:/ECE118/src/BOARD.c  .generated_files/flags/default/1af0121cac2865d1f936de58242f0c6d2621e6e0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/BOARD.o.d" -o ${OBJECTDIR}/_ext/1975241074/BOARD.o C:/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o: C:/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/4a37617002b1466beeaf405ede82ad974d0e0025 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o C:/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Framework.o: C:/ECE118/src/ES_Framework.c  .generated_files/flags/default/c6fe95b8509df7a82a9b5e9e1165f4a12c95ceed .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o C:/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o: C:/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/b21e7d3a4f5558f8d15b64b72a0d59c673bbc6db .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o C:/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_PostList.o: C:/ECE118/src/ES_PostList.c  .generated_files/flags/default/b6ab1a11f71cf05342a0630546ecabb73b1f0d19 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o C:/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Queue.o: C:/ECE118/src/ES_Queue.c  .generated_files/flags/default/e1d858cf8f4d43f44e42a00c988d103d1a05f366 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o C:/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o: C:/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/3cbd534673f5ee45cdfc005be1ef3e5a73ba11a7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o C:/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Timers.o: C:/ECE118/src/ES_Timers.c  .generated_files/flags/default/42890f4a338d885d85faad22b4a96237cd1c57b0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o C:/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/IO_Ports.o: C:/ECE118/src/IO_Ports.c  .generated_files/flags/default/c4b8247d8abb07a8e2b63c68e085249d5eea9877 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o C:/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/LED.o: C:/ECE118/src/LED.c  .generated_files/flags/default/9b31b7b5aa283c504646b6ec2d4feb12110f4a84 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/LED.o.d" -o ${OBJECTDIR}/_ext/1975241074/LED.o C:/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/RC_Servo.o: C:/ECE118/src/RC_Servo.c  .generated_files/flags/default/d2031c497d56d01316bf3166662c4081da130016 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o C:/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/pwm.o: C:/ECE118/src/pwm.c  .generated_files/flags/default/f8f4b23303b7876ffa9718d2b7df6168b200c76c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/pwm.o.d" -o ${OBJECTDIR}/_ext/1975241074/pwm.o C:/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/serial.o: C:/ECE118/src/serial.c  .generated_files/flags/default/2aad57aa5032351ff34afc5f46b3904509a672d4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/serial.o.d" -o ${OBJECTDIR}/_ext/1975241074/serial.o C:/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/timers.o: C:/ECE118/src/timers.c  .generated_files/flags/default/cde64ba4b807a28ef67fb74585893dfee67c46d0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/timers.o C:/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1329943840/BumperService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/BumperService.c  .generated_files/flags/default/11ad816a358ca2aa37a94f3a77603eed6e12db46 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/BumperService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/BumperService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/BumperService.o.d" -o ${OBJECTDIR}/_ext/1329943840/BumperService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/BumperService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/DeadBot.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/DeadBot.c  .generated_files/flags/default/4e43d1f0ccd76ad3308ca852e0f0d06be35ed05f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/DeadBot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/DeadBot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/DeadBot.o.d" -o ${OBJECTDIR}/_ext/1329943840/DeadBot.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/DeadBot.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/ES_Main.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ES_Main.c  .generated_files/flags/default/bdf6ddf74e710a2356c86c2e2930445f389759f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/ES_Main.o.d" -o ${OBJECTDIR}/_ext/1329943840/ES_Main.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/EventChecker.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/EventChecker.c  .generated_files/flags/default/9be33645674a3337f3282970ad3517c26378d70f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/EventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/EventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/EventChecker.o.d" -o ${OBJECTDIR}/_ext/1329943840/EventChecker.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/EventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/FindPath.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/FindPath.c  .generated_files/flags/default/ff5d1eb8e1cdbb92e5cf9ba5d1a5d65609f09ad9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/FindPath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/FindPath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/FindPath.o.d" -o ${OBJECTDIR}/_ext/1329943840/FindPath.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/FindPath.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/ReverseShark.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseShark.c  .generated_files/flags/default/dc4700cbd281cf3c1616fb27d1bf805fab933926 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ReverseShark.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ReverseShark.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/ReverseShark.o.d" -o ${OBJECTDIR}/_ext/1329943840/ReverseShark.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseShark.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseSideTapeService.c  .generated_files/flags/default/9d66c25a3c65f233a7416a8db35f7edb6e6a803f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o.d" -o ${OBJECTDIR}/_ext/1329943840/ReverseSideTapeService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/ReverseSideTapeService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/SecondTower.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SecondTower.c  .generated_files/flags/default/6b6b689ef1257726cd43ba1ae390a733cdee9c2a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/SecondTower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/SecondTower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/SecondTower.o.d" -o ${OBJECTDIR}/_ext/1329943840/SecondTower.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SecondTower.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/Service.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/Service.c  .generated_files/flags/default/ab6933ca0fc2abc9d0996fd18a1afa9ad1ce0bd3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/Service.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/Service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/Service.o.d" -o ${OBJECTDIR}/_ext/1329943840/Service.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/Service.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/SideTapeService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SideTapeService.c  .generated_files/flags/default/404ef74be559bf5146c233c44d5b3fdece1fdf9b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/SideTapeService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/SideTapeService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/SideTapeService.o.d" -o ${OBJECTDIR}/_ext/1329943840/SideTapeService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/SideTapeService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TapeService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TapeService.c  .generated_files/flags/default/974cda06fec101e9de27e5749daca87d63fd9924 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TapeService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TapeService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TapeService.o.d" -o ${OBJECTDIR}/_ext/1329943840/TapeService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TapeService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TheBrain.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TheBrain.c  .generated_files/flags/default/7e58d5403261dc8587e4142763038dc78a470bea .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TheBrain.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TheBrain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TheBrain.o.d" -o ${OBJECTDIR}/_ext/1329943840/TheBrain.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TheBrain.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TowerSearch.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerSearch.c  .generated_files/flags/default/5292610970834f3d4dfb41312662cb6a494f44be .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TowerSearch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TowerSearch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TowerSearch.o.d" -o ${OBJECTDIR}/_ext/1329943840/TowerSearch.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerSearch.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TowerShark.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerShark.c  .generated_files/flags/default/7607209bdf9e0290fdbecd206ab1d062f5899f35 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TowerShark.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TowerShark.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TowerShark.o.d" -o ${OBJECTDIR}/_ext/1329943840/TowerShark.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TowerShark.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/TrackWireService.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TrackWireService.c  .generated_files/flags/default/eb1391c9e07082ea13da5d2dbe844ed9f344482a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TrackWireService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/TrackWireService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/TrackWireService.o.d" -o ${OBJECTDIR}/_ext/1329943840/TrackWireService.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/TrackWireService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/motors.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/motors.c  .generated_files/flags/default/e51c16a512eb9414245f2e44af6a932ec365042 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/motors.o.d" -o ${OBJECTDIR}/_ext/1329943840/motors.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/motors.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1329943840/shooting.o: C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/shooting.c  .generated_files/flags/default/b7f0dddbcd2adc93e158567882a47c9c1ef039ba .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1329943840" 
	@${RM} ${OBJECTDIR}/_ext/1329943840/shooting.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329943840/shooting.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1329943840/shooting.o.d" -o ${OBJECTDIR}/_ext/1329943840/shooting.o C:/Users/hpcallah/MPLABXProjects/TrueBeer.X/shooting.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/AD.o: C:/ECE118/src/AD.c  .generated_files/flags/default/8d9e3187ac5f6575b7ffed63041a89081c9c9baf .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/AD.o.d" -o ${OBJECTDIR}/_ext/1975241074/AD.o C:/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/BOARD.o: C:/ECE118/src/BOARD.c  .generated_files/flags/default/151d647431e8b1c41085eb014e461994543cd827 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/BOARD.o.d" -o ${OBJECTDIR}/_ext/1975241074/BOARD.o C:/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o: C:/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/7fd60f520d23f1c53b47c732c5551e3c6ea5a727 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o C:/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Framework.o: C:/ECE118/src/ES_Framework.c  .generated_files/flags/default/669b3373806df2696ae0a8539b40985785a3ee33 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o C:/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o: C:/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/fa8d572045073dc8eceb518f3ce580d9d9f91caa .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o C:/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_PostList.o: C:/ECE118/src/ES_PostList.c  .generated_files/flags/default/b4e3149f8ca81baed70c2f7fb5ad4facb4f511ee .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o C:/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Queue.o: C:/ECE118/src/ES_Queue.c  .generated_files/flags/default/39db84eba9395f67cf24bb9b301fb5fe2b837d4a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o C:/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o: C:/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/9176a1c717ff2235e3240cb3a5e2b235a2ba5102 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o C:/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Timers.o: C:/ECE118/src/ES_Timers.c  .generated_files/flags/default/d3066ad05ad35854bfd9a6dd80627714be897745 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o C:/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/IO_Ports.o: C:/ECE118/src/IO_Ports.c  .generated_files/flags/default/228637ab0b1fb4bf491c8c6d2d9a3cd4b6898137 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o C:/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/LED.o: C:/ECE118/src/LED.c  .generated_files/flags/default/cc548d5769024d98562bb6ff89166b7ba45022d0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/LED.o.d" -o ${OBJECTDIR}/_ext/1975241074/LED.o C:/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/RC_Servo.o: C:/ECE118/src/RC_Servo.c  .generated_files/flags/default/59c1d5fd9f78a7a2e79bfff2d9079176a27e98bd .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o C:/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/pwm.o: C:/ECE118/src/pwm.c  .generated_files/flags/default/1d7593537b3b0432f0243a45f15dbd812159f2f7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/pwm.o.d" -o ${OBJECTDIR}/_ext/1975241074/pwm.o C:/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/serial.o: C:/ECE118/src/serial.c  .generated_files/flags/default/b959b56cfc4a2cea25bfead73ab8bfb153f743ec .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/serial.o.d" -o ${OBJECTDIR}/_ext/1975241074/serial.o C:/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/timers.o: C:/ECE118/src/timers.c  .generated_files/flags/default/12b2e854d0eb2580cf86c01a05e9c29a51e60151 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -I"../../../../ECE118/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/timers.o C:/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TrueBeer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TrueBeer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/TrueBeer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TrueBeer.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/TrueBeer.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
