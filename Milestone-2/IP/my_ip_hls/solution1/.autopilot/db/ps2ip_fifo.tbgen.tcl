set moduleName ps2ip_fifo
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ps2ip_fifo}
set C_modelType { void 0 }
set C_modelArgList {
	{ ps2ip_V_data_V int 32 regular {axi_s 0 volatile  { slaveIn Data } }  }
	{ ps2ip_V_strb_V int 4 regular {axi_s 0 volatile  { slaveIn Strb } }  }
	{ ps2ip_V_last_V int 1 regular {axi_s 0 volatile  { slaveIn Last } }  }
	{ ps2ipFifo_V_data_V int 32 regular {fifo 1 volatile } {global 1}  }
	{ ps2ipFifo_V_strb_V int 4 regular {fifo 1 volatile } {global 1}  }
	{ ps2ipFifo_V_last_V int 1 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ps2ip_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ps2ip_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "ps2ip_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ps2ipFifo_V_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ps2ipFifo_V_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ps2ipFifo_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ slaveIn_TVALID sc_in sc_logic 1 invld 2 } 
	{ slaveIn_TDATA sc_in sc_lv 32 signal 0 } 
	{ slaveIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ slaveIn_TSTRB sc_in sc_lv 4 signal 1 } 
	{ slaveIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ ps2ipFifo_V_data_V_din sc_out sc_lv 32 signal 3 } 
	{ ps2ipFifo_V_data_V_full_n sc_in sc_logic 1 signal 3 } 
	{ ps2ipFifo_V_data_V_write sc_out sc_logic 1 signal 3 } 
	{ ps2ipFifo_V_strb_V_din sc_out sc_lv 4 signal 4 } 
	{ ps2ipFifo_V_strb_V_full_n sc_in sc_logic 1 signal 4 } 
	{ ps2ipFifo_V_strb_V_write sc_out sc_logic 1 signal 4 } 
	{ ps2ipFifo_V_last_V_din sc_out sc_lv 1 signal 5 } 
	{ ps2ipFifo_V_last_V_full_n sc_in sc_logic 1 signal 5 } 
	{ ps2ipFifo_V_last_V_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "slaveIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ps2ip_V_last_V", "role": "default" }} , 
 	{ "name": "slaveIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps2ip_V_data_V", "role": "default" }} , 
 	{ "name": "slaveIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "ps2ip_V_last_V", "role": "default" }} , 
 	{ "name": "slaveIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps2ip_V_strb_V", "role": "default" }} , 
 	{ "name": "slaveIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ip_V_last_V", "role": "default" }} , 
 	{ "name": "ps2ipFifo_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps2ipFifo_V_data_V", "role": "din" }} , 
 	{ "name": "ps2ipFifo_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_data_V", "role": "full_n" }} , 
 	{ "name": "ps2ipFifo_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_data_V", "role": "write" }} , 
 	{ "name": "ps2ipFifo_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps2ipFifo_V_strb_V", "role": "din" }} , 
 	{ "name": "ps2ipFifo_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_strb_V", "role": "full_n" }} , 
 	{ "name": "ps2ipFifo_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_strb_V", "role": "write" }} , 
 	{ "name": "ps2ipFifo_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_last_V", "role": "din" }} , 
 	{ "name": "ps2ipFifo_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_last_V", "role": "full_n" }} , 
 	{ "name": "ps2ipFifo_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps2ipFifo_V_last_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "ps2ipFifo_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ps2ipFifo_V_strb_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ps2ipFifo_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ps2ipFifo_V_last_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ps2ip_fifo {
		ps2ip_V_data_V {Type I LastRead 0 FirstWrite -1}
		ps2ip_V_strb_V {Type I LastRead 0 FirstWrite -1}
		ps2ip_V_last_V {Type I LastRead 0 FirstWrite -1}
		ps2ipFifo_V_data_V {Type O LastRead -1 FirstWrite 1}
		ps2ipFifo_V_strb_V {Type O LastRead -1 FirstWrite 1}
		ps2ipFifo_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ps2ip_V_data_V { axis {  { slaveIn_TDATA in_data 0 32 } } }
	ps2ip_V_strb_V { axis {  { slaveIn_TSTRB in_data 0 4 } } }
	ps2ip_V_last_V { axis {  { slaveIn_TVALID in_vld 0 1 }  { slaveIn_TREADY in_acc 1 1 }  { slaveIn_TLAST in_data 0 1 } } }
	ps2ipFifo_V_data_V { ap_fifo {  { ps2ipFifo_V_data_V_din fifo_data 1 32 }  { ps2ipFifo_V_data_V_full_n fifo_status 0 1 }  { ps2ipFifo_V_data_V_write fifo_update 1 1 } } }
	ps2ipFifo_V_strb_V { ap_fifo {  { ps2ipFifo_V_strb_V_din fifo_data 1 4 }  { ps2ipFifo_V_strb_V_full_n fifo_status 0 1 }  { ps2ipFifo_V_strb_V_write fifo_update 1 1 } } }
	ps2ipFifo_V_last_V { ap_fifo {  { ps2ipFifo_V_last_V_din fifo_data 1 1 }  { ps2ipFifo_V_last_V_full_n fifo_status 0 1 }  { ps2ipFifo_V_last_V_write fifo_update 1 1 } } }
}
