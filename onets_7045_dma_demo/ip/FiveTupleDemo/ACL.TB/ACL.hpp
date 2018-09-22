#ifndef SDNET_ENGINE_ACL
#define SDNET_ENGINE_ACL

#include "sdnet_lib.hpp"

namespace SDNET {

//######################################################
class ACL { // LookupEngine
public:

	struct request_tuple {
		static const size_t _SIZE = 104;
		_LV<32> sa;
		_LV<32> da;
		_LV<8> proto;
		_LV<16> sp;
		_LV<16> dp;
		request_tuple& operator=(_LV<104> _x) {
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
		request_tuple() {} 
		request_tuple( _LV<32> _sa, _LV<32> _da, _LV<8> _proto, _LV<16> _sp, _LV<16> _dp) {
			sa = _sa;
			da = _da;
			proto = _proto;
			sp = _sp;
			dp = _dp;
		}
	};
	struct response_tuple {
		static const size_t _SIZE = 16;
		_LV<16> counter_index;
		response_tuple& operator=(_LV<16> _x) {
			counter_index = _x.slice(15,0);
			return *this;
		}
		_LV<16> get_LV() { return (counter_index); }
		operator _LV<16>() { return get_LV(); } 
		std::string to_string() const {
			return std::string("(\n")  + "\t\tcounter_index = " + counter_index.to_string() + "\n" + "\t)";
		}
		response_tuple() {} 
		response_tuple( _LV<16> _counter_index) {
			counter_index = _counter_index;
		}
	};
	// lookup members
	static const size_t _num_entries = 1024;
	static const size_t _key_width   = 104;
	static const size_t _value_width = 15;
	std::string _name;
	request_tuple request;
	response_tuple response;
	_EM<_key_width, _value_width> _entries;
	// lookup ctor
	ACL(std::string n, std::string _filename = "") : _name(n) , _entries(n, _filename.empty() ? (n + ".tbl") : _filename) { }
	// engine function
	void operator()(){
		std::cout << "===================================================================" << std::endl;
		std::cout << "Entering engine " << _name << std::endl;
		// input tuple:
		std::cout << "input key tuple:" << std::endl;
		std::cout << "	request = " << request.to_string() << std::endl;
		auto _value = _entries(request);
		response = (_LV<1>(std::get<0>(_value)), std::get<1>(_value));
		// output value tuple:
		std::cout << "	response = " << response.to_string() << std::endl;
		std::cout << "Exiting engine " << _name << std::endl;
		std::cout << "===================================================================" << std::endl;
	}
};
//######################################################
// top-level DPI function
extern "C" void ACL_DPI(const char*, int, const char*, int, int, int);


} // namespace SDNET

#endif // SDNET_ENGINE_ACL
