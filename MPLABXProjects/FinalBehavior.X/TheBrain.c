/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim and Soja-Marie Morgens
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is another template file for the SubHSM's that is slightly differet, and
 * should be used for all of the subordinate state machines (flat or heirarchical)
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
#include "TowerShark.h"
#include "SecondTower.h"
#include "DeadBot.h"
#include "shooting.h"
#include "ES_Timers.h"
#include "ReverseShark.h"
#include "FindPath.h"
#include "AD.h"
#include "xc.h"
#include "ES_Events.h"
#include <stdio.h>
//#include all sub state machines called
/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
//Include any defines you need to do

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/


typedef enum {
    InitPState,
    Search,
    Shark,
    ReverseShark,
    SecondTower,
    DeadBot,
} TheBrainState_t;

static const char *StateNames[] = {
	"InitPState",
	"Search",
    "Shark",
    "ReverseShark",
    "SecondTower",
    "DeadBot",
};


/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/
/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TheBrainState_t CurrentState = InitPState; // <- change enum name to match ENUM
static uint8_t MyPriority;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTheBrain(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTheBrain(uint8_t Priority)
{
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = InitPState;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTheBrain(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTheBrain(ES_Event ThisEvent)
{
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTheBrain(ES_Event ThisEvent)
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
ES_Event RunTheBrain(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    TheBrainState_t nextState; // <- change type to correct enum
    static uint8_t ReverseCounter = 0;
    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPState: // If current state is initial Pseudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state
            // Initialize all sub-state machines
            InitTowerSearch();
            InitTowerShark();
            InitSecondTower();
            InitDeadBot();
            InitReverseTowerShark();
            // now put the machine into the actual initial state
            nextState = Search;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Search:
        ThisEvent = RunTowerSearch(ThisEvent);
        switch (ThisEvent.EventType) {
        case ES_NO_EVENT:
            break;
        case BUMPED:
            if(ThisEvent.EventParam != 1){
                nextState = DeadBot;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case ES_ENTRY:
            ES_Timer_InitTimer(10,5000);
            ES_Timer_InitTimer(12,100);
            ES_Timer_InitTimer(11,4500);
            break;
        case ES_EXIT:
            SetTowerSearch();
            break;
        default:
            break;
        }
        break;
    
    case DeadBot:
        ThisEvent = RunDeadBot(ThisEvent);
        switch (ThisEvent.EventType) {
        case SIDE_WHITE:
            nextState = Shark;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;   
        break;
        case BEACON_SENSED:
            nextState = Search;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 11){
               SetTowerSearchToSpin();
               nextState = Search;
               makeTransition = TRUE;
               ThisEvent.EventType = ES_NO_EVENT; 
            }
        case ES_ENTRY:
            ES_Timer_InitTimer(7,5000);
            ES_Timer_InitTimer(11, 5000);
            break;
        case ES_EXIT:
            SetDeadBot();
            break;
        case ES_NO_EVENT:
        default:
            break;
        }
        break;
        
    case Shark:
        ThisEvent = RunTowerShark(ThisEvent);
        switch (ThisEvent.EventType) {
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 3){
                SHOOTING_Reload();
                nextState = SecondTower;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            if(ThisEvent.EventParam == 6){
                nextState = ReverseShark;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            if(ThisEvent.EventParam == 11){
               SetTowerSearchToSpin();
               nextState = Search;
               makeTransition = TRUE;
               ThisEvent.EventType = ES_NO_EVENT; 
            }
            break;
        case FLOOR_BLACK:
            if (ReverseCounter == 0){
                nextState = ReverseShark;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT; 
            }
            break;
        case ES_ENTRY:
            ES_Timer_InitTimer(4,100);
            ES_Timer_InitTimer(6,30000);
            ES_Timer_InitTimer(7,5000);
            ES_Timer_InitTimer(11, 5000);
            break;
        case ES_EXIT:
            ReverseCounter = 0;
            SetTowerShark();
            break;
        case ES_NO_EVENT:
        default:
            break;
        }
        break;
    case ReverseShark:
        ThisEvent = RunReverseTowerShark(ThisEvent);
        switch (ThisEvent.EventType) {
        case ES_TIMEOUT:
            if(ThisEvent.EventParam == 3){
                SHOOTING_Reload();
                nextState = SecondTower;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            if(ThisEvent.EventParam == 6){
                nextState = Shark;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            if(ThisEvent.EventParam == 11){
                SetTowerSearchToSpin();
                nextState = Search;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case FLOOR_BLACK:
            ReverseCounter = 1;
            nextState = Shark;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case ES_ENTRY:
            ES_Timer_InitTimer(11, 4000);
            ES_Timer_InitTimer(6,30000);
            break;
        case ES_EXIT:
            SetReverseTowerShark();
            break;
        case ES_NO_EVENT:
        default:
            break;
        }
        break;
    case SecondTower:
        ThisEvent = RunSecondTower(ThisEvent);
        switch (ThisEvent.EventType) {
        case BEACON_SENSED:
            nextState = Search;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;
        case ES_ENTRY:
            ES_Timer_InitTimer(4,100);
            ES_Timer_InitTimer(7,5000);
            break;
        case ES_EXIT:
            SetSecondTower();
            break;
        case ES_NO_EVENT:
        default:
            break;
        }
        break;   
        
    default: // all unhandled states fall into here
        break;
    } // end switch on Current State
       
    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunTheBrain(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunTheBrain(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
