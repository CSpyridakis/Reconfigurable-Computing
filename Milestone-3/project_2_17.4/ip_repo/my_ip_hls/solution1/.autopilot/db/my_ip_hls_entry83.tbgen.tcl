set moduleName my_ip_hls_entry83
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {my_ip_hls.entry83}
set C_modelType { void 0 }
set C_modelArgList {
	{ rule0_V int 32 regular {fifo 0}  }
	{ rule1_V int 32 regular {fifo 0}  }
	{ rule2_V int 32 regular {fifo 0}  }
	{ rule0_V_out int 32 regular {fifo 1}  }
	{ rule1_V_out int 32 regular {fifo 1}  }
	{ rule2_V_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rule0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rule1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rule2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rule0_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rule1_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rule2_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
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
	{ rule0_V_dout sc_in sc_lv 32 signal 0 } 
	{ rule0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ rule0_V_read sc_out sc_logic 1 signal 0 } 
	{ rule1_V_dout sc_in sc_lv 32 signal 1 } 
	{ rule1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ rule1_V_read sc_out sc_logic 1 signal 1 } 
	{ rule2_V_dout sc_in sc_lv 32 signal 2 } 
	{ rule2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ rule2_V_read sc_out sc_logic 1 signal 2 } 
	{ rule0_V_out_din sc_out sc_lv 32 signal 3 } 
	{ rule0_V_out_full_n sc_in sc_logic 1 signal 3 } 
	{ rule0_V_out_write sc_out sc_logic 1 signal 3 } 
	{ rule1_V_out_din sc_out sc_lv 32 signal 4 } 
	{ rule1_V_out_full_n sc_in sc_logic 1 signal 4 } 
	{ rule1_V_out_write sc_out sc_logic 1 signal 4 } 
	{ rule2_V_out_din sc_out sc_lv 32 signal 5 } 
	{ rule2_V_out_full_n sc_in sc_logic 1 signal 5 } 
	{ rule2_V_out_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "rule0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rule0_V", "role": "dout" }} , 
 	{ "name": "rule0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule0_V", "role": "empty_n" }} , 
 	{ "name": "rule0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule0_V", "role": "read" }} , 
 	{ "name": "rule1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rule1_V", "role": "dout" }} , 
 	{ "name": "rule1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule1_V", "role": "empty_n" }} , 
 	{ "name": "rule1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule1_V", "role": "read" }} , 
 	{ "name": "rule2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rule2_V", "role": "dout" }} , 
 	{ "name": "rule2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule2_V", "role": "empty_n" }} , 
 	{ "name": "rule2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule2_V", "role": "read" }} , 
 	{ "name": "rule0_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rule0_V_out", "role": "din" }} , 
 	{ "name": "rule0_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule0_V_out", "role": "full_n" }} , 
 	{ "name": "rule0_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule0_V_out", "role": "write" }} , 
 	{ "name": "rule1_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rule1_V_out", "role": "din" }} , 
 	{ "name": "rule1_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule1_V_out", "role": "full_n" }} , 
 	{ "name": "rule1_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule1_V_out", "role": "write" }} , 
 	{ "name": "rule2_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rule2_V_out", "role": "din" }} , 
 	{ "name": "rule2_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule2_V_out", "role": "full_n" }} , 
 	{ "name": "rule2_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rule2_V_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "my_ip_hls_entry83",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "rule0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rule0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rule1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rule1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rule2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rule2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rule0_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rule0_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rule1_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rule1_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rule2_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rule2_V_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	my_ip_hls_entry83 {
		rule0_V {Type I LastRead 0 FirstWrite -1}
		rule1_V {Type I LastRead 0 FirstWrite -1}
		rule2_V {Type I LastRead 0 FirstWrite -1}
		rule0_V_out {Type O LastRead -1 FirstWrite 0}
		rule1_V_out {Type O LastRead -1 FirstWrite 0}
		rule2_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rule0_V { ap_fifo {  { rule0_V_dout fifo_data 0 32 }  { rule0_V_empty_n fifo_status 0 1 }  { rule0_V_read fifo_update 1 1 } } }
	rule1_V { ap_fifo {  { rule1_V_dout fifo_data 0 32 }  { rule1_V_empty_n fifo_status 0 1 }  { rule1_V_read fifo_update 1 1 } } }
	rule2_V { ap_fifo {  { rule2_V_dout fifo_data 0 32 }  { rule2_V_empty_n fifo_status 0 1 }  { rule2_V_read fifo_update 1 1 } } }
	rule0_V_out { ap_fifo {  { rule0_V_out_din fifo_data 1 32 }  { rule0_V_out_full_n fifo_status 0 1 }  { rule0_V_out_write fifo_update 1 1 } } }
	rule1_V_out { ap_fifo {  { rule1_V_out_din fifo_data 1 32 }  { rule1_V_out_full_n fifo_status 0 1 }  { rule1_V_out_write fifo_update 1 1 } } }
	rule2_V_out { ap_fifo {  { rule2_V_out_din fifo_data 1 32 }  { rule2_V_out_full_n fifo_status 0 1 }  { rule2_V_out_write fifo_update 1 1 } } }
}
