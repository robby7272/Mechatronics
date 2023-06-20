#include <BOARD.h>
#include <xc.h>
#include <stdio.h>
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "timers.h"
#include "serial.h"
#include "AD.h"
#include "pwm.h"
#include "shooting.h"
#include "motors.h"


#define main2
#ifdef main2
void main(void) {
    ES_Return_t ErrorType;

    BOARD_Init();
    AD_Init();
    ES_Timer_Init();
    SERIAL_Init();
    PWM_Init();
    SHOOTING_Init();
    MOTORS_Init();
    TIMERS_Init();

    printf("Starting ES Framework Template\r\n");
    printf("using the 2nd Generation Events & Services Framework\r\n");
    
    AD_AddPins(AD_PORTV4);
    AD_AddPins(AD_PORTV3);
    AD_AddPins(AD_PORTV5);                                                    

    
    
//         Launcher Code
//    TIMERS_SetTimer(1, 3000);
//    TIMERS_StartTimer(1);
//    while(TIMERS_IsTimerActive(1));
//    TIMERS_ClearTimerExpired(1);
//    
//    SHOOTING_Shoot();
//    
//    TIMERS_SetTimer(1, 3000);
//    TIMERS_StartTimer(1);
//    while(TIMERS_IsTimerActive(1));
//    TIMERS_ClearTimerExpired(1);
//    
//    SHOOTING_Reload();
//    printf("bruh what\n\r");
//    while(1);
//    
//    TIMERS_SetTimer(1, 3000);
//    TIMERS_StartTimer(1);
//    while(TIMERS_IsTimerActive(1));
//    TIMERS_ClearTimerExpired(1);
//    
//    SHOOTING_Shoot();
//    
//    TIMERS_SetTimer(1, 3000);
//    TIMERS_StartTimer(1);
//    while(TIMERS_IsTimerActive(1));
//    TIMERS_ClearTimerExpired(1);
//    
//    SHOOTING_Reload();
//    
//    TIMERS_SetTimer(1, 3000);
//    TIMERS_StartTimer(1);
//    while(TIMERS_IsTimerActive(1));
//    TIMERS_ClearTimerExpired(1);
//    
//    SHOOTING_Shoot();
//    
//    TIMERS_SetTimer(1, 3000);
//    TIMERS_StartTimer(1);
//    while(TIMERS_IsTimerActive(1));
//    TIMERS_ClearTimerExpired(1);
//    
//    SHOOTING_Reload();
//    
//
//  
                                                                

    // now initialize the Events and Services Framework and start it running
    //#define TRACK_READING
    #ifdef TRACK_READING
    unsigned int trackvolts;
    unsigned int trackvolts2;
    unsigned int beaconvolts;
    
    while(1){
        beaconvolts = AD_ReadADPin(AD_PORTV5);
        printf("Beacon voltage = %d\r\n", beaconvolts);
//        trackvolts = AD_ReadADPin(AD_PORTV4);
//        printf("Track 1 voltage = %d\r\n", trackvolts);
//        trackvolts2 = AD_ReadADPin(AD_PORTV3);
//        printf("Track 2 voltage = %d\r\n", trackvolts2);
        TIMERS_SetTimer(1, 500);
        TIMERS_StartTimer(1);
        while(TIMERS_IsTimerActive(1));
        TIMERS_ClearTimerExpired(1);
    }
    #endif
    
    ErrorType = ES_Initialize();
    if (ErrorType == Success) {
        ErrorType = ES_Run();
    }
    
    //if we got to here, there was an error
    switch (ErrorType) {
        case FailedPointer:
            printf("Failed on NULL pointer");
            break;
        case FailedInit:
            printf("Failed Initialization");
            break;
        default:
            printf("Other Failure: %d", ErrorType);
            break;
    }
    

};
#endif

//void main(void) {
//    BOARD_Init();
//    SERIAL_Init();
//    unsigned int values[14] = {593,803,452,640,597,549,576,700,706,602,764,847,770,700};
//    double times[14] = {1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300};
//    FindPath(values, times);
//    while(1);
//}

/*------------------------------- Footnotes -------------------------------*/
/*------------------------------ End of file ------------------------------*/
