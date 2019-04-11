; ModuleID = 'C:/Work/Courses/HRY591/project/files/hls_distro/my_ip_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@ps2ipFifo_OC_V_OC_st = internal unnamed_addr constant [19 x i8] c"ps2ipFifo.V.strb.V\00"
@ps2ipFifo_OC_V_OC_la = internal unnamed_addr constant [19 x i8] c"ps2ipFifo.V.last.V\00"
@ps2ipFifo_OC_V_OC_da = internal unnamed_addr constant [19 x i8] c"ps2ipFifo.V.data.V\00"
@ps2ipFifo_V_strb_V = internal global i4 0
@ps2ipFifo_V_last_V = internal global i1 false
@ps2ipFifo_V_data_V = internal global i32 0
@my_ip_hls_str = internal unnamed_addr constant [10 x i8] c"my_ip_hls\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@ip2psFifo_OC_V_OC_st = internal unnamed_addr constant [19 x i8] c"ip2psFifo.V.strb.V\00"
@ip2psFifo_OC_V_OC_la = internal unnamed_addr constant [19 x i8] c"ip2psFifo.V.last.V\00"
@ip2psFifo_OC_V_OC_da = internal unnamed_addr constant [19 x i8] c"ip2psFifo.V.data.V\00"
@ip2psFifo_V_strb_V = internal global i4 0
@ip2psFifo_V_last_V = internal global i1 false
@ip2psFifo_V_data_V = internal global i32 0
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str23 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str118 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc void @ps2ip_fifo(i32* %ps2ip_V_data_V, i4* %ps2ip_V_strb_V, i1* %ps2ip_V_last_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* @ps2ipFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ps2ipFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ps2ipFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ps2ip_V_data_V, i4* %ps2ip_V_strb_V, i1* %ps2ip_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str23, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i32P.i4P.i1P(i32* %ps2ip_V_data_V, i4* %ps2ip_V_strb_V, i1* %ps2ip_V_last_V, i32 1)
  br i1 %tmp, label %0, label %ps2ip_fifo.exit

; <label>:0                                       ; preds = %entry
  %empty = call { i32, i4, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i1P(i32* %ps2ip_V_data_V, i4* %ps2ip_V_strb_V, i1* %ps2ip_V_last_V)
  %tmp_data_V = extractvalue { i32, i4, i1 } %empty, 0
  %tmp_strb_V = extractvalue { i32, i4, i1 } %empty, 1
  %tmp_last_V = extractvalue { i32, i4, i1 } %empty, 2
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P.i4P.i1P(i32* @ps2ipFifo_V_data_V, i4* @ps2ipFifo_V_strb_V, i1* @ps2ipFifo_V_last_V, i32 %tmp_data_V, i4 %tmp_strb_V, i1 %tmp_last_V)
  br label %ps2ip_fifo.exit

ps2ip_fifo.exit:                                  ; preds = %0, %entry
  ret void
}

define void @my_ip_hls(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V, i32* %masterOut_V_data_V, i4* %masterOut_V_strb_V, i1* %masterOut_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str2) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @ip2psFifo_OC_V_OC_da, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 64, i32 64, i32* @ip2psFifo_V_data_V, i32* @ip2psFifo_V_data_V)
  call void (...)* @_ssdm_op_SpecInterface(i32* @ip2psFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @ip2psFifo_OC_V_OC_la, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 64, i32 64, i1* @ip2psFifo_V_last_V, i1* @ip2psFifo_V_last_V)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ip2psFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @ip2psFifo_OC_V_OC_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 64, i32 64, i4* @ip2psFifo_V_strb_V, i4* @ip2psFifo_V_strb_V)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ip2psFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @ps2ipFifo_OC_V_OC_da, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 64, i32 64, i32* @ps2ipFifo_V_data_V, i32* @ps2ipFifo_V_data_V)
  call void (...)* @_ssdm_op_SpecInterface(i32* @ps2ipFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @ps2ipFifo_OC_V_OC_la, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 64, i32 64, i1* @ps2ipFifo_V_last_V, i1* @ps2ipFifo_V_last_V)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ps2ipFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @ps2ipFifo_OC_V_OC_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 64, i32 64, i4* @ps2ipFifo_V_strb_V, i4* @ps2ipFifo_V_strb_V)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ps2ipFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %slaveIn_V_data_V), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %slaveIn_V_strb_V), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %slaveIn_V_last_V), !map !60
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %masterOut_V_data_V), !map !64
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %masterOut_V_strb_V), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %masterOut_V_last_V), !map !72
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @my_ip_hls_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str23, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %masterOut_V_data_V, i4* %masterOut_V_strb_V, i1* %masterOut_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str23, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call fastcc void @ps2ip_fifo(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V)
  call fastcc void @core() nounwind uwtable
  call fastcc void @ip2ps_fifo(i32* %masterOut_V_data_V, i4* %masterOut_V_strb_V, i1* %masterOut_V_last_V)
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define internal fastcc void @ip2ps_fifo(i32* %ip2ps_V_data_V, i4* %ip2ps_V_strb_V, i1* %ip2ps_V_last_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* @ip2psFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ip2psFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ip2psFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ip2ps_V_data_V, i4* %ip2ps_V_strb_V, i1* %ip2ps_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str23, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str9) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i32P.i4P.i1P(i32* @ip2psFifo_V_data_V, i4* @ip2psFifo_V_strb_V, i1* @ip2psFifo_V_last_V, i32 1)
  br i1 %tmp, label %0, label %ip2ps_fifo.exit

; <label>:0                                       ; preds = %entry
  %empty = call { i32, i4, i1 } @_ssdm_op_Read.ap_fifo.volatile.i32P.i4P.i1P(i32* @ip2psFifo_V_data_V, i4* @ip2psFifo_V_strb_V, i1* @ip2psFifo_V_last_V)
  %tmp_data_V = extractvalue { i32, i4, i1 } %empty, 0
  %tmp_strb_V = extractvalue { i32, i4, i1 } %empty, 1
  %tmp_last_V = extractvalue { i32, i4, i1 } %empty, 2
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i1P(i32* %ip2ps_V_data_V, i4* %ip2ps_V_strb_V, i1* %ip2ps_V_last_V, i32 %tmp_data_V, i4 %tmp_strb_V, i1 %tmp_last_V)
  br label %ip2ps_fifo.exit

ip2ps_fifo.exit:                                  ; preds = %0, %entry
  ret void
}

define internal fastcc void @core() nounwind uwtable {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* @ip2psFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ip2psFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ip2psFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* @ps2ipFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ps2ipFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ps2ipFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str17) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str118, i32 0, i32 0, [1 x i8]* @p_str17, i32 0, i32 0, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str17, [1 x i8]* @p_str17) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i32P.i4P.i1P(i32* @ps2ipFifo_V_data_V, i4* @ps2ipFifo_V_strb_V, i1* @ps2ipFifo_V_last_V, i32 1) nounwind
  br i1 %tmp, label %0, label %core.exit

; <label>:0                                       ; preds = %entry
  %empty = call { i32, i4, i1 } @_ssdm_op_Read.ap_fifo.volatile.i32P.i4P.i1P(i32* @ps2ipFifo_V_data_V, i4* @ps2ipFifo_V_strb_V, i1* @ps2ipFifo_V_last_V) nounwind
  %tmp_data_V = extractvalue { i32, i4, i1 } %empty, 0
  %tmp_strb_V = extractvalue { i32, i4, i1 } %empty, 1
  %tmp_last_V = extractvalue { i32, i4, i1 } %empty, 2
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P.i4P.i1P(i32* @ip2psFifo_V_data_V, i4* @ip2psFifo_V_strb_V, i1* @ip2psFifo_V_last_V, i32 %tmp_data_V, i4 %tmp_strb_V, i1 %tmp_last_V) nounwind
  br label %core.exit

core.exit:                                        ; preds = %0, %entry
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i1P(i32*, i4*, i1*, i32, i4, i1) {
entry:
  store i32 %3, i32* %0
  store i4 %4, i4* %1
  store i1 %5, i1* %2
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P.i4P.i1P(i32*, i4*, i1*, i32, i4, i1) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %3)
  %empty_10 = call i4 @_autotb_FifoWrite_i4(i4* %1, i4 %4)
  %empty_11 = call i1 @_autotb_FifoWrite_i1(i1* %2, i1 %5)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i32, i4, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i1P(i32*, i4*, i1*) {
entry:
  %empty = load i32* %0
  %empty_12 = load i4* %1
  %empty_13 = load i1* %2
  %mrv_0 = insertvalue { i32, i4, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i1 } %mrv_0, i4 %empty_12, 1
  %mrv2 = insertvalue { i32, i4, i1 } %mrv1, i1 %empty_13, 2
  ret { i32, i4, i1 } %mrv2
}

define weak { i32, i4, i1 } @_ssdm_op_Read.ap_fifo.volatile.i32P.i4P.i1P(i32*, i4*, i1*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  %empty_14 = call i4 @_autotb_FifoRead_i4(i4* %1)
  %empty_15 = call i1 @_autotb_FifoRead_i1(i1* %2)
  %mrv_0 = insertvalue { i32, i4, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i1 } %mrv_0, i4 %empty_14, 1
  %mrv2 = insertvalue { i32, i4, i1 } %mrv1, i1 %empty_15, 2
  ret { i32, i4, i1 } %mrv2
}

define weak i1 @_ssdm_op_NbReadReq.axis.i32P.i4P.i1P(i32*, i4*, i1*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i32P.i4P.i1P(i32*, i4*, i1*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i32(i32* %0)
  ret i1 %empty
}

declare i4 @_autotb_FifoWrite_i4(i4*, i4)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i1 @_autotb_FifoWrite_i1(i1*, i1)

declare i4 @_autotb_FifoRead_i4(i4*)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i1 @_autotb_FifoRead_i1(i1*)

declare i1 @_autotb_FifoCanRead_i32(i32*)

!opencl.kernels = !{!0, !7, !13, !16, !18, !21, !23, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !31, !31, !31, !31, !31, !31, !25, !34, !31, !31, !25, !25, !36, !36, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !41, !7, !13, !16, !18, !21, !23, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !31, !31, !31, !31, !31, !31, !25, !43, !7, !13, !16, !18, !21, !23, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !31, !31, !31, !31, !31, !31}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!45}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<struct axiWord> &", metadata !"stream<struct axiWord> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"ps2ip", metadata !"ps2ipIntFifo"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct axiWord &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"struct axiWord &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!16 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !17, metadata !6}
!17 = metadata !{metadata !"kernel_arg_name", metadata !""}
!18 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !20, metadata !6}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !20, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!23 = metadata !{null, metadata !8, metadata !9, metadata !24, metadata !11, metadata !20, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space"}
!27 = metadata !{metadata !"kernel_arg_access_qual"}
!28 = metadata !{metadata !"kernel_arg_type"}
!29 = metadata !{metadata !"kernel_arg_type_qual"}
!30 = metadata !{metadata !"kernel_arg_name"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!34 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !35, metadata !6}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"slaveIn", metadata !"masterOut"}
!36 = metadata !{null, metadata !37, metadata !9, metadata !38, metadata !39, metadata !40, metadata !6}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!39 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"name"}
!41 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !42, metadata !6}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"ip2psIntFifo", metadata !"ip2ps"}
!43 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !44, metadata !6}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"ps2ipIntFifo", metadata !"ip2psIntFifo"}
!45 = metadata !{metadata !46, [0 x i32]* @llvm_global_ctors_0}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"llvm.global_ctors.0", metadata !50, metadata !"", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 0, i32 1}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"slaveIn.V.data.V", metadata !50, metadata !"uint32", i32 0, i32 31}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 3, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"slaveIn.V.strb.V", metadata !50, metadata !"uint4", i32 0, i32 3}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"slaveIn.V.last.V", metadata !50, metadata !"uint1", i32 0, i32 0}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 31, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"masterOut.V.data.V", metadata !50, metadata !"uint32", i32 0, i32 31}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 3, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"masterOut.V.strb.V", metadata !50, metadata !"uint4", i32 0, i32 3}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 0, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"masterOut.V.last.V", metadata !50, metadata !"uint1", i32 0, i32 0}
