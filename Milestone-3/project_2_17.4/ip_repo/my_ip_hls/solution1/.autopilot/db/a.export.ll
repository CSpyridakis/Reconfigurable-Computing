; ModuleID = 'C:/Users/CS/Desktop/Vivado-Projects/M3/my_ip_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@rule2_OC_V_c3_str = internal unnamed_addr constant [11 x i8] c"rule2.V_c3\00"
@rule2_OC_V_c_str = internal unnamed_addr constant [10 x i8] c"rule2.V_c\00"
@rule1_OC_V_c2_str = internal unnamed_addr constant [11 x i8] c"rule1.V_c2\00"
@rule1_OC_V_c_str = internal unnamed_addr constant [10 x i8] c"rule1.V_c\00"
@rule0_OC_V_c1_str = internal unnamed_addr constant [11 x i8] c"rule0.V_c1\00"
@rule0_OC_V_c_str = internal unnamed_addr constant [10 x i8] c"rule0.V_c\00"
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
@cnt2Reg_core_V = internal unnamed_addr global i32 0
@cnt1Reg_core_V = internal unnamed_addr global i32 0
@cnt0Reg_core_V = internal unnamed_addr global i32 0
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str5 = private unnamed_addr constant [10 x i8] c"psAxiLite\00", align 1
@p_str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str130 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc { i32, i32, i32 } @rules_in(i32* nocapture %rule0_V, i32* %rule1_V, i32* %rule2_V) readonly {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %rule0_V_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %rule0_V)
  %rule1_V_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %rule1_V)
  %rule2_V_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %rule2_V)
  %mrv = insertvalue { i32, i32, i32 } undef, i32 %rule0_V_read, 0
  %mrv_1 = insertvalue { i32, i32, i32 } %mrv, i32 %rule1_V_read, 1
  %mrv_2 = insertvalue { i32, i32, i32 } %mrv_1, i32 %rule2_V_read, 2
  ret { i32, i32, i32 } %mrv_2
}

define internal fastcc void @ps2ip_fifo(i32* %ps2ip_V_data_V, i4* %ps2ip_V_strb_V, i1* %ps2ip_V_last_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* @ps2ipFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ps2ipFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ps2ipFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ps2ip_V_data_V, i4* %ps2ip_V_strb_V, i1* %ps2ip_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
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

define internal fastcc void @my_ip_hls.entry83(i32* nocapture %rule0_V, i32* nocapture %rule1_V, i32* nocapture %rule2_V, i32* %rule0_V_out, i32* %rule1_V_out, i32* %rule2_V_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule0_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule1_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule2_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %rule0_V_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %rule0_V)
  %rule1_V_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %rule1_V)
  %rule2_V_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %rule2_V)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule0_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %rule0_V_out, i32 %rule0_V_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule1_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %rule1_V_out, i32 %rule1_V_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule2_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %rule2_V_out, i32 %rule2_V_read)
  ret void
}

define internal void @my_ip_hls.entry3(i32 %rule0_V, i32 %rule1_V, i32 %rule2_V, i32* %rule0_V_out, i32* %rule1_V_out, i32* %rule2_V_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule0_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %rule2_V_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %rule2_V)
  %rule1_V_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %rule1_V)
  %rule0_V_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %rule0_V)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %rule0_V_out, i32 %rule0_V_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule1_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %rule1_V_out, i32 %rule1_V_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule2_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %rule2_V_out, i32 %rule2_V_read)
  ret void
}

define void @my_ip_hls(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V, i32* %masterOut_V_data_V, i4* %masterOut_V_strb_V, i1* %masterOut_V_last_V, i32 %rule0_V, i32 %rule1_V, i32 %rule2_V, i32* %rule0cnt_V, i32* %rule1cnt_V, i32* %rule2cnt_V) {
codeRepl:
  %rule2_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %rule2_V)
  %rule1_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %rule1_V)
  %rule0_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %rule0_V)
  %rule2_V_c3 = alloca i32, align 4
  %rule1_V_c2 = alloca i32, align 4
  %rule0_V_c1 = alloca i32, align 4
  %rule2_V_c = alloca i32, align 4
  %rule1_V_c = alloca i32, align 4
  %rule0_V_c = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str7) nounwind
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
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %slaveIn_V_data_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %slaveIn_V_strb_V), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %slaveIn_V_last_V), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %masterOut_V_data_V), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %masterOut_V_strb_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %masterOut_V_last_V), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %rule0_V), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %rule1_V), !map !101
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %rule2_V), !map !105
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rule0cnt_V), !map !109
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rule1cnt_V), !map !113
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rule2cnt_V), !map !117
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @my_ip_hls_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %masterOut_V_data_V, i4* %masterOut_V_strb_V, i1* %masterOut_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %rule0_V, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str7, i32 0, i32 0, [10 x i8]* @p_str5, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %rule1_V, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str7, i32 0, i32 0, [10 x i8]* @p_str5, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %rule2_V, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str7, i32 0, i32 0, [10 x i8]* @p_str5, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule0cnt_V, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str7, i32 0, i32 0, [10 x i8]* @p_str5, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule1cnt_V, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str7, i32 0, i32 0, [10 x i8]* @p_str5, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule2cnt_V, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str7, i32 0, i32 0, [10 x i8]* @p_str5, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @rule0_OC_V_c_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %rule0_V_c, i32* %rule0_V_c)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule0_V_c, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @rule1_OC_V_c_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %rule1_V_c, i32* %rule1_V_c)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule1_V_c, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @rule2_OC_V_c_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %rule2_V_c, i32* %rule2_V_c)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule2_V_c, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @rule0_OC_V_c1_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %rule0_V_c1, i32* %rule0_V_c1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule0_V_c1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @rule1_OC_V_c2_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %rule1_V_c2, i32* %rule1_V_c2)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule1_V_c2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @rule2_OC_V_c3_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %rule2_V_c3, i32* %rule2_V_c3)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rule2_V_c3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @my_ip_hls.entry3(i32 %rule0_V_read, i32 %rule1_V_read, i32 %rule2_V_read, i32* %rule0_V_c1, i32* %rule1_V_c2, i32* %rule2_V_c3)
  call fastcc void @my_ip_hls.entry83(i32* nocapture %rule0_V_c1, i32* nocapture %rule1_V_c2, i32* nocapture %rule2_V_c3, i32* %rule0_V_c, i32* %rule1_V_c, i32* %rule2_V_c)
  %call_ret = call fastcc { i32, i32, i32 } @rules_in(i32* %rule0_V_c, i32* %rule1_V_c, i32* %rule2_V_c)
  %rule0Reg_V_channel = extractvalue { i32, i32, i32 } %call_ret, 0
  %rule1Reg_V_channel = extractvalue { i32, i32, i32 } %call_ret, 1
  %rule2Reg_V_channel = extractvalue { i32, i32, i32 } %call_ret, 2
  call fastcc void @ps2ip_fifo(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V)
  %core_ret = call fastcc { i32, i32, i32 } @core(i32 %rule0Reg_V_channel, i32 %rule1Reg_V_channel, i32 %rule2Reg_V_channel)
  %cnt0Reg_V = extractvalue { i32, i32, i32 } %core_ret, 0
  %cnt1Reg_V = extractvalue { i32, i32, i32 } %core_ret, 1
  %cnt2Reg_V = extractvalue { i32, i32, i32 } %core_ret, 2
  call fastcc void @ip2ps_fifo(i32* %masterOut_V_data_V, i4* %masterOut_V_strb_V, i1* %masterOut_V_last_V)
  call fastcc void @counters_out(i32 %cnt0Reg_V, i32 %cnt1Reg_V, i32 %cnt2Reg_V, i32* %rule0cnt_V, i32* %rule1cnt_V, i32* %rule2cnt_V)
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define internal fastcc void @ip2ps_fifo(i32* %ip2ps_V_data_V, i4* %ip2ps_V_strb_V, i1* %ip2ps_V_last_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* @ip2psFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ip2psFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ip2psFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %ip2ps_V_data_V, i4* %ip2ps_V_strb_V, i1* %ip2ps_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str14) nounwind
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

define internal fastcc void @counters_out(i32 %p_read, i32 %p_read1, i32 %p_read2, i32* nocapture %rule0cnt_V, i32* nocapture %rule1cnt_V, i32* nocapture %rule2cnt_V) {
entry:
  %p_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read2)
  %p_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read1)
  %p_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read)
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %rule0cnt_V, i32 %p_read_3)
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %rule1cnt_V, i32 %p_read_2)
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %rule2cnt_V, i32 %p_read_1)
  ret void
}

define internal fastcc { i32, i32, i32 } @core(i32 %p_read, i32 %p_read1, i32 %p_read2) {
entry:
  %p_read_4 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read2)
  %p_read14 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read1)
  %p_read_5 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* @ip2psFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ip2psFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ip2psFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* @ps2ipFifo_V_data_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* @ps2ipFifo_V_last_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i4* @ps2ipFifo_V_strb_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str29) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str130, i32 0, i32 0, [1 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str29, [1 x i8]* @p_str29, [1 x i8]* @p_str29, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str29, [1 x i8]* @p_str29) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i32P.i4P.i1P(i32* @ps2ipFifo_V_data_V, i4* @ps2ipFifo_V_strb_V, i1* @ps2ipFifo_V_last_V, i32 1)
  br i1 %tmp, label %0, label %core.exit

; <label>:0                                       ; preds = %entry
  %empty = call { i32, i4, i1 } @_ssdm_op_Read.ap_fifo.volatile.i32P.i4P.i1P(i32* @ps2ipFifo_V_data_V, i4* @ps2ipFifo_V_strb_V, i1* @ps2ipFifo_V_last_V)
  %tmp_data_V = extractvalue { i32, i4, i1 } %empty, 0
  %tmp_strb_V = extractvalue { i32, i4, i1 } %empty, 1
  %tmp_last_V = extractvalue { i32, i4, i1 } %empty, 2
  %tmp_6_i_i = icmp eq i32 %tmp_data_V, %p_read_5
  %t_V = load i32* @cnt0Reg_core_V, align 4
  %t_V_1 = load i32* @cnt1Reg_core_V, align 4
  %t_V_2 = load i32* @cnt2Reg_core_V, align 4
  br i1 %tmp_6_i_i, label %1, label %2

; <label>:1                                       ; preds = %0
  %tmp_7_i_i = add i32 %t_V, 1
  store i32 %tmp_7_i_i, i32* @cnt0Reg_core_V, align 4
  br label %core.exit

; <label>:2                                       ; preds = %0
  %tmp_8_i_i = icmp eq i32 %tmp_data_V, %p_read14
  br i1 %tmp_8_i_i, label %3, label %4

; <label>:3                                       ; preds = %2
  %tmp_9_i_i = add i32 %t_V_1, 1
  store i32 %tmp_9_i_i, i32* @cnt1Reg_core_V, align 4
  br label %core.exit

; <label>:4                                       ; preds = %2
  %tmp_i_i = icmp eq i32 %tmp_data_V, %p_read_4
  br i1 %tmp_i_i, label %5, label %6

; <label>:5                                       ; preds = %4
  %tmp_1_i_i = add i32 %t_V_2, 1
  store i32 %tmp_1_i_i, i32* @cnt2Reg_core_V, align 4
  br label %core.exit

; <label>:6                                       ; preds = %4
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P.i4P.i1P(i32* @ip2psFifo_V_data_V, i4* @ip2psFifo_V_strb_V, i1* @ip2psFifo_V_last_V, i32 %tmp_data_V, i4 %tmp_strb_V, i1 %tmp_last_V)
  br label %core.exit

core.exit:                                        ; preds = %6, %5, %3, %1, %entry
  %cnt1Reg_V_write_assi = phi i32 [ undef, %entry ], [ %t_V_1, %1 ], [ %t_V_1, %5 ], [ %t_V_1, %6 ], [ %tmp_9_i_i, %3 ]
  %cnt2Reg_V_write_assi = phi i32 [ undef, %entry ], [ %t_V_2, %1 ], [ %tmp_1_i_i, %5 ], [ %t_V_2, %6 ], [ %t_V_2, %3 ]
  %cnt0Reg_V_write_assi = phi i32 [ undef, %entry ], [ %tmp_7_i_i, %1 ], [ %t_V, %5 ], [ %t_V, %6 ], [ %t_V, %3 ]
  %mrv = insertvalue { i32, i32, i32 } undef, i32 %cnt0Reg_V_write_assi, 0
  %mrv_1 = insertvalue { i32, i32, i32 } %mrv, i32 %cnt1Reg_V_write_assi, 1
  %mrv_2 = insertvalue { i32, i32, i32 } %mrv_1, i32 %cnt2Reg_V_write_assi, 2
  ret { i32, i32, i32 } %mrv_2
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
  %empty_16 = call i4 @_autotb_FifoWrite_i4(i4* %1, i4 %4)
  %empty_17 = call i1 @_autotb_FifoWrite_i1(i1* %2, i1 %5)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
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

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak { i32, i4, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i1P(i32*, i4*, i1*) {
entry:
  %empty = load i32* %0
  %empty_18 = load i4* %1
  %empty_19 = load i1* %2
  %mrv_0 = insertvalue { i32, i4, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i1 } %mrv_0, i4 %empty_18, 1
  %mrv2 = insertvalue { i32, i4, i1 } %mrv1, i1 %empty_19, 2
  ret { i32, i4, i1 } %mrv2
}

define weak { i32, i4, i1 } @_ssdm_op_Read.ap_fifo.volatile.i32P.i4P.i1P(i32*, i4*, i1*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  %empty_20 = call i4 @_autotb_FifoRead_i4(i4* %1)
  %empty_21 = call i1 @_autotb_FifoRead_i1(i1* %2)
  %mrv_0 = insertvalue { i32, i4, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i1 } %mrv_0, i4 %empty_20, 1
  %mrv2 = insertvalue { i32, i4, i1 } %mrv1, i1 %empty_21, 2
  ret { i32, i4, i1 } %mrv2
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
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

!opencl.kernels = !{!0, !7, !13, !19, !22, !25, !27, !29, !7, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !37, !37, !37, !37, !37, !37, !31, !40, !31, !31, !31, !31, !37, !37, !46, !46, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !51, !19, !22, !25, !27, !29, !7, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !37, !37, !37, !37, !37, !37, !31, !53, !7, !55, !7, !19, !57, !58, !58, !31, !60, !62, !22, !25, !27, !29, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !31, !37, !37, !37, !37, !37, !37}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!64}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uint32", metadata !"uint32", metadata !"uint32", metadata !"uint32 &", metadata !"uint32 &", metadata !"uint32 &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"rule0", metadata !"rule1", metadata !"rule2", metadata !"rule0Reg", metadata !"rule1Reg", metadata !"rule2Reg"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"stream<struct axiWord> &", metadata !"stream<struct axiWord> &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"ps2ip", metadata !"ps2ipIntFifo"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const struct axiWord &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"struct axiWord &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !26, metadata !6}
!26 = metadata !{metadata !"kernel_arg_name", metadata !""}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !12, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !12, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!31 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space"}
!33 = metadata !{metadata !"kernel_arg_access_qual"}
!34 = metadata !{metadata !"kernel_arg_type"}
!35 = metadata !{metadata !"kernel_arg_type_qual"}
!36 = metadata !{metadata !"kernel_arg_name"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!40 = metadata !{null, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !6}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!42 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"stream<struct axiWord> &", metadata !"stream<struct axiWord> &", metadata !"uint32", metadata !"uint32", metadata !"uint32", metadata !"uint32 &", metadata !"uint32 &", metadata !"uint32 &"}
!44 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"slaveIn", metadata !"masterOut", metadata !"rule0", metadata !"rule1", metadata !"rule2", metadata !"rule0cnt", metadata !"rule1cnt", metadata !"rule2cnt"}
!46 = metadata !{null, metadata !47, metadata !9, metadata !48, metadata !49, metadata !50, metadata !6}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!49 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"name"}
!51 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !52, metadata !6}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"ip2psIntFifo", metadata !"ip2ps"}
!53 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !54, metadata !6}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"cnt0Reg", metadata !"cnt1Reg", metadata !"cnt2Reg", metadata !"rule0cnt", metadata !"rule1cnt", metadata !"rule2cnt"}
!55 = metadata !{null, metadata !41, metadata !42, metadata !43, metadata !44, metadata !56, metadata !6}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"ps2ipIntFifo", metadata !"ip2psIntFifo", metadata !"rule0Reg", metadata !"rule1Reg", metadata !"rule2Reg", metadata !"cnt0Reg", metadata !"cnt1Reg", metadata !"cnt2Reg"}
!57 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !26, metadata !6}
!58 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !59, metadata !6}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!60 = metadata !{null, metadata !8, metadata !9, metadata !61, metadata !11, metadata !12, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!62 = metadata !{null, metadata !8, metadata !9, metadata !63, metadata !11, metadata !12, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!64 = metadata !{metadata !65, [0 x i32]* @llvm_global_ctors_0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"llvm.global_ctors.0", metadata !69, metadata !"", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, i32 1}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"slaveIn.V.data.V", metadata !69, metadata !"uint32", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 3, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"slaveIn.V.strb.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 0, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"slaveIn.V.last.V", metadata !69, metadata !"uint1", i32 0, i32 0}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 31, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"masterOut.V.data.V", metadata !69, metadata !"uint32", i32 0, i32 31}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 3, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"masterOut.V.strb.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"masterOut.V.last.V", metadata !69, metadata !"uint1", i32 0, i32 0}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"rule0.V", metadata !99, metadata !"uint32", i32 0, i32 31}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 0, i32 0}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 31, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"rule1.V", metadata !99, metadata !"uint32", i32 0, i32 31}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 31, metadata !107}
!107 = metadata !{metadata !108}
!108 = metadata !{metadata !"rule2.V", metadata !99, metadata !"uint32", i32 0, i32 31}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 31, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"rule0cnt.V", metadata !69, metadata !"uint32", i32 0, i32 31}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 31, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"rule1cnt.V", metadata !69, metadata !"uint32", i32 0, i32 31}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 31, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"rule2cnt.V", metadata !69, metadata !"uint32", i32 0, i32 31}
