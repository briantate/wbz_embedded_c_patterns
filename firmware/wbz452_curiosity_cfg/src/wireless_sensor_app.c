/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    wireless_sensor_app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "wireless_sensor_app.h"
#include "bsp/bsp.h"
#include "sensor_object_pattern.h"
#include <stdio.h>

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the WIRELESS_SENSOR_APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

WIRELESS_SENSOR_APP_DATA wireless_sensor_appData;

static sensor_t temp_sensor;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void WIRELESS_SENSOR_APP_Initialize ( void )

  Remarks:
    See prototype in wireless_sensor_app.h.
 */

void WIRELESS_SENSOR_APP_Initialize ( void )
{
  printf("Wireless Sensor app\r\n");
    /* Place the App state machine in its initial state. */
    wireless_sensor_appData.state = WIRELESS_SENSOR_APP_STATE_INIT;
    SensorObj_Init(&temp_sensor);


    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void WIRELESS_SENSOR_APP_Tasks ( void )

  Remarks:
    See prototype in wireless_sensor_app.h.
 */

void WIRELESS_SENSOR_APP_Tasks ( void )
{
    switch ( wireless_sensor_appData.state )
    {
        /* Application's initial state. */
        case WIRELESS_SENSOR_APP_STATE_INIT:
        {
            bool appInitialized = true;
            if (appInitialized){
                wireless_sensor_appData.state = WIRELESS_SENSOR_APP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case WIRELESS_SENSOR_APP_STATE_SERVICE_TASKS:
        {
          USER_LED_Toggle();
          SensorObj_Read(&temp_sensor);
          printf("Raw temp: %d", temp_sensor.raw_temp);
            break;
        }
        
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
