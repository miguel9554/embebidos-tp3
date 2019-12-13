################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../example/src/cr_startup_lpc175x_6x.c \
../example/src/freertos_examples_10_to_16.c \
../example/src/sysinit.c 

OBJS += \
./example/src/cr_startup_lpc175x_6x.o \
./example/src/freertos_examples_10_to_16.o \
./example/src/sysinit.o 

C_DEPS += \
./example/src/cr_startup_lpc175x_6x.d \
./example/src/freertos_examples_10_to_16.d \
./example/src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
example/src/%.o: ../example/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -D__USE_LPCOPEN -DCORE_M3 -I"C:\Users\JMCruz\Documents\LPCXpresso_8.2.0_647\workspace-TP3\lpc_chip_175x_6x\inc" -I"C:\Users\JMCruz\Documents\LPCXpresso_8.2.0_647\workspace-TP3\lpc_board_nxp_lpcxpresso_1769\inc" -I"C:\Users\JMCruz\Documents\LPCXpresso_8.2.0_647\workspace-TP3\freertos_examples_10_to_16\example\inc" -I"C:\Users\JMCruz\Documents\LPCXpresso_8.2.0_647\workspace-TP3\freertos_examples_10_to_16\freertos\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


