/*
 * File: TowerSearch.c
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is for a substate machine. Make sure it has a unique name
 *
 * This is provided as an example and a good place to start.
 *
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "TheBrain.h"
#include "TowerSearch.h"
#include "motors.h"
#include <stdio.h>
#include "IO_Ports.h"
#include "AD.h"
#include "xc.h"
#include "FindPath.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    Spin2Win,
    CheckSpin,
    TargetFound,
    Hunt,
    Reverse,
    SpinAgain,
} TowerSearchState_t;

static const char *StateNames[] = {
    "InitPSubState",
    "Spin2Win",
    "CheckSpin",
    "TargetFound",
    "Hunt",
    "Reverse",
    "SpinAgain",
};
int *p;
/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TowerSearchState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;
int beaconValues[450];
int beaconTimes[450];
int count = 0;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTowerSearch(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTowerSearch(void)
{
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunTowerSearch(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}


void SetTowerSearch(){
    CurrentState = TargetFound;
}

void SetTowerSearchToSpin(){
    CurrentState = SpinAgain;
}

/**
 * @Function RunTowerSearch(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 *        machine, as this is called any time a new event is passed to the event
 *        queue. This function will be called recursively to implement the correct
 *        order for a state transition to be: exit current state -> enter next state
 *        using the ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       The lower level state machines are run first, to see if the event is dealt
 *       with there rather than at the current level. ES_EXIT and ES_ENTRY events are
 *       not consumed as these need to pass pack to the higher level state machine.
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */
ES_Event RunTowerSearch(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    TowerSearchState_t nextState; // <- change type to correct enum
    TowerSearchState_t previousState; // remember previous state for state machine

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPSubState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            nextState = Spin2Win;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Spin2Win: 
        Tank_Turn(1000, COUNTERCLOCKWISE);
        switch (ThisEvent.EventType) {
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 12){
                ES_Timer_InitTimer(12,100);
                beaconValues[count] = AD_ReadADPin(AD_PORTV5);
                beaconTimes[count] = (count+1)*100;
                //printf("%d ", beaconValues[count]);
                //printf("%d \r\n", beaconTimes[count]);
                count++;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            if(ThisEvent.EventParam == 11){
                p = FindPath(beaconValues, beaconTimes);
                //Values(*(p), *(p+1), *(p+2), *(p+3), 0);
                //printf("%d %d %d %d", *(p), *(p + 1), *(p + 2), *(p + 3));
                ES_Timer_InitTimer(9,*(p));
                nextState = Hunt;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case SpinAgain: 
        Tank_Turn(1000, COUNTERCLOCKWISE);
        switch (ThisEvent.EventType) {
        case BEACON_SENSED:
            ES_Timer_InitTimer(10,5000);
            nextState = TargetFound;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case CheckSpin: 
        Tank_Turn(1000, CLOCKWISE);
        switch (ThisEvent.EventType) {
        case BEACON_SENSED:
            ES_Timer_InitTimer(10,5000);
            nextState = TargetFound;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 8){
                nextState = SpinAgain;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;    
    
    case Hunt: 
        Tank_Turn(1000, COUNTERCLOCKWISE);
        switch (ThisEvent.EventType) {
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 9){
                ES_Timer_InitTimer(10,5000);
                nextState = TargetFound;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;     
        
    case TargetFound:
        Move_Straight(500, FORWARD);
        switch (ThisEvent.EventType) {
        case BEACON_LOST:
            ES_Timer_InitTimer(8,500);
            nextState = CheckSpin;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 10){
                ES_Timer_InitTimer(10,500);
                nextState = Reverse;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case Reverse:
        Move_Straight(1000, REVERSE);
        switch (ThisEvent.EventType) {
            case BEACON_LOST: 
                ES_Timer_InitTimer(8,500);
                nextState = CheckSpin;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                break;
            case ES_TIMEOUT:
                if(ThisEvent.EventParam == 10){
                    ES_Timer_InitTimer(10,5000);
                    nextState = TargetFound;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
                break;   
        }
        break;
    default: // all unhandled states fall into here
        break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunTowerSearch(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunTowerSearch(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}