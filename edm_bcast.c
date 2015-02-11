
/* button_blink.c -- blink LED on button press.
 * 
 * 
 *
 * It is largely based on hello_world in $(CONTIKI)/examples/sensinode
 *  -- nk. Adding button functionality. When button pressed, LED by the side of the button will blink.
 *
 * Author: George Oikonomou - <oikonomou@users.sourceforge.net>
 */

 #include "contiki.h"
 #include "dev/leds.h"
 #include "net/rime.h"
 #include <dev/port.h>
 #include "edm_intr.h"

 static struct etimer et_blink;
 static const struct broadcast_callbacks broadcast_call = {broadcast_recv};
 static struct broadcast_conn broadcast;

 PROCESS(button_blink_process, "LED blink process");
 AUTOSTART_PROCESSES(&button_blink_process);


 static void
 broadcast_recv(struct broadcast_conn *c, const rimeaddr_t *from)
 {
    char* data = packetbuf_dataptr();

/*    if (strchr (data, '1'))
	leds_invert(1);
    if (strchr (data, '2'))
	leds_invert(2);
    if (strchr (data, '3'))
        leds_invert(4);
    if (strchr (data, '4'))
        leds_invert(8);     
 */
  printf("broadcast message received from %d.%d: '%s'\n",
         from->u8[0], from->u8[1], (char *)packetbuf_dataptr());
 */
/* ;*/
 }

 /*---------------------------------------------------------------------------*/
 /*---------------------------------------------------------------------------*/
 PROCESS_THREAD(button_blink_process, ev, data)
 {
  volatile uint8_t   val1,val2,val3, val4;

  PROCESS_BEGIN();

  broadcast_open(&broadcast, 129, &broadcast_call);
  etimer_set(&et_blink, CLOCK_SECOND);

  // configure GPIO for input.
  BUTTON_FUNC_GPIO(1);
  BUTTON_FUNC_GPIO(2);
  BUTTON_FUNC_GPIO(3);
  BUTTON_FUNC_GPIO(4);
  BUTTON_DIR_INPUT(1);
  BUTTON_DIR_INPUT(2);
  BUTTON_DIR_INPUT(3);
  BUTTON_DIR_INPUT(4);

  while(1) {

    PROCESS_WAIT_EVENT();

    if(ev == PROCESS_EVENT_INTR) {
	etimer_reset(&et_blink);

        val1 = val2 = val3 = val4 = 1;

	val1 = PORT_READ(0, 0);
	val2 = PORT_READ(0, 1);
	val3 = PORT_READ(0, 2);
	val4 = PORT_READ(0, 3);

	 if (val1 == 0) {
	   // leds_invert(1);
          packetbuf_copyfrom("B1_Pressed", 11);
          broadcast_send(&broadcast);
           } 
	if (val2 == 0) {
	   // leds_invert(2);
           packetbuf_copyfrom("B2_Pressed", 11);
           broadcast_send(&broadcast);
           }	 
	if (val3 == 0)  {
	    // leds_invert(4);
	    packetbuf_copyfrom("B3_Pressed", 11);
	    broadcast_send(&broadcast);
	}
	if (val4 == 0)  {
	    // leds_invert(8);
	    packetbuf_copyfrom("B4_Pressed", 11);
	    broadcast_send(&broadcast);
	}
    }
  }

  PROCESS_END();
 }
/*---------------------------------------------------------------------------*/

