; ModuleID = 'C:/Work/Courses/HRY591/project/work/project_2_17.4/ip_repo/my_ip_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@my_ip_hls_str = internal unnamed_addr constant [10 x i8] c"my_ip_hls\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @my_ip_hls(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V, i32* %MasterOut_V_data_V, i4* %MasterOut_V_strb_V, i1* %MasterOut_V_last_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %slaveIn_V_data_V), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %slaveIn_V_strb_V), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %slaveIn_V_last_V), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %MasterOut_V_data_V), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %MasterOut_V_strb_V), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %MasterOut_V_last_V), !map !61
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @my_ip_hls_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %MasterOut_V_data_V, i4* %MasterOut_V_strb_V, i1* %MasterOut_V_last_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i32P.i4P.i1P(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  %empty = call { i32, i4, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i1P(i32* %slaveIn_V_data_V, i4* %slaveIn_V_strb_V, i1* %slaveIn_V_last_V)
  %tmp_data_V = extractvalue { i32, i4, i1 } %empty, 0
  %tmp_strb_V = extractvalue { i32, i4, i1 } %empty, 1
  %tmp_last_V = extractvalue { i32, i4, i1 } %empty, 2
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i1P(i32* %MasterOut_V_data_V, i4* %MasterOut_V_strb_V, i1* %MasterOut_V_last_V, i32 %tmp_data_V, i4 %tmp_strb_V, i1 %tmp_last_V)
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %0
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i1P(i32*, i4*, i1*, i32, i4, i1) {
entry:
  store i32 %3, i32* %0
  store i4 %4, i4* %1
  store i1 %5, i1* %2
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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i32, i4, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i1P(i32*, i4*, i1*) {
entry:
  %empty = load i32* %0
  %empty_2 = load i4* %1
  %empty_3 = load i1* %2
  %mrv_0 = insertvalue { i32, i4, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i1 } %mrv_0, i4 %empty_2, 1
  %mrv2 = insertvalue { i32, i4, i1 } %mrv1, i1 %empty_3, 2
  ret { i32, i4, i1 } %mrv2
}

define weak i1 @_ssdm_op_NbReadReq.axis.i32P.i4P.i1P(i32*, i4*, i1*, i32) {
entry:
  ret i1 true
}

!opencl.kernels = !{!0, !7, !13, !16, !18, !21, !23, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !31, !31, !31, !31, !31, !31, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!34}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<struct axiWord> &", metadata !"stream<struct axiWord> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"slaveIn", metadata !"MasterOut"}
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
!34 = metadata !{metadata !35, [0 x i32]* @llvm_global_ctors_0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"llvm.global_ctors.0", metadata !39, metadata !"", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, i32 1}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"slaveIn.V.data.V", metadata !39, metadata !"uint32", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 3, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"slaveIn.V.strb.V", metadata !39, metadata !"uint4", i32 0, i32 3}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 0, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"slaveIn.V.last.V", metadata !39, metadata !"uint1", i32 0, i32 0}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"MasterOut.V.data.V", metadata !39, metadata !"uint32", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 3, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"MasterOut.V.strb.V", metadata !39, metadata !"uint4", i32 0, i32 3}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"MasterOut.V.last.V", metadata !39, metadata !"uint1", i32 0, i32 0}
