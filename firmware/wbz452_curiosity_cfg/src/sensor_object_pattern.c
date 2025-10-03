#include "sensor_object_pattern.h"
#include <string.h>
#include "peripheral/adchs/plib_adchs.h"
#include <stdio.h>

#define ADC_VREF                (3300) //mV
#define ADC_MAX_COUNT           (4095)
#define SENSOR_V0C              (500) //mV
#define SENSOR_T_COEFFICIENT    (10) //mv/C

int SensorObj_Init(sensor_t *self){
    memset(self, 0, sizeof(*self));
    return -1;
    // ADCHS_ModulesEnable(ADCHS_MODULE7_MASK);
}

int SensorObj_DeInit(sensor_t *self){
    //cleanup
    return -1;
}

int SensorObj_Read(sensor_t *self){

    ADCHS_GlobalEdgeConversionStart();
    // ADCHS_ChannelConversionStart(ADCHS_CH2);

    while(!ADCHS_ChannelResultIsReady(ADCHS_CH2))
    {

    };
    self->adc_count = ADCHS_ChannelResultGet(ADCHS_CH2);
    self->adc_voltage = (float)self->adc_count * ADC_VREF / ADC_MAX_COUNT;
    self->temperature_c = (self->adc_voltage - SENSOR_V0C)/SENSOR_T_COEFFICIENT;
    return 0;
}