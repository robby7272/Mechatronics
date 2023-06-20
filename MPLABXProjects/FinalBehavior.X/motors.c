
/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/
#include <xc.h>
#include <BOARD.h>
#include "motors.h"
#include <shooting.h>
#include <stdio.h>
#include "pwm.h"
#include "IO_Ports.h"
/**
 * @Function MOTORS_Init(void)
 * @param None
 * @return void
 * @brief  Initializes motors to neutral position
 * @author Max Dunne, 2013.08.25 */
void MOTORS_Init(void) {
    PWM_AddPins(PWM_PORTZ06);
    PWM_AddPins(PWM_PORTY12);
    PWM_AddPins(PWM_PORTY04);
    PWM_AddPins(PWM_PORTX11);
    PORTZ07_TRIS = 0;
    PORTZ08_TRIS = 0;
    PORTZ09_TRIS = 0;
    PORTZ11_TRIS = 0;
    PORTX03_TRIS = 0;
    PORTX04_TRIS = 0;
    PORTX05_TRIS = 0;
    PORTX06_TRIS = 0;
}

/**
 * @Function MOTORS_Forward(void)
 * @return void
 * @brief  goes forward
 * @author Max Dunne, 2013.08.19 */
void MOTOR_1(unsigned int duty, uint8_t direction){
    if(direction == FORWARD){
        PORTX05_BIT = 0;
        PORTX06_BIT = 1;
    }
    if(direction == REVERSE){
        PORTX06_BIT = 0;
        PORTX05_BIT = 1;
    }
    PWM_SetDutyCycle(PWM_PORTY04, duty);
}

void MOTOR_2(unsigned int duty, uint8_t direction){
    if(direction == FORWARD){
        PORTX04_BIT = 0;
        PORTX03_BIT = 1;
    }
    if(direction == REVERSE){
        PORTX03_BIT = 0;
        PORTX04_BIT = 1;
    }
    PWM_SetDutyCycle(PWM_PORTX11, duty);
}

void MOTOR_3(unsigned int duty, uint8_t direction){
    if(direction == FORWARD){
        PORTZ09_BIT = 0;
        PORTZ11_BIT = 1;
    }
    if(direction == REVERSE){
        PORTZ11_BIT = 0;
        PORTZ09_BIT = 1;
    }
    PWM_SetDutyCycle(PWM_PORTZ06, duty);
}

void MOTOR_4(unsigned int duty, uint8_t direction){
    if(direction == FORWARD){
        PORTZ08_BIT = 0;
        PORTZ07_BIT = 1;
    }
    if(direction == REVERSE){
        PORTZ07_BIT = 0;
        PORTZ08_BIT = 1;
    }
    PWM_SetDutyCycle(PWM_PORTY12, duty);
}

/**
 * @Function MOTORS_Backward(void)
 * @return void
 * @brief  goes backwards
 * @note  rotates servo to remove barrier to reload
 * @author Max Dunne, 2013.08.19 */
void Move_Straight(unsigned int duty, uint8_t direction){
    MOTOR_1(duty, direction);
    MOTOR_2(duty, direction);
    MOTOR_3(duty, direction);
    MOTOR_4(duty, direction);
}

void Tank_Turn(unsigned int duty, uint8_t direction){
    MOTOR_1(duty, !direction);
    MOTOR_2(duty, !direction);
    MOTOR_3(duty, direction);
    MOTOR_4(duty, direction);
}

void Move_Sideways(unsigned int duty, uint8_t direction){
    MOTOR_1(duty, direction);
    MOTOR_2(duty, !direction);
    MOTOR_3(duty, direction);
    MOTOR_4(duty, !direction);
}

void Arc_Turn(unsigned int duty, uint8_t direction, uint8_t wheels){
    if(wheels == FRONT){
        MOTOR_1(duty, !direction);
        MOTOR_2(0, direction);
        MOTOR_3(0, direction);
        MOTOR_4(duty, direction);
    }
    if(wheels == BACK){
        MOTOR_1(0, direction);
        MOTOR_2(duty, !direction);
        MOTOR_3(duty, direction);
        MOTOR_4(0, direction);
    }
    if(wheels == RIGHT){
        MOTOR_1(duty, !direction);
        MOTOR_2(duty, !direction);
        MOTOR_3(0, direction);
        MOTOR_4(0, direction);
    }
    if(wheels == LEFT){
        MOTOR_1(0, direction);
        MOTOR_2(0, direction);
        MOTOR_3(duty, direction);
        MOTOR_4(duty, direction);
    }
}

void Move_Diagonal(unsigned int duty, uint8_t direction){
    if(direction == FR){
        MOTOR_1(0, FORWARD);
        MOTOR_2(duty, FORWARD);
        MOTOR_3(0, FORWARD);
        MOTOR_4(duty, FORWARD);
    }
    if(direction == FL){
        MOTOR_1(duty, FORWARD);
        MOTOR_2(0, FORWARD);
        MOTOR_3(duty, FORWARD);
        MOTOR_4(0, FORWARD);
    }
    if(direction == BR){
        MOTOR_1(duty, REVERSE);
        MOTOR_2(0, FORWARD);
        MOTOR_3(duty, REVERSE);
        MOTOR_4(0, FORWARD);
    }
    if(direction == BL){
        MOTOR_1(0, FORWARD);
        MOTOR_2(duty, REVERSE);
        MOTOR_3(0, FORWARD);
        MOTOR_4(duty, REVERSE);
    }
}

void Motors_Stop(void){
    MOTOR_1(0, FORWARD);
    MOTOR_2(0, FORWARD);
    MOTOR_3(0, FORWARD);
    MOTOR_4(0, FORWARD);
}
