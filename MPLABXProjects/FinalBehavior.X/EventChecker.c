/*
 *
 * Template file to set up typical EventCheckers for the  Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the
 * names will have to be changed to match your code.
 *
 * This EventCheckers file will work with both FSM's and HSM's.
 *
 * Remember that EventCheckers should only return TRUE when an event has occured,
 * and that the event is a TRANSITION between two detectable differences. They
 * should also be atomic and run as fast as possible for good results.
 *
 * This file includes a test harness that will run the event detectors listed in the
 * ES_Configure file in the project, and will conditionally compile main if the macro
 * EVENTCHECKER_TEST is defined (either in the project or in the file). This will allow
 * you to check you event detectors in their own project, and then leave them untouched
 * for your project unless you need to alter their post functions.
 *
 * Created on September 27, 2013, 8:37 AM
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include <stdint.h>
#include <stdio.h>
#include "ES_Configure.h"
#include "EventChecker.h"
#include "ES_Events.h"
#include "serial.h"
#include "AD.h"
#include "timers.h"
#include "Service.h"
#include "TrackWireService.h"
#include "TheBrain.h"
//#include "Service_AllBumpers.h"
/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define BATTERY_DISCONNECT_THRESHOLD 175
#define TRACK_FOUND 600 
#define TRACK_GONE 530
#define TRACK_FOUND2 600 
#define TRACK_GONE2 530
#define BEACON_FOUND 480 
#define BEACON_GONE 470
#define DELAY 100
//#define loopVal 10
//#define targetVal 8
/*******************************************************************************
 * EVENTCHECKER_TEST SPECIFIC CODE                                                             *
 ******************************************************************************/

//#define EVENTCHECKER_TEST
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
#define SaveEvent(x) do {eventName=__func__; storedEvent=x;} while (0)

static const char *eventName;
static ES_Event storedEvent;
#endif

/* Any private module level variable that you might need for keeping track of
   events would be placed here. Private variables should be STATIC so that they
   are limited in scope to this module. */

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function CheckBattery(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function is a prototype event checker that checks the battery voltage
 *        against a fixed threshold (#defined in the .c file). Note that you need to
 *        keep track of previous history, and that the actual battery voltage is checked
 *        only once at the beginning of the function. The function will post an event
 *        of either BATTERY_CONNECTED or BATTERY_DISCONNECTED if the power switch is turned
 *        on or off with the USB cord plugged into the Uno32. Returns TRUE if there was an 
 *        event, FALSE otherwise.
 * @note Use this code as a template for your other event checkers, and modify as necessary.
 * @author Gabriel H Elkaim, 2013.09.27 09:18
 * @modified Gabriel H Elkaim/Max Dunne, 2016.09.12 20:08 */
uint8_t CheckBattery(void) {
    static ES_EventTyp_t lastEvent = BATTERY_DISCONNECTED;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t batVoltage = AD_ReadADPin(BAT_VOLTAGE); // read the battery voltage

    if (batVoltage > BATTERY_DISCONNECT_THRESHOLD) { // is battery connected?
        curEvent = BATTERY_CONNECTED;
    } else {
        curEvent = BATTERY_DISCONNECTED;
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = batVoltage;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostService(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

uint8_t CheckTrackWire(void) {
    static ES_EventTyp_t lastEvent = TRACK_GONE;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    static unsigned int Threshold = TRACK_FOUND;
    uint16_t trackVoltage = AD_ReadADPin(AD_PORTV4); // read the track voltage

    if (trackVoltage > Threshold) { // is track?
        curEvent = TRACK_WIRE_FOUND;
        Threshold = TRACK_GONE;
        
    } else {
        curEvent = TRACK_WIRE_GONE;
        Threshold = TRACK_FOUND;
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = trackVoltage;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostTheBrain(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

uint8_t CheckTrackWire2(void) {
    static ES_EventTyp_t lastEvent = TRACK_GONE2;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    static unsigned int Threshold2 = TRACK_FOUND2;
    uint16_t trackVoltage = AD_ReadADPin(AD_PORTV3); // read the track voltage

    if (trackVoltage > Threshold2) { // is track?
        curEvent = TRACK_WIRE_FOUND2;
        Threshold2 = TRACK_GONE2; // 530
        
    } else {
        curEvent = TRACK_WIRE_GONE2;
        Threshold2 = TRACK_FOUND2; // 600
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = trackVoltage;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostTheBrain(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

uint8_t CheckBeacon(void) {
    static ES_EventTyp_t lastEvent = BEACON_LOST;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    static unsigned int Beacon_Threshold = BEACON_FOUND;
    uint16_t beaconVoltage = AD_ReadADPin(AD_PORTV5); // read the beacon voltage

    if (beaconVoltage > Beacon_Threshold) { // is track?
        curEvent = BEACON_SENSED;
        Beacon_Threshold = BEACON_GONE;
        
    } else {
        curEvent = BEACON_LOST;
        Beacon_Threshold = BEACON_FOUND;
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = beaconVoltage;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostTheBrain(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}


//#define FLbumpertest
#ifdef FLbumpertest

uint8_t CheckFLBumperEvent(void) { // needs to be defined in .h file
//it works 
    enum {
        NOT_TRIPPED, TRIPPED
    } curBumperState;
    ES_EventTyp_t curEvent;
    uint8_t returnVal = FALSE;
    unsigned int FRT;
    unsigned char BumperRead1, BumperRead2;
    BumperRead1 = Roach_ReadFrontLeftBumper();
    FRT = TIMERS_GetTime();
    while ((FRT + DELAY) > TIMERS_GetTime()) {
        ;
    }
    BumperRead2 = Roach_ReadFrontLeftBumper();
    if (BumperRead1 != BumperRead2) {
        return returnVal;
    }
    if (BumperRead1 == BUMPER_TRIPPED && BumperRead2 == BUMPER_TRIPPED) {
        curBumperState = TRIPPED;
    }
    if (BumperRead1 == BUMPER_NOT_TRIPPED && BumperRead2 == BUMPER_NOT_TRIPPED) {
        curBumperState = NOT_TRIPPED;
    }


    if (prevBumperState != curBumperState) {
        ES_Event ThisEvent;
        ThisEvent.EventType = BUMPEREVENT;
        ThisEvent.EventParam = (uint16_t) curBumperState; // can generate event on NOT_TRIGGERED
        PostFLBumperService(ThisEvent);
        returnVal = TRUE;
    }
    prevBumperState = curBumperState;
    return returnVal;
}
#endif 





#define ALLbumpertest
#ifdef ALLbumpertest

//static unsigned char prevBumperState = 0b00000000;

//uint8_t CheckAllBumpersEvent(void) { // needs to be defined in .h file
////it works 
//    unsigned char curBumperState;
//    ES_EventTyp_t curEvent;
//    uint8_t returnVal = FALSE;
//   
//    
//    curBumperState = Roach_ReadBumpers(); // read bumper 1
//    
//    
//    
//    if (curBumperState == prevBumperState) { // if reads are diff, return failure and dont update state 
//        return returnVal;
//    }
//    
//    if(curBumperState == 0){
//        return returnVal;
//    }
//
//
//    if (prevBumperState != curBumperState) {
//        ES_Event ThisEvent;
//        ThisEvent.EventType = BUMPEREVENT;
//        ThisEvent.EventParam = (uint16_t) curBumperState; // can generate event on NOT_TRIGGERED
//        PostFSM(ThisEvent);
//        returnVal = TRUE;
//    }
//    prevBumperState = curBumperState;
//    return returnVal;
//}
#endif 














/* 
 * The Test Harness for the event checkers is conditionally compiled using
 * the EVENTCHECKER_TEST macro (defined either in the file or at the project level).
 * No other main() can exist within the project.
 * 
 * It requires a valid ES_Configure.h file in the project with the correct events in 
 * the enum, and the correct list of event checkers in the EVENT_CHECK_LIST.
 * 
 * The test harness will run each of your event detectors identically to the way the
 * ES_Framework will call them, and if an event is detected it will print out the function
 * name, event, and event parameter. Use this to test your event checking code and
 * ensure that it is fully functional.
 * 
 * If you are locking up the output, most likely you are generating too many events.
 * Remember that events are detectable changes, not a state in itself.
 * 
 * Once you have fully tested your event checking code, you can leave it in its own
 * project and point to it from your other projects. If the EVENTCHECKER_TEST marco is
 * defined in the project, no changes are necessary for your event checkers to work
 * with your other projects.
 */
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
static uint8_t(*EventList[])(void) = {EVENT_CHECK_LIST};

void PrintEvent(void);

void main(void) {
    BOARD_Init();
    /* user initialization code goes here */

    // Do not alter anything below this line
    int i;

    printf("\r\nEvent checking test harness for %s", __FILE__);

    while (1) {
        if (IsTransmitEmpty()) {
            for (i = 0; i< sizeof (EventList) >> 2; i++) {
                if (EventList[i]() == TRUE) {
                    PrintEvent();
                    break;
                }

            }
        }
    }
}

void PrintEvent(void) {
    printf("\r\nFunc: %s\tEvent: %s\tParam: 0x%X", eventName,
            EventNames[storedEvent.EventType], storedEvent.EventParam);
}
#endif




// OLD BUMPER CODE BELOW // 
//
//    int PressCount = 0;
//    unsigned char firstFLBumperRead, secondFLBumperRead; // gonna go old fashion with the debouncing
//    firstFLBumperRead = Roach_ReadFrontLeftBumper();
//    for(int i = 0; i < 6000; i++); // should be ~ 350ns
//    secondFLBumperRead = Roach_ReadFrontLeftBumper();
//    
//    if(firstFLBumperRead==secondFLBumperRead){
//        if(firstFLBumperRead == BUMPER_TRIPPED){
//            curBumperState = TRIPPED;
//        }
//        if(firstFLBumperRead == BUMPER_NOT_TRIPPED){
//            curBumperState = NOT_TRIPPED;
//        }
//    }// old school
////    for (int i = 0; i < loopVal; i++) {
////        curFLBumperRead = Roach_ReadFrontLeftBumper();
////        if (curFLBumperRead == BUMPER_TRIPPED) {
////            PressCount++;
////        }
////    }
////    //curBumperState = (Roach_ReadFrontLeftBumper == BUMPER_TRIPPED ? TRIPPED : NOT_TRIPPED);
////    if (PressCount >= targetVal) {
////        curBumperState = TRIPPED;
////        curEvent = BUMPEREVENT; // ADDED to fix bug maybe
////    }
////    if (PressCount < targetVal) {
////        curBumperState = NOT_TRIPPED;
////        curEvent = BUMPEREVENT; // maybe bug fix