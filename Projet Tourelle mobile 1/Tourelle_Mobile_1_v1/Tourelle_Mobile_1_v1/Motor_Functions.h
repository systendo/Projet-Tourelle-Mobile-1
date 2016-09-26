/**
 * \file 		Motor_Functions.h
 * \brief 		Fonctions pour utiliser les servo-moteurs à l'aide des modules PWM
 * \author 		Systendo
 * \version 	1.1
 * \date 		26 septembre 2016
 */

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "const.h"

#define PWM_PERIOD     				20290	// 20290 périodes de VC2 = 20ms (période de fonctionnement pour le PWM)
#define PWM_Z_PULSEWIDTH_MIN 		540		// 0.5 ms
#define PWM_Z_PULSEWIDTH_MAX 		2200	// 2ms
#define	PWM_Z_PULSEWIDTH_INCR	 	120
#define PWM_X_PULSEWIDTH_MIN 		1000
#define PWM_X_PULSEWIDTH_MAX 		2000

/**
 * Correspondance angle et Pulsewidth
 * Pulsewidth			540		955		1370	1785	2200	
 * Angle (°)			0		45		90		135		180
 * Rapport cyclique		5%								10%
 */

void Init_Motor(void);
void M_Z_Rot_Hor(int *, int);
void M_Z_Rot_Anti_Hor(int *, int);
void M_X_Rot_Hor(int *);
void M_X_Rot_Anti_Hor(int *);
void Motor_Balay(int *, int *, int *, int);
