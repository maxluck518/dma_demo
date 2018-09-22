#ifndef SDNET_ENGINE_FiveTupleDemo
#define SDNET_ENGINE_FiveTupleDemo

#include "../OF_parser.TB/OF_parser.hpp"

#include "../ACL.TB/ACL.hpp"

#include "sdnet_lib.hpp"

namespace SDNET {

//######################################################
class FiveTupleDemo { // System
public:

	// tuple types
	struct Metadata_in {
		static const size_t _SIZE = 128;
		_LV<96> pad;
		_LV<8> phy_dst_port;
		_LV<8> phy_src_port;
		_LV<16> pktlen;
		Metadata_in& operator=(_LV<128> _x) {
			pad = _x.slice(127,32);
			phy_dst_port = _x.slice(31,24);
			phy_src_port = _x.slice(23,16);
			pktlen = _x.slice(15,0);
			return *this;
		}
		_LV<128> get_LV() { return (pad,phy_dst_port,phy_src_port,pktlen); }
		operator _LV<128>() { return get_LV(); } 
		std::string to_string() const {
			return std::string("(\n")  + "\t\tpad = " + pad.to_string() + "\n" + "\t\tphy_dst_port = " + phy_dst_port.to_string() + "\n" + "\t\tphy_src_port = " + phy_src_port.to_string() + "\n" + "\t\tpktlen = " + pktlen.to_string() + "\n" + "\t)";
		}
		Metadata_in() {} 
		Metadata_in( _LV<96> _pad, _LV<8> _phy_dst_port, _LV<8> _phy_src_port, _LV<16> _pktlen) {
			pad = _pad;
			phy_dst_port = _phy_dst_port;
			phy_src_port = _phy_src_port;
			pktlen = _pktlen;
		}
	};
	struct Metadata_out {
		static const size_t _SIZE = 128;
		_LV<96> pad;
		_LV<8> phy_dst_port;
		_LV<8> phy_src_port;
		_LV<16> pktlen;
		Metadata_out& operator=(_LV<128> _x) {
			pad = _x.slice(127,32);
			phy_dst_port = _x.slice(31,24);
			phy_src_port = _x.slice(23,16);
			pktlen = _x.slice(15,0);
			return *this;
		}
		_LV<128> get_LV() { return (pad,phy_dst_port,phy_src_port,pktlen); }
		operator _LV<128>() { return get_LV(); } 
		std::string to_string() const {
			return std::string("(\n")  + "\t\tpad = " + pad.to_string() + "\n" + "\t\tphy_dst_port = " + phy_dst_port.to_string() + "\n" + "\t\tphy_src_port = " + phy_src_port.to_string() + "\n" + "\t\tpktlen = " + pktlen.to_string() + "\n" + "\t)";
		}
		Metadata_out() {} 
		Metadata_out( _LV<96> _pad, _LV<8> _phy_dst_port, _LV<8> _phy_src_port, _LV<16> _pktlen) {
			pad = _pad;
			phy_dst_port = _phy_dst_port;
			phy_src_port = _phy_src_port;
			pktlen = _pktlen;
		}
	};
	struct Counter_index_out {
		static const size_t _SIZE = 16;
		_LV<16> counter_index;
		Counter_index_out& operator=(_LV<16> _x) {
			counter_index = _x.slice(15,0);
			return *this;
		}
		_LV<16> get_LV() { return (counter_index); }
		operator _LV<16>() { return get_LV(); } 
		std::string to_string() const {
			return std::string("(\n")  + "\t\tcounter_index = " + counter_index.to_string() + "\n" + "\t)";
		}
		Counter_index_out() {} 
		Counter_index_out( _LV<16> _counter_index) {
			counter_index = _counter_index;
		}
	};

	// system members
	std::string _name;
	Packet instream;
	Packet outstream;
	Metadata_in metadata_in;
	Metadata_out metadata_out;
	Counter_index_out counter_index_out;


	// system engines
	OF_parser parser;
	ACL lookup;

	// system ctor
	FiveTupleDemo(std::string n) : _name(n),
		parser("parser"),
		lookup("lookup") { }

	// system function
	void operator()() {
		std::cout << "===================================================================" << std::endl;
		std::cout << "Entering system " << _name << std::endl;
		// input packet
		std::cout << "input packet (" << instream.size() << " bytes)" << std::endl;
		std::cout << instream;
		// input and inout tuples:
		std::cout << "initial input and inout tuples:" << std::endl;
		std::cout << "	metadata_in = " << metadata_in.to_string() << std::endl;
		// clear internal and output-only tuples:
		std::cout << "clear internal and output-only tuples" << std::endl;
		metadata_out = 0;
		std::cout << "	metadata_out = " << metadata_out.to_string() << std::endl;
		counter_index_out = 0;
		std::cout << "	counter_index_out = " << counter_index_out.to_string() << std::endl;

		// evaluate engines in topologically-sorted order

		parser.packet_in = instream;
		parser.control = 0;
		parser();

		lookup.request = parser.fields;
		lookup();

		// assign system outputs
		counter_index_out = lookup.response;
		outstream = parser.packet_out;
		metadata_out = metadata_in;

		// inout and output tuples:
		std::cout << "final inout and output tuples:" << std::endl;
		std::cout << "	metadata_out = " << metadata_out.to_string() << std::endl;
		std::cout << "	counter_index_out = " << counter_index_out.to_string() << std::endl;
		// output packet
		std::cout << "output packet (" << outstream.size() << " bytes)" << std::endl;
		std::cout << outstream;
		std::cout << "Exiting system " << _name << std::endl;
		std::cout << "===================================================================" << std::endl;
	}
};
//######################################################
// top-level DPI function
extern "C" void FiveTupleDemo_DPI(const char*, int, const char*, int, int, int);


} // namespace SDNET

#endif // SDNET_ENGINE_FiveTupleDemo
