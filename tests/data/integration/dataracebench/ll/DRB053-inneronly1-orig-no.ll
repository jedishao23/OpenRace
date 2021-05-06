; ModuleID = 'DRB053-inneronly1-orig-no.c'
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
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [20 x [20 x double]], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !26
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !30
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !33
  %0 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !35
  %1 = bitcast i32* %j to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !37
  %2 = bitcast [20 x [20 x double]]* %a to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 3200, i8* %2) #5, !dbg !38
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]* %a, metadata !21, metadata !DIExpression()), !dbg !39
  %arraydecay = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %a, i64 0, i64 0, !dbg !40
  %3 = bitcast [20 x double]* %arraydecay to i8*, !dbg !40
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 3200, i1 false), !dbg !40
  store i32 0, i32* %i, align 4, !dbg !41, !tbaa !26
  br label %for.cond, !dbg !43

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !44, !tbaa !26
  %cmp = icmp slt i32 %4, 19, !dbg !46
  br i1 %cmp, label %for.body, label %for.end, !dbg !47

for.body:                                         ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [20 x [20 x double]]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [20 x [20 x double]]* %a, i32* %i), !dbg !48
  br label %for.inc, !dbg !50

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !51, !tbaa !26
  %add = add nsw i32 %5, 1, !dbg !51
  store i32 %add, i32* %i, align 4, !dbg !51, !tbaa !26
  br label %for.cond, !dbg !52, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  %6 = bitcast [20 x [20 x double]]* %a to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 3200, i8* %6) #5, !dbg !56
  %7 = bitcast i32* %j to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !56
  %8 = bitcast i32* %i to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !56
  ret i32 0, !dbg !57
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [20 x [20 x double]]* nonnull align 8 dereferenceable(3200) %a, i32* nonnull align 4 dereferenceable(4) %i) #4 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !68, metadata !DIExpression()), !dbg !78
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !69, metadata !DIExpression()), !dbg !78
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !70, metadata !DIExpression()), !dbg !79
  store i32* %i, i32** %i.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !71, metadata !DIExpression()), !dbg !80
  %0 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !81, !tbaa !31
  %1 = load i32*, i32** %i.addr, align 8, !dbg !81, !tbaa !31
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !72, metadata !DIExpression()), !dbg !78
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !73, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.lb, align 4, !dbg !82, !tbaa !26
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !74, metadata !DIExpression()), !dbg !78
  store i32 19, i32* %.omp.ub, align 4, !dbg !82, !tbaa !26
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !75, metadata !DIExpression()), !dbg !78
  store i32 1, i32* %.omp.stride, align 4, !dbg !82, !tbaa !26
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !76, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.is_last, align 4, !dbg !82, !tbaa !26
  %7 = bitcast i32* %j to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %j, metadata !77, metadata !DIExpression()), !dbg !78
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !81
  %9 = load i32, i32* %8, align 4, !dbg !81, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %9, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !83
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !82, !tbaa !26
  %cmp = icmp sgt i32 %10, 19, !dbg !82
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !82

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !82

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !82, !tbaa !26
  br label %cond.end, !dbg !82

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %11, %cond.false ], !dbg !82
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !82, !tbaa !26
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !82, !tbaa !26
  store i32 %12, i32* %.omp.iv, align 4, !dbg !82, !tbaa !26
  br label %omp.inner.for.cond, !dbg !81

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !82, !tbaa !26
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !82, !tbaa !26
  %cmp1 = icmp sle i32 %13, %14, !dbg !81
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !81

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !81

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !82, !tbaa !26
  %mul = mul nsw i32 %15, 1, !dbg !84
  %add = add nsw i32 0, %mul, !dbg !84
  store i32 %add, i32* %j, align 4, !dbg !84, !tbaa !26
  %16 = load i32, i32* %1, align 4, !dbg !85, !tbaa !26
  %add2 = add nsw i32 %16, 1, !dbg !87
  %idxprom = sext i32 %add2 to i64, !dbg !88
  %arrayidx = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %0, i64 0, i64 %idxprom, !dbg !88
  %17 = load i32, i32* %j, align 4, !dbg !89, !tbaa !26
  %idxprom3 = sext i32 %17 to i64, !dbg !88
  %arrayidx4 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx, i64 0, i64 %idxprom3, !dbg !88
  %18 = load double, double* %arrayidx4, align 8, !dbg !88, !tbaa !90
  %19 = load i32, i32* %1, align 4, !dbg !92, !tbaa !26
  %idxprom5 = sext i32 %19 to i64, !dbg !93
  %arrayidx6 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %0, i64 0, i64 %idxprom5, !dbg !93
  %20 = load i32, i32* %j, align 4, !dbg !94, !tbaa !26
  %idxprom7 = sext i32 %20 to i64, !dbg !93
  %arrayidx8 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx6, i64 0, i64 %idxprom7, !dbg !93
  %21 = load double, double* %arrayidx8, align 8, !dbg !95, !tbaa !90
  %add9 = fadd double %21, %18, !dbg !95
  store double %add9, double* %arrayidx8, align 8, !dbg !95, !tbaa !90
  br label %omp.body.continue, !dbg !96

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !83

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !82, !tbaa !26
  %add10 = add nsw i32 %22, 1, !dbg !81
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !81, !tbaa !26
  br label %omp.inner.for.cond, !dbg !83, !llvm.loop !97

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !83

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %9), !dbg !98
  %23 = bitcast i32* %j to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !83
  %24 = bitcast i32* %.omp.is_last to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !83
  %25 = bitcast i32* %.omp.stride to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !83
  %26 = bitcast i32* %.omp.ub to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !83
  %27 = bitcast i32* %.omp.lb to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !83
  %28 = bitcast i32* %.omp.iv to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !83
  ret void, !dbg !99
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [20 x [20 x double]]* nonnull align 8 dereferenceable(3200) %a, i32* nonnull align 4 dereferenceable(4) %i) #4 !dbg !100 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !106
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !104, metadata !DIExpression()), !dbg !106
  store i32* %i, i32** %i.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !107, !tbaa !31
  %1 = load i32*, i32** %i.addr, align 8, !dbg !107, !tbaa !31
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107, !tbaa !31
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !107, !tbaa !31
  %4 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !107, !tbaa !31
  %5 = load i32*, i32** %i.addr, align 8, !dbg !107, !tbaa !31
  call void @.omp_outlined._debug__(i32* %2, i32* %3, [20 x [20 x double]]* %4, i32* %5) #5, !dbg !107
  ret void, !dbg !107
}

; Function Attrs: nounwind
declare !callback !108 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { argmemonly nounwind willreturn writeonly }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

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
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 52, column: 14, scope: !9)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !DILocation(line: 52, column: 25, scope: !9)
!34 = !DILocation(line: 54, column: 3, scope: !9)
!35 = !DILocation(line: 54, column: 7, scope: !9)
!36 = !DILocation(line: 55, column: 3, scope: !9)
!37 = !DILocation(line: 55, column: 7, scope: !9)
!38 = !DILocation(line: 56, column: 3, scope: !9)
!39 = !DILocation(line: 56, column: 10, scope: !9)
!40 = !DILocation(line: 57, column: 3, scope: !9)
!41 = !DILocation(line: 59, column: 10, scope: !42)
!42 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!43 = !DILocation(line: 59, column: 8, scope: !42)
!44 = !DILocation(line: 59, column: 15, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 59, column: 3)
!46 = !DILocation(line: 59, column: 17, scope: !45)
!47 = !DILocation(line: 59, column: 3, scope: !42)
!48 = !DILocation(line: 60, column: 1, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 59, column: 34)
!50 = !DILocation(line: 64, column: 3, scope: !49)
!51 = !DILocation(line: 59, column: 28, scope: !45)
!52 = !DILocation(line: 59, column: 3, scope: !45)
!53 = distinct !{!53, !47, !54, !55}
!54 = !DILocation(line: 64, column: 3, scope: !42)
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !DILocation(line: 66, column: 1, scope: !9)
!57 = !DILocation(line: 65, column: 3, scope: !9)
!58 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 61, type: !59, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !61, !65, !66}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!68 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !61, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !58, type: !61, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "a", arg: 3, scope: !58, file: !1, line: 56, type: !65)
!71 = !DILocalVariable(name: "i", arg: 4, scope: !58, file: !1, line: 54, type: !66)
!72 = !DILocalVariable(name: ".omp.iv", scope: !58, type: !12, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.lb", scope: !58, type: !12, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.ub", scope: !58, type: !12, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.stride", scope: !58, type: !12, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.is_last", scope: !58, type: !12, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "j", scope: !58, type: !12, flags: DIFlagArtificial)
!78 = !DILocation(line: 0, scope: !58)
!79 = !DILocation(line: 56, column: 10, scope: !58)
!80 = !DILocation(line: 54, column: 7, scope: !58)
!81 = !DILocation(line: 61, column: 5, scope: !58)
!82 = !DILocation(line: 61, column: 10, scope: !58)
!83 = !DILocation(line: 60, column: 1, scope: !58)
!84 = !DILocation(line: 61, column: 25, scope: !58)
!85 = !DILocation(line: 62, column: 20, scope: !86)
!86 = distinct !DILexicalBlock(scope: !58, file: !1, line: 61, column: 33)
!87 = !DILocation(line: 62, column: 22, scope: !86)
!88 = !DILocation(line: 62, column: 18, scope: !86)
!89 = !DILocation(line: 62, column: 27, scope: !86)
!90 = !{!91, !91, i64 0}
!91 = !{!"double", !28, i64 0}
!92 = !DILocation(line: 62, column: 9, scope: !86)
!93 = !DILocation(line: 62, column: 7, scope: !86)
!94 = !DILocation(line: 62, column: 12, scope: !86)
!95 = !DILocation(line: 62, column: 15, scope: !86)
!96 = !DILocation(line: 63, column: 5, scope: !86)
!97 = distinct !{!97, !83, !98}
!98 = !DILocation(line: 60, column: 25, scope: !58)
!99 = !DILocation(line: 63, column: 5, scope: !58)
!100 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 60, type: !59, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !100, type: !61, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !100, type: !61, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "a", arg: 3, scope: !100, type: !65, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "i", arg: 4, scope: !100, type: !66, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !100)
!107 = !DILocation(line: 60, column: 1, scope: !100)
!108 = !{!109}
!109 = !{i64 2, i64 -1, i64 -1, i1 true}
