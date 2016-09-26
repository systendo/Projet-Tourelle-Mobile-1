;  Generated by PSoC Designer 5.4.3191
;
; =============================================================================
; FILENAME: PSoCConfigTBL.asm
;  
; Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
;  
; NOTES:
; Do not modify this file. It is generated by PSoC Designer each time the
; generate application function is run. The values of the parameters in this
; file can be modified by changing the values of the global parameters in the
; device editor.
;  
; =============================================================================
 
include "m8c.inc"
;  Personalization tables 
export LoadConfigTBL_spim_cam_Bank1
export LoadConfigTBL_spim_cam_Bank0
export LoadConfigTBL_spim_cam_Ordered
AREA lit(rom, rel)
LoadConfigTBL_spim_cam_Bank0:
;  Instance name LCD, User Module LCD
;  Instance name LED, User Module LED
;  Instance name PWM16, User Module PWM16
;       Instance name PWM16, Block Name PWM16_LSB(DBB00)
	db		23h, 00h		;PWM16_CONTROL_LSB_REG(DBB00CR0)
	db		21h, 42h		;PWM16_PERIOD_LSB_REG(DBB00DR1)
	db		22h, 1ch		;PWM16_COMPARE_LSB_REG(DBB00DR2)
;       Instance name PWM16, Block Name PWM16_MSB(DBB01)
	db		27h, 00h		;PWM16_CONTROL_MSB_REG(DBB01CR0)
	db		25h, 4fh		;PWM16_PERIOD_MSB_REG(DBB01DR1)
	db		26h, 25h		;PWM16_COMPARE_MSB_REG(DBB01DR2)
;  Instance name PWM16_2, User Module PWM16
;       Instance name PWM16_2, Block Name PWM16_LSB(DBB20)
	db		43h, 00h		;PWM16_2_CONTROL_LSB_REG(DBB20CR0)
	db		41h, 42h		;PWM16_2_PERIOD_LSB_REG(DBB20DR1)
	db		42h, 1ch		;PWM16_2_COMPARE_LSB_REG(DBB20DR2)
;       Instance name PWM16_2, Block Name PWM16_MSB(DBB21)
	db		47h, 00h		;PWM16_2_CONTROL_MSB_REG(DBB21CR0)
	db		45h, 4fh		;PWM16_2_PERIOD_MSB_REG(DBB21DR1)
	db		46h, 25h		;PWM16_2_COMPARE_MSB_REG(DBB21DR2)
;  Instance name SPIM_CamDroite, User Module SPIM
;       Instance name SPIM_CamDroite, Block Name SPIM(DCB13)
	db		3fh, 00h		;SPIM_CamDroite_CONTROL_REG  (DCB13CR0)
	db		3dh, 00h		;SPIM_CamDroite_TX_BUFFER_REG(DCB13DR1)
	db		3eh, 00h		;SPIM_CamDroite_RX_BUFFER_REG(DCB13DR2)
;  Instance name SPIM_CamGauche, User Module SPIM
;       Instance name SPIM_CamGauche, Block Name SPIM(DCB02)
	db		2bh, 00h		;SPIM_CamGauche_CONTROL_REG  (DCB02CR0)
	db		29h, 00h		;SPIM_CamGauche_TX_BUFFER_REG(DCB02DR1)
	db		2ah, 00h		;SPIM_CamGauche_RX_BUFFER_REG(DCB02DR2)
;  Instance name TimerCamera, User Module Timer24
;       Instance name TimerCamera, Block Name TIMER24_ISB(DBB11)
	db		37h, 00h		;TimerCamera_CONTROL_ISB_REG(DBB11CR0)
	db		35h, c3h		;TimerCamera_PERIOD_ISB_REG(DBB11DR1)
	db		36h, 00h		;TimerCamera_COMPARE_ISB_REG(DBB11DR2)
;       Instance name TimerCamera, Block Name TIMER24_LSB(DBB10)
	db		33h, 00h		;TimerCamera_CONTROL_LSB_REG(DBB10CR0)
	db		31h, 50h		;TimerCamera_PERIOD_LSB_REG(DBB10DR1)
	db		32h, 00h		;TimerCamera_COMPARE_LSB_REG(DBB10DR2)
;       Instance name TimerCamera, Block Name TIMER24_MSB(DCB12)
	db		3bh, 04h		;TimerCamera_CONTROL_MSB_REG(DCB12CR0)
	db		39h, 00h		;TimerCamera_PERIOD_MSB_REG(DCB12DR1)
	db		3ah, 00h		;TimerCamera_COMPARE_MSB_REG(DCB12DR2)
;  Instance name UART, User Module UART
;       Instance name UART, Block Name RX(DCB22)
	db		4bh, 00h		;UART_RX_CONTROL_REG(DCB22CR0)
	db		49h, 00h		;UART_(DCB22DR1)
	db		4ah, 00h		;UART_RX_BUFFER_REG (DCB22DR2)
;       Instance name UART, Block Name TX(DCB03)
	db		2fh, 00h		;UART_TX_CONTROL_REG(DCB03CR0)
	db		2dh, 00h		;UART_TX_BUFFER_REG (DCB03DR1)
	db		2eh, 00h		;UART_(DCB03DR2)
;  Global Register values Bank 0
	db		60h, 28h		; AnalogColumnInputSelect register (AMX_IN)
	db		66h, 00h		; AnalogComparatorControl1 register (CMP_CR1)
	db		63h, 05h		; AnalogReferenceControl register (ARF_CR)
	db		65h, 00h		; AnalogSyncControl register (ASY_CR)
	db		e6h, 00h		; DecimatorControl_0 register (DEC_CR0)
	db		e7h, 00h		; DecimatorControl_1 register (DEC_CR1)
	db		d6h, 00h		; I2CConfig register (I2C_CFG)
	db		b0h, 04h		; Row_0_InputMux register (RDI0RI)
	db		b1h, 00h		; Row_0_InputSync register (RDI0SYN)
	db		b2h, 00h		; Row_0_LogicInputAMux register (RDI0IS)
	db		b3h, 33h		; Row_0_LogicSelect_0 register (RDI0LT0)
	db		b4h, 33h		; Row_0_LogicSelect_1 register (RDI0LT1)
	db		b5h, 41h		; Row_0_OutputDrive_0 register (RDI0SRO0)
	db		b6h, 22h		; Row_0_OutputDrive_1 register (RDI0SRO1)
	db		b8h, 5dh		; Row_1_InputMux register (RDI1RI)
	db		b9h, 00h		; Row_1_InputSync register (RDI1SYN)
	db		bah, 10h		; Row_1_LogicInputAMux register (RDI1IS)
	db		bbh, 33h		; Row_1_LogicSelect_0 register (RDI1LT0)
	db		bch, 33h		; Row_1_LogicSelect_1 register (RDI1LT1)
	db		bdh, 00h		; Row_1_OutputDrive_0 register (RDI1SRO0)
	db		beh, 88h		; Row_1_OutputDrive_1 register (RDI1SRO1)
	db		c0h, 00h		; Row_2_InputMux register (RDI2RI)
	db		c1h, 00h		; Row_2_InputSync register (RDI2SYN)
	db		c2h, 20h		; Row_2_LogicInputAMux register (RDI2IS)
	db		c3h, 33h		; Row_2_LogicSelect_0 register (RDI2LT0)
	db		c4h, 33h		; Row_2_LogicSelect_1 register (RDI3LT1)
	db		c5h, 04h		; Row_2_OutputDrive_0 register (RDI2SRO0)
	db		c6h, 00h		; Row_2_OutputDrive_1 register (RDI2SRO1)
	db		c8h, 55h		; Row_3_InputMux register (RDI3RI)
	db		c9h, 00h		; Row_3_InputSync register (RDI3SYN)
	db		cah, 30h		; Row_3_LogicInputAMux register (RDI3IS)
	db		cbh, 33h		; Row_3_LogicSelect_0 register (RDI3LT0)
	db		cch, 33h		; Row_3_LogicSelect_1 register (RDI3LT1)
	db		cdh, 00h		; Row_3_OutputDrive_0 register (RDI3SRO0)
	db		ceh, 00h		; Row_3_OutputDrive_1 register (RDI3SRO1)
	db		6ch, 00h		; TMP_DR0 register (TMP_DR0)
	db		6dh, 00h		; TMP_DR1 register (TMP_DR1)
	db		6eh, 00h		; TMP_DR2 register (TMP_DR2)
	db		6fh, 00h		; TMP_DR3 register (TMP_DR3)
	db		ffh
LoadConfigTBL_spim_cam_Bank1:
;  Instance name LCD, User Module LCD
;  Instance name LED, User Module LED
;  Instance name PWM16, User Module PWM16
;       Instance name PWM16, Block Name PWM16_LSB(DBB00)
	db		20h, 01h		;PWM16_FUNC_LSB_REG(DBB00FN)
	db		21h, 16h		;PWM16_INPUT_LSB_REG(DBB00IN)
	db		22h, 40h		;PWM16_OUTPUT_LSB_REG(DBB00OU)
;       Instance name PWM16, Block Name PWM16_MSB(DBB01)
	db		24h, 21h		;PWM16_FUNC_MSB_REG(DBB01FN)
	db		25h, 36h		;PWM16_INPUT_MSB_REG(DBB01IN)
	db		26h, 44h		;PWM16_OUTPUT_MSB_REG(DBB01OU)
;  Instance name PWM16_2, User Module PWM16
;       Instance name PWM16_2, Block Name PWM16_LSB(DBB20)
	db		40h, 01h		;PWM16_2_FUNC_LSB_REG(DBB20FN)
	db		41h, 16h		;PWM16_2_INPUT_LSB_REG(DBA20IN)
	db		42h, 40h		;PWM16_2_OUTPUT_LSB_REG(DBA20OU)
;       Instance name PWM16_2, Block Name PWM16_MSB(DBB21)
	db		44h, 21h		;PWM16_2_FUNC_MSB_REG(DBB21FN)
	db		45h, 36h		;PWM16_2_INPUT_MSB_REG(DBB21IN)
	db		46h, 44h		;PWM16_2_OUTPUT_MSB_REG(DBB21OU)
;  Instance name SPIM_CamDroite, User Module SPIM
;       Instance name SPIM_CamDroite, Block Name SPIM(DCB13)
	db		3ch, 06h		;SPIM_CamDroite_FUNCTION_REG (DCB13FN)
	db		3dh, d6h		;SPIM_CamDroite_INPUT_REG    (DCB13IN)
	db		3eh, 37h		;SPIM_CamDroite_OUTPUT_REG   (DCB13OU)
;  Instance name SPIM_CamGauche, User Module SPIM
;       Instance name SPIM_CamGauche, Block Name SPIM(DCB02)
	db		28h, 06h		;SPIM_CamGauche_FUNCTION_REG (DCB02FN)
	db		29h, d6h		;SPIM_CamGauche_INPUT_REG    (DCB02IN)
	db		2ah, 77h		;SPIM_CamGauche_OUTPUT_REG   (DCB02OU)
;  Instance name TimerCamera, User Module Timer24
;       Instance name TimerCamera, Block Name TIMER24_ISB(DBB11)
	db		34h, 10h		;TimerCamera_FUNC_ISB_REG(DBB11FN)
	db		35h, 36h		;TimerCamera_INPUT_ISB_REG(DBB11IN)
	db		36h, 40h		;TimerCamera_OUTPUT_ISB_REG(DBB11OU)
;       Instance name TimerCamera, Block Name TIMER24_LSB(DBB10)
	db		30h, 10h		;TimerCamera_FUNC_LSB_REG(DBB10FN)
	db		31h, 06h		;TimerCamera_INPUT_LSB_REG(DBB10IN)
	db		32h, 40h		;TimerCamera_OUTPUT_LSB_REG(DBB10OU)
;       Instance name TimerCamera, Block Name TIMER24_MSB(DCB12)
	db		38h, 30h		;TimerCamera_FUNC_MSB_REG(DCB12FN)
	db		39h, 36h		;TimerCamera_INPUT_MSB_REG(DCB12IN)
	db		3ah, 40h		;TimerCamera_OUTPUT_MSB_REG(DCB12OU)
;  Instance name UART, User Module UART
;       Instance name UART, Block Name RX(DCB22)
	db		48h, 05h		;UART_RX_FUNC_REG   (DCB22FN)
	db		49h, 01h		;UART_RX_INPUT_REG  (DCB22IN)
	db		4ah, 40h		;UART_RX_OUTPUT_REG (DCB22OU)
;       Instance name UART, Block Name TX(DCB03)
	db		2ch, 0dh		;UART_TX_FUNC_REG   (DCB03FN)
	db		2dh, 01h		;UART_TX_INPUT_REG  (DCB03IN)
	db		2eh, 45h		;UART_TX_OUTPUT_REG (DCB03OU)
;  Global Register values Bank 1
	db		61h, 00h		; AnalogClockSelect1 register (CLK_CR1)
	db		69h, 00h		; AnalogClockSelect2 register (CLK_CR2)
	db		60h, 00h		; AnalogColumnClockSelect register (CLK_CR0)
	db		62h, 00h		; AnalogIOControl_0 register (ABF_CR0)
	db		67h, 33h		; AnalogLUTControl0 register (ALT_CR0)
	db		68h, 33h		; AnalogLUTControl1 register (ALT_CR1)
	db		63h, 00h		; AnalogModulatorControl_0 register (AMD_CR0)
	db		66h, 00h		; AnalogModulatorControl_1 register (AMD_CR1)
	db		d1h, 00h		; GlobalDigitalInterconnect_Drive_Even_Input register (GDI_E_IN)
	db		d3h, 00h		; GlobalDigitalInterconnect_Drive_Even_Output register (GDI_E_OU)
	db		d0h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Input register (GDI_O_IN)
	db		d2h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Output register (GDI_O_OU)
	db		e1h, 72h		; OscillatorControl_1 register (OSC_CR1)
	db		e2h, 00h		; OscillatorControl_2 register (OSC_CR2)
	db		dfh, 19h		; OscillatorControl_3 register (OSC_CR3)
	db		deh, 00h		; OscillatorControl_4 register (OSC_CR4)
	db		ddh, 00h		; OscillatorGlobalBusEnableControl register (OSC_GO_EN)
	db		e7h, 00h		; Type2Decimator_Control register (DEC_CR2)
	db		ffh
AREA psoc_config(rom, rel)
LoadConfigTBL_spim_cam_Ordered:
;  Ordered Global Register values
	M8C_SetBank0
	mov	reg[00h], 00h		; Port_0_Data register (PRT0DR)
	M8C_SetBank1
	mov	reg[00h], c1h		; Port_0_DriveMode_0 register (PRT0DM0)
	mov	reg[01h], 3eh		; Port_0_DriveMode_1 register (PRT0DM1)
	M8C_SetBank0
	mov	reg[03h], 1eh		; Port_0_DriveMode_2 register (PRT0DM2)
	mov	reg[02h], e1h		; Port_0_GlobalSelect register (PRT0GS)
	M8C_SetBank1
	mov	reg[02h], 00h		; Port_0_IntCtrl_0 register (PRT0IC0)
	mov	reg[03h], 00h		; Port_0_IntCtrl_1 register (PRT0IC1)
	M8C_SetBank0
	mov	reg[01h], 00h		; Port_0_IntEn register (PRT0IE)
	mov	reg[04h], 00h		; Port_1_Data register (PRT1DR)
	M8C_SetBank1
	mov	reg[04h], c7h		; Port_1_DriveMode_0 register (PRT1DM0)
	mov	reg[05h], 38h		; Port_1_DriveMode_1 register (PRT1DM1)
	M8C_SetBank0
	mov	reg[07h], 18h		; Port_1_DriveMode_2 register (PRT1DM2)
	mov	reg[06h], e3h		; Port_1_GlobalSelect register (PRT1GS)
	M8C_SetBank1
	mov	reg[06h], 00h		; Port_1_IntCtrl_0 register (PRT1IC0)
	mov	reg[07h], 00h		; Port_1_IntCtrl_1 register (PRT1IC1)
	M8C_SetBank0
	mov	reg[05h], 00h		; Port_1_IntEn register (PRT1IE)
	mov	reg[08h], 00h		; Port_2_Data register (PRT2DR)
	M8C_SetBank1
	mov	reg[08h], 7fh		; Port_2_DriveMode_0 register (PRT2DM0)
	mov	reg[09h], 80h		; Port_2_DriveMode_1 register (PRT2DM1)
	M8C_SetBank0
	mov	reg[0bh], 80h		; Port_2_DriveMode_2 register (PRT2DM2)
	mov	reg[0ah], 00h		; Port_2_GlobalSelect register (PRT2GS)
	M8C_SetBank1
	mov	reg[0ah], 00h		; Port_2_IntCtrl_0 register (PRT2IC0)
	mov	reg[0bh], 00h		; Port_2_IntCtrl_1 register (PRT2IC1)
	M8C_SetBank0
	mov	reg[09h], 00h		; Port_2_IntEn register (PRT2IE)
	mov	reg[0ch], 00h		; Port_3_Data register (PRT3DR)
	M8C_SetBank1
	mov	reg[0ch], 00h		; Port_3_DriveMode_0 register (PRT3DM0)
	mov	reg[0dh], 00h		; Port_3_DriveMode_1 register (PRT3DM1)
	M8C_SetBank0
	mov	reg[0fh], 00h		; Port_3_DriveMode_2 register (PRT3DM2)
	mov	reg[0eh], 00h		; Port_3_GlobalSelect register (PRT3GS)
	M8C_SetBank1
	mov	reg[0eh], 00h		; Port_3_IntCtrl_0 register (PRT3IC0)
	mov	reg[0fh], 00h		; Port_3_IntCtrl_1 register (PRT3IC1)
	M8C_SetBank0
	mov	reg[0dh], 00h		; Port_3_IntEn register (PRT3IE)
	mov	reg[10h], 00h		; Port_4_Data register (PRT4DR)
	M8C_SetBank1
	mov	reg[10h], 00h		; Port_4_DriveMode_0 register (PRT4DM0)
	mov	reg[11h], 00h		; Port_4_DriveMode_1 register (PRT4DM1)
	M8C_SetBank0
	mov	reg[13h], 00h		; Port_4_DriveMode_2 register (PRT4DM2)
	mov	reg[12h], 00h		; Port_4_GlobalSelect register (PRT4GS)
	M8C_SetBank1
	mov	reg[12h], 00h		; Port_4_IntCtrl_0 register (PRT4IC0)
	mov	reg[13h], 00h		; Port_4_IntCtrl_1 register (PRT4IC1)
	M8C_SetBank0
	mov	reg[11h], 00h		; Port_4_IntEn register (PRT4IE)
	mov	reg[14h], 00h		; Port_5_Data register (PRT5DR)
	M8C_SetBank1
	mov	reg[14h], 00h		; Port_5_DriveMode_0 register (PRT5DM0)
	mov	reg[15h], 00h		; Port_5_DriveMode_1 register (PRT5DM1)
	M8C_SetBank0
	mov	reg[17h], 00h		; Port_5_DriveMode_2 register (PRT5DM2)
	mov	reg[16h], 00h		; Port_5_GlobalSelect register (PRT5GS)
	M8C_SetBank1
	mov	reg[16h], 00h		; Port_5_IntCtrl_0 register (PRT5IC0)
	mov	reg[17h], 00h		; Port_5_IntCtrl_1 register (PRT5IC1)
	M8C_SetBank0
	mov	reg[15h], 00h		; Port_5_IntEn register (PRT5IE)
	mov	reg[18h], 00h		; Port_6_Data register (PRT6DR)
	M8C_SetBank1
	mov	reg[18h], 00h		; Port_6_DriveMode_0 register (PRT6DM0)
	mov	reg[19h], 00h		; Port_6_DriveMode_1 register (PRT6DM1)
	M8C_SetBank0
	mov	reg[1bh], 00h		; Port_6_DriveMode_2 register (PRT6DM2)
	mov	reg[1ah], 00h		; Port_6_GlobalSelect register (PRT6GS)
	M8C_SetBank1
	mov	reg[1ah], 00h		; Port_6_IntCtrl_0 register (PRT6IC0)
	mov	reg[1bh], 00h		; Port_6_IntCtrl_1 register (PRT6IC1)
	M8C_SetBank0
	mov	reg[19h], 00h		; Port_6_IntEn register (PRT6IE)
	mov	reg[1ch], 00h		; Port_7_Data register (PRT7DR)
	M8C_SetBank1
	mov	reg[1ch], 00h		; Port_7_DriveMode_0 register (PRT7DM0)
	mov	reg[1dh], 00h		; Port_7_DriveMode_1 register (PRT7DM1)
	M8C_SetBank0
	mov	reg[1fh], 00h		; Port_7_DriveMode_2 register (PRT7DM2)
	mov	reg[1eh], 00h		; Port_7_GlobalSelect register (PRT7GS)
	M8C_SetBank1
	mov	reg[1eh], 00h		; Port_7_IntCtrl_0 register (PRT7IC0)
	mov	reg[1fh], 00h		; Port_7_IntCtrl_1 register (PRT7IC1)
	M8C_SetBank0
	mov	reg[1dh], 00h		; Port_7_IntEn register (PRT7IE)
	M8C_SetBank0
	ret


; PSoC Configuration file trailer PsocConfig.asm