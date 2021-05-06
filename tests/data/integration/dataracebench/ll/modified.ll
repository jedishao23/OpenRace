; ModuleID = 'coderrect.stub.pid300932'
source_filename = "DRB053-inneronly1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [41 x i8] c";DRB053-inneronly1-orig-no.c;main;60;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [42 x i8] c";DRB053-inneronly1-orig-no.c;main;60;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** noalias nocapture readnone %argv) local_unnamed_addr #0 !dbg !9 {
entry:
  %i = alloca i32, align 4
  %a = alloca [20 x [20 x double]], align 16
  call void @llvm.dbg.value(metadata i32 %argc, metadata !17, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i8** %argv, metadata !18, metadata !DIExpression()), !dbg !26
  %0 = bitcast i32* %i to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !28
  %1 = bitcast [20 x [20 x double]]* %a to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 3200, i8* nonnull %1) #4, !dbg !29
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]* %a, metadata !21, metadata !DIExpression()), !dbg !30
  %arraydecay = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %a, i64 0, i64 0, !dbg !31
  %2 = bitcast [20 x double]* %arraydecay to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 3200, i1 false), !dbg !31
  store i32 0, i32* %i, align 4, !dbg !32, !tbaa !34, !noalias !38
  br label %for.body, !dbg !39

for.body:                                         ; preds = %entry, %for.body
  %3 = bitcast void (i32*, i32*, [20 x [20 x double]]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*, !dbg !40
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* %3, [20 x [20 x double]]* %a, i32* %i), !dbg !40
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* %3, [20 x [20 x double]]* nonnull %a, i32* nonnull %i), !dbg !40
  %4 = load i32, i32* %i, align 4, !dbg !43, !tbaa !34, !noalias !38
  %add = add nsw i32 %4, 1, !dbg !43
  store i32 %add, i32* %i, align 4, !dbg !43, !tbaa !34, !noalias !38
  %cmp = icmp slt i32 %add, 19, !dbg !44
  br i1 %cmp, label %for.body, label %for.end, !dbg !39, !llvm.loop !45

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 3200, i8* nonnull %1) #4, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4, !dbg !48
  ret i32 0, !dbg !49
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal fastcc void @.omp_outlined._debug__(i32 %.global_tid..val, [20 x [20 x double]]* nocapture nonnull align 8 dereferenceable(3200) %a, i32* nocapture nonnull readonly align 4 dereferenceable(4) %i) unnamed_addr #3 !dbg !50 {
entry:
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* undef, metadata !61, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata [20 x [20 x double]]* %a, metadata !62, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i32* %i, metadata !63, metadata !DIExpression()), !dbg !70
  %0 = bitcast i32* %.omp.lb to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !65, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %.omp.lb, align 4, !dbg !72, !tbaa !34, !noalias !38
  %1 = bitcast i32* %.omp.ub to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !66, metadata !DIExpression()), !dbg !70
  store i32 19, i32* %.omp.ub, align 4, !dbg !72, !tbaa !34, !noalias !38
  %2 = bitcast i32* %.omp.stride to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !67, metadata !DIExpression()), !dbg !70
  store i32 1, i32* %.omp.stride, align 4, !dbg !72, !tbaa !34, !noalias !38
  %3 = bitcast i32* %.omp.is_last to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !68, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %.omp.is_last, align 4, !dbg !72, !tbaa !34, !noalias !38
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %.global_tid..val, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1), !dbg !73
  %4 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !34, !noalias !38
  %cmp = icmp sgt i32 %4, 19, !dbg !72
  %cond = select i1 %cmp, i32 19, i32 %4, !dbg !72
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !72, !tbaa !34, !noalias !38
  %5 = load i32, i32* %.omp.lb, align 4, !dbg !72, !tbaa !34, !noalias !38
  call void @llvm.dbg.value(metadata i32 %5, metadata !64, metadata !DIExpression()), !dbg !70
  %cmp11 = icmp sle i32 %5, %cond, !dbg !71
  br i1 %cmp11, label %omp.inner.for.body.lr.ph, label %omp.loop.exit, !dbg !71

omp.inner.for.body.lr.ph:                         ; preds = %entry
  %6 = load i32, i32* %i, align 4, !dbg !74, !tbaa !34
  %add2 = add nsw i32 %6, 1, !dbg !74
  %idxprom = sext i32 %add2 to i64, !dbg !74
  %7 = getelementptr [20 x [20 x double]], [20 x [20 x double]]* %a, i32 0, i64 %idxprom, !dbg !74
  %idxprom5 = sext i32 %6 to i64, !dbg !74
  %8 = getelementptr [20 x [20 x double]], [20 x [20 x double]]* %a, i32 0, i64 %idxprom5, !dbg !74
  %9 = sext i32 %5 to i64, !dbg !71
  %10 = sext i32 %cond to i64, !dbg !71
  br label %omp.inner.for.body, !dbg !71

omp.inner.for.body:                               ; preds = %omp.inner.for.body.lr.ph, %omp.inner.for.body
  %indvars.iv = phi i64 [ %9, %omp.inner.for.body.lr.ph ], [ %indvars.iv.next, %omp.inner.for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !64, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !69, metadata !DIExpression()), !dbg !70
  %11 = getelementptr [20 x double], [20 x double]* %7, i32 0, i64 %indvars.iv, !dbg !76
  %12 = load double, double* %11, align 8, !dbg !76, !tbaa !77
  %13 = getelementptr [20 x double], [20 x double]* %8, i32 0, i64 %indvars.iv, !dbg !79
  %14 = load double, double* %13, align 8, !dbg !80, !tbaa !77
  %add9 = fadd double %12, %14, !dbg !80
  store double %add9, double* %13, align 8, !dbg !80, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !71
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !64, metadata !DIExpression()), !dbg !70
  %cmp1 = icmp sle i64 %indvars.iv.next, %10, !dbg !71
  br i1 %cmp1, label %omp.inner.for.body, label %omp.loop.exit.loopexit, !dbg !71, !llvm.loop !81

omp.loop.exit.loopexit:                           ; preds = %omp.inner.for.body
  br label %omp.loop.exit, !dbg !82

omp.loop.exit:                                    ; preds = %omp.loop.exit.loopexit, %entry
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %.global_tid..val), !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4, !dbg !73
  ret void, !dbg !83
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %.global_tid., i32* noalias nocapture readnone %.bound_tid., [20 x [20 x double]]* nocapture nonnull align 8 dereferenceable(3200) %a, i32* nocapture nonnull readonly align 4 dereferenceable(4) %i) #3 !dbg !84 {
entry:
  call void @llvm.dbg.value(metadata i32* %.global_tid., metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32* %.bound_tid., metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata [20 x [20 x double]]* %a, metadata !88, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !90
  %.global_tid..val = load i32, i32* %.global_tid., align 4, !dbg !91, !tbaa !34, !noalias !38
  tail call fastcc void @.omp_outlined._debug__(i32 %.global_tid..val, [20 x [20 x double]]* %a, i32* %i) #4, !dbg !91
  ret void, !dbg !91
}

; Function Attrs: nounwind
declare !callback !92 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define i32 @cr_main(i32 %0, i8** noalias %1) {
entrypoint:
  %2 = call i32 @main(i32 %0, i8** %1)
  ret i32 0
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB053-inneronly1-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !10, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 52, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 52, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 54, type: !12)
!20 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 55, type: !12)
!21 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 56, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 25600, elements: !24)
!23 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!24 = !{!25, !25}
!25 = !DISubrange(count: 20)
!26 = !DILocation(line: 0, scope: !9)
!27 = !DILocation(line: 54, column: 3, scope: !9)
!28 = !DILocation(line: 54, column: 7, scope: !9)
!29 = !DILocation(line: 56, column: 3, scope: !9)
!30 = !DILocation(line: 56, column: 10, scope: !9)
!31 = !DILocation(line: 57, column: 3, scope: !9)
!32 = !DILocation(line: 59, column: 10, scope: !33)
!33 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"aser.global.AAScope"}
!39 = !DILocation(line: 59, column: 3, scope: !33)
!40 = !DILocation(line: 60, column: 1, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 59, column: 34)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 59, column: 3)
!43 = !DILocation(line: 59, column: 28, scope: !42)
!44 = !DILocation(line: 59, column: 17, scope: !42)
!45 = distinct !{!45, !39, !46, !47}
!46 = !DILocation(line: 64, column: 3, scope: !33)
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !DILocation(line: 66, column: 1, scope: !9)
!49 = !DILocation(line: 65, column: 3, scope: !9)
!50 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 61, type: !51, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !53, !57, !58}
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!57 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !50, type: !53, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !50, type: !53, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "a", arg: 3, scope: !50, file: !1, line: 56, type: !57)
!63 = !DILocalVariable(name: "i", arg: 4, scope: !50, file: !1, line: 54, type: !58)
!64 = !DILocalVariable(name: ".omp.iv", scope: !50, type: !12, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".omp.lb", scope: !50, type: !12, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".omp.ub", scope: !50, type: !12, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".omp.stride", scope: !50, type: !12, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.is_last", scope: !50, type: !12, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: "j", scope: !50, type: !12, flags: DIFlagArtificial)
!70 = !DILocation(line: 0, scope: !50)
!71 = !DILocation(line: 61, column: 5, scope: !50)
!72 = !DILocation(line: 61, column: 10, scope: !50)
!73 = !DILocation(line: 60, column: 1, scope: !50)
!74 = !DILocation(line: 0, scope: !75)
!75 = distinct !DILexicalBlock(scope: !50, file: !1, line: 61, column: 33)
!76 = !DILocation(line: 62, column: 18, scope: !75)
!77 = !{!78, !78, i64 0}
!78 = !{!"double", !36, i64 0}
!79 = !DILocation(line: 62, column: 7, scope: !75)
!80 = !DILocation(line: 62, column: 15, scope: !75)
!81 = distinct !{!81, !73, !82}
!82 = !DILocation(line: 60, column: 25, scope: !50)
!83 = !DILocation(line: 63, column: 5, scope: !50)
!84 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 60, type: !51, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !84, type: !53, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !84, type: !53, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "a", arg: 3, scope: !84, type: !57, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "i", arg: 4, scope: !84, type: !58, flags: DIFlagArtificial)
!90 = !DILocation(line: 0, scope: !84)
!91 = !DILocation(line: 60, column: 1, scope: !84)
!92 = !{!93}
!93 = !{i64 2, i64 -1, i64 -1, i1 true}
