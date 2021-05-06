; ModuleID = 'DRB092-threadprivatemissing2-orig-yes.c'
source_filename = "DRB092-threadprivatemissing2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@sum0 = dso_local global i32 0, align 4, !dbg !0
@sum1 = dso_local global i32 0, align 4, !dbg !6
@0 = private unnamed_addr constant [53 x i8] c";DRB092-threadprivatemissing2-orig-yes.c;main;65;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [54 x i8] c";DRB092-threadprivatemissing2-orig-yes.c;main;65;16;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [53 x i8] c";DRB092-threadprivatemissing2-orig-yes.c;main;70;1;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @5, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@7 = private unnamed_addr constant [53 x i8] c";DRB092-threadprivatemissing2-orig-yes.c;main;63;1;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @7, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !22
  %1 = bitcast i32* %sum to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !20, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %sum, align 4, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @8, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum), !dbg !28
  store i32 1, i32* %i, align 4, !dbg !29, !tbaa !24
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !32, !tbaa !24
  %cmp = icmp sle i32 %2, 1000, !dbg !34
  br i1 %cmp, label %for.body, label %for.end, !dbg !35

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @sum1, align 4, !dbg !36, !tbaa !24
  %4 = load i32, i32* %i, align 4, !dbg !38, !tbaa !24
  %add = add nsw i32 %3, %4, !dbg !39
  store i32 %add, i32* @sum1, align 4, !dbg !40, !tbaa !24
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !42, !tbaa !24
  %inc = add nsw i32 %5, 1, !dbg !42
  store i32 %inc, i32* %i, align 4, !dbg !42, !tbaa !24
  br label %for.cond, !dbg !43, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %sum, align 4, !dbg !47, !tbaa !24
  %7 = load i32, i32* @sum1, align 4, !dbg !48, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7), !dbg !49
  %8 = bitcast i32* %sum to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !50
  %9 = bitcast i32* %i to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !50
  ret i32 0, !dbg !51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %sum) #3 !dbg !52 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !74
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !62, metadata !DIExpression()), !dbg !74
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !63, metadata !DIExpression()), !dbg !75
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !76, !tbaa !72
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !64, metadata !DIExpression()), !dbg !78
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !67, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.lb, align 4, !dbg !79, !tbaa !24
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !68, metadata !DIExpression()), !dbg !78
  store i32 999, i32* %.omp.ub, align 4, !dbg !79, !tbaa !24
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !69, metadata !DIExpression()), !dbg !78
  store i32 1, i32* %.omp.stride, align 4, !dbg !79, !tbaa !24
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !70, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.is_last, align 4, !dbg !79, !tbaa !24
  %6 = bitcast i32* %i to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %i, metadata !71, metadata !DIExpression()), !dbg !78
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %8 = load i32, i32* %7, align 4, !dbg !77, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !80
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !79, !tbaa !24
  %cmp = icmp sgt i32 %9, 999, !dbg !79
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !79

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !79

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !79, !tbaa !24
  br label %cond.end, !dbg !79

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %10, %cond.false ], !dbg !79
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !79, !tbaa !24
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !79, !tbaa !24
  store i32 %11, i32* %.omp.iv, align 4, !dbg !79, !tbaa !24
  br label %omp.inner.for.cond, !dbg !77

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !24
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !79, !tbaa !24
  %cmp1 = icmp sle i32 %12, %13, !dbg !81
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !77

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !77

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !24
  %mul = mul nsw i32 %14, 1, !dbg !82
  %add = add nsw i32 1, %mul, !dbg !82
  store i32 %add, i32* %i, align 4, !dbg !82, !tbaa !24
  %15 = load i32, i32* @sum0, align 4, !dbg !83, !tbaa !24
  %16 = load i32, i32* %i, align 4, !dbg !85, !tbaa !24
  %add2 = add nsw i32 %15, %16, !dbg !86
  store i32 %add2, i32* @sum0, align 4, !dbg !87, !tbaa !24
  br label %omp.body.continue, !dbg !88

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !80

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !24
  %add3 = add nsw i32 %17, 1, !dbg !81
  store i32 %add3, i32* %.omp.iv, align 4, !dbg !81, !tbaa !24
  br label %omp.inner.for.cond, !dbg !80, !llvm.loop !89

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !80

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %8), !dbg !90
  %18 = bitcast i32* %i to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !80
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !80
  %20 = bitcast i32* %.omp.stride to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !80
  %21 = bitcast i32* %.omp.ub to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !80
  %22 = bitcast i32* %.omp.lb to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !80
  %23 = bitcast i32* %.omp.iv to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !80
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %8), !dbg !90
  call void @__kmpc_critical(%struct.ident_t* @6, i32 %8, [8 x i32]* @.gomp_critical_user_.var), !dbg !91
  %24 = load i32, i32* %0, align 4, !dbg !92, !tbaa !24
  %25 = load i32, i32* @sum0, align 4, !dbg !95, !tbaa !24
  %add4 = add nsw i32 %24, %25, !dbg !96
  store i32 %add4, i32* %0, align 4, !dbg !97, !tbaa !24
  call void @__kmpc_end_critical(%struct.ident_t* @6, i32 %8, [8 x i32]* @.gomp_critical_user_.var), !dbg !98
  ret void, !dbg !99
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %sum) #3 !dbg !100 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !105
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !105
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !106, !tbaa !72
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106, !tbaa !72
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !106, !tbaa !72
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !106, !tbaa !72
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !106
  ret void, !dbg !106
}

; Function Attrs: nounwind
declare !callback !107 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblemem_or_argmemonly }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 57, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB092-threadprivatemissing2-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 57, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !16, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!8}
!18 = !{!19, !20}
!19 = !DILocalVariable(name: "i", scope: !15, file: !3, line: 62, type: !8)
!20 = !DILocalVariable(name: "sum", scope: !15, file: !3, line: 62, type: !8)
!21 = !DILocation(line: 62, column: 3, scope: !15)
!22 = !DILocation(line: 62, column: 7, scope: !15)
!23 = !DILocation(line: 62, column: 10, scope: !15)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 63, column: 1, scope: !15)
!29 = !DILocation(line: 76, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !15, file: !3, line: 76, column: 3)
!31 = !DILocation(line: 76, column: 8, scope: !30)
!32 = !DILocation(line: 76, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !3, line: 76, column: 3)
!34 = !DILocation(line: 76, column: 13, scope: !33)
!35 = !DILocation(line: 76, column: 3, scope: !30)
!36 = !DILocation(line: 78, column: 10, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !3, line: 77, column: 3)
!38 = !DILocation(line: 78, column: 15, scope: !37)
!39 = !DILocation(line: 78, column: 14, scope: !37)
!40 = !DILocation(line: 78, column: 9, scope: !37)
!41 = !DILocation(line: 79, column: 3, scope: !37)
!42 = !DILocation(line: 76, column: 21, scope: !33)
!43 = !DILocation(line: 76, column: 3, scope: !33)
!44 = distinct !{!44, !35, !45, !46}
!45 = !DILocation(line: 79, column: 3, scope: !30)
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !DILocation(line: 80, column: 30, scope: !15)
!48 = !DILocation(line: 80, column: 34, scope: !15)
!49 = !DILocation(line: 80, column: 3, scope: !15)
!50 = !DILocation(line: 83, column: 1, scope: !15)
!51 = !DILocation(line: 82, column: 3, scope: !15)
!52 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 64, type: !53, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !55, !59}
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!59 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!60 = !{!61, !62, !63, !64, !67, !68, !69, !70, !71}
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !52, type: !55, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !52, type: !55, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "sum", arg: 3, scope: !52, file: !3, line: 62, type: !59)
!64 = !DILocalVariable(name: ".omp.iv", scope: !65, type: !8, flags: DIFlagArtificial)
!65 = distinct !DILexicalBlock(scope: !66, file: !3, line: 65, column: 1)
!66 = distinct !DILexicalBlock(scope: !52, file: !3, line: 64, column: 3)
!67 = !DILocalVariable(name: ".omp.lb", scope: !65, type: !8, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.ub", scope: !65, type: !8, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.stride", scope: !65, type: !8, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.is_last", scope: !65, type: !8, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "i", scope: !65, type: !8, flags: DIFlagArtificial)
!72 = !{!73, !73, i64 0}
!73 = !{!"any pointer", !26, i64 0}
!74 = !DILocation(line: 0, scope: !52)
!75 = !DILocation(line: 62, column: 10, scope: !52)
!76 = !DILocation(line: 64, column: 3, scope: !52)
!77 = !DILocation(line: 65, column: 1, scope: !66)
!78 = !DILocation(line: 0, scope: !65)
!79 = !DILocation(line: 66, column: 10, scope: !65)
!80 = !DILocation(line: 65, column: 1, scope: !65)
!81 = !DILocation(line: 66, column: 5, scope: !65)
!82 = !DILocation(line: 66, column: 22, scope: !65)
!83 = !DILocation(line: 68, column: 12, scope: !84)
!84 = distinct !DILexicalBlock(scope: !65, file: !3, line: 67, column: 5)
!85 = !DILocation(line: 68, column: 17, scope: !84)
!86 = !DILocation(line: 68, column: 16, scope: !84)
!87 = !DILocation(line: 68, column: 11, scope: !84)
!88 = !DILocation(line: 69, column: 5, scope: !84)
!89 = distinct !{!89, !80, !90}
!90 = !DILocation(line: 65, column: 16, scope: !65)
!91 = !DILocation(line: 70, column: 1, scope: !66)
!92 = !DILocation(line: 72, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 71, column: 5)
!94 = distinct !DILexicalBlock(scope: !66, file: !3, line: 70, column: 1)
!95 = !DILocation(line: 72, column: 16, scope: !93)
!96 = !DILocation(line: 72, column: 15, scope: !93)
!97 = !DILocation(line: 72, column: 10, scope: !93)
!98 = !DILocation(line: 73, column: 5, scope: !93)
!99 = !DILocation(line: 74, column: 3, scope: !52)
!100 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 63, type: !53, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !101)
!101 = !{!102, !103, !104}
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !100, type: !55, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !100, type: !55, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "sum", arg: 3, scope: !100, type: !59, flags: DIFlagArtificial)
!105 = !DILocation(line: 0, scope: !100)
!106 = !DILocation(line: 63, column: 1, scope: !100)
!107 = !{!108}
!108 = !{i64 2, i64 -1, i64 -1, i1 true}
