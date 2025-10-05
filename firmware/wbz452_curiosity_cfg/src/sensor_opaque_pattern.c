#include "sensor_opaque_pattern.h"
#include <stdlib.h>
#include <string.h>
#include "peripheral/adchs/plib_adchs.h" //later, use the virtual API pattern to inject temperature read method

#define ADC_VREF                (3300) //mV
#define ADC_MAX_COUNT           (4095)
#define SENSOR_V0C              (500) //mV
#define SENSOR_T_COEFFICIENT    (10) //mv/C



struct temperature_sensor{
    uint32_t channel;
    uint16_t adc_count;
    float adc_voltage;
    float temperature_c;
};

#if MEMORY_ALLOCATION_METHOD == STACK_ALLOCATION
size_t SensorOpaque_size(void){
    return sizeof(struct temperature_sensor);
}
#endif

int SensorOpaque_Init(struct temperature_sensor *self, uint32_t adc_channel){
    memset(self, 0, sizeof(*self));
    self->channel = adc_channel;
    return -1;
}

int SensorOpaque_DeInit(struct temperature_sensor *self){
    //cleanup
    return -1;
}

struct temperature_sensor* SensorOpaque_New(){
    return malloc(sizeof(struct temperature_sensor));
}

void SensorOpaque_Free(struct temperature_sensor **self){
    free(*self);
    *self = NULL;
}

float SensorOpaque_Read(struct temperature_sensor *self){

    ADCHS_GlobalEdgeConversionStart();

    while(!ADCHS_ChannelResultIsReady(self->channel))
    {

    };
    self->adc_count = ADCHS_ChannelResultGet(ADCHS_CH2);
    self->adc_voltage = (float)self->adc_count * ADC_VREF / ADC_MAX_COUNT;
    self->temperature_c = (self->adc_voltage - SENSOR_V0C)/SENSOR_T_COEFFICIENT;
    return self->temperature_c;
}