/*
 * File: TowerShark.c
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
#include "TowerShark.h"
#include "motors.h"
#include "shooting.h"
#include "timers.h"
#include "IO_Ports.h"
#include "xc.h"
#include "AD.h"
#include <stdio.h>
//#include "TowerSearch.h"
/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    ParallelPark,
    Advance,
    SwingAround,
    Scoot,
    Shoot,
    Reload,
    Wiggle,
    Jiggle,
    SpinABit,
} TowerSharkState_t;

static const char *StateNames[] = {
    "InitPSubState",
    "ParallelPark",
    "Advance",
    "SwingAround",
    "Scoot",
    "Shoot",
    "Reload",
    "Wiggle",
    "Jiggle",
    "SpinABit",
};



/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TowerSharkState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;
//extern int *p;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTowerShark(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTowerShark(void)
{
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunTowerShark(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

void SetTowerShark(){
    CurrentState = ParallelPark;
}

/**
 * @Function RunTowerShark(ES_Event ThisEvent)
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
ES_Event RunTowerShark(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    TowerSharkState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPSubState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            nextState = ParallelPark;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case ParallelPark: // in the first state, replace this with correct names
        Arc_Turn(1000, CLOCKWISE, RIGHT);
        MOTOR_3(1000, FORWARD);
        switch (ThisEvent.EventType) {
        case SIDE_BUMPED:
            ES_Timer_InitTimer(7,5000);
            ES_Timer_StopTimer(11);
            nextState = Advance;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 4 && PORTV06_BIT == 1){
               ES_Timer_InitTimer(7,5000);
               ES_Timer_StopTimer(11);
               nextState = Advance;
               makeTransition = TRUE;
               ThisEvent.EventType = ES_NO_EVENT; 
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case Advance: // in the first state, replace this with correct names
        Move_Straight(300, FORWARD);
        MOTOR_2(160, FORWARD);
        switch (ThisEvent.EventType) {
        case UNBUMPED:
            ES_Timer_InitTimer(7,5000);
            //ES_Timer_InitTimer(11, 3000);
            nextState = SwingAround;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case BUMPED:
            ES_Timer_InitTimer(4,500);
            ES_Timer_InitTimer(11, 5000);
            nextState = ParallelPark;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case SIDE_BLACK:
            if(PORTW07_BIT == 0 && AD_ReadADPin(AD_PORTV3) > 530 && AD_ReadADPin(AD_PORTV4) > 530){
                ES_Timer_InitTimer(3, 500);
                nextState = Scoot;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case REVERSE_SIDE_WHITE:
            if(PORTW05_BIT == 1 && AD_ReadADPin(AD_PORTV3) > 530 && AD_ReadADPin(AD_PORTV4) > 530){
                ES_Timer_InitTimer(3, 500);
                nextState = Scoot;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 7){
               ES_Timer_InitTimer(7,1000);
               nextState = SpinABit;
               makeTransition = TRUE;
               ThisEvent.EventType = ES_NO_EVENT; 
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case SwingAround: // in the first state, replace this with correct names
        Arc_Turn(500, COUNTERCLOCKWISE, FRONT);
        MOTOR_2(500, FORWARD);
        switch (ThisEvent.EventType) {
        case SIDE_BUMPED:
            //ES_Timer_InitTimer(11, 4000);
            ES_Timer_InitTimer(7,5000);
            nextState = Advance;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case BUMPED:
            ES_Timer_InitTimer(4,500);
            ES_Timer_InitTimer(11, 5000);
            nextState = ParallelPark;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 7){
               ES_Timer_InitTimer(7,1000);
               nextState = SpinABit;
               makeTransition = TRUE;
               ThisEvent.EventType = ES_NO_EVENT; 
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
    
    case SpinABit: // in the first state, replace this with correct names
        Tank_Turn(1000, CLOCKWISE);
        switch (ThisEvent.EventType) {
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 7){
                nextState = SwingAround;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case Scoot: 
        Motors_Stop();
        switch (ThisEvent.EventType) {
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 3){
                ES_Timer_InitTimer(3, 2000);
                SHOOTING_Shoot();
                nextState = Shoot;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case Shoot: // in the first state, replace this with correct names
        Motors_Stop();
        switch (ThisEvent.EventType) {
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 3){
                ES_Timer_InitTimer(3, 400);
                nextState = Wiggle;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case Reload: // in the first state, replace this with correct names
        switch (ThisEvent.EventType) {
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case Wiggle: // in the first state, replace this with correct names
        Arc_Turn(300, COUNTERCLOCKWISE, LEFT);
        switch (ThisEvent.EventType) {
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 3){
                ES_Timer_InitTimer(3, 400);
                nextState = Jiggle;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            if(ThisEvent.EventParam == 9){
                ES_Timer_InitTimer(3, 1000);
                nextState = Reload;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    case Jiggle: // in the first state, replace this with correct names
        Arc_Turn(300, CLOCKWISE, LEFT);
        switch (ThisEvent.EventType) {
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 3){
                ES_Timer_InitTimer(9, 400);
                nextState = Wiggle;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_NO_EVENT:
        default: // all unhandled events pass the event back up to the next level
            break;
        }
        break;
        
    default: // all unhandled states fall into here
        break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunTowerShark(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunTowerShark(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

