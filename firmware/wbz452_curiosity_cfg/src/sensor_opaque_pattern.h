
#ifndef _SNSR_OPAQUE_PATTERN_H
#define _SNSR_OPAQUE_PATTERN_H

/*----includes-------------------------------------------------------------- */
#include <stdint.h>
#include <stdlib.h>

#define STACK_ALLOCATION        (1)
#define HEAP_ALLOCATION         (2)
#define STATIC_ALLOCATION       (3)

#define MEMORY_ALLOCATION_METHOD HEAP_ALLOCATION

#ifdef __cplusplus  // Provide C++ Compatibility
extern "C" {
#endif


/*----defines---------------------------------------------------------------- */


/*----structures------------------------------------------------------------- */
struct temperature_sensor;


/*----prototypes------------------------------------------------------------- */

size_t SensorOpaque_size(void);

int SensorOpaque_Init(struct temperature_sensor *self, uint32_t adc_channel);
int SensorOpaque_DeInit(struct temperature_sensor *self);
float SensorOpaque_Read(struct temperature_sensor *self);
struct temperature_sensor* SensorOpaque_New(void);
void SensorOpaque_Free(struct temperature_sensor **self);

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _SNSR_OPAQUE_PATTERN_H */

/*******************************************************************************
 End of File
 */