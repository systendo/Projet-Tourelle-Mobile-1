//*****************************************************************************
//*****************************************************************************
//  FILENAME: PWM16_2.h
//   Version: 2.5, Updated on 2015/3/4 at 22:26:51
//  Generated by PSoC Designer 5.4.3191
//
//  DESCRIPTION: PWM16 User Module C Language interface file
//-----------------------------------------------------------------------------
//  Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef PWM16_2_INCLUDE
#define PWM16_2_INCLUDE

#include <m8c.h>

#pragma fastcall16 PWM16_2_EnableInt
#pragma fastcall16 PWM16_2_DisableInt
#pragma fastcall16 PWM16_2_Start
#pragma fastcall16 PWM16_2_Stop
#pragma fastcall16 PWM16_2_wReadCounter              // Read  DR0
#pragma fastcall16 PWM16_2_WritePeriod               // Write DR1
#pragma fastcall16 PWM16_2_wReadPulseWidth           // Read  DR2
#pragma fastcall16 PWM16_2_WritePulseWidth           // Write DR2

// The following symbols are deprecated.
// They may be omitted in future releases
//
#pragma fastcall16 wPWM16_2_ReadCounter              // Read  DR0 (Deprecated)
#pragma fastcall16 wPWM16_2_ReadPulseWidth           // Read  DR2 (Deprecated)


//-------------------------------------------------
// Prototypes of the PWM16_2 API.
//-------------------------------------------------

extern void PWM16_2_EnableInt(void);                  // Proxy Class 1
extern void PWM16_2_DisableInt(void);                 // Proxy Class 1
extern void PWM16_2_Start(void);                      // Proxy Class 1
extern void PWM16_2_Stop(void);                       // Proxy Class 1
extern WORD PWM16_2_wReadCounter(void);               // Proxy Class 2
extern void PWM16_2_WritePeriod(WORD wPeriod);        // Proxy Class 1
extern WORD PWM16_2_wReadPulseWidth(void);            // Proxy Class 1
extern void PWM16_2_WritePulseWidth(WORD wPulseWidth);// Proxy Class 1

// The following functions are deprecated.
// They may be omitted in future releases
//
extern WORD wPWM16_2_ReadCounter(void);            // Deprecated
extern WORD wPWM16_2_ReadPulseWidth(void);         // Deprecated


//-------------------------------------------------
// Constants for PWM16_2 API's.
//-------------------------------------------------

#define PWM16_2_CONTROL_REG_START_BIT          ( 0x01 )
#define PWM16_2_INT_REG_ADDR                   ( 0x0df )
#define PWM16_2_INT_MASK                       ( 0x02 )


//--------------------------------------------------
// Constants for PWM16_2 user defined values
//--------------------------------------------------

#define PWM16_2_PERIOD                         ( 0x4f42 )
#define PWM16_2_PULSE_WIDTH                    ( 0x251c )


//-------------------------------------------------
// Register Addresses for PWM16_2
//-------------------------------------------------

#pragma ioport  PWM16_2_COUNTER_LSB_REG:    0x040          //DR0 Count register LSB
BYTE            PWM16_2_COUNTER_LSB_REG;
#pragma ioport  PWM16_2_COUNTER_MSB_REG:    0x044          //DR0 Count register MSB
BYTE            PWM16_2_COUNTER_MSB_REG;
#pragma ioport  PWM16_2_PERIOD_LSB_REG: 0x041              //DR1 Period register LSB
BYTE            PWM16_2_PERIOD_LSB_REG;
#pragma ioport  PWM16_2_PERIOD_MSB_REG: 0x045              //DR1 Period register MSB
BYTE            PWM16_2_PERIOD_MSB_REG;
#pragma ioport  PWM16_2_COMPARE_LSB_REG:    0x042          //DR2 Compare register LSB
BYTE            PWM16_2_COMPARE_LSB_REG;
#pragma ioport  PWM16_2_COMPARE_MSB_REG:    0x046          //DR2 Compare register MSB
BYTE            PWM16_2_COMPARE_MSB_REG;
#pragma ioport  PWM16_2_CONTROL_LSB_REG:    0x043          //Control register LSB
BYTE            PWM16_2_CONTROL_LSB_REG;
#pragma ioport  PWM16_2_CONTROL_MSB_REG:    0x047          //Control register MSB
BYTE            PWM16_2_CONTROL_MSB_REG;
#pragma ioport  PWM16_2_FUNC_LSB_REG:   0x140              //Function register LSB
BYTE            PWM16_2_FUNC_LSB_REG;
#pragma ioport  PWM16_2_FUNC_MSB_REG:   0x144              //Function register MSB
BYTE            PWM16_2_FUNC_MSB_REG;
#pragma ioport  PWM16_2_INPUT_LSB_REG:  0x141              //Input register LSB
BYTE            PWM16_2_INPUT_LSB_REG;
#pragma ioport  PWM16_2_INPUT_MSB_REG:  0x145              //Input register MSB
BYTE            PWM16_2_INPUT_MSB_REG;
#pragma ioport  PWM16_2_OUTPUT_LSB_REG: 0x142              //Output register LSB
BYTE            PWM16_2_OUTPUT_LSB_REG;
#pragma ioport  PWM16_2_OUTPUT_MSB_REG: 0x146              //Output register MSB
BYTE            PWM16_2_OUTPUT_MSB_REG;
#pragma ioport  PWM16_2_INT_REG:       0x0df               //Interrupt Mask Register
BYTE            PWM16_2_INT_REG;


//-------------------------------------------------
// PWM16_2 Macro 'Functions'
//-------------------------------------------------

#define PWM16_2_Start_M \
   ( PWM16_2_CONTROL_LSB_REG |=  PWM16_2_CONTROL_REG_START_BIT )

#define PWM16_2_Stop_M  \
   ( PWM16_2_CONTROL_LSB_REG &= ~PWM16_2_CONTROL_REG_START_BIT )

#define PWM16_2_EnableInt_M   \
   M8C_EnableIntMask(  PWM16_2_INT_REG, PWM16_2_INT_MASK )

#define PWM16_2_DisableInt_M  \
   M8C_DisableIntMask( PWM16_2_INT_REG, PWM16_2_INT_MASK )

#endif
// end of file PWM16_2.h