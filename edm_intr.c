/* edm_intr.c -- EDM Port 0 interrupt routines.

   Code borrowed from ./platform/dev/button_sensor.c
 */


#include "dev/port.h"
#include "dev/watchdog.h"
#include "edm_intr.h"
#include "dev/leds.h"
#include "isr.h"
#include "irq.h"
/*int
edm_init()
{
    /* Initialize Port 0 GPIO */

/*} */   /* Initialize Port Interrupt */
/*---------------------------------------------------------------------------*/
static CC_AT_DATA struct timer debouncetimer;
/*---------------------------------------------------------------------------*/
/* Button 1 - EDM, SmartRF and cc2531 USB Dongle*/ 
/*---------------------------------------------------------------------------*/
static int
value_b1(int type)
{
  type;
  return BUTTON_READ(1) || !timer_expired(&debouncetimer);
}
/*---------------------------------------------------------------------------*/
static int
status_b1(int type)
{
  switch(type) {
  case SENSORS_ACTIVE:
  case SENSORS_READY:
    return BUTTON_IRQ_ENABLED(1);
  }
  return 0;
}
/*---------------------------------------------------------------------------*/
static int
configure_b1(int type, int value)
{

  leds_toggle(1);

  switch(type) {
  case SENSORS_HW_INIT:
#if !MODELS_CONF_CC2531_USB_STICK
    P0INP |= 1; /* Tri-state */
#endif
    BUTTON_IRQ_ON_PRESS(1);
    BUTTON_FUNC_GPIO(1);
    BUTTON_DIR_INPUT(1);
    return 1;
  case SENSORS_ACTIVE:
    if(value) {
      if(!BUTTON_IRQ_ENABLED(1)) {
        timer_set(&debouncetimer, 0);
        BUTTON_IRQ_FLAG_OFF(1);
        BUTTON_IRQ_ENABLE(1);
      }
    } else {
      BUTTON_IRQ_DISABLE(1);
    }
    return 1;
  }
  return 0;
}
/*---------------------------------------------------------------------------*/
/* Button 2 */
/*---------------------------------------------------------------------------*/
static int
value_b2(int type)
{
  type;
  return BUTTON_READ(2) || !timer_expired(&debouncetimer);
}
/*---------------------------------------------------------------------------*/
static int
status_b2(int type)
{
  switch(type) {
  case SENSORS_ACTIVE:
  case SENSORS_READY:
    return BUTTON_IRQ_ENABLED(2);
  }
  return 0;
}
/*---------------------------------------------------------------------------*/
static int
configure_b2(int type, int value)
{

leds_toggle(2);

  switch(type) {
  case SENSORS_HW_INIT:
    BUTTON_IRQ_ON_PRESS(2);
    BUTTON_FUNC_GPIO(2);
    BUTTON_DIR_INPUT(2);
    return 1;
  case SENSORS_ACTIVE:
    if(value) {
      if(!BUTTON_IRQ_ENABLED(2)) {
        timer_set(&debouncetimer, 0);
        BUTTON_IRQ_FLAG_OFF(2);
        BUTTON_IRQ_ENABLE(2);
      }
    } else {
      BUTTON_IRQ_DISABLE(2);
    }
    return 1;
  }
  return 0;
}
/*---------------------------------------------------------------------------*/
/* Button 3 */
/*---------------------------------------------------------------------------*/
static int
value_b3(int type)
{
  type;
  return BUTTON_READ(3) || !timer_expired(&debouncetimer);
}
/*---------------------------------------------------------------------------*/
static int
status_b3(int type)
{
  switch(type) {
  case SENSORS_ACTIVE:
  case SENSORS_READY:
    return BUTTON_IRQ_ENABLED(3);
  }
  return 0;
}
/*---------------------------------------------------------------------------*/
static int
configure_b3(int type, int value)
{

leds_toggle(4);

  switch(type) {
  case SENSORS_HW_INIT:
    BUTTON_IRQ_ON_PRESS(3);
    BUTTON_FUNC_GPIO(3);
    BUTTON_DIR_INPUT(3);
    return 1;
  case SENSORS_ACTIVE:
    if(value) {
      if(!BUTTON_IRQ_ENABLED(3)) {
        timer_set(&debouncetimer, 0);
        BUTTON_IRQ_FLAG_OFF(3);
        BUTTON_IRQ_ENABLE(3);
      }
    } else {
      BUTTON_IRQ_DISABLE(3);
    }
    return 1;
  }
  return 0;
}
/*---------------------------------------------------------------------------*/
/* Button 4 */
/*---------------------------------------------------------------------------*/
static int
value_b4(int type)
{
  type;
  return BUTTON_READ(4) || !timer_expired(&debouncetimer);
}
/*---------------------------------------------------------------------------*/
static int
status_b4(int type)
{
  switch(type) {
  case SENSORS_ACTIVE:
  case SENSORS_READY:
    return BUTTON_IRQ_ENABLED(4);
  }
  return 0;
}
/*---------------------------------------------------------------------------*/
static int
configure_b4(int type, int value)
{

leds_toggle(4);

  switch(type) {
  case SENSORS_HW_INIT:
    BUTTON_IRQ_ON_PRESS(4);
    BUTTON_FUNC_GPIO(4);
    BUTTON_DIR_INPUT(4);
    return 1;
  case SENSORS_ACTIVE:
    if(value) {
      if(!BUTTON_IRQ_ENABLED(4)) {
        timer_set(&debouncetimer, 0);
        BUTTON_IRQ_FLAG_OFF(4);
        BUTTON_IRQ_ENABLE(4);
      }
    } else {
      BUTTON_IRQ_DISABLE(4);
    }
    return 1;
  }
  return 0;
}
/*---------------------------------------------------------------------------*/
#pragma save

/* PORT0 isr 
 */
 int
port_0_isr(void) __interrupt(P0INT_VECTOR)
{
  EA = 0;
  ENERGEST_ON(ENERGEST_TYPE_IRQ);

  /* This ISR is for the entire port. Check if the interrupt was caused by our
   * button's pin. */
  if(BUTTON_IRQ_CHECK(1)) {
    if(timer_expired(&debouncetimer)) {
      timer_set(&debouncetimer, CLOCK_SECOND / 8);
      sensors_changed(&button_1_sensor);
    }
  }
     if(BUTTON_IRQ_CHECK(2)) {
    if(timer_expired(&debouncetimer)) {
      timer_set(&debouncetimer, CLOCK_SECOND / 8);
      sensors_changed(&button_2_sensor);
    }
  }
  if(BUTTON_IRQ_CHECK(3)) {
    if(timer_expired(&debouncetimer)) {
      timer_set(&debouncetimer, CLOCK_SECOND / 8);
      sensors_changed(&button_3_sensor);
   }
 }
 if(BUTTON_IRQ_CHECK(4)) {
    if(timer_expired(&debouncetimer)) {
      timer_set(&debouncetimer, CLOCK_SECOND / 8);
      sensors_changed(&button_4_sensor);
   }
 }
      sensors_changed(&button_1_sensor);
      sensors_changed(&button_2_sensor);
      sensors_changed(&button_3_sensor);
      sensors_changed(&button_4_sensor);
  BUTTON_IRQ_FLAG_OFF(1);
  BUTTON_IRQ_FLAG_OFF(2);
  BUTTON_IRQ_FLAG_OFF(3);
  BUTTON_IRQ_FLAG_OFF(4);
  ENERGEST_OFF(ENERGEST_TYPE_IRQ);
  EA = 1;
}
#pragma restore
/*--------------------------------------------------*/
SENSORS_SENSOR(button_1_sensor, BUTTON_SENSOR, value_b1, configure_b1, status_b1);
SENSORS_SENSOR(button_2_sensor, BUTTON_SENSOR, value_b2, configure_b2, status_b2);
SENSORS_SENSOR(button_3_sensor, BUTTON_SENSOR, value_b3, configure_b3, status_b3);
SENSORS_SENSOR(button_4_sensor, BUTTON_SENSOR, value_b4, configure_b4, status_b4);
 

