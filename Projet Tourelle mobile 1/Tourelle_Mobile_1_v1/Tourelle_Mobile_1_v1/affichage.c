/**
 * \file 		affichage.c
 * \brief 		Fonction d'affichage sur le LCD
 * \author 		Systendo
 * \version 	3.5
 * \date 		23 septembre 2016
 */

#include <m8c.h>
#include "PSoCAPI.h"
#include "affichage.h"
#include "const.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * \void affichage(int signature_aff, int x_aff_gauche, int y_aff_gauche, int x_aff_droite, int y_aff_droite)
 * \brief Cette fonction affiche les données propres à l'objet sur le LCD.
 *
 * \param signature_aff, x_aff_gauche, int y_aff_gauche, x_aff_droite,y_aff_droite contiennent les différentes données de position, de taille et de signature de l'objet détecté.
 * \return Aucune donnée n'est retourné
 */

void affichage(	int signature_aff, 
				int x_aff_gauche, 
				int y_aff_gauche, 
				int x_aff_droite,
				int y_aff_droite)
{
	char *LCDStr;	
	
	csprintf(LCDStr, "S:%d", signature_aff);
	LCD_Position(0,0);
	LCD_PrString(LCDStr);
	
	if(signature_aff <= 10) LCD_PrCString(" ");
	if(signature_aff <= 100) LCD_PrCString(" ");
	
	csprintf(LCDStr, "X=%d", x_aff_gauche);
	LCD_Position(0,5);
	LCD_PrString(LCDStr);

	if(x_aff_gauche <= 10) LCD_PrCString(" ");
	if(x_aff_gauche <= 100) LCD_PrCString(" ");
	if(x_aff_gauche <= 1000) LCD_PrCString(" ");
	
	csprintf(LCDStr, "Y=%d", y_aff_gauche);
	LCD_Position(0,11);
	LCD_PrString(LCDStr);

	if(y_aff_gauche <= 10) LCD_PrCString(" ");
	if(y_aff_gauche <= 100) LCD_PrCString(" ");
	if(y_aff_gauche <= 1000) LCD_PrCString(" ");
	
	csprintf(LCDStr, "X=%d", x_aff_droite);
	LCD_Position(1,5);
	LCD_PrString(LCDStr);
	
	if(x_aff_droite <= 10) LCD_PrCString(" ");
	if(x_aff_droite <= 100) LCD_PrCString(" ");
	if(x_aff_droite <= 1000) LCD_PrCString(" ");
	
	csprintf(LCDStr, "Y=%d", y_aff_droite);
	LCD_Position(1,11);
	LCD_PrString(LCDStr);			

	if(y_aff_droite <= 10) LCD_PrCString(" ");
	if(y_aff_droite <= 100) LCD_PrCString(" ");
	if(y_aff_droite <= 1000) LCD_PrCString(" ");
	
	return;
}