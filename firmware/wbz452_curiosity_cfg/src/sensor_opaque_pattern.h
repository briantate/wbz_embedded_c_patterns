
#ifndef _SNSR_OPAQUE_PATTERN_H
#define _SNSR_OPAQUE_PATTERN_H

/*----includes-------------------------------------------------------------- */
#include <stdint.h>

#define STACK_ALLOCATION        (1)
#define HEAP_ALLOCATION         (2)
#define STATIC_ALLOCATION       (3)

#define MEMORY_ALLOCATION_METHOD STACK_ALLOCATION

#ifdef __cplusplus  // Provide C++ Compatibility
extern "C" {
#endif


/*----structures------------------------------------------------------------- */
struct temp_sensor *temp_sensor_obj;


/*----prototypes------------------------------------------------------------- */
size_t SensorOpaque_size(void);
int SensorOpaque_Init(sensor_t *self);
int SensorOpaque_DeInit(sensor_t *self);
int SensorOpaque_Read(sensor_t *self);

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _SNSR_OPAQUE_PATTERN_H */

/*******************************************************************************
 End of File
 */