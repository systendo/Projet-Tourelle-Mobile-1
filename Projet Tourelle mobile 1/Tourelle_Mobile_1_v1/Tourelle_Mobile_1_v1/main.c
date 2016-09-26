/**
 * \file 		main.c
 * \brief 		Projet tourelle mobile 1. Contient la boucle principale du programme.
 * \author 		Systendo
 * \version 	1.1
 * \date 		26 septembre 2016
 *
 * Ce projet utilise le projet tourelle fixe et peut détecter un PoKeanMon à la fois. L'amélioration apportée
 * est un balayage horizontal et vertical des tourelles grâce aux servo-moteurs commandés par des modules PWM
 *
 */

#include <m8c.h>
#include "PSoCAPI.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "Motor_Functions.h"
#include "camgauche.h"
#include "camdroite.h"
#include "affichage.h"
#include "InitialisationBlock.h"

/// Constantes et flags du timer
unsigned char Flag_ISR_Timer = 0;		// Flag se mettant à 1 tous les 200ms
unsigned char Flag_ISR_Timer_fast = 0;	// Flag se mettant à 1 tous les 50ms
char count;


void main(void)
{
	int *pulsewidth_Z;
	int *pulsewidth_X;
	int *a;
	int i = 0x01;
	Block camGauche;	// Correspond à une cible détectée sur la caméra gauche
	Block camDroite;	// Correspond à une cible détectée sur la caméra droite
	
	*pulsewidth_Z = 0;
	*pulsewidth_X = 0;
	*a = 0;
	
	/// Démarrage des différents modules
	SPIM_CamGauche_Start(SPIM_CamGauche_SPIM_MODE_0 | SPIM_CamGauche_SPIM_MSB_FIRST);
	SPIM_CamDroite_Start(SPIM_CamDroite_SPIM_MODE_0 | SPIM_CamDroite_SPIM_MSB_FIRST);
	UART_Start(UART_PARITY_NONE);	
	TimerCamera_Start();
	TimerCamera_EnableInt();
	LCD_Start();
	Init_Motor();
	
	/// Active les interruptions globales et locales
	M8C_EnableGInt;
	
	while(1)	// Boucle principale
	{
		if (Flag_ISR_Timer == 1){
			
			LED_Invert();
			Flag_ISR_Timer_fast = 0;
			while(getStart_CamGauche() == 0) 		// On cherche le début de frame 0xAA55AA56
			{ 
				if (Flag_ISR_Timer_fast == 1)		// Attend 50ms et met des 0 dans le bloc si aucun Pokeanmon n'est détecté
				{
					camGauche = InitialisationBlock(camGauche);
					Flag_ISR_Timer_fast = 0;
					break;
				}
			}
			
			camGauche = ValeurBlockGauche(camGauche) ;		// Récupère les données de la caméra gauche (des 0 si rien n'est détecté)
			
			Flag_ISR_Timer_fast = 0;
			while(getStart_CamDroite() == 0) 		// On cherche le début de frame 0xAA55AA56
			{ 
				if (Flag_ISR_Timer_fast == 1)		// Attend 50ms et met des 0 dans le bloc si aucun Pokeanmon n'est détecté
				{
					camDroite = InitialisationBlock(camDroite) ;
					Flag_ISR_Timer_fast = 0;
					break;
				}
			}
			
			camDroite = ValeurBlockDroit(camDroite) ;		// Récupère les données de la caméra gauche (des 0 si rien n'est détecté)
			
			// Affichage des données de position des caméras sur le LCD
			affichage(camGauche.signature, camGauche.x, camGauche.y, 
						camDroite.x, camDroite.y );
			
			//Mise en route du balayage
			i ^= 0x01;
			Motor_Balay(a, pulsewidth_Z, pulsewidth_X, i); 
			
			// Envoie des données vers l'UART (XBee)
			EnvoiBlock (camGauche); 	
			EnvoiBlock (camDroite);
			Flag_ISR_Timer = 0;
		}
	}
	
	return;
}

/// Routine d'interruption du timer
#pragma interrupt_handler TimerCamera_ISR_C
void TimerCamera_ISR_C(void)
{
	count++;
	if(count>=3)
	{
		count = 0;
		Flag_ISR_Timer = 1;	
	}
	Flag_ISR_Timer_fast = 1;
}