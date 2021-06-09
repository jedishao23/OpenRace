; ModuleID = 'integration/openmp/array-index-simple.c'
source_filename = "integration/openmp/array-index-simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [52 x i8] c";integration/openmp/array-index-simple.c;main;5;1;;\00", align 1
@2 = private unnamed_addr constant [53 x i8] c";integration/openmp/array-index-simple.c;main;5;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %N = alloca i32, align 4
  %A = alloca [10 x i32], align 16
  %B = alloca [10 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %N to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %N, metadata !12, metadata !DIExpression()), !dbg !20
  store i32 10, i32* %N, align 4, !dbg !20, !tbaa !21
  %3 = bitcast [10 x i32]* %A to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %3) #4, !dbg !25
  call void @llvm.dbg.declare(metadata [10 x i32]* %A, metadata !14, metadata !DIExpression()), !dbg !26
  %4 = bitcast [10 x i32]* %B to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %4) #4, !dbg !27
  call void @llvm.dbg.declare(metadata [10 x i32]* %B, metadata !18, metadata !DIExpression()), !dbg !28
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !29
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !29, !tbaa !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [10 x i32]*, [10 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N, [10 x i32]* %A, [10 x i32]* %B), !dbg !29
  %6 = bitcast [10 x i32]* %B to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %6) #4, !dbg !33
  %7 = bitcast [10 x i32]* %A to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %7) #4, !dbg !33
  %8 = bitcast i32* %N to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !33
  ret i32 0, !dbg !33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [10 x i32]* dereferenceable(40) %A, [10 x i32]* dereferenceable(40) %B) #3 !dbg !34 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [10 x i32]*, align 8
  %B.addr = alloca [10 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !43, metadata !DIExpression()), !dbg !55
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !44, metadata !DIExpression()), !dbg !55
  store i32* %N, i32** %N.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !45, metadata !DIExpression()), !dbg !56
  store [10 x i32]* %A, [10 x i32]** %A.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [10 x i32]** %A.addr, metadata !46, metadata !DIExpression()), !dbg !57
  store [10 x i32]* %B, [10 x i32]** %B.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [10 x i32]** %B.addr, metadata !47, metadata !DIExpression()), !dbg !58
  %2 = load i32*, i32** %N.addr, align 8, !dbg !59, !tbaa !54
  %3 = load [10 x i32]*, [10 x i32]** %A.addr, align 8, !dbg !59, !tbaa !54
  %4 = load [10 x i32]*, [10 x i32]** %B.addr, align 8, !dbg !59, !tbaa !54
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !48, metadata !DIExpression()), !dbg !55
  %6 = bitcast i32* %.omp.lb to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !49, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %.omp.lb, align 4, !dbg !60, !tbaa !21
  %7 = bitcast i32* %.omp.ub to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !50, metadata !DIExpression()), !dbg !55
  store i32 9, i32* %.omp.ub, align 4, !dbg !60, !tbaa !21
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !51, metadata !DIExpression()), !dbg !55
  store i32 1, i32* %.omp.stride, align 4, !dbg !60, !tbaa !21
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !52, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %.omp.is_last, align 4, !dbg !60, !tbaa !21
  %10 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %i, metadata !53, metadata !DIExpression()), !dbg !55
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !59
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !59, !tbaa !30
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !59
  %13 = load i32, i32* %12, align 4, !dbg !59, !tbaa !21
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !59
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !21
  %cmp = icmp sgt i32 %14, 9, !dbg !60
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !60

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !60

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !21
  br label %cond.end, !dbg !60

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %15, %cond.false ], !dbg !60
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !60, !tbaa !21
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !60, !tbaa !21
  store i32 %16, i32* %.omp.iv, align 4, !dbg !60, !tbaa !21
  br label %omp.inner.for.cond, !dbg !59

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !21
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !21
  %cmp1 = icmp sle i32 %17, %18, !dbg !59
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !59

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !59

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !21
  %mul = mul nsw i32 %19, 1, !dbg !61
  %add = add nsw i32 0, %mul, !dbg !61
  store i32 %add, i32* %i, align 4, !dbg !61, !tbaa !21
  %20 = load i32, i32* %i, align 4, !dbg !62, !tbaa !21
  %idxprom = sext i32 %20 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %idxprom, !dbg !64
  %21 = load i32, i32* %arrayidx, align 4, !dbg !64, !tbaa !21
  %add2 = add nsw i32 %21, 1, !dbg !65
  %22 = load i32, i32* %i, align 4, !dbg !66, !tbaa !21
  %idxprom3 = sext i32 %22 to i64, !dbg !67
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %idxprom3, !dbg !67
  store i32 %add2, i32* %arrayidx4, align 4, !dbg !68, !tbaa !21
  %23 = load i32, i32* %i, align 4, !dbg !69, !tbaa !21
  %add5 = add nsw i32 %23, 1, !dbg !70
  %idxprom6 = sext i32 %add5 to i64, !dbg !71
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %idxprom6, !dbg !71
  %24 = load i32, i32* %arrayidx7, align 4, !dbg !71, !tbaa !21
  %25 = load i32, i32* %i, align 4, !dbg !72, !tbaa !21
  %idxprom8 = sext i32 %25 to i64, !dbg !73
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %idxprom8, !dbg !73
  store i32 %24, i32* %arrayidx9, align 4, !dbg !74, !tbaa !21
  br label %omp.body.continue, !dbg !75

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !76

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !21
  %add10 = add nsw i32 %26, 1, !dbg !59
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !59, !tbaa !21
  br label %omp.inner.for.cond, !dbg !76, !llvm.loop !77

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !76

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !76, !tbaa !30
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !76
  %28 = bitcast i32* %i to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !76
  %29 = bitcast i32* %.omp.is_last to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !76
  %30 = bitcast i32* %.omp.stride to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !76
  %31 = bitcast i32* %.omp.ub to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !76
  %32 = bitcast i32* %.omp.lb to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !76
  %33 = bitcast i32* %.omp.iv to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !76
  ret void, !dbg !79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [10 x i32]* dereferenceable(40) %A, [10 x i32]* dereferenceable(40) %B) #3 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [10 x i32]*, align 8
  %B.addr = alloca [10 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !82, metadata !DIExpression()), !dbg !87
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !83, metadata !DIExpression()), !dbg !87
  store i32* %N, i32** %N.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !84, metadata !DIExpression()), !dbg !87
  store [10 x i32]* %A, [10 x i32]** %A.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [10 x i32]** %A.addr, metadata !85, metadata !DIExpression()), !dbg !87
  store [10 x i32]* %B, [10 x i32]** %B.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [10 x i32]** %B.addr, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = load i32*, i32** %N.addr, align 8, !dbg !88, !tbaa !54
  %1 = load [10 x i32]*, [10 x i32]** %A.addr, align 8, !dbg !88, !tbaa !54
  %2 = load [10 x i32]*, [10 x i32]** %B.addr, align 8, !dbg !88, !tbaa !54
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88, !tbaa !54
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !88, !tbaa !54
  %5 = load i32*, i32** %N.addr, align 8, !dbg !88, !tbaa !54
  %6 = load [10 x i32]*, [10 x i32]** %A.addr, align 8, !dbg !88, !tbaa !54
  %7 = load [10 x i32]*, [10 x i32]** %B.addr, align 8, !dbg !88, !tbaa !54
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [10 x i32]* %6, [10 x i32]* %7) #4, !dbg !88
  ret void, !dbg !88
}

declare !callback !89 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/array-index-simple.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14, !18}
!12 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 2, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!14 = !DILocalVariable(name: "A", scope: !7, file: !1, line: 3, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 10)
!18 = !DILocalVariable(name: "B", scope: !7, file: !1, line: 4, type: !15)
!19 = !DILocation(line: 2, column: 3, scope: !7)
!20 = !DILocation(line: 2, column: 13, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 3, column: 3, scope: !7)
!26 = !DILocation(line: 3, column: 7, scope: !7)
!27 = !DILocation(line: 4, column: 3, scope: !7)
!28 = !DILocation(line: 4, column: 7, scope: !7)
!29 = !DILocation(line: 5, column: 1, scope: !7)
!30 = !{!31, !32, i64 16}
!31 = !{!"ident_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !32, i64 16}
!32 = !{!"any pointer", !23, i64 0}
!33 = !DILocation(line: 10, column: 1, scope: !7)
!34 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 6, type: !35, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37, !40, !41, !41}
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!43 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !34, type: !37, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !34, type: !37, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "N", arg: 3, scope: !34, file: !1, line: 2, type: !40)
!46 = !DILocalVariable(name: "A", arg: 4, scope: !34, file: !1, line: 3, type: !41)
!47 = !DILocalVariable(name: "B", arg: 5, scope: !34, file: !1, line: 4, type: !41)
!48 = !DILocalVariable(name: ".omp.iv", scope: !34, type: !10, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.lb", scope: !34, type: !10, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.ub", scope: !34, type: !10, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.stride", scope: !34, type: !10, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.is_last", scope: !34, type: !10, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "i", scope: !34, type: !10, flags: DIFlagArtificial)
!54 = !{!32, !32, i64 0}
!55 = !DILocation(line: 0, scope: !34)
!56 = !DILocation(line: 2, column: 13, scope: !34)
!57 = !DILocation(line: 3, column: 7, scope: !34)
!58 = !DILocation(line: 4, column: 7, scope: !34)
!59 = !DILocation(line: 6, column: 3, scope: !34)
!60 = !DILocation(line: 6, column: 8, scope: !34)
!61 = !DILocation(line: 6, column: 26, scope: !34)
!62 = !DILocation(line: 7, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !34, file: !1, line: 6, column: 31)
!64 = !DILocation(line: 7, column: 12, scope: !63)
!65 = !DILocation(line: 7, column: 17, scope: !63)
!66 = !DILocation(line: 7, column: 7, scope: !63)
!67 = !DILocation(line: 7, column: 5, scope: !63)
!68 = !DILocation(line: 7, column: 10, scope: !63)
!69 = !DILocation(line: 8, column: 14, scope: !63)
!70 = !DILocation(line: 8, column: 16, scope: !63)
!71 = !DILocation(line: 8, column: 12, scope: !63)
!72 = !DILocation(line: 8, column: 7, scope: !63)
!73 = !DILocation(line: 8, column: 5, scope: !63)
!74 = !DILocation(line: 8, column: 10, scope: !63)
!75 = !DILocation(line: 9, column: 3, scope: !63)
!76 = !DILocation(line: 5, column: 1, scope: !34)
!77 = distinct !{!77, !76, !78}
!78 = !DILocation(line: 5, column: 25, scope: !34)
!79 = !DILocation(line: 9, column: 3, scope: !34)
!80 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 6, type: !35, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!81 = !{!82, !83, !84, !85, !86}
!82 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !37, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !37, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "N", arg: 3, scope: !80, type: !40, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "A", arg: 4, scope: !80, type: !41, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "B", arg: 5, scope: !80, type: !41, flags: DIFlagArtificial)
!87 = !DILocation(line: 0, scope: !80)
!88 = !DILocation(line: 6, column: 3, scope: !80)
!89 = !{!90}
!90 = !{i64 2, i64 -1, i64 -1, i1 true}
