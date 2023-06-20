/*
 * File:   FindPath.c
 * Author: rbox
 *
 * Created on May 25, 2022
 */

#include <xc.h>
#include <BOARD.h>
#include <sys/attribs.h>
#include "FindPath.h"
#include <stdio.h>
#include <math.h>

/**
 * @Function FindPath()
 * @param unsigned int values[], unsigned int times[]
 * @return None.
 * @brief  Finds shortest path between towers
 * @author Max Dunne, 2011.11.15 */
int * FindPath(int values[SAMPLE_SIZE], int times[SAMPLE_SIZE]) { // input is an array of values from analog beacon sensor taken from 360 spin
    static int r[1];
    // find potential peaks
    int i,j = 0;
    int peaks[SAMPLE_SIZE];
    int peaktimes[SAMPLE_SIZE];
    for (i = 1; i < SAMPLE_SIZE-1; i++)
    {
        if (values[i-1] < values[i] && values[i+1] < values[i]) { // value bigger than previous and next, peak?
            peaks[j] = values[i];
            peaktimes[j] = times[i]; 
            j++;
        }
    }
    // find top peak with associated time
    int peak1 = 0;
    int time1 = 0;
    for (i = 0; i < j; i++)
    {
        if (peaks[i] > peak1) {
            peak1 = peaks[i];            
            time1 = peaktimes[i];
        }
    }
    r[0] = time1;
    return r;
    // return commands where to go
}
