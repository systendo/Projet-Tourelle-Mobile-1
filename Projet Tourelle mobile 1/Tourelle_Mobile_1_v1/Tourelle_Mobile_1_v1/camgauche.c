/**
 * \file 		camgauche.c
 * \brief 		Fonctions utilisant le SPIM lié à la caméra gauche
 * \author 		Systendo
 * \version 	3.5
 * \date 		23 septembre 2016
 */

#include <m8c.h>
#include "PSoCAPI.h"
#include "camgauche.h"
#include "const.h"

/**
 * \fn 		static BYTE getByte_CamGauche(char out)
 * \brief 	Fonction d'envoi et de réception de 8 bits de data entre la PixyCam de gauche et le Psoc.
 *
 * \param 	out qui contient les 8 bits de data à envoyer à la PixyCam de gauche.
 * \return 	Data_Read qui contient les 8 bits de data envoyés par la PixyCam de gauche.
 */

BYTE getByte_CamGauche(char out)
{
	char Data_Read = 0;
	SPIM_CamGauche_SendTxData(out);
	while (!(SPIM_CamGauche_bReadStatus() && SPIM_CamGauche_SPIM_SPI_COMPLETE)){};
	Data_Read = SPIM_CamGauche_bReadRxData();
	return (Data_Read);
}

/**
 * \fn 		static short getWord_CamGauche(void)
 * \brief 	Fonction qui réceptionne deux datas sur 8bits provenant de la PixyCam de gauche et les fusionne pour retourner une data de 16 bits.
 *  		L'ordre d'envoi des octets est en big endian donc pas d'inversion nécessaire.
 * \param 	aucun paramètre en entrée.
 * \return 	w qui contient 16 bits de donnée provenant de la PixyCam de gauche.
 */

int getWord_CamGauche(void)
{ 
	int w;
	char c, cout = 0;

	w = getByte_CamGauche(PIXY_SYNC_BYTE); /// envoie un BYTE de synchronisation 

	w <<= 8;
	c = getByte_CamGauche(cout); 		   /// envoie un BYTE de data 
	w |= c;

	return w;
}

/**
 * \fn 		int getStart_CamGauche(void)
 * \brief 	Fonction qui détecte le début de la transmission d'une série de données par la PixyCam de gauche.
 * 			Le début d'une série de données est indiqué par l'envoi de deux bytes pouvant prendre les valeurs aa55 ou aa56.
 * 			La combinaison obtenue annonce le type de donnée qui va être transmise ( aa55 aa55 : Normal et aa55 aa56 : Couleur)
 *
 * \param 	aucun paramètre en entrée.
 * \return 	1 si des mots de départ sont reçus, retourne 0 sinon.
 */

int getStart_CamGauche(void)
{
	int w, lastw;

	lastw = 0xffff;

	while(1)
	{
		w = getWord_CamGauche();
		
		if (w==0 && lastw==0)
		  return 0; 											 /// Pas de mot de départ
		else if (w==PIXY_START_WORD && lastw==PIXY_START_WORD)
		{
			return 1;											 /// Mots de départ trouvés, aa55 et aa55 : annonce la transmission de données normales
		}
		else if (w==PIXY_START_WORD_CC && lastw==PIXY_START_WORD)/// Mots de départ aa55 aa56 trouvés : annonce la transmission de données couleurs
		{							 
			return 1;
		}    
	
	else if (w==PIXY_START_WORDX) getByte_CamGauche(0); 		 /// On est plus synchronisé, renvoie 0 
	
	lastw = w; 
	}
	
	return 0;
}