##################################################################################
### Automatically-generated file. Do not edit!
##################################################################################
##
### Add inputs and outputs from these tool invocations to the build variables 
###C_SRCS += \
###../source/main.c \
###
###
###OBJS += \
###./source/main.o \
###
###
###
###
###C_DEPS += \
###./source/main.d \
##
##ifeq ($(PLATFORM),KL25Z)
##LL_OPTIONS := -nostdlib -Xlinker -Map="MyMakeProject.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T MyMakeProject_debug.ld
##C_SRCS += \
##../source/main.c \
##OBJS += \
##./source/main.o \
##C_DEPS += \
##./source/main.d \
##CC := arm-none-eabi-gcc
##BUILD := -Dfrb_run -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG
##LL := -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs
##DEP := -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)"
##INCLUDE := -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup
##
##else 
##ifeq ($(PLATFORM),KL25Z_DEBUG)
##LL_OPTIONS :=
##C_SRCS += \
##../source/main.c \
##OBJS += \
##./source/main.o \
##C_DEPS += \
##./source/main.d \
##CC := arm-none-eabi-gcc
##BUILD := -Dfrb_debug -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG
##LL := -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs
##DEP := -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)"
##INCLUDE := -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup
##else 
##ifeq ($(PLATFORM),PC)
##LL_OPTIONS :=
##C_SRCS += \
##../source/main.c \
##OBJS += \
##./source/main.o \
##C_DEPS += \
##./source/main.d \
##CC := gcc
##BUILD := -Dpc_run
##LL := -Werror -Wall -c
##DEP := 
##INCLUDE := -I../source
##else 
##ifeq ($(PLATFORM),PC_DEBUG)
##LL_OPTIONS :=
##C_SRCS += \
##../source/main.c \
##OBJS += \
##./source/main.o \
##C_DEPS += \
##./source/main.d \
##CC := gcc
##BUILD := -Dpc_debug
##LL := -Werror  -Wall -c
##DEP := 
##INCLUDE := -I../source
##endif
##endif
##endif
##endif
##source/%.o: ../source/%.c
##	@echo 'Building file: $<'
##	@echo 'Invoking: MCU C Compiler'
##	$(CC) $(BUILD) $(INCLUDE) $(LL) $(DEP) -o "$@" "$<"
##	@echo 'Finished building: $<'
##	@echo ' '
### Each subdirectory must supply rules for building sources it contributes
###ifeq ($(PLATFORM),KL25Z)
###source/%.o: ../source/%.c
###	@echo 'Building file: $<'
###	@echo 'Invoking: MCU C Compiler'
###	arm-none-eabi-gcc -DKL25Z_RUN -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
###	@echo 'Finished building: $<'
###	@echo ' '
###else ifeq ($(PLATFORM),PC)
###source/%.o: ../source/%.c
###	@echo 'Building file: $<'
###	@echo 'Invoking: MCU C Compiler'
###	gcc -DPC_RUN -I../source -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
###	@echo 'Finished building: $<'
###	@echo ' '
###endif		
###
###
#################################################################################
## Automatically-generated file. Do not edit!
#################################################################################
#
## Add inputs and outputs from these tool invocations to the build variables 
#C_SRCS += \
#../source/main.c \
#
#
#OBJS += \
#./source/main.o \
#
#
#
#
#C_DEPS += \
#./source/main.d \
#
#
## Each subdirectory must supply rules for building sources it contributes
##ifeq ($(PLATFORM),KL25Z)
#source/%.o: ../source/%.c
#	@echo 'Building file: $<'
#	@echo 'Invoking: MCU C Compiler'
#	arm-none-eabi-gcc -DKL25Z_RUN -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
#	@echo 'Finished building: $<'
#	@echo ' '
#else ifeq ($(PLATFORM),PC)
#source/%.o: ../source/%.c
#	@echo 'Building file: $<'
#	@echo 'Invoking: MCU C Compiler'
#	gcc -DPC_RUN -I../source -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
#	@echo 'Finished building: $<'
#	@echo ' '
#endif		
#
#
################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
./source/main.c 



C_DEPS += \
./source/main.d 

OBJS += ./source/main.o


ifeq ($(PLATFORM), KL25Z)
# Include files
INCLUDES := \
	-I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup 
		
############################
# Compiler

CC := arm-none-eabi-gcc
############################
# Linker


############################
# Binary/exectable to build
EXE := \
  ./debug/MyMakeProject.axf

############################
# List of object files
OBJS := ./source/main.o 
	
############################
# List of dependency files

 
 ############################
# Compiler options
CC_OPTIONS := \
	-c \
	-std=gnu99 \
	-O0 \
	-g3 \
	-ffunction-sections \
	-fmessage-length=0\
	-fno-common \
	-fdata-sections \
	-fno-builtin \
	-mcpu=cortex-m0plus \
	-mthumb

############################
# Build Options
B_OPTIONS := \
	-D__REDLIB__ \
	-DCPU_MKL25Z128VLK4 \
	-DCPU_MKL25Z128VLK4_cm0plus \
	-DSDK_OS_BAREMETAL \
	-DFSL_RTOS_BM \
	-DSDK_DEBUGCONSOLE=0 \
	-DCR_INTEGER_PRINTF \
	-DPRINTF_FLOAT_ENABLE=0 \
	-DSCANF_FLOAT_ENABLE=0 \
	-DPRINTF_ADVANCED_ENABLE=0 \
	-DSCANF_ADVANCED_ENABLE=0 \
	-D__MCUXPRESSO \
	-D__USE_CMSIS \
	-DDEBUG \
	-DFRDM_KL25Z \
	-DFREEDOM \
	-specs=redlib.specs \
	
FLAG := -Dfrb_run
############################
# Linker Options




 endif
#################################################################

ifeq ($(PLATFORM), KL25Z_DEBUG)
# Include files
INCLUDES := \
	-I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup 
	
############################
# Compiler

CC := arm-none-eabi-gcc
############################
# Linker


############################
# Binary/exectable to build
EXE := \
  ./debug/MyMakeProject.axf

############################
# List of object files
OBJS := ./source/main.o  
	
############################
# List of dependency files

 
 ############################
# Compiler options
CC_OPTIONS := \
	-c \
	-std=gnu99 \
	-O0 \
	-g3 \
	-ffunction-sections \
	-fmessage-length=0\
	-fno-common \
	-fdata-sections \
	-fno-builtin \
	-mcpu=cortex-m0plus \
	-mthumb

############################
# Build Options
B_OPTIONS := \
	-D__REDLIB__ \
	-DCPU_MKL25Z128VLK4 \
	-DCPU_MKL25Z128VLK4_cm0plus \
	-DSDK_OS_BAREMETAL \
	-DFSL_RTOS_BM \
	-DSDK_DEBUGCONSOLE=0 \
	-DCR_INTEGER_PRINTF \
	-DPRINTF_FLOAT_ENABLE=0 \
	-DSCANF_FLOAT_ENABLE=0 \
	-DPRINTF_ADVANCED_ENABLE=0 \
	-DSCANF_ADVANCED_ENABLE=0 \
	-D__MCUXPRESSO \
	-D__USE_CMSIS \
	-DDEBUG \
	-DFRDM_KL25Z \
	-DFREEDOM \
	-specs=redlib.specs \
	
FLAG := -Dfrb_debug
############################
# Linker Options


endif
#################################################################
ifeq ($(PLATFORM), PC)
CC := gcc
CC_OPTIONS := -Wall -Werror -c
EXE := ./debug/MyMakeProject.exe
OBJS := 
INCLUDES:= -I../source 
B_OPTIONS:= 
C_DEPS:=
FLAG := -Dpc_run
endif

ifeq ($(PLATFORM), PC_DEBUG)
CC := gcc
CC_OPTIONS := -Wall -Werror -c
EXE := ./debug/MyMakeProject.exe
OBJS :=
INCLUDES:= -I../source 
B_OPTIONS:= 
FLAG := -Dpc_debug
C_DEPS:=


endif


# Each subdirectory must supply rules for building sources it contributes
./source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
		$(CC) $(CC_OPTIONS) "$<"  $(B_OPTIONS) $(FLAG) -o "$@" 
	@echo 'Finished building: $<'
	@echo ' '


