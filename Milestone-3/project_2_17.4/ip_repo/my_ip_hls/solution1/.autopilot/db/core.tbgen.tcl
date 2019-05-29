set moduleName core
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {core}
set C_modelType { int 96 }
set C_modelArgList {
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
	{ p_read2 int 32 regular  }
	{ ps2ipFifo_V_data_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ ps2ipFifo_V_strb_V int 4 regular {fifo 0 volatile } {global 0}  }
	{ ps2ipFifo_V_last_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ ip2psFifo_V_data_V int 32 regular {fifo 1 volatile } {global 1}  }
	{ ip2psFifo_V_strb_V int 4 regular {fifo 1 volatile } {global 1}  }
	{ ip2psFifo_V_last_V int 1 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ps2ipFifo_V_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ps2ipFifo_V_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ps2ipFifo_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ip2psFifo_V_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ip2psFifo_V_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ip2psFifo_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ p_read1 sc_in sc_lv 32 signal 1 } 
	{ p_read2 sc_in sc_lv 32 signal 2 } 
	{ ps2ipFifo_V_data_V_dout sc_in sc_lv 32 signal 3 } 
	{ ps2ipFifo_V_data_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ ps2ipFifo_V_data_V_read sc_out sc_logic 1 signal 3 } 
	{ ps2ipFifo_V_strb_V_dout sc_in sc_lv 4 signal 4 } 
	{ ps2ipFifo_V_strb_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ ps2ipFifo_V_strb_V_read sc_out sc_logic 1 signal 4 } 
	{ ps2ipFifo_V_last_V_dout sc_in sc_lv 1 signal 5 } 
	{ ps2ipFifo_V_last_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ ps2ipFifo_V_last_V_read sc_out sc_logic 1 signal 5 } 
	{ ip2psFifo_V_data_V_din sc_out sc_lv 32 signal 6 } 
	{ ip2psFifo_V_data_V_full_n sc_in sc_logic 1 signal 6 } 
	{ ip2psFifo_V_data_V_write sc_out sc_logic 1 signal 6 } 
	{ ip2psFifo_V_strb_V_din sc_out sc_lv 4 signal 7 } 
	{ ip2psFifo_V_strb_V_full_n sc_in sc_logic 1 signal 7 } 
	{ ip2psFifo_V_strb_V_write sc_out sc_logic 1 signal 7 } 
	{ ip2psFifo_V_last_V_din sc_out sc_lv 1 signal 8 } 
	{ ip2psFifo_V_last_V_full_n sc_in sc_logic 1 signal 8 } 
	{ ip2psFifo_V_last_V_write sc_out sc_logic 1 signal 8 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "ps2ipFifo_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps2ipFifo_V_data_V", "role": "dout" }} , 
 	{ "name": "ps2ipFifo_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_data_V", "role": "empty_n" }} , 
 	{ "name": "ps2ipFifo_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_data_V", "role": "read" }} , 
 	{ "name": "ps2ipFifo_V_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps2ipFifo_V_strb_V", "role": "dout" }} , 
 	{ "name": "ps2ipFifo_V_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_strb_V", "role": "empty_n" }} , 
 	{ "name": "ps2ipFifo_V_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_strb_V", "role": "read" }} , 
 	{ "name": "ps2ipFifo_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_last_V", "role": "dout" }} , 
 	{ "name": "ps2ipFifo_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_last_V", "role": "empty_n" }} , 
 	{ "name": "ps2ipFifo_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_last_V", "role": "read" }} , 
 	{ "name": "ip2psFifo_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ip2psFifo_V_data_V", "role": "din" }} , 
 	{ "name": "ip2psFifo_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_data_V", "role": "full_n" }} , 
 	{ "name": "ip2psFifo_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_data_V", "role": "write" }} , 
 	{ "name": "ip2psFifo_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ip2psFifo_V_strb_V", "role": "din" }} , 
 	{ "name": "ip2psFifo_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_strb_V", "role": "full_n" }} , 
 	{ "name": "ip2psFifo_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_strb_V", "role": "write" }} , 
 	{ "name": "ip2psFifo_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_last_V", "role": "din" }} , 
 	{ "name": "ip2psFifo_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_last_V", "role": "full_n" }} , 
 	{ "name": "ip2psFifo_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_last_V", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "core",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "ps2ipFifo_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ps2ipFifo_V_strb_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ps2ipFifo_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cnt0Reg_core_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cnt1Reg_core_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cnt2Reg_core_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip2psFifo_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2psFifo_V_strb_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2psFifo_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_last_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	core {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		ps2ipFifo_V_data_V {Type I LastRead 0 FirstWrite -1}
		ps2ipFifo_V_strb_V {Type I LastRead 0 FirstWrite -1}
		ps2ipFifo_V_last_V {Type I LastRead 0 FirstWrite -1}
		cnt0Reg_core_V {Type IO LastRead -1 FirstWrite -1}
		cnt1Reg_core_V {Type IO LastRead -1 FirstWrite -1}
		cnt2Reg_core_V {Type IO LastRead -1 FirstWrite -1}
		ip2psFifo_V_data_V {Type O LastRead -1 FirstWrite 1}
		ip2psFifo_V_strb_V {Type O LastRead -1 FirstWrite 1}
		ip2psFifo_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	ps2ipFifo_V_data_V { ap_fifo {  { ps2ipFifo_V_data_V_dout fifo_data 0 32 }  { ps2ipFifo_V_data_V_empty_n fifo_status 0 1 }  { ps2ipFifo_V_data_V_read fifo_update 1 1 } } }
	ps2ipFifo_V_strb_V { ap_fifo {  { ps2ipFifo_V_strb_V_dout fifo_data 0 4 }  { ps2ipFifo_V_strb_V_empty_n fifo_status 0 1 }  { ps2ipFifo_V_strb_V_read fifo_update 1 1 } } }
	ps2ipFifo_V_last_V { ap_fifo {  { ps2ipFifo_V_last_V_dout fifo_data 0 1 }  { ps2ipFifo_V_last_V_empty_n fifo_status 0 1 }  { ps2ipFifo_V_last_V_read fifo_update 1 1 } } }
	ip2psFifo_V_data_V { ap_fifo {  { ip2psFifo_V_data_V_din fifo_data 1 32 }  { ip2psFifo_V_data_V_full_n fifo_status 0 1 }  { ip2psFifo_V_data_V_write fifo_update 1 1 } } }
	ip2psFifo_V_strb_V { ap_fifo {  { ip2psFifo_V_strb_V_din fifo_data 1 4 }  { ip2psFifo_V_strb_V_full_n fifo_status 0 1 }  { ip2psFifo_V_strb_V_write fifo_update 1 1 } } }
	ip2psFifo_V_last_V { ap_fifo {  { ip2psFifo_V_last_V_din fifo_data 1 1 }  { ip2psFifo_V_last_V_full_n fifo_status 0 1 }  { ip2psFifo_V_last_V_write fifo_update 1 1 } } }
}
