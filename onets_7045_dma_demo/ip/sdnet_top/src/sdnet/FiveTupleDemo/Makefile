ROOT_DIR	:= ./
include		../Makefile.mk

SDNET_NAME	:= FiveTupleDemo
FLAGS 		:= -busType axi -busWidth 64 -lineClock 156.25 -lookupClock 76.923080 -controlClock 76.923080 -singleControlPort

sdnet :
	$(SDNET) $(SDNET_NAME).sdnet $(FLAGS) -workDir work_$(SDNET_NAME) -packetFile Packet.pcap -tupleFile Tuple.user
	cp ./Packet.pcap ./work_FiveTupleDemo/FiveTupleDemo
	cp ./lookup.tbl ./work_FiveTupleDemo/FiveTupleDemo
	cp ./Tuple.user ./work_FiveTupleDemo/FiveTupleDemo

clean :
	rm -rf work_$(SDNET_NAME)/
	rm -f *vivado*

