#ifndef SDNET_ENGINE_OF_parser
#define SDNET_ENGINE_OF_parser

#include "sdnet_lib.hpp"

namespace SDNET {

//######################################################
class OF_parser { // ParsingEngine 
public:

	// tuple types
	struct Fields {
		static const size_t _SIZE = 104;
		_LV<32> sa;
		_LV<32> da;
		_LV<8> proto;
		_LV<16> sp;
		_LV<16> dp;
		Fields& operator=(_LV<104> _x) {
			sa = _x.slice(103,72);
			da = _x.slice(71,40);
			proto = _x.slice(39,32);
			sp = _x.slice(31,16);
			dp = _x.slice(15,0);
			return *this;
		}
		_LV<104> get_LV() { return (sa,da,proto,sp,dp); }
		operator _LV<104>() { return get_LV(); } 
		std::string to_string() const {
			return std::string("(\n")  + "\t\tsa = " + sa.to_string() + "\n" + "\t\tda = " + da.to_string() + "\n" + "\t\tproto = " + proto.to_string() + "\n" + "\t\tsp = " + sp.to_string() + "\n" + "\t\tdp = " + dp.to_string() + "\n" + "\t)";
		}
		Fields() {} 
		Fields( _LV<32> _sa, _LV<32> _da, _LV<8> _proto, _LV<16> _sp, _LV<16> _dp) {
			sa = _sa;
			da = _da;
			proto = _proto;
			sp = _sp;
			dp = _dp;
		}
	};
	struct CONTROL_STRUCT {
		static const size_t _SIZE = 36;
		_LV<14> offset;
		_LV<14> virtual_offset;
		_LV<3> section;
		_LV<1> activeBank;
		_LV<1> done;
		_LV<3> error;
		CONTROL_STRUCT& operator=(_LV<36> _x) {
			offset = _x.slice(35,22);
			virtual_offset = _x.slice(21,8);
			section = _x.slice(7,5);
			activeBank = _x.slice(4,4);
			done = _x.slice(3,3);
			error = _x.slice(2,0);
			return *this;
		}
		_LV<36> get_LV() { return (offset,virtual_offset,section,activeBank,done,error); }
		operator _LV<36>() { return get_LV(); } 
		std::string to_string() const {
			return std::string("(\n")  + "\t\toffset = " + offset.to_string() + "\n" + "\t\tvirtual_offset = " + virtual_offset.to_string() + "\n" + "\t\tsection = " + section.to_string() + "\n" + "\t\tactiveBank = " + activeBank.to_string() + "\n" + "\t\tdone = " + done.to_string() + "\n" + "\t\terror = " + error.to_string() + "\n" + "\t)";
		}
		CONTROL_STRUCT() {} 
		CONTROL_STRUCT( _LV<14> _offset, _LV<14> _virtual_offset, _LV<3> _section, _LV<1> _activeBank, _LV<1> _done, _LV<3> _error) {
			offset = _offset;
			virtual_offset = _virtual_offset;
			section = _section;
			activeBank = _activeBank;
			done = _done;
			error = _error;
		}
	};

	// section function pointer signature
	typedef void (OF_parser::*Section) (int _stage, Packet& packet_in, CONTROL_STRUCT& control, Fields& fields);

	// engine members
	static const int _num_stages = 4;
	std::string _name;
	Section     _sections     [5];
	const char* _section_names[5];

	Packet packet_in;
	Packet packet_out;
	CONTROL_STRUCT control;
	Fields fields;

	// engine ctor
	OF_parser(std::string n) : _name(n) {
		// initial section
		_sections     [0] = &OF_parser::ETH_header;
		_section_names[0] = "ETH_header";
		// section encodings
		_sections     [1] = &OF_parser::ETH_header;
		_section_names[1] = "ETH_header";
		_sections     [2] = &OF_parser::VLAN_header;
		_section_names[2] = "VLAN_header";
		_sections     [3] = &OF_parser::IP_header;
		_section_names[3] = "IP_header";
		_sections     [4] = &OF_parser::TCP_UDP_header;
		_section_names[4] = "TCP_UDP_header";
	}

	// engine sections
	void ETH_header(int _stage, Packet& _packet, CONTROL_STRUCT& control, Fields& fields) { 
		std::cout << "-------------------------------------------------------------------" << std::endl;
		std::cout << "Section ETH_header starting" << std::endl;
		// check whether this section is implemented in the current stage
		switch (_stage) {
			case 1 :
				break;
			default:
				std::cout << "section ETH_header is not implemented in stage " << _stage << ", skipping this stage" <<std::endl;
				std::cout << "-------------------------------------------------------------------" << std::endl;
				return;
		}
		std::cout << std::endl;
		// declare updated tuples with copied values
		CONTROL_STRUCT _new_control = control;
		Fields _new_fields = fields;
		// declare section struct fields
		_LV<48> dmac;
		_LV<48> smac;
		_LV<16> type;
		std::cout << "	extracting 112 bits at offset " << control.offset << std::endl;
		// check for parsing past EOP
		if (control.offset.to_ulong() + 112 > _packet.size()*8) {
			std::cout << "ERROR: attempting to parse past the end of packet" << std::endl;
			control.error = 2;
			return;
		}
		// extract section struct
		(dmac,smac,type) = extract<112>(_packet, control.offset.to_ulong());
		std::cout << "		dmac = " << dmac.to_string() << std::endl;
		std::cout << "		smac = " << smac.to_string() << std::endl;
		std::cout << "		type = " << type.to_string() << std::endl;
		std::cout << std::endl;
		// default increment by the size of the section struct
		std::cout << "\tincrementing offset by the size of the struct: 112 bits " << std::endl;
		_new_control.offset = control.offset + 112 ;
		_new_control.virtual_offset = control.virtual_offset + 112 ;
		std::cout << std::endl;
		// move_to_section
		(_new_control.section, _new_control.done) = _IF(( type == _LV<16>("33024", 10) ),/*then*/ _LV<16>("4", 10), /*else*/_IF(( type == _LV<16>("2048", 10) ),/*then*/ _LV<16>("6", 10), /*else*/_LV<16>("3", 10)));
		std::cout << "	method move_to_section = ";
		if ( _new_control.done.any() )
			std::cout << "done(" << _new_control.section.to_ulong() << ")" << std::endl;
		else
			std::cout << _section_names[_new_control.section.to_ulong()] << std::endl;
		std::cout << std::endl;
		// print updated tuple values
		std::cout << "updated tuples:" << std::endl;
		std::cout << "	control = " << _new_control.to_string()  << std::endl;
		std::cout << "	fields = " << _new_fields.to_string()  << std::endl;
		std::cout << "Section ETH_header finished" << std::endl;
		std::cout << "-------------------------------------------------------------------" << std::endl;
		// output updated tuples
		control = _new_control;
		fields = _new_fields;
	}

	void VLAN_header(int _stage, Packet& _packet, CONTROL_STRUCT& control, Fields& fields) { 
		std::cout << "-------------------------------------------------------------------" << std::endl;
		std::cout << "Section VLAN_header starting" << std::endl;
		// check whether this section is implemented in the current stage
		switch (_stage) {
			case 2 :
				break;
			default:
				std::cout << "section VLAN_header is not implemented in stage " << _stage << ", skipping this stage" <<std::endl;
				std::cout << "-------------------------------------------------------------------" << std::endl;
				return;
		}
		std::cout << std::endl;
		// declare updated tuples with copied values
		CONTROL_STRUCT _new_control = control;
		Fields _new_fields = fields;
		// declare section struct fields
		_LV<3> pcp;
		_LV<1> cfi;
		_LV<12> vid;
		_LV<16> tpid;
		std::cout << "	extracting 32 bits at offset " << control.offset << std::endl;
		// check for parsing past EOP
		if (control.offset.to_ulong() + 32 > _packet.size()*8) {
			std::cout << "ERROR: attempting to parse past the end of packet" << std::endl;
			control.error = 2;
			return;
		}
		// extract section struct
		(pcp,cfi,vid,tpid) = extract<32>(_packet, control.offset.to_ulong());
		std::cout << "		pcp = " << pcp.to_string() << std::endl;
		std::cout << "		cfi = " << cfi.to_string() << std::endl;
		std::cout << "		vid = " << vid.to_string() << std::endl;
		std::cout << "		tpid = " << tpid.to_string() << std::endl;
		std::cout << std::endl;
		// default increment by the size of the section struct
		std::cout << "\tincrementing offset by the size of the struct: 32 bits " << std::endl;
		_new_control.offset = control.offset + 32 ;
		_new_control.virtual_offset = control.virtual_offset + 32 ;
		std::cout << std::endl;
		// move_to_section
		(_new_control.section, _new_control.done) = _IF(( tpid == _LV<16>("2048", 10) ),/*then*/ _LV<16>("6", 10), /*else*/_LV<16>("3", 10));
		std::cout << "	method move_to_section = ";
		if ( _new_control.done.any() )
			std::cout << "done(" << _new_control.section.to_ulong() << ")" << std::endl;
		else
			std::cout << _section_names[_new_control.section.to_ulong()] << std::endl;
		std::cout << std::endl;
		// print updated tuple values
		std::cout << "updated tuples:" << std::endl;
		std::cout << "	control = " << _new_control.to_string()  << std::endl;
		std::cout << "	fields = " << _new_fields.to_string()  << std::endl;
		std::cout << "Section VLAN_header finished" << std::endl;
		std::cout << "-------------------------------------------------------------------" << std::endl;
		// output updated tuples
		control = _new_control;
		fields = _new_fields;
	}

	void IP_header(int _stage, Packet& _packet, CONTROL_STRUCT& control, Fields& fields) { 
		std::cout << "-------------------------------------------------------------------" << std::endl;
		std::cout << "Section IP_header starting" << std::endl;
		// check whether this section is implemented in the current stage
		switch (_stage) {
			case 2 :
			case 3 :
				break;
			default:
				std::cout << "section IP_header is not implemented in stage " << _stage << ", skipping this stage" <<std::endl;
				std::cout << "-------------------------------------------------------------------" << std::endl;
				return;
		}
		std::cout << std::endl;
		// declare updated tuples with copied values
		CONTROL_STRUCT _new_control = control;
		Fields _new_fields = fields;
		// declare section struct fields
		_LV<4> version;
		_LV<4> hdr_len;
		_LV<8> tos;
		_LV<16> length;
		_LV<16> id;
		_LV<3> flags;
		_LV<13> offset;
		_LV<8> ttl;
		_LV<8> proto;
		_LV<16> hdr_chk;
		_LV<32> sa;
		_LV<32> da;
		std::cout << "	extracting 160 bits at offset " << control.offset << std::endl;
		// check for parsing past EOP
		if (control.offset.to_ulong() + 160 > _packet.size()*8) {
			std::cout << "ERROR: attempting to parse past the end of packet" << std::endl;
			control.error = 2;
			return;
		}
		// extract section struct
		(version,hdr_len,tos,length,id,flags,offset,ttl,proto,hdr_chk,sa,da) = extract<160>(_packet, control.offset.to_ulong());
		std::cout << "		version = " << version.to_string() << std::endl;
		std::cout << "		hdr_len = " << hdr_len.to_string() << std::endl;
		std::cout << "		tos = " << tos.to_string() << std::endl;
		std::cout << "		length = " << length.to_string() << std::endl;
		std::cout << "		id = " << id.to_string() << std::endl;
		std::cout << "		flags = " << flags.to_string() << std::endl;
		std::cout << "		offset = " << offset.to_string() << std::endl;
		std::cout << "		ttl = " << ttl.to_string() << std::endl;
		std::cout << "		proto = " << proto.to_string() << std::endl;
		std::cout << "		hdr_chk = " << hdr_chk.to_string() << std::endl;
		std::cout << "		sa = " << sa.to_string() << std::endl;
		std::cout << "		da = " << da.to_string() << std::endl;
		std::cout << std::endl;
		// update tuples
		std::cout << "	method update (tuples)" << std::endl;
		_new_fields.sa = sa;
		std::cout << "		fields.sa = " << _new_fields.sa.to_string() << std::endl;
		_new_fields.da = da;
		std::cout << "		fields.da = " << _new_fields.da.to_string() << std::endl;
		_new_fields.proto = proto;
		std::cout << "		fields.proto = " << _new_fields.proto.to_string() << std::endl;
		std::cout << std::endl;
		// increment_offset
		_new_control.offset = control.offset + ( _LV<14>(hdr_len) * _LV<14>("32", 10) ) ;
		_new_control.virtual_offset = control.virtual_offset + ( _LV<14>(hdr_len) * _LV<14>("32", 10) ) ;
		std::cout << std::endl;
		// move_to_section
		(_new_control.section, _new_control.done) = _IF(( ( proto == _LV<8>("6", 10) ) || ( proto == _LV<8>("17", 10) ) ),/*then*/ _LV<8>("8", 10), /*else*/_LV<8>("3", 10));
		std::cout << "	method move_to_section = ";
		if ( _new_control.done.any() )
			std::cout << "done(" << _new_control.section.to_ulong() << ")" << std::endl;
		else
			std::cout << _section_names[_new_control.section.to_ulong()] << std::endl;
		std::cout << std::endl;
		// print updated tuple values
		std::cout << "updated tuples:" << std::endl;
		std::cout << "	control = " << _new_control.to_string()  << std::endl;
		std::cout << "	fields = " << _new_fields.to_string()  << std::endl;
		std::cout << "Section IP_header finished" << std::endl;
		std::cout << "-------------------------------------------------------------------" << std::endl;
		// output updated tuples
		control = _new_control;
		fields = _new_fields;
	}

	void TCP_UDP_header(int _stage, Packet& _packet, CONTROL_STRUCT& control, Fields& fields) { 
		std::cout << "-------------------------------------------------------------------" << std::endl;
		std::cout << "Section TCP_UDP_header starting" << std::endl;
		// check whether this section is implemented in the current stage
		switch (_stage) {
			case 3 :
			case 4 :
				break;
			default:
				std::cout << "section TCP_UDP_header is not implemented in stage " << _stage << ", skipping this stage" <<std::endl;
				std::cout << "-------------------------------------------------------------------" << std::endl;
				return;
		}
		std::cout << std::endl;
		// declare updated tuples with copied values
		CONTROL_STRUCT _new_control = control;
		Fields _new_fields = fields;
		// declare section struct fields
		_LV<16> sp;
		_LV<16> dp;
		std::cout << "	extracting 32 bits at offset " << control.offset << std::endl;
		// check for parsing past EOP
		if (control.offset.to_ulong() + 32 > _packet.size()*8) {
			std::cout << "ERROR: attempting to parse past the end of packet" << std::endl;
			control.error = 2;
			return;
		}
		// extract section struct
		(sp,dp) = extract<32>(_packet, control.offset.to_ulong());
		std::cout << "		sp = " << sp.to_string() << std::endl;
		std::cout << "		dp = " << dp.to_string() << std::endl;
		std::cout << std::endl;
		// update tuples
		std::cout << "	method update (tuples)" << std::endl;
		_new_fields.sp = sp;
		std::cout << "		fields.sp = " << _new_fields.sp.to_string() << std::endl;
		_new_fields.dp = dp;
		std::cout << "		fields.dp = " << _new_fields.dp.to_string() << std::endl;
		std::cout << std::endl;
		// increment_offset
		_new_control.offset = control.offset + _LV<14>("0", 10) ;
		_new_control.virtual_offset = control.virtual_offset + _LV<14>("0", 10) ;
		std::cout << std::endl;
		// move_to_section
		(_new_control.section, _new_control.done) = _LV<3>("1", 10);
		std::cout << "	method move_to_section = ";
		if ( _new_control.done.any() )
			std::cout << "done(" << _new_control.section.to_ulong() << ")" << std::endl;
		else
			std::cout << _section_names[_new_control.section.to_ulong()] << std::endl;
		std::cout << std::endl;
		// print updated tuple values
		std::cout << "updated tuples:" << std::endl;
		std::cout << "	control = " << _new_control.to_string()  << std::endl;
		std::cout << "	fields = " << _new_fields.to_string()  << std::endl;
		std::cout << "Section TCP_UDP_header finished" << std::endl;
		std::cout << "-------------------------------------------------------------------" << std::endl;
		// output updated tuples
		control = _new_control;
		fields = _new_fields;
	}


	// engine function
	void operator()() {
		std::cout << "===================================================================" << std::endl;
		std::cout << "Entering engine " << _name << std::endl;
		// input packet:
		std::cout << "input packet (" << packet_in.size() << " bytes)" << std::endl;
		std::cout << packet_in;
		// copy input packet
		packet_out = packet_in;
		// input and inout tuples:
		std::cout << "initial input and inout tuples:" << std::endl;
		std::cout << "	control = " << control.to_string() << std::endl;
		// clear internal and output-only tuples:
		std::cout << "clear internal and output-only tuples" << std::endl;
		fields = 0;
		std::cout << "	fields = " << fields.to_string() << std::endl;
		// section loop
		for (int _stage = 1; _stage <= 4 && control.done.none() && control.error.none(); _stage++) {
			std::cout << "processing section " << _section_names[control.section.to_ulong()] << " in stage " << _stage << std::endl;
			(this->*_sections[control.section.to_ulong()])(_stage, packet_out, control, fields); 
		}
		// inout and output tuples:
		std::cout << "final inout and output tuples:" << std::endl;
		std::cout << std::endl << "Note: this engine's wrapper will clear the upper control tuple fields on output, except for the 'control.error' field." << std::endl << std::endl;
		// engine's wrapper will clear most of the control tuple fields, except for error:
		control.error = control.error.any() || control.done.none() || control.section.any(); 
		control.offset = 0; 
		control.virtual_offset = 0; 
		control.section = 0; 
		control.done = 0; 

		std::cout << "	control = " << control.to_string() << std::endl;
		std::cout << "	fields = " << fields.to_string() << std::endl;
		std::cout << "Exiting engine " << _name << std::endl;
		std::cout << "===================================================================" << std::endl;
	}
};

//######################################################
// top-level DPI function
extern "C" void OF_parser_DPI(const char*, int, const char*, int, int, int);


} // namespace SDNET

#endif // SDNET_ENGINE_OF_parser
