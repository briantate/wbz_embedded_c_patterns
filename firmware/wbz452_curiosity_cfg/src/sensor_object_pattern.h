
#ifndef _SNSR_OBJECT_PATTERN_H
#define _SNSR_OBJECT_PATTERN_H

/*----includes-------------------------------------------------------------- */
#include <stdint.h>

#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif


/*----structures------------------------------------------------------------- */

typedef struct {
    uint8_t raw_temp;
}sensor_t;


/*----prototypes------------------------------------------------------------- */
int SensorObj_Init(sensor_t *self);
int SensorObj_DeInit(sensor_t *self);
int SensorObj_Read(sensor_t *self);

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _SNSR_OBJECT_PATTERN_H */

/*******************************************************************************
 End of File
 */