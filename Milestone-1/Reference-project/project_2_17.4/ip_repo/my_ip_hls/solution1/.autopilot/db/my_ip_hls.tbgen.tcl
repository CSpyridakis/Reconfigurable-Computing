set C_TypeInfoList {{ 
"my_ip_hls" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"slaveIn": [[], {"reference": "0"}] }, {"MasterOut": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<axiWord>", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "axiWord", {"struct": [[],[],[{ "data": [[], "3"]},{ "strb": [[], "4"]},{ "last": [[], "5"]}],""]}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"4": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"3": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName my_ip_hls
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {my_ip_hls}
set C_modelType { void 0 }
set C_modelArgList {
	{ slaveIn_V_data_V int 32 regular {axi_s 0 volatile  { slaveIn Data } }  }
	{ slaveIn_V_strb_V int 4 regular {axi_s 0 volatile  { slaveIn Strb } }  }
	{ slaveIn_V_last_V int 1 regular {axi_s 0 volatile  { slaveIn Last } }  }
	{ MasterOut_V_data_V int 32 regular {axi_s 1 volatile  { MasterOut Data } }  }
	{ MasterOut_V_strb_V int 4 regular {axi_s 1 volatile  { MasterOut Strb } }  }
	{ MasterOut_V_last_V int 1 regular {axi_s 1 volatile  { MasterOut Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "slaveIn_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "slaveIn.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "slaveIn_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "slaveIn.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "slaveIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "slaveIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MasterOut_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "MasterOut.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MasterOut_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "MasterOut.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "MasterOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "MasterOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ slaveIn_TDATA sc_in sc_lv 32 signal 0 } 
	{ slaveIn_TVALID sc_in sc_logic 1 invld 2 } 
	{ slaveIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ slaveIn_TSTRB sc_in sc_lv 4 signal 1 } 
	{ slaveIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ MasterOut_TDATA sc_out sc_lv 32 signal 3 } 
	{ MasterOut_TVALID sc_out sc_logic 1 outvld 5 } 
	{ MasterOut_TREADY sc_in sc_logic 1 outacc 5 } 
	{ MasterOut_TSTRB sc_out sc_lv 4 signal 4 } 
	{ MasterOut_TLAST sc_out sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "slaveIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "slaveIn_V_data_V", "role": "default" }} , 
 	{ "name": "slaveIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "slaveIn_V_last_V", "role": "default" }} , 
 	{ "name": "slaveIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "slaveIn_V_last_V", "role": "default" }} , 
 	{ "name": "slaveIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "slaveIn_V_strb_V", "role": "default" }} , 
 	{ "name": "slaveIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "slaveIn_V_last_V", "role": "default" }} , 
 	{ "name": "MasterOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "MasterOut_V_data_V", "role": "default" }} , 
 	{ "name": "MasterOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "MasterOut_V_last_V", "role": "default" }} , 
 	{ "name": "MasterOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "MasterOut_V_last_V", "role": "default" }} , 
 	{ "name": "MasterOut_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "MasterOut_V_strb_V", "role": "default" }} , 
 	{ "name": "MasterOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "MasterOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "my_ip_hls",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "slaveIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "slaveIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "slaveIn_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "slaveIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "MasterOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "MasterOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MasterOut_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "MasterOut_V_last_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	my_ip_hls {
		slaveIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		slaveIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		slaveIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		MasterOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		MasterOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		MasterOut_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	slaveIn_V_data_V { axis {  { slaveIn_TDATA in_data 0 32 } } }
	slaveIn_V_strb_V { axis {  { slaveIn_TSTRB in_data 0 4 } } }
	slaveIn_V_last_V { axis {  { slaveIn_TVALID in_vld 0 1 }  { slaveIn_TREADY in_acc 1 1 }  { slaveIn_TLAST in_data 0 1 } } }
	MasterOut_V_data_V { axis {  { MasterOut_TDATA out_data 1 32 } } }
	MasterOut_V_strb_V { axis {  { MasterOut_TSTRB out_data 1 4 } } }
	MasterOut_V_last_V { axis {  { MasterOut_TVALID out_vld 1 1 }  { MasterOut_TREADY out_acc 0 1 }  { MasterOut_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
