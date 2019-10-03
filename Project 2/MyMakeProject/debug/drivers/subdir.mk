#################################################################################
## Automatically-generated file. Do not edit!
#################################################################################
#
## Add inputs and outputs from these tool invocations to the build variables 
##C_SRCS += \
##../drivers/fsl_clock.c \
##../drivers/fsl_common.c \
##../drivers/fsl_flash.c \
##../drivers/fsl_gpio.c \
##../drivers/fsl_lpsci.c \
##../drivers/fsl_smc.c \
##../drivers/fsl_uart.c 
##
##OBJS += \
##./drivers/fsl_clock.o \
##./drivers/fsl_common.o \
##./drivers/fsl_flash.o \
##./drivers/fsl_gpio.o \
##./drivers/fsl_lpsci.o \
##./drivers/fsl_smc.o \
##./drivers/fsl_uart.o 
##
##C_DEPS += \
##./drivers/fsl_clock.d \
##./drivers/fsl_common.d \
##./drivers/fsl_flash.d \
##./drivers/fsl_gpio.d \
##./drivers/fsl_lpsci.d \
##./drivers/fsl_smc.d \
##./drivers/fsl_uart.d 
#
##ifeq ($(PLATFORM),KL25Z)
##C_SRCS += \
##../drivers/fsl_clock.c \
##../drivers/fsl_common.c \
##../drivers/fsl_flash.c \
##../drivers/fsl_gpio.c \
##../drivers/fsl_lpsci.c \
##../drivers/fsl_smc.c \
##../drivers/fsl_uart.c 
##OBJS += \
##./drivers/fsl_clock.o \
##./drivers/fsl_common.o \
##./drivers/fsl_flash.o \
##./drivers/fsl_gpio.o \
##./drivers/fsl_lpsci.o \
##./drivers/fsl_smc.o \
##./drivers/fsl_uart.o 
##C_DEPS += \
##./drivers/fsl_clock.d \
##./drivers/fsl_common.d \
##./drivers/fsl_flash.d \
##./drivers/fsl_gpio.d \
##./drivers/fsl_lpsci.d \
##./drivers/fsl_smc.d \
##./drivers/fsl_uart.d 
##CC := arm-none-eabi-gcc
##BUILD := -Dfrb_run -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG
##LL := -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs
##DEP := -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)"
##INCLUDE := -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup
##else 
##ifeq ($(PLATFORM),KL25Z_DEBUG)
##C_SRCS += \
##../drivers/fsl_clock.c \
##../drivers/fsl_common.c \
##../drivers/fsl_flash.c \
##../drivers/fsl_gpio.c \
##../drivers/fsl_lpsci.c \
##../drivers/fsl_smc.c \
##../drivers/fsl_uart.c 
##OBJS += \
##./drivers/fsl_clock.o \
##./drivers/fsl_common.o \
##./drivers/fsl_flash.o \
##./drivers/fsl_gpio.o \
##./drivers/fsl_lpsci.o \
##./drivers/fsl_smc.o \
##./drivers/fsl_uart.o 
##C_DEPS += \
##./drivers/fsl_clock.d \
##./drivers/fsl_common.d \
##./drivers/fsl_flash.d \
##./drivers/fsl_gpio.d \
##./drivers/fsl_lpsci.d \
##./drivers/fsl_smc.d \
##./drivers/fsl_uart.d 
##CC := arm-none-eabi-gcc
##BUILD := -Dfrb_debug -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG
##LL := -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs
##DEP := -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)"
##INCLUDE := -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup
##else 
##ifeq ($(PLATFORM),PC)
##CC := gcc
##BUILD := -Dpc_run
##LL := -Werror -Wall -c
##DEP := 
##INCLUDE := -I../source
##C_SRCS :=
##OBJS=
##C_DEPS :=
##else 
##ifeq ($(PLATFORM),PC_DEBUG)
##CC := gcc
##BUILD := -Dpc_debug
##LL := -Werror -Wall -c
##DEP := 
##INCLUDE := -I../source
##C_SRCS :=
##OBJS=
##C_DEPS :=
##endif
##endif
##endif
##endif
##drivers/%.o: ../drivers/%.c
##	@echo 'Building file: $<'
##	@echo 'Invoking: MCU C Compiler'
##	$(CC) $(BUILD) $(INCLUDE) $(LL) $(DEP) -o "$@" "$<"
##	@echo 'Finished building: $<'
##	@echo ' '
## Each subdirectory must supply rules for building sources it contributes
##ifeq ($(PLATFORM),KL25Z)
##drivers/%.o: ../drivers/%.c
##	@echo 'Building file: $<'
##	@echo 'Invoking: MCU C Compiler'
##	arm-none-eabi-gcc -DKL25Z_RUN -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
##	@echo 'Finished building: $<'
##	@echo ' '
##else ifeq ($(PLATFORM),PC)
##drivers/%.o: ../drivers/%.c
##	@echo 'Building file: $<'
##	@echo 'Invoking: MCU C Compiler'
##	gcc -DPC_RUN -I../source -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
##	@echo 'Finished building: $<'
##	@echo ' '
##endif	
##
#################################################################################
## Automatically-generated file. Do not edit!
#################################################################################
#
## Add inputs and outputs from these tool invocations to the build variables 
#C_SRCS += \
#../CMSIS/system_MKL25Z4.c 
#
#OBJS += \
#./CMSIS/system_MKL25Z4.o 
#
#C_DEPS += \
#./CMSIS/system_MKL25Z4.d 
#
#
## Each subdirectory must supply rules for building sources it contributes
##ifeq ($(PLATFORM),KL25Z)
#CMSIS/%.o: ../CMSIS/%.c
#	@echo 'Building file: $<'
#	@echo 'Invoking: MCU C Compiler'
#	arm-none-eabi-gcc -DPC_RUN -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
#	@echo 'Finished building: $<'
#	@echo ' '
##else ifeq ($(PLATFORM),PC)
##CMSIS/%.o: ../CMSIS/%.c
##	@echo 'Building file: $<'
##	@echo 'Invoking: MCU C Compiler'
##	gcc -DKL25Z_RUN -I../source -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
##	@echo 'Finished building: $<'
##	@echo ' '
##endif	
################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_flash.c \
../drivers/fsl_gpio.c \
../drivers/fsl_lpsci.c \
../drivers/fsl_smc.c \
../drivers/fsl_uart.c 

OBJS += \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_flash.o \
./drivers/fsl_gpio.o \
./drivers/fsl_lpsci.o \
./drivers/fsl_smc.o \
./drivers/fsl_uart.o 

C_DEPS += \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_flash.d \
./drivers/fsl_gpio.d \
./drivers/fsl_lpsci.d \
./drivers/fsl_smc.d \
./drivers/fsl_uart.d 



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
OBJS := \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_flash.o \
./drivers/fsl_gpio.o \
./drivers/fsl_lpsci.o \
./drivers/fsl_smc.o \
./drivers/fsl_uart.o 
	
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
OBJS := \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_flash.o \
./drivers/fsl_gpio.o \
./drivers/fsl_lpsci.o \
./drivers/fsl_smc.o \
./drivers/fsl_uart.o 
	
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
INCLUDES:=  
B_OPTIONS:= 
C_DEPS:=
FLAG := -Dpc_run
endif

ifeq ($(PLATFORM), PC_DEBUG)
CC := gcc
CC_OPTIONS := -Wall -Werror -c
EXE := ./debug/MyMakeProject.exe
OBJS :=
INCLUDES:= 
B_OPTIONS:= 
FLAG := -Dpc_debug
C_DEPS:=


endif



# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	$(CC) $(CC_OPTIONS) $(B_OPTIONS) $(INCLUDES) $(FLAG) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


