

/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/
#include <xc.h>
#include <BOARD.h>

#include <shooting.h>
#include <stdio.h>
#include "pwm.h"

#define MAXSERVO 100
#define MINSERVO 50

/**
 * @Function SHOOTING_Init(void)
 * @param unsigned int
 * @return void
 * @brief  Initializes servo to neutral position
 * @author Max Dunne, 2013.08.25 */
void SHOOTING_Init(void) {
    PWM_AddPins(PWM_PORTY10);
    PWM_SetFrequency(MIN_PWM_FREQ);
    PWM_SetDutyCycle(PWM_PORTY10, 75);
}

/**
 * @Function SHOOTING_Shoot(void)
 * @return void
 * @brief  shoots one ping pong ball
 * @note  rotates servo to remove barrier to shot
 * @author Max Dunne, 2013.08.19 */
void SHOOTING_Shoot(void) {
    PWM_SetDutyCycle(PWM_PORTY10, 65);
}

/**
 * @Function SHOOTING_Reload(void)
 * @return void
 * @brief  reloads one ping pong ball
 * @note  rotates servo to remove barrier to reload
 * @author Max Dunne, 2013.08.19 */
void SHOOTING_Reload(void) {
    PWM_SetDutyCycle(PWM_PORTY10, 75);
}

