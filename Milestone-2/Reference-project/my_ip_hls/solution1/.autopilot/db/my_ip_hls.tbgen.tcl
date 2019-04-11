set C_TypeInfoList {{ 
"my_ip_hls" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"slaveIn": [[], {"reference": "0"}] }, {"masterOut": [[], {"reference": "0"}] }],[],""], 
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
set pipeline_type dataflow
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
	{ masterOut_V_data_V int 32 regular {axi_s 1 volatile  { masterOut Data } }  }
	{ masterOut_V_strb_V int 4 regular {axi_s 1 volatile  { masterOut Strb } }  }
	{ masterOut_V_last_V int 1 regular {axi_s 1 volatile  { masterOut Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "slaveIn_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "slaveIn.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "slaveIn_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "slaveIn.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "slaveIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "slaveIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "masterOut_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "masterOut.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "masterOut_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "masterOut.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "masterOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "masterOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ slaveIn_TDATA sc_in sc_lv 32 signal 0 } 
	{ slaveIn_TSTRB sc_in sc_lv 4 signal 1 } 
	{ slaveIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ masterOut_TDATA sc_out sc_lv 32 signal 3 } 
	{ masterOut_TSTRB sc_out sc_lv 4 signal 4 } 
	{ masterOut_TLAST sc_out sc_lv 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ slaveIn_TVALID sc_in sc_logic 1 invld 2 } 
	{ slaveIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ masterOut_TVALID sc_out sc_logic 1 outvld 5 } 
	{ masterOut_TREADY sc_in sc_logic 1 outacc 5 } 
}
set NewPortList {[ 
	{ "name": "slaveIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "slaveIn_V_data_V", "role": "default" }} , 
 	{ "name": "slaveIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "slaveIn_V_strb_V", "role": "default" }} , 
 	{ "name": "slaveIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "slaveIn_V_last_V", "role": "default" }} , 
 	{ "name": "masterOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "masterOut_V_data_V", "role": "default" }} , 
 	{ "name": "masterOut_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "masterOut_V_strb_V", "role": "default" }} , 
 	{ "name": "masterOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "masterOut_V_last_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "slaveIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "slaveIn_V_last_V", "role": "default" }} , 
 	{ "name": "slaveIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "slaveIn_V_last_V", "role": "default" }} , 
 	{ "name": "masterOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "masterOut_V_last_V", "role": "default" }} , 
 	{ "name": "masterOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "masterOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "my_ip_hls",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "ps2ip_fifo_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "ip2ps_fifo_U0"}],
		"Port" : [
			{"Name" : "slaveIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ps2ip_fifo_U0", "Port" : "ps2ip_V_data_V"}]},
			{"Name" : "slaveIn_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ps2ip_fifo_U0", "Port" : "ps2ip_V_strb_V"}]},
			{"Name" : "slaveIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ps2ip_fifo_U0", "Port" : "ps2ip_V_last_V"}]},
			{"Name" : "masterOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ip2ps_fifo_U0", "Port" : "ip2ps_V_data_V"}]},
			{"Name" : "masterOut_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ip2ps_fifo_U0", "Port" : "ip2ps_V_strb_V"}]},
			{"Name" : "masterOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ip2ps_fifo_U0", "Port" : "ip2ps_V_last_V"}]},
			{"Name" : "ps2ipFifo_V_data_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ps2ip_fifo_U0", "Port" : "ps2ipFifo_V_data_V"},
					{"ID" : "2", "SubInstance" : "core_U0", "Port" : "ps2ipFifo_V_data_V"}]},
			{"Name" : "ps2ipFifo_V_strb_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ps2ip_fifo_U0", "Port" : "ps2ipFifo_V_strb_V"},
					{"ID" : "2", "SubInstance" : "core_U0", "Port" : "ps2ipFifo_V_strb_V"}]},
			{"Name" : "ps2ipFifo_V_last_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ps2ip_fifo_U0", "Port" : "ps2ipFifo_V_last_V"},
					{"ID" : "2", "SubInstance" : "core_U0", "Port" : "ps2ipFifo_V_last_V"}]},
			{"Name" : "ip2psFifo_V_data_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "core_U0", "Port" : "ip2psFifo_V_data_V"},
					{"ID" : "3", "SubInstance" : "ip2ps_fifo_U0", "Port" : "ip2psFifo_V_data_V"}]},
			{"Name" : "ip2psFifo_V_strb_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "core_U0", "Port" : "ip2psFifo_V_strb_V"},
					{"ID" : "3", "SubInstance" : "ip2ps_fifo_U0", "Port" : "ip2psFifo_V_strb_V"}]},
			{"Name" : "ip2psFifo_V_last_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "core_U0", "Port" : "ip2psFifo_V_last_V"},
					{"ID" : "3", "SubInstance" : "ip2ps_fifo_U0", "Port" : "ip2psFifo_V_last_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ps2ip_fifo_U0", "Parent" : "0",
		"CDFG" : "ps2ip_fifo",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "ps2ip_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "slaveIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ps2ip_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ps2ip_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ps2ipFifo_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ps2ipFifo_V_strb_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ps2ipFifo_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "6",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_last_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.core_U0", "Parent" : "0",
		"CDFG" : "core",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_core_U0_U",
		"Port" : [
			{"Name" : "ps2ipFifo_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ps2ipFifo_V_strb_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ps2ipFifo_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "6",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2psFifo_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "7",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2psFifo_V_strb_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2psFifo_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_last_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip2ps_fifo_U0", "Parent" : "0",
		"CDFG" : "ip2ps_fifo",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_ip2ps_fbkb_U",
		"Port" : [
			{"Name" : "ip2ps_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "masterOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2ps_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ip2ps_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ip2psFifo_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "7",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2psFifo_V_strb_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2psFifo_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_last_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ps2ipFifo_V_data_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ps2ipFifo_V_strb_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ps2ipFifo_V_last_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip2psFifo_V_data_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip2psFifo_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip2psFifo_V_last_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_core_U0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ip2ps_fbkb_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	my_ip_hls {
		slaveIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		slaveIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		slaveIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		masterOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		masterOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		masterOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		ps2ipFifo_V_data_V {Type IO LastRead -1 FirstWrite -1}
		ps2ipFifo_V_strb_V {Type IO LastRead -1 FirstWrite -1}
		ps2ipFifo_V_last_V {Type IO LastRead -1 FirstWrite -1}
		ip2psFifo_V_data_V {Type IO LastRead -1 FirstWrite -1}
		ip2psFifo_V_strb_V {Type IO LastRead -1 FirstWrite -1}
		ip2psFifo_V_last_V {Type IO LastRead -1 FirstWrite -1}}
	ps2ip_fifo {
		ps2ip_V_data_V {Type I LastRead 0 FirstWrite -1}
		ps2ip_V_strb_V {Type I LastRead 0 FirstWrite -1}
		ps2ip_V_last_V {Type I LastRead 0 FirstWrite -1}
		ps2ipFifo_V_data_V {Type O LastRead -1 FirstWrite 1}
		ps2ipFifo_V_strb_V {Type O LastRead -1 FirstWrite 1}
		ps2ipFifo_V_last_V {Type O LastRead -1 FirstWrite 1}}
	core {
		ps2ipFifo_V_data_V {Type I LastRead 0 FirstWrite -1}
		ps2ipFifo_V_strb_V {Type I LastRead 0 FirstWrite -1}
		ps2ipFifo_V_last_V {Type I LastRead 0 FirstWrite -1}
		ip2psFifo_V_data_V {Type O LastRead -1 FirstWrite 1}
		ip2psFifo_V_strb_V {Type O LastRead -1 FirstWrite 1}
		ip2psFifo_V_last_V {Type O LastRead -1 FirstWrite 1}}
	ip2ps_fifo {
		ip2ps_V_data_V {Type O LastRead -1 FirstWrite 1}
		ip2ps_V_strb_V {Type O LastRead -1 FirstWrite 1}
		ip2ps_V_last_V {Type O LastRead -1 FirstWrite 1}
		ip2psFifo_V_data_V {Type I LastRead 0 FirstWrite -1}
		ip2psFifo_V_strb_V {Type I LastRead 0 FirstWrite -1}
		ip2psFifo_V_last_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	slaveIn_V_data_V { axis {  { slaveIn_TDATA in_data 0 32 } } }
	slaveIn_V_strb_V { axis {  { slaveIn_TSTRB in_data 0 4 } } }
	slaveIn_V_last_V { axis {  { slaveIn_TLAST in_data 0 1 }  { slaveIn_TVALID in_vld 0 1 }  { slaveIn_TREADY in_acc 1 1 } } }
	masterOut_V_data_V { axis {  { masterOut_TDATA out_data 1 32 } } }
	masterOut_V_strb_V { axis {  { masterOut_TSTRB out_data 1 4 } } }
	masterOut_V_last_V { axis {  { masterOut_TLAST out_data 1 1 }  { masterOut_TVALID out_vld 1 1 }  { masterOut_TREADY out_acc 0 1 } } }
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
