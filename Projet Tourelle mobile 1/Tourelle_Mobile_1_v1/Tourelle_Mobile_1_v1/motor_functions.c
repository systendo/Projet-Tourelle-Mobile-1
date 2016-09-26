/**
 * \file 		motor_functions.c
 * \brief 		Fonctions pour utiliser les servo-moteurs à l'aide des modules PWM
 * \author 		Systendo
 * \version 	1.1
 * \date 		26 septembre 2016
 */

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "Motor_Functions.h"

/**
 * \fn 		void Init_Motor(void)
 * \brief 	Initialisation des Moteurs.
 *
 * \param 	aucun paramètre en entrée.
 * \return 	aucun parametre.
 */

void Init_Motor(void)
{
	PWM16_WritePeriod(PWM_PERIOD);
	PWM16_2_WritePeriod(PWM_PERIOD);
	
	PWM16_WritePulseWidth(PWM_Z_PULSEWIDTH_MIN);	// Place le moteur dans une position initiale
	PWM16_2_WritePulseWidth(PWM_X_PULSEWIDTH_MIN);
	
	PWM16_Start();
	PWM16_2_Start();	
}

/**
 * \fn 		void M_Z_Rot_Hor(int *pulsewidth_Z, int i)
 * \brief 	Moteur Z rotation horaire. 
 *
 * \param 	int *pulsewidth_Z, int i.
 * \return 	aucun parametre.
 */


void M_Z_Rot_Hor(int *pulsewidth_Z, int i)
{
	if (i == 0x01)
	{
		PWM16_Start();
	}
	if (i == 0x00)
	{
		PWM16_Stop();
		*pulsewidth_Z = *pulsewidth_Z + PWM_Z_PULSEWIDTH_INCR;
		PWM16_WritePulseWidth(*pulsewidth_Z);		
	}
}



/**
 * \fn void M_Z_Rot_Anti_Hor(int *pulsewidth_Z, int i)
 * \brief Moteur Z rotation Anti-horaire.
 *
 * \param int *pulsewidth_Z, int i.
 * \return aucun parametre.
 */

void M_Z_Rot_Anti_Hor(int *pulsewidth_Z, int i)
{
	if (i == 0x01)
	{
		PWM16_Start();
	}
	if (i == 0x00)
	{
		PWM16_Stop();
		*pulsewidth_Z = *pulsewidth_Z - PWM_Z_PULSEWIDTH_INCR;	
		PWM16_WritePulseWidth(*pulsewidth_Z);	
	}	
}

/**
 * \fn void M_X_Rot_Hor(int *pulsewidth_X)
 * \brief Moteur X rotation horaire.
 *
 * \param int *pulsewidth_X.
 * \return aucun parametre.
 */

void M_X_Rot_Hor(int *pulsewidth_X)
{
	*pulsewidth_X = PWM_X_PULSEWIDTH_MAX;
	PWM16_2_WritePulseWidth(*pulsewidth_X);	
}



/**
 * \fn void M_X_Rot_Anti_Hor(int *pulsewidth_X)
 * \brief Moteur X rotation Anti-horaire.
 *
 * \param int *pulsewidth_X.
 * \return aucun parametre.
 */

void M_X_Rot_Anti_Hor(int *pulsewidth_X)
{
	*pulsewidth_X = PWM_X_PULSEWIDTH_MIN;
	PWM16_2_WritePulseWidth(*pulsewidth_X);
}

/**
 * \fn void Motor_Balay(int *a, int *pulsewidth_Z, int *pulsewidth_X, int i)
 * \brief Balayage des moteurs.
 *
 * \param 	int *a				Pointeur vers un int permettant de vérifier si le maximum de rotation a été
								dépassé
			int *pulsewidth_Z	
			int *pulsewidth_X	
			int i				
 * \return aucun parametre.
 */

void Motor_Balay(int *a, int *pulsewidth_Z, int *pulsewidth_X, int i)
{
	if(*a == 1)
	{
		M_Z_Rot_Hor(pulsewidth_Z, i);				// La caméra tourne selon Z de 0 vers 180°
		
		if(*pulsewidth_Z >= PWM_Z_PULSEWIDTH_MAX) 	// La rotation autour de l'axe Z est supérieure à 180°
		{
			*a = 0;
			M_X_Rot_Hor(pulsewidth_X);				// La caméra tourne selon X et se baisse
		}
	}
	else if(*a == 0)
	{
		M_Z_Rot_Anti_Hor(pulsewidth_Z, i);			// La caméra tourne selon Z de 180 vers 0°
		
		if(*pulsewidth_Z <= PWM_Z_PULSEWIDTH_MIN)	// La rotation autour de l'axe Z est inférieure à 0°
		{
			*a = 1;
			M_X_Rot_Anti_Hor(pulsewidth_X);			// La caméra tourne selon X et s'élève
		}
	}	
}

