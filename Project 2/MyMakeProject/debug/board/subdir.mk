#################################################################################
## Automatically-generated file. Do not edit!
#################################################################################
#
## Add inputs and outputs from these tool invocations to the build variables 
#C_SRCS += \
#../board/board.c \
#../board/clock_config.c \
#../board/peripherals.c \
#../board/pin_mux.c 
#
#OBJS += \
#./board/board.o \
#./board/clock_config.o \
#./board/peripherals.o \
#./board/pin_mux.o 
#
#C_DEPS += \
#./board/board.d \
#./board/clock_config.d \
#./board/peripherals.d \
#./board/pin_mux.d 
#
#ifeq ($(PLATFORM),KL25Z)
#OBJS += \
#./board/board.o \
#./board/clock_config.o \
#./board/peripherals.o \
#./board/pin_mux.o 
#C_DEPS += \
#./board/board.d \
#./board/clock_config.d \
#./board/peripherals.d \
#./board/pin_mux.d 
#C_SRCS += \
#../board/board.c \
#../board/clock_config.c \
#../board/peripherals.c \
#../board/pin_mux.c 
#CC := arm-none-eabi-gcc
#BUILD := -Dfrb_run -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG
#LL := -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs
#DEP := -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)"
#INCLUDE := -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup
#else 
#ifeq ($(PLATFORM),KL25Z_DEBUG)
#OBJS += \
#./board/board.o \
#./board/clock_config.o \
#./board/peripherals.o \
#./board/pin_mux.o 
#C_DEPS += \
#./board/board.d \
#./board/clock_config.d \
#./board/peripherals.d \
#./board/pin_mux.d 
#C_SRCS += \
#../board/board.c \
#../board/clock_config.c \
#../board/peripherals.c \
#../board/pin_mux.c 
#CC := arm-none-eabi-gcc
#BUILD := -Dfrb_debug -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG
#LL := -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs
#DEP := -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)"
#INCLUDE := -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup
#else 
#ifeq ($(PLATFORM),PC)
#OBJS :=
#C_DEPS :=
#C_SRCS :=
#CC := gcc
#BUILD := -Dpc_run
#LL := -Werror -Wall -c
#DEP := 
#INCLUDE := -I../source
#ifeq ($(PLATFORM),PC_DEBUG)
#OBJS :=
#C_DEPS :=
#C_SRCS :=
#CC := gcc
#BUILD := -Dpc_debug
#LL := -Werror -Wall -c
#DEP := 
#INCLUDE := -I../source
#endif
#endif
#endif
#endif
#board/%.o: ../board/%.c
#	@echo 'Building file: $<'
#	@echo 'Invoking: MCU C Compiler'
#	$(CC) $(BUILD) $(INCLUDE) $(LL) $(DEP) -o "$@" "$<"
#	@echo 'Finished building: $<'
#	@echo ' '
#	
## Each subdirectory must supply rules for building sources it contributes
##ifeq ($(PLATFORM),KL25Z)
##board/%.o: ../board/%.c
##	@echo 'Building file: $<'
##	@echo 'Invoking: MCU C Compiler'
##	$(CC) $(BUILD) -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
##	@echo 'Finished building: $<'
##	@echo ' '
##else ifeq ($(PLATFORM),PC)
##board/%.o: ../board/%.c
##	@echo 'Building file: $<'
##	@echo 'Invoking: MCU C Compiler'
##	gcc -DPC_RUN -I../source -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
##	@echo 'Finished building: $<'
##	@echo ' '
##endif	
##
################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
#C_SRCS += \
#../board/board.c \
#../board/clock_config.c \
#../board/peripherals.c \
#../board/pin_mux.c 
#
#OBJS += \
#./board/board.o \
#./board/clock_config.o \
#./board/peripherals.o \
#./board/pin_mux.o 
#
#C_DEPS += \
#./board/board.d \
#./board/clock_config.d \
#./board/peripherals.d \
#./board/pin_mux.d 
#
#
## Each subdirectory must supply rules for building sources it contributes
##ifeq ($(PLATFORM),KL25Z)
#board/%.o: ../board/%.c
#	@echo 'Building file: $<'
#	@echo 'Invoking: MCU C Compiler'
#	arm-none-eabi-gcc -DKL25Z_RUN -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../startup -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
#	@echo 'Finished building: $<'
#	@echo ' '
#else ifeq ($(PLATFORM),PC)
#board/%.o: ../board/%.c
#	@echo 'Building file: $<'
#	@echo 'Invoking: MCU C Compiler'
#	gcc -DPC_RUN -I../source -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
#	@echo 'Finished building: $<'
#	@echo ' '
#endif	
################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/peripherals.c \
../board/pin_mux.c 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/peripherals.o \
./board/pin_mux.o 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/peripherals.d \
./board/pin_mux.d 


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
./board/board.o \
./board/clock_config.o \
./board/peripherals.o \
./board/pin_mux.o 
	
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
./board/board.o \
./board/clock_config.o \
./board/peripherals.o \
./board/pin_mux.o 
	
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
./board/%.o: ../board/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	$(CC) $(CC_OPTIONS) $(B_OPTIONS) $(INCLUDES) $(FLAG) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '




