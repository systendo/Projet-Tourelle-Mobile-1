#include <m8c.h>
#include "PSoCAPI.h"
#include "const.h"
#include "camgauche.h"
#include "camdroite.h"

/**
 * \fn 		Block InitialisationBlock(Block block)
 * \brief 	Initialise les différentes variables d'une structure Block à 0.
 * \param	block est la structure Block à initialiser
 * \return 	Retourne le Block modifié
 */

Block InitialisationBlock(Block block){
	block.checksum = 0;
	block.signature = 0;
	block.x = 0;
	block.y = 0;
	block.width = 0;
	block.height = 0;
	return (block) ;
}	

/**
 * \fn 		Block ValeurBlockDroit(void)
 * \brief 	Fonction qui retourne une structure Block contenant les données envoyées par la PixyCam de droite.
 * \param 	block est la structure Block contenant les données de la caméra droite
 * \return 	block est une structure Block contenant les données envoyées par la PixyCam de droite.
 */

Block ValeurBlockDroit (Block block) {
	block.checksum = getWord_CamDroite();
	block.signature = getWord_CamDroite();
	block.x = getWord_CamDroite();
	block.y = getWord_CamDroite();
	block.width = getWord_CamDroite();
	block.height = getWord_CamDroite();
	return (block);
}

/**
 * \fn 		Block ValeurBlockGauche (Block block)
 * \brief 	Fonction qui retourne une structure Block contenant les données envoyées par la PixyCam de gauche.
 * \param 	block est la structure Block contenant les données de la caméra gauche
 * \return 	block est une structure Block contenant les données envoyées par la PixyCam de gauche.
 */

Block ValeurBlockGauche (Block block) {
	block.checksum = getWord_CamGauche();
	block.signature = getWord_CamGauche();
	block.x = getWord_CamGauche();
	block.y = getWord_CamGauche();
	block.width = getWord_CamGauche();
	block.height = getWord_CamGauche();
	return (block) ;
}

/**
 * \fn Block EnvoiBlock (Block block)
 * \brief Fonction qui envoie à l'Xbee les données contenues dans une structure Block. 
	Les données sont envoyées en 16 bits via UART.
 * \param block est la structure Block contenant les données à envoyer.
 * \return aucune donné retournée.
 */

void EnvoiBlock ( Block block){
	UART_PutSHexInt(block.signature);
	UART_PutSHexInt(block.x);
	UART_PutSHexInt(block.y);
	UART_PutSHexInt(block.width);
	UART_PutSHexInt(block.height);
}