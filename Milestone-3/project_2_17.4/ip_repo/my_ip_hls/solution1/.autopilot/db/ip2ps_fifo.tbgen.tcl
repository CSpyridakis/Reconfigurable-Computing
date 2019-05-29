set moduleName ip2ps_fifo
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ip2ps_fifo}
set C_modelType { void 0 }
set C_modelArgList {
	{ ip2ps_V_data_V int 32 regular {axi_s 1 volatile  { masterOut Data } }  }
	{ ip2ps_V_strb_V int 4 regular {axi_s 1 volatile  { masterOut Strb } }  }
	{ ip2ps_V_last_V int 1 regular {axi_s 1 volatile  { masterOut Last } }  }
	{ ip2psFifo_V_data_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ ip2psFifo_V_strb_V int 4 regular {fifo 0 volatile } {global 0}  }
	{ ip2psFifo_V_last_V int 1 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ip2ps_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ip2ps_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ip2ps_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ip2psFifo_V_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ip2psFifo_V_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ip2psFifo_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} ]}
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
	{ masterOut_TREADY sc_in sc_logic 1 outacc 2 } 
	{ masterOut_TDATA sc_out sc_lv 32 signal 0 } 
	{ masterOut_TVALID sc_out sc_logic 1 outvld 2 } 
	{ masterOut_TSTRB sc_out sc_lv 4 signal 1 } 
	{ masterOut_TLAST sc_out sc_lv 1 signal 2 } 
	{ ip2psFifo_V_data_V_dout sc_in sc_lv 32 signal 3 } 
	{ ip2psFifo_V_data_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ ip2psFifo_V_data_V_read sc_out sc_logic 1 signal 3 } 
	{ ip2psFifo_V_strb_V_dout sc_in sc_lv 4 signal 4 } 
	{ ip2psFifo_V_strb_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ ip2psFifo_V_strb_V_read sc_out sc_logic 1 signal 4 } 
	{ ip2psFifo_V_last_V_dout sc_in sc_lv 1 signal 5 } 
	{ ip2psFifo_V_last_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ ip2psFifo_V_last_V_read sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "masterOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ip2ps_V_last_V", "role": "Y" }} , 
 	{ "name": "masterOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ip2ps_V_data_V", "role": "" }} , 
 	{ "name": "masterOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ip2ps_V_last_V", "role": "D" }} , 
 	{ "name": "masterOut_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ip2ps_V_strb_V", "role": "" }} , 
 	{ "name": "masterOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2ps_V_last_V", "role": "" }} , 
 	{ "name": "ip2psFifo_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ip2psFifo_V_data_V", "role": "dout" }} , 
 	{ "name": "ip2psFifo_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_data_V", "role": "empty_n" }} , 
 	{ "name": "ip2psFifo_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_data_V", "role": "read" }} , 
 	{ "name": "ip2psFifo_V_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ip2psFifo_V_strb_V", "role": "dout" }} , 
 	{ "name": "ip2psFifo_V_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_strb_V", "role": "empty_n" }} , 
 	{ "name": "ip2psFifo_V_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_strb_V", "role": "read" }} , 
 	{ "name": "ip2psFifo_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_last_V", "role": "dout" }} , 
 	{ "name": "ip2psFifo_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_last_V", "role": "empty_n" }} , 
 	{ "name": "ip2psFifo_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip2psFifo_V_last_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ip2ps_fifo",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "ip2ps_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "masterOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2ps_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ip2ps_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ip2psFifo_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2psFifo_V_strb_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip2psFifo_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ip2psFifo_V_last_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ip2ps_fifo {
		ip2ps_V_data_V {Type O LastRead -1 FirstWrite 1}
		ip2ps_V_strb_V {Type O LastRead -1 FirstWrite 1}
		ip2ps_V_last_V {Type O LastRead -1 FirstWrite 1}
		ip2psFifo_V_data_V {Type I LastRead 0 FirstWrite -1}
		ip2psFifo_V_strb_V {Type I LastRead 0 FirstWrite -1}
		ip2psFifo_V_last_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ip2ps_V_data_V { axis {  { masterOut_TDATA out_data 1 32 } } }
	ip2ps_V_strb_V { axis {  { masterOut_TSTRB out_data 1 4 } } }
	ip2ps_V_last_V { axis {  { masterOut_TREADY out_acc 0 1 }  { masterOut_TVALID out_vld 1 1 }  { masterOut_TLAST out_data 1 1 } } }
	ip2psFifo_V_data_V { ap_fifo {  { ip2psFifo_V_data_V_dout fifo_data 0 32 }  { ip2psFifo_V_data_V_empty_n fifo_status 0 1 }  { ip2psFifo_V_data_V_read fifo_update 1 1 } } }
	ip2psFifo_V_strb_V { ap_fifo {  { ip2psFifo_V_strb_V_dout fifo_data 0 4 }  { ip2psFifo_V_strb_V_empty_n fifo_status 0 1 }  { ip2psFifo_V_strb_V_read fifo_update 1 1 } } }
	ip2psFifo_V_last_V { ap_fifo {  { ip2psFifo_V_last_V_dout fifo_data 0 1 }  { ip2psFifo_V_last_V_empty_n fifo_status 0 1 }  { ip2psFifo_V_last_V_read fifo_update 1 1 } } }
}
