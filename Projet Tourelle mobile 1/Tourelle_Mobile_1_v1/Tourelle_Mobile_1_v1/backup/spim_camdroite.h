//*****************************************************************************
//*****************************************************************************
//  FILENAME: SPIM_CamDroite.h
//   Version: 2.6, Updated on 2015/3/4 at 22:27:42
//  Generated by PSoC Designer 5.4.3191
//
//  DESCRIPTION:
//    SPIM_CamDroite SPIM User Module header file.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef SPIM_CamDroite_INCLUDE
#define SPIM_CamDroite_INCLUDE

#include <m8c.h>

#pragma fastcall16  SPIM_CamDroite_EnableInt
#pragma fastcall16  SPIM_CamDroite_DisableInt
#pragma fastcall16  SPIM_CamDroite_Start
#pragma fastcall16  SPIM_CamDroite_Stop
#pragma fastcall16  SPIM_CamDroite_SendTxData
#pragma fastcall16  SPIM_CamDroite_bReadRxData
#pragma fastcall16  SPIM_CamDroite_bReadStatus

//-------------------------------------------------
// Prototypes of the SPIM_CamDroite API.
//-------------------------------------------------
extern void  SPIM_CamDroite_EnableInt(void);
extern void  SPIM_CamDroite_DisableInt(void);
extern void  SPIM_CamDroite_Start(BYTE bConfiguration);
extern void  SPIM_CamDroite_Stop(void);
extern void  SPIM_CamDroite_SendTxData(BYTE bTxData);
extern BYTE  SPIM_CamDroite_bReadRxData(void);
extern BYTE  SPIM_CamDroite_bReadStatus(void);

// Old function prototypes, Do not use
// These will be removed in a future release
#pragma fastcall16 bSPIM_CamDroite_ReadRxData
#pragma fastcall16 bSPIM_CamDroite_ReadStatus
extern BYTE bSPIM_CamDroite_ReadRxData(void);
extern BYTE bSPIM_CamDroite_ReadStatus(void);


//-------------------------------------------------
// Constants for SPIM_CamDroite API's.
//-------------------------------------------------

#define SPIM_CamDroite_INT_REG_ADDR            ( 0x0e1 )
#define SPIM_CamDroite_bINT_MASK               ( 0x80 )

//*******************************
// SPI Configuration definitions
//*******************************
#define  SPIM_CamDroite_SPIM_MODE_0            0x00      // MODE 0 - Leading edge latches data - pos clock
#define  SPIM_CamDroite_SPIM_MODE_1            0x02      // MODE 1 - Leading edge latches data - neg clock
#define  SPIM_CamDroite_SPIM_MODE_2            0x04      // MODE 2 - Trailing edge latches data - pos clock
#define  SPIM_CamDroite_SPIM_MODE_3            0x06      // MODE 3 - Trailing edge latches data - neg clock
#define  SPIM_CamDroite_SPIM_LSB_FIRST         0x80      // LSB bit transmitted/received first
#define  SPIM_CamDroite_SPIM_MSB_FIRST         0x00      // MSB bit transmitted/received first

//********************************
// SPI Status register masks
//********************************
#define  SPIM_CamDroite_SPIM_RX_OVERRUN_ERROR  0x40      // Overrun error in received data
#define  SPIM_CamDroite_SPIM_TX_BUFFER_EMPTY   0x10      // TX Buffer register is ready for next data byte
#define  SPIM_CamDroite_SPIM_RX_BUFFER_FULL    0x08      // RX Buffer register has received current data
#define  SPIM_CamDroite_SPIM_SPI_COMPLETE      0x20      // SPI Tx/Rx cycle has completed

//-------------------------------------------------
// Register Addresses for SPIM_CamDroite
//-------------------------------------------------
#pragma ioport  SPIM_CamDroite_CONTROL_REG: 0x03f          //Control register
BYTE            SPIM_CamDroite_CONTROL_REG;
#pragma ioport  SPIM_CamDroite_SHIFT_REG:   0x03c          //TX Shift Register register
BYTE            SPIM_CamDroite_SHIFT_REG;
#pragma ioport  SPIM_CamDroite_TX_BUFFER_REG:   0x03d      //TX Buffer Register
BYTE            SPIM_CamDroite_TX_BUFFER_REG;
#pragma ioport  SPIM_CamDroite_RX_BUFFER_REG:   0x03e      //RX Buffer Register
BYTE            SPIM_CamDroite_RX_BUFFER_REG;
#pragma ioport  SPIM_CamDroite_FUNCTION_REG:    0x13c      //Function register
BYTE            SPIM_CamDroite_FUNCTION_REG;
#pragma ioport  SPIM_CamDroite_INPUT_REG:   0x13d          //Input register
BYTE            SPIM_CamDroite_INPUT_REG;
#pragma ioport  SPIM_CamDroite_OUTPUT_REG:  0x13e          //Output register
BYTE            SPIM_CamDroite_OUTPUT_REG;

#endif
// end of file SPIM_CamDroite.h