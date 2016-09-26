Project:      output/Tourelle_Mobile_1_v1
Build Number: 0
Date:         Mon Sep 26 16:35:21 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   027E =    638. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01B1  LoadConfigTBL_spim_cam_Bank0
       0242  LoadConfigTBL_spim_cam_Bank1
       02A9  __ctype
       041E  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   041E   0004 =      4. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       041E  __func_lit_start
       0422  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0422   0173 =    371. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0422  LoadConfigTBL_spim_cam_Ordered
       0527  LoadConfigInit
       0527  _LoadConfigInit
       053A  LoadConfig_spim_cam
       053A  _LoadConfig_spim_cam
       0595  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0595   04E3 =   1251. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0595  _UART_TX_ISR
       0596  _UART_RX_ISR
       0597  UART_EnableInt
       0597  _UART_EnableInt
       059E  _UART_DisableInt
       059E  UART_DisableInt
       05A5  _UART_SetTxIntMode
       05A5  UART_SetTxIntMode
       05B7  _UART_Start
       05B7  UART_Start
       05BE  _UART_Stop
       05BE  UART_Stop
       05C5  UART_SendData
       05C5  _UART_SendData
       05C8  _bUART_ReadTxStatus
       05C8  UART_bReadTxStatus
       05C8  bUART_ReadTxStatus
       05C8  _UART_bReadTxStatus
       05CB  _UART_bReadRxData
       05CB  bUART_ReadRxData
       05CB  _bUART_ReadRxData
       05CB  UART_bReadRxData
       05CE  UART_bReadRxStatus
       05CE  _UART_bReadRxStatus
       05CE  _bUART_ReadRxStatus
       05CE  bUART_ReadRxStatus
       05D1  _UART_TxIntMode
       05D1  UART_TxIntMode
       05E4  UART_IntCntl
       05E4  _UART_IntCntl
       060F  _UART_PutSHexByte
       060F  UART_PutSHexByte
       0622  _UART_PutSHexInt
       0622  UART_PutSHexInt
       0629  UART_PutChar
       0629  _UART_PutChar
       0631  _UART_cGetChar
       0631  UART_cGetChar
       0639  _UART_cReadChar
       0639  UART_cReadChar
       0650  _UART_iReadChar
       0650  UART_iReadChar
       0666  _UART_PutString
       0666  UART_PutString
       0678  _UART_Write
       0678  UART_Write
       06A0  UART_CWrite
       06A0  _UART_CWrite
       06CC  _UART_CPutString
       06CC  UART_CPutString
       06DE  _UART_PutCRLF
       06DE  UART_PutCRLF
       06E7  _TimerCamera_ISR
       06EB  TimerCamera_EnableInt
       06EB  _TimerCamera_EnableInt
       06EF  _TimerCamera_DisableInt
       06EF  TimerCamera_DisableInt
       06F3  _TimerCamera_Start
       06F3  TimerCamera_Start
       06F7  TimerCamera_Stop
       06F7  _TimerCamera_Stop
       06FB  TimerCamera_WritePeriod
       06FB  _TimerCamera_WritePeriod
       070D  _TimerCamera_WriteCompareValue
       070D  TimerCamera_WriteCompareValue
       071F  _TimerCamera_ReadCompareValue
       071F  TimerCamera_ReadCompareValue
       0737  TimerCamera_ReadTimerSaveCV
       0737  _TimerCamera_ReadCounter
       0737  _TimerCamera_ReadTimerSaveCV
       0737  TimerCamera_ReadCounter
       0779  TimerCamera_CaptureCounter
       0779  _TimerCamera_ReadTimer
       0779  TimerCamera_ReadTimer
       0779  _TimerCamera_CaptureCounter
       0793  _SPIM_CamGauche_ISR
       0794  _SPIM_CamGauche_EnableInt
       0794  SPIM_CamGauche_EnableInt
       0798  _SPIM_CamGauche_DisableInt
       0798  SPIM_CamGauche_DisableInt
       079C  SPIM_CamGauche_Start
       079C  _SPIM_CamGauche_Start
       07A1  _SPIM_CamGauche_Stop
       07A1  SPIM_CamGauche_Stop
       07A5  _SPIM_CamGauche_SendTxData
       07A5  SPIM_CamGauche_SendTxData
       07A8  SPIM_CamGauche_bReadRxData
       07A8  bSPIM_CamGauche_ReadRxData
       07A8  _SPIM_CamGauche_bReadRxData
       07A8  _bSPIM_CamGauche_ReadRxData
       07AB  SPIM_CamGauche_bReadStatus
       07AB  bSPIM_CamGauche_ReadStatus
       07AB  _SPIM_CamGauche_bReadStatus
       07AB  _bSPIM_CamGauche_ReadStatus
       07AE  _SPIM_CamDroite_ISR
       07AF  _SPIM_CamDroite_EnableInt
       07AF  SPIM_CamDroite_EnableInt
       07B3  SPIM_CamDroite_DisableInt
       07B3  _SPIM_CamDroite_DisableInt
       07B7  SPIM_CamDroite_Start
       07B7  _SPIM_CamDroite_Start
       07BC  _SPIM_CamDroite_Stop
       07BC  SPIM_CamDroite_Stop
       07C0  _SPIM_CamDroite_SendTxData
       07C0  SPIM_CamDroite_SendTxData
       07C3  bSPIM_CamDroite_ReadRxData
       07C3  SPIM_CamDroite_bReadRxData
       07C3  _bSPIM_CamDroite_ReadRxData
       07C3  _SPIM_CamDroite_bReadRxData
       07C6  _bSPIM_CamDroite_ReadStatus
       07C6  bSPIM_CamDroite_ReadStatus
       07C6  _SPIM_CamDroite_bReadStatus
       07C6  SPIM_CamDroite_bReadStatus
       07C9  _PWM16_ISR
       07CA  _PWM16_2_ISR
       07CB  _PWM16_2_EnableInt
       07CB  PWM16_2_EnableInt
       07CF  PWM16_2_DisableInt
       07CF  _PWM16_2_DisableInt
       07D3  PWM16_2_Start
       07D3  _PWM16_2_Start
       07D7  _PWM16_2_Stop
       07D7  PWM16_2_Stop
       07DB  PWM16_2_WritePeriod
       07DB  _PWM16_2_WritePeriod
       07E1  PWM16_2_WritePulseWidth
       07E1  _PWM16_2_WritePulseWidth
       07E7  wPWM16_2_ReadPulseWidth
       07E7  _PWM16_2_wReadPulseWidth
       07E7  _wPWM16_2_ReadPulseWidth
       07E7  PWM16_2_wReadPulseWidth
       07ED  wPWM16_2_ReadCounter
       07ED  _wPWM16_2_ReadCounter
       07ED  PWM16_2_wReadCounter
       07ED  _PWM16_2_wReadCounter
       0827  _PWM16_EnableInt
       0827  PWM16_EnableInt
       082B  _PWM16_DisableInt
       082B  PWM16_DisableInt
       082F  _PWM16_Start
       082F  PWM16_Start
       0833  PWM16_Stop
       0833  _PWM16_Stop
       0837  PWM16_WritePeriod
       0837  _PWM16_WritePeriod
       083D  PWM16_WritePulseWidth
       083D  _PWM16_WritePulseWidth
       0843  _PWM16_wReadPulseWidth
       0843  _wPWM16_ReadPulseWidth
       0843  PWM16_wReadPulseWidth
       0843  wPWM16_ReadPulseWidth
       0849  _wPWM16_ReadCounter
       0849  wPWM16_ReadCounter
       0849  PWM16_wReadCounter
       0849  _PWM16_wReadCounter
       0883  _LED_On
       0883  LED_On
       0887  _LED_Stop
       0887  LED_Off
       0887  _LED_Off
       0887  LED_Start
       0887  LED_Stop
       0887  _LED_Start
       0889  LED_Switch
       0889  _LED_Switch
       08A1  _LED_Invert
       08A1  LED_Invert
       08B0  _LED_GetState
       08B0  LED_GetState
       08C1  LCD_PrCString
       08C1  _LCD_PrCString
       08D3  LCD_HEX_STR
       08E3  LCD_PrHexByte
       08E3  _LCD_PrHexByte
       08F6  _LCD_PrHexInt
       08F6  LCD_PrHexInt
       08FD  LCD_PrString
       08FD  _LCD_PrString
       090F  LCD_WriteData
       090F  _LCD_Write_Data
       090F  _LCD_WriteData
       090F  LCD_Write_Data
       0923  LCD_Control
       0923  _LCD_Control
       09D3  _LCD_Start
       09D3  _LCD_Init
       09D3  LCD_Start
       09D3  LCD_Init
       0A42  LCD_ROW_OFFSET
       0A46  _LCD_Position
       0A46  LCD_Position
       0A56  _LCD_Delay50uTimes
       0A56  LCD_Delay50uTimes
       0A5C  LCD_Delay50u_Table
       0A64  LCD_Delay50u
       0A64  _LCD_Delay50u
       0A78  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0A78   15B4 =   5556. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0A78  __text_start
       0A78  _affichage
       0D0E  _getByte_CamDroite
       0D38  _getWord_CamDroite
       0D6F  _getStart_CamDroite
       0E07  _getByte_CamGauche
       0E31  _getWord_CamGauche
       0E68  _getStart_CamGauche
       0F00  _InitialisationBlock
       0F95  _ValeurBlockDroit
       1057  _ValeurBlockGauche
       1119  _EnvoiBlock
       11C3  _main
       1402  _TimerCamera_ISR_C
       1429  _Init_Motor
       144E  _M_Z_Rot_Hor
       14B4  _M_Z_Rot_Anti_Hor
       151A  _M_X_Rot_Hor
       154C  _M_X_Rot_Anti_Hor
       157E  _Motor_Balay
       1692  __plcall
       169E  _itoa
       1877  _utoa
       19BA  _isdigit
       19DB  _islower
       19FC  _isspace
       1A1D  _toupper
       1A5B  __csdepi
       1A8D  _csprintf
       1AF6  __cprint
       202C  __xidata_start
       202C  __text_end
       2036  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   0143 =    323. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0140  _bGetPowerSetting
       0140  bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  NO_SHADOW
       0000  Port_1_Data_SHADE
       0000  _NO_SHADOW
       0000  _Port_1_Data_SHADE
       0001  _Port_2_Data_SHADE
       0001  Port_2_Data_SHADE
       0002  Port_2_DriveMode_0_SHADE
       0002  _Port_2_DriveMode_0_SHADE
       0003  Port_2_DriveMode_1_SHADE
       0003  _Port_2_DriveMode_1_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   001D   0009 =      9. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       001D  __rZ
       001E  __rY
       001F  __rX
       0020  __r5
       0021  __r4
       0022  __r3
       0023  __r2
       0024  __r1
       0025  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   001E =     30. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0028  _count
       0029  _Flag_ISR_Timer_fast
       002A  _Flag_ISR_Timer

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/affichage.o	[ affichage.c ]
obj/camdroite.o	[ camdroite.c ]
obj/camgauche.o	[ camgauche.c ]
obj/initialisationblock.o	[ initialisationblock.c ]
obj/main.o	[ main.c ]
obj/motor_functions.o	[ motor_functions.c ]
<library>	[ uartint.asm, uart.asm, timercameraint.asm, timercamera.asm, spim_camgaucheint.asm, spim_camgauche.asm ]
[ spim_camdroiteint.asm, spim_camdroite.asm, pwm16int.asm, pwm16_2int.asm, pwm16_2.asm, pwm16.asm ]
[ psocconfigtbl.asm, psocconfig.asm, led.asm, lcd.asm, rZ.asm, rY.asm, rX.asm, r5.asm, r4.asm, r3.asm ]
[ r2.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, i_div16_block_util.asm, plcall.s, itoa.s, utoa.s ]
[ isdigit.s, islower.s, isspace.s, ctype.s, toupper.s, sprintf.s, _printf.s ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x1d
-Bspim_cam_RAM	allocated at: 0
-rwh:SSCParmBlk:0xf7.0xff

