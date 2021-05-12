; ModuleID = 'integration/openmp/array-index-outer-yes.c'
source_filename = "integration/openmp/array-index-outer-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [55 x i8] c";integration/openmp/array-index-outer-yes.c;main;8;1;;\00", align 1
@2 = private unnamed_addr constant [56 x i8] c";integration/openmp/array-index-outer-yes.c;main;8;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %A = alloca [1000 x [1000 x i32]], align 16
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %N to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %N, metadata !12, metadata !DIExpression()), !dbg !21
  store i32 1000, i32* %N, align 4, !dbg !21, !tbaa !22
  %3 = bitcast [1000 x [1000 x i32]]* %A to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4000000, i8* %3) #4, !dbg !26
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]* %A, metadata !14, metadata !DIExpression()), !dbg !27
  %4 = bitcast i32* %i to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !29
  store i32 0, i32* %i, align 4, !dbg !29, !tbaa !22
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !30, !tbaa !22
  %cmp = icmp slt i32 %5, 999, !dbg !32
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !33

for.cond.cleanup:                                 ; preds = %for.cond
  %6 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !34
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %7, align 8, !dbg !35, !tbaa !37
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x [1000 x i32]]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N, [1000 x [1000 x i32]]* %A, i32* %i), !dbg !35
  br label %for.inc, !dbg !40

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !41, !tbaa !22
  %inc = add nsw i32 %8, 1, !dbg !41
  store i32 %inc, i32* %i, align 4, !dbg !41, !tbaa !22
  br label %for.cond, !dbg !34, !llvm.loop !42

for.end:                                          ; preds = %for.cond.cleanup
  %9 = bitcast [1000 x [1000 x i32]]* %A to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4000000, i8* %9) #4, !dbg !44
  %10 = bitcast i32* %N to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !44
  %11 = load i32, i32* %retval, align 4, !dbg !44
  ret i32 %11, !dbg !44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x [1000 x i32]]* dereferenceable(4000000) %A, i32* dereferenceable(4) %i) #3 !dbg !45 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x [1000 x i32]]*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !55, metadata !DIExpression()), !dbg !67
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !56, metadata !DIExpression()), !dbg !67
  store i32* %N, i32** %N.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !57, metadata !DIExpression()), !dbg !68
  store [1000 x [1000 x i32]]* %A, [1000 x [1000 x i32]]** %A.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]** %A.addr, metadata !58, metadata !DIExpression()), !dbg !69
  store i32* %i, i32** %i.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !59, metadata !DIExpression()), !dbg !70
  %2 = load i32*, i32** %N.addr, align 8, !dbg !71, !tbaa !66
  %3 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !71, !tbaa !66
  %4 = load i32*, i32** %i.addr, align 8, !dbg !71, !tbaa !66
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !60, metadata !DIExpression()), !dbg !67
  %6 = bitcast i32* %.omp.lb to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !61, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %.omp.lb, align 4, !dbg !72, !tbaa !22
  %7 = bitcast i32* %.omp.ub to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !62, metadata !DIExpression()), !dbg !67
  store i32 999, i32* %.omp.ub, align 4, !dbg !72, !tbaa !22
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !63, metadata !DIExpression()), !dbg !67
  store i32 1, i32* %.omp.stride, align 4, !dbg !72, !tbaa !22
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !64, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %.omp.is_last, align 4, !dbg !72, !tbaa !22
  %10 = bitcast i32* %j to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %j, metadata !65, metadata !DIExpression()), !dbg !67
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !71, !tbaa !37
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %13 = load i32, i32* %12, align 4, !dbg !71, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !71
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !22
  %cmp = icmp sgt i32 %14, 999, !dbg !72
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !72

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !72

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !22
  br label %cond.end, !dbg !72

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %15, %cond.false ], !dbg !72
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !72, !tbaa !22
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !72, !tbaa !22
  store i32 %16, i32* %.omp.iv, align 4, !dbg !72, !tbaa !22
  br label %omp.inner.for.cond, !dbg !71

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !22
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !22
  %cmp1 = icmp sle i32 %17, %18, !dbg !71
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !71

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !71

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !22
  %mul = mul nsw i32 %19, 1, !dbg !73
  %add = add nsw i32 0, %mul, !dbg !73
  store i32 %add, i32* %j, align 4, !dbg !73, !tbaa !22
  %20 = load i32, i32* %4, align 4, !dbg !74, !tbaa !22
  %idxprom = sext i32 %20 to i64, !dbg !76
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* %3, i64 0, i64 %idxprom, !dbg !76
  %21 = load i32, i32* %j, align 4, !dbg !77, !tbaa !22
  %add2 = add nsw i32 %21, 1, !dbg !78
  %idxprom3 = sext i32 %add2 to i64, !dbg !76
  %arrayidx4 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx, i64 0, i64 %idxprom3, !dbg !76
  %22 = load i32, i32* %arrayidx4, align 4, !dbg !76, !tbaa !22
  %add5 = add nsw i32 %22, 1, !dbg !79
  %23 = load i32, i32* %4, align 4, !dbg !80, !tbaa !22
  %idxprom6 = sext i32 %23 to i64, !dbg !81
  %arrayidx7 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* %3, i64 0, i64 %idxprom6, !dbg !81
  %24 = load i32, i32* %j, align 4, !dbg !82, !tbaa !22
  %idxprom8 = sext i32 %24 to i64, !dbg !81
  %arrayidx9 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx7, i64 0, i64 %idxprom8, !dbg !81
  store i32 %add5, i32* %arrayidx9, align 4, !dbg !83, !tbaa !22
  br label %omp.body.continue, !dbg !84

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !85

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !22
  %add10 = add nsw i32 %25, 1, !dbg !71
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !71, !tbaa !22
  br label %omp.inner.for.cond, !dbg !85, !llvm.loop !86

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !85

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !85
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !85, !tbaa !37
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !85
  %27 = bitcast i32* %j to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !85
  %28 = bitcast i32* %.omp.is_last to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !85
  %29 = bitcast i32* %.omp.stride to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !85
  %30 = bitcast i32* %.omp.ub to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !85
  %31 = bitcast i32* %.omp.lb to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !85
  %32 = bitcast i32* %.omp.iv to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !85
  ret void, !dbg !88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x [1000 x i32]]* dereferenceable(4000000) %A, i32* dereferenceable(4) %i) #3 !dbg !89 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x [1000 x i32]]*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !91, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !92, metadata !DIExpression()), !dbg !96
  store i32* %N, i32** %N.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !93, metadata !DIExpression()), !dbg !96
  store [1000 x [1000 x i32]]* %A, [1000 x [1000 x i32]]** %A.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]** %A.addr, metadata !94, metadata !DIExpression()), !dbg !96
  store i32* %i, i32** %i.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i32*, i32** %N.addr, align 8, !dbg !97, !tbaa !66
  %1 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !97, !tbaa !66
  %2 = load i32*, i32** %i.addr, align 8, !dbg !97, !tbaa !66
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97, !tbaa !66
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !97, !tbaa !66
  %5 = load i32*, i32** %N.addr, align 8, !dbg !97, !tbaa !66
  %6 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !97, !tbaa !66
  %7 = load i32*, i32** %i.addr, align 8, !dbg !97, !tbaa !66
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [1000 x [1000 x i32]]* %6, i32* %7) #4, !dbg !97
  ret void, !dbg !97
}

declare !callback !98 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/array-index-outer-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14, !18}
!12 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 4, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!14 = !DILocalVariable(name: "A", scope: !7, file: !1, line: 5, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32000000, elements: !16)
!16 = !{!17, !17}
!17 = !DISubrange(count: 1000)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 7, type: !10)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!20 = !DILocation(line: 4, column: 3, scope: !7)
!21 = !DILocation(line: 4, column: 13, scope: !7)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 5, column: 3, scope: !7)
!27 = !DILocation(line: 5, column: 7, scope: !7)
!28 = !DILocation(line: 7, column: 8, scope: !19)
!29 = !DILocation(line: 7, column: 12, scope: !19)
!30 = !DILocation(line: 7, column: 19, scope: !31)
!31 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 3)
!32 = !DILocation(line: 7, column: 21, scope: !31)
!33 = !DILocation(line: 7, column: 3, scope: !19)
!34 = !DILocation(line: 7, column: 3, scope: !31)
!35 = !DILocation(line: 8, column: 1, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 7, column: 35)
!37 = !{!38, !39, i64 16}
!38 = !{!"ident_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !39, i64 16}
!39 = !{!"any pointer", !24, i64 0}
!40 = !DILocation(line: 12, column: 3, scope: !36)
!41 = !DILocation(line: 7, column: 31, scope: !31)
!42 = distinct !{!42, !33, !43}
!43 = !DILocation(line: 12, column: 3, scope: !19)
!44 = !DILocation(line: 13, column: 1, scope: !7)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 9, type: !46, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !51, !52, !53}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!55 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "N", arg: 3, scope: !45, file: !1, line: 4, type: !51)
!58 = !DILocalVariable(name: "A", arg: 4, scope: !45, file: !1, line: 5, type: !52)
!59 = !DILocalVariable(name: "i", arg: 5, scope: !45, file: !1, line: 7, type: !53)
!60 = !DILocalVariable(name: ".omp.iv", scope: !45, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.lb", scope: !45, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.ub", scope: !45, type: !10, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.stride", scope: !45, type: !10, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".omp.is_last", scope: !45, type: !10, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "j", scope: !45, type: !10, flags: DIFlagArtificial)
!66 = !{!39, !39, i64 0}
!67 = !DILocation(line: 0, scope: !45)
!68 = !DILocation(line: 4, column: 13, scope: !45)
!69 = !DILocation(line: 5, column: 7, scope: !45)
!70 = !DILocation(line: 7, column: 12, scope: !45)
!71 = !DILocation(line: 9, column: 5, scope: !45)
!72 = !DILocation(line: 9, column: 10, scope: !45)
!73 = !DILocation(line: 9, column: 28, scope: !45)
!74 = !DILocation(line: 10, column: 19, scope: !75)
!75 = distinct !DILexicalBlock(scope: !45, file: !1, line: 9, column: 33)
!76 = !DILocation(line: 10, column: 17, scope: !75)
!77 = !DILocation(line: 10, column: 22, scope: !75)
!78 = !DILocation(line: 10, column: 24, scope: !75)
!79 = !DILocation(line: 10, column: 29, scope: !75)
!80 = !DILocation(line: 10, column: 9, scope: !75)
!81 = !DILocation(line: 10, column: 7, scope: !75)
!82 = !DILocation(line: 10, column: 12, scope: !75)
!83 = !DILocation(line: 10, column: 15, scope: !75)
!84 = !DILocation(line: 11, column: 5, scope: !75)
!85 = !DILocation(line: 8, column: 1, scope: !45)
!86 = distinct !{!86, !85, !87}
!87 = !DILocation(line: 8, column: 25, scope: !45)
!88 = !DILocation(line: 11, column: 5, scope: !45)
!89 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 9, type: !46, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !90)
!90 = !{!91, !92, !93, !94, !95}
!91 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !48, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !48, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "N", arg: 3, scope: !89, type: !51, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "A", arg: 4, scope: !89, type: !52, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "i", arg: 5, scope: !89, type: !53, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !89)
!97 = !DILocation(line: 9, column: 5, scope: !89)
!98 = !{!99}
!99 = !{i64 2, i64 -1, i64 -1, i1 true}
