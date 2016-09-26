/**
 * \file 		const.h
 * \brief 		Constantes et 
 * \author 		Systendo
 * \version 	3.5
 * \date 		23 septembre 2016
 */

#define PIXY_START_WORD             0xaa55
#define PIXY_START_WORD_CC          0xaa56
#define PIXY_START_WORDX			0x55aa

#define PIXY_SYNC_BYTE              0x5a  /// Pour synchroniser les données SPI
#define PIXY_SYNC_BYTE_DATA         0x5b  /// to sync/indicate SPI send data


/**
 * \struct Block
 * \brief Structure pouvant accueillir les données envoyés par les PixyCams
 */
typedef struct
{
	int signature;
	int checksum;
	int x;
	int y;
	int width;
	int height;
} Block;