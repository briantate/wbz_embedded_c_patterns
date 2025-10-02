#include "sensor_object_pattern.h"
#include <string.h>

int SensorObj_Init(sensor_t *self){
    memset(self, 0, sizeof(*self));
    return -1;
}
int SensorObj_DeInit(sensor_t *self){
    //cleanup
    return -1;
}
int SensorObj_Read(sensor_t *self){
    //add adc read function
    return -1;
}