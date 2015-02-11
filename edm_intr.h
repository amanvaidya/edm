#ifndef EDM_INTR_H
#define EDM_INTR_H
#include "contiki-conf.h"
#include "lib/sensors.h"

#define BUTTON_SENSOR "Button"

/*
 * SmartRF Buttons
 * B1: P0_0, B2: P0_1, B3: 0_2, B4: 0_3; 
 *
 */
#define BUTTON1_PORT 0
#define BUTTON1_PIN  0
#define BUTTON2_PORT 0
#define BUTTON2_PIN  1
#define BUTTON3_PORT 0
#define BUTTON3_PIN  2
#define BUTTON4_PORT 0
#define BUTTON4_PIN  3  

#ifdef  BUTTON_SENSOR_CONF_ON
#define BUTTON_SENSOR_ON BUTTON_SENSOR_CONF_ON
#endif /* BUTTON_SENSOR_CONF_ON */

#ifdef BUTTON_SENSOR_CONF_ON
/*#define button_sensor button_1_sensor
#define button_sensor button_2_sensor
#define button_sensor button_3_sensor
#define button_sensor button_4_sensor*/
extern int edm_intr_init();
extern const struct sensors_sensor button_1_sensor;
extern const struct sensors_sensor button_2_sensor;
extern const struct sensors_sensor button_3_sensor;
extern const struct sensors_sensor button_4_sensor;
#endif /* BUTTON_SENSOR_CONF_ON */

#if BUTTON_SENSOR_ON
/* Buttons: P0_0, P0_2, P0_3, P0_4  Port 0 ISR needed */
int port_0_isr(int) __interrupt(P0INT_VECTOR);
#define   BUTTON_SENSOR_ACTIVATE() do { \
    button_1_sensor.configure(SENSORS_ACTIVE, 1); \
    button_2_sensor.configure(SENSORS_ACTIVE, 1); \
    button_3_sensor.configure(SENSORS_ACTIVE, 1); \
    button_4_sensor.configure(SENSORS_ACTIVE, 1); \
} while(0)

#else /* BUTTON_SENSOR_ON */
#define   BUTTON_SENSOR_ACTIVATE()
#endif /* BUTTON_SENSOR_ON */
/* Define macros for buttons */
#define BUTTON_READ(b)           PORT_READ(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_FUNC_GPIO(b)      PORT_FUNC_GPIO(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_DIR_INPUT(b)      PORT_DIR_INPUT(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_DIR_OUTPUT(b)     PORT_DIR_OUTPUT(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_IRQ_ENABLED(b)    PORT_IRQ_ENABLED(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_IRQ_CHECK(b)      PORT_IRQ_CHECK(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_IRQ_ENABLE(b)     PORT_IRQ_ENABLE(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_IRQ_DISABLE(b)    PORT_IRQ_DISABLE(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_IRQ_FLAG_OFF(b)   PORT_IRQ_FLAG_OFF(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_IRQ_ON_PRESS(b)   PORT_IRQ_EDGE_RISE(BUTTON##b##_PORT, BUTTON##b##_PIN)
#define BUTTON_IRQ_ON_RELEASE(b) PORT_IRQ_EDGE_FALL(BUTTON##b##_PORT, BUTTON##b##_PIN)

#endif  /* EDM_INTR_H */

