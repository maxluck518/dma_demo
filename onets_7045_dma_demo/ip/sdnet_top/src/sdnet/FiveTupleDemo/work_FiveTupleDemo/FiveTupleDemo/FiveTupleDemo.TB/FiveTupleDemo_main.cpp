#include "FiveTupleDemo.hpp"

int main(int argc, char *argv[]) {
	char *packet_user_filename = (argc > 1) ? argv[1] : (char*)"Packet.user";
	char *tuple_user_filename  = (argc > 2) ? argv[2] : (char*)"Tuple.user";
	int bus_type               =  1; 
	int bus_width              = 64;
	SDNET::FiveTupleDemo_DPI(packet_user_filename, 0, tuple_user_filename, bus_type, bus_width, 0);
	return 0;
}

