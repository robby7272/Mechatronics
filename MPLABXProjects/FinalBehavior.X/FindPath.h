/*
 * File:   timers.h
 * Author: mdunne
 *
 * Software module to enable a bank of software timers with a resolution time of
 * one msecond for each. The timers can be individually started, stopped, expired, etc.
 *
 * NOTE: Module uses TIMER5 for its interrupts.
 *
 * TIMERS_TEST (in the .c file) conditionally compiles the test harness for the code. 
 * Make sure it is commented out for module useage.
 *
 * Created on November 15, 2011, 9:54 AM
 */

/*******************************************************************************
 * PUBLIC #DEFINES                                                             *
 ******************************************************************************/
#define SAMPLE_SIZE 44
#define DISTANCES_BETWEEN_TOWERS 6
#define NUM_OF_TOWERS 3
#define TOWER1 0
#define TOWER2 1
#define TOWER3 2
#define BOT 3
/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/

/**
 * @Function TIMERS_Init(void)
 * @param none
 * @return None.
 * @brief  Initializes the timer module
 * @author Max Dunne, 2011.11.15 */
int * FindPath(int values[], int times[]);

int AnalogToDistance(double peak);

int DistanceToAnalog(double distance);
