; ModuleID = 'DRB084-threadprivatemissing-orig-yes.c'
source_filename = "DRB084-threadprivatemissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@sum0 = dso_local global i32 0, align 4, !dbg !0
@sum1 = dso_local global i32 0, align 4, !dbg !6
@0 = private unnamed_addr constant [52 x i8] c";DRB084-threadprivatemissing-orig-yes.c;main;69;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [53 x i8] c";DRB084-threadprivatemissing-orig-yes.c;main;69;16;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [52 x i8] c";DRB084-threadprivatemissing-orig-yes.c;main;74;1;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @5, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@7 = private unnamed_addr constant [52 x i8] c";DRB084-threadprivatemissing-orig-yes.c;main;67;1;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @7, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo(i32 %i) #0 !dbg !15 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !20
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !19, metadata !DIExpression()), !dbg !24
  %0 = load i32, i32* @sum0, align 4, !dbg !25, !tbaa !20
  %1 = load i32, i32* %i.addr, align 4, !dbg !26, !tbaa !20
  %add = add nsw i32 %0, %1, !dbg !27
  store i32 %add, i32* @sum0, align 4, !dbg !28, !tbaa !20
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !30 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !DIExpression()), !dbg !37
  %1 = bitcast i32* %sum to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !35, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %sum, align 4, !dbg !38, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @8, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum), !dbg !39
  store i32 1, i32* %i, align 4, !dbg !40, !tbaa !20
  br label %for.cond, !dbg !42

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !43, !tbaa !20
  %cmp = icmp sle i32 %2, 1000, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @sum1, align 4, !dbg !47, !tbaa !20
  %4 = load i32, i32* %i, align 4, !dbg !49, !tbaa !20
  %add = add nsw i32 %3, %4, !dbg !50
  store i32 %add, i32* @sum1, align 4, !dbg !51, !tbaa !20
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !53, !tbaa !20
  %inc = add nsw i32 %5, 1, !dbg !53
  store i32 %inc, i32* %i, align 4, !dbg !53, !tbaa !20
  br label %for.cond, !dbg !54, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %sum, align 4, !dbg !58, !tbaa !20
  %7 = load i32, i32* @sum1, align 4, !dbg !59, !tbaa !20
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7), !dbg !60
  %8 = bitcast i32* %sum to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !61
  %9 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !61
  ret i32 0, !dbg !62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %sum) #3 !dbg !63 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !85
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !74, metadata !DIExpression()), !dbg !86
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !87, !tbaa !83
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !75, metadata !DIExpression()), !dbg !89
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !78, metadata !DIExpression()), !dbg !89
  store i32 0, i32* %.omp.lb, align 4, !dbg !90, !tbaa !20
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !79, metadata !DIExpression()), !dbg !89
  store i32 999, i32* %.omp.ub, align 4, !dbg !90, !tbaa !20
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !80, metadata !DIExpression()), !dbg !89
  store i32 1, i32* %.omp.stride, align 4, !dbg !90, !tbaa !20
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !81, metadata !DIExpression()), !dbg !89
  store i32 0, i32* %.omp.is_last, align 4, !dbg !90, !tbaa !20
  %6 = bitcast i32* %i to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i, metadata !82, metadata !DIExpression()), !dbg !89
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88
  %8 = load i32, i32* %7, align 4, !dbg !88, !tbaa !20
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !91
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !90, !tbaa !20
  %cmp = icmp sgt i32 %9, 999, !dbg !90
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !90

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !90

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !90, !tbaa !20
  br label %cond.end, !dbg !90

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %10, %cond.false ], !dbg !90
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !90, !tbaa !20
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !90, !tbaa !20
  store i32 %11, i32* %.omp.iv, align 4, !dbg !90, !tbaa !20
  br label %omp.inner.for.cond, !dbg !88

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !90, !tbaa !20
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !90, !tbaa !20
  %cmp1 = icmp sle i32 %12, %13, !dbg !92
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !88

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !88

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !90, !tbaa !20
  %mul = mul nsw i32 %14, 1, !dbg !93
  %add = add nsw i32 1, %mul, !dbg !93
  store i32 %add, i32* %i, align 4, !dbg !93, !tbaa !20
  %15 = load i32, i32* %i, align 4, !dbg !94, !tbaa !20
  call void @foo(i32 %15), !dbg !96
  br label %omp.body.continue, !dbg !97

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !91

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !90, !tbaa !20
  %add2 = add nsw i32 %16, 1, !dbg !92
  store i32 %add2, i32* %.omp.iv, align 4, !dbg !92, !tbaa !20
  br label %omp.inner.for.cond, !dbg !91, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !91

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %8), !dbg !99
  %17 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !91
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !91
  %19 = bitcast i32* %.omp.stride to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !91
  %20 = bitcast i32* %.omp.ub to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !91
  %21 = bitcast i32* %.omp.lb to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !91
  %22 = bitcast i32* %.omp.iv to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !91
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %8), !dbg !99
  call void @__kmpc_critical(%struct.ident_t* @6, i32 %8, [8 x i32]* @.gomp_critical_user_.var), !dbg !100
  %23 = load i32, i32* %0, align 4, !dbg !101, !tbaa !20
  %24 = load i32, i32* @sum0, align 4, !dbg !104, !tbaa !20
  %add3 = add nsw i32 %23, %24, !dbg !105
  store i32 %add3, i32* %0, align 4, !dbg !106, !tbaa !20
  call void @__kmpc_end_critical(%struct.ident_t* @6, i32 %8, [8 x i32]* @.gomp_critical_user_.var), !dbg !107
  ret void, !dbg !108
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %sum) #3 !dbg !109 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !111, metadata !DIExpression()), !dbg !114
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !112, metadata !DIExpression()), !dbg !114
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !115, !tbaa !83
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !115, !tbaa !83
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !115, !tbaa !83
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !115, !tbaa !83
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !115
  ret void, !dbg !115
}

; Function Attrs: nounwind
declare !callback !116 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblemem_or_argmemonly }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 56, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB084-threadprivatemissing-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 56, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 59, type: !16, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !8}
!18 = !{!19}
!19 = !DILocalVariable(name: "i", arg: 1, scope: !15, file: !3, line: 59, type: !8)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 59, column: 15, scope: !15)
!25 = !DILocation(line: 61, column: 8, scope: !15)
!26 = !DILocation(line: 61, column: 13, scope: !15)
!27 = !DILocation(line: 61, column: 12, scope: !15)
!28 = !DILocation(line: 61, column: 7, scope: !15)
!29 = !DILocation(line: 62, column: 1, scope: !15)
!30 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 64, type: !31, scopeLine: 65, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!8}
!33 = !{!34, !35}
!34 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 66, type: !8)
!35 = !DILocalVariable(name: "sum", scope: !30, file: !3, line: 66, type: !8)
!36 = !DILocation(line: 66, column: 3, scope: !30)
!37 = !DILocation(line: 66, column: 7, scope: !30)
!38 = !DILocation(line: 66, column: 10, scope: !30)
!39 = !DILocation(line: 67, column: 1, scope: !30)
!40 = !DILocation(line: 80, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !30, file: !3, line: 80, column: 3)
!42 = !DILocation(line: 80, column: 8, scope: !41)
!43 = !DILocation(line: 80, column: 12, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !3, line: 80, column: 3)
!45 = !DILocation(line: 80, column: 13, scope: !44)
!46 = !DILocation(line: 80, column: 3, scope: !41)
!47 = !DILocation(line: 82, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !3, line: 81, column: 3)
!49 = !DILocation(line: 82, column: 15, scope: !48)
!50 = !DILocation(line: 82, column: 14, scope: !48)
!51 = !DILocation(line: 82, column: 9, scope: !48)
!52 = !DILocation(line: 83, column: 3, scope: !48)
!53 = !DILocation(line: 80, column: 21, scope: !44)
!54 = !DILocation(line: 80, column: 3, scope: !44)
!55 = distinct !{!55, !46, !56, !57}
!56 = !DILocation(line: 83, column: 3, scope: !41)
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !DILocation(line: 84, column: 30, scope: !30)
!59 = !DILocation(line: 84, column: 34, scope: !30)
!60 = !DILocation(line: 84, column: 3, scope: !30)
!61 = !DILocation(line: 87, column: 1, scope: !30)
!62 = !DILocation(line: 86, column: 3, scope: !30)
!63 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 68, type: !64, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !66, !70}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!70 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!71 = !{!72, !73, !74, !75, !78, !79, !80, !81, !82}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !63, type: !66, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !63, type: !66, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "sum", arg: 3, scope: !63, file: !3, line: 66, type: !70)
!75 = !DILocalVariable(name: ".omp.iv", scope: !76, type: !8, flags: DIFlagArtificial)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 69, column: 1)
!77 = distinct !DILexicalBlock(scope: !63, file: !3, line: 68, column: 3)
!78 = !DILocalVariable(name: ".omp.lb", scope: !76, type: !8, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.ub", scope: !76, type: !8, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.stride", scope: !76, type: !8, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.is_last", scope: !76, type: !8, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "i", scope: !76, type: !8, flags: DIFlagArtificial)
!83 = !{!84, !84, i64 0}
!84 = !{!"any pointer", !22, i64 0}
!85 = !DILocation(line: 0, scope: !63)
!86 = !DILocation(line: 66, column: 10, scope: !63)
!87 = !DILocation(line: 68, column: 3, scope: !63)
!88 = !DILocation(line: 69, column: 1, scope: !77)
!89 = !DILocation(line: 0, scope: !76)
!90 = !DILocation(line: 70, column: 10, scope: !76)
!91 = !DILocation(line: 69, column: 1, scope: !76)
!92 = !DILocation(line: 70, column: 5, scope: !76)
!93 = !DILocation(line: 70, column: 22, scope: !76)
!94 = !DILocation(line: 72, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !76, file: !3, line: 71, column: 5)
!96 = !DILocation(line: 72, column: 8, scope: !95)
!97 = !DILocation(line: 73, column: 5, scope: !95)
!98 = distinct !{!98, !91, !99}
!99 = !DILocation(line: 69, column: 16, scope: !76)
!100 = !DILocation(line: 74, column: 1, scope: !77)
!101 = !DILocation(line: 76, column: 12, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 75, column: 5)
!103 = distinct !DILexicalBlock(scope: !77, file: !3, line: 74, column: 1)
!104 = !DILocation(line: 76, column: 16, scope: !102)
!105 = !DILocation(line: 76, column: 15, scope: !102)
!106 = !DILocation(line: 76, column: 10, scope: !102)
!107 = !DILocation(line: 77, column: 5, scope: !102)
!108 = !DILocation(line: 78, column: 3, scope: !63)
!109 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 67, type: !64, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!110 = !{!111, !112, !113}
!111 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !109, type: !66, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !109, type: !66, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "sum", arg: 3, scope: !109, type: !70, flags: DIFlagArtificial)
!114 = !DILocation(line: 0, scope: !109)
!115 = !DILocation(line: 67, column: 1, scope: !109)
!116 = !{!117}
!117 = !{i64 2, i64 -1, i64 -1, i1 true}
