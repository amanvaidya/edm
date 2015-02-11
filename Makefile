CONTIKI_PROJECT = edm_bcast edm_intr

all: $(CONTIKI_PROJECT) 

CONTIKI = /home/user/contiki
include $(CONTIKI)/Makefile.include
