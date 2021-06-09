; ModuleID = 'integration/openmp/array-index-inner-yes.c'
source_filename = "integration/openmp/array-index-inner-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [55 x i8] c";integration/openmp/array-index-inner-yes.c;main;7;1;;\00", align 1
@2 = private unnamed_addr constant [56 x i8] c";integration/openmp/array-index-inner-yes.c;main;7;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %N = alloca i32, align 4
  %A = alloca [1000 x [1000 x i32]], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %N to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %N, metadata !12, metadata !DIExpression()), !dbg !19
  store i32 1000, i32* %N, align 4, !dbg !19, !tbaa !20
  %3 = bitcast [1000 x [1000 x i32]]* %A to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4000000, i8* %3) #4, !dbg !24
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]* %A, metadata !14, metadata !DIExpression()), !dbg !25
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !26
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !26, !tbaa !27
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x [1000 x i32]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N, [1000 x [1000 x i32]]* %A), !dbg !26
  %5 = bitcast [1000 x [1000 x i32]]* %A to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4000000, i8* %5) #4, !dbg !30
  %6 = bitcast i32* %N to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !30
  ret i32 0, !dbg !30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x [1000 x i32]]* dereferenceable(4000000) %A) #3 !dbg !31 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x [1000 x i32]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %j = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !54
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !54
  store i32* %N, i32** %N.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !42, metadata !DIExpression()), !dbg !55
  store [1000 x [1000 x i32]]* %A, [1000 x [1000 x i32]]** %A.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]** %A.addr, metadata !43, metadata !DIExpression()), !dbg !56
  %2 = load i32*, i32** %N.addr, align 8, !dbg !57, !tbaa !53
  %3 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !57, !tbaa !53
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !44, metadata !DIExpression()), !dbg !54
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !45, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.lb, align 4, !dbg !58, !tbaa !20
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !46, metadata !DIExpression()), !dbg !54
  store i32 998, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !47, metadata !DIExpression()), !dbg !54
  store i32 1, i32* %.omp.stride, align 4, !dbg !58, !tbaa !20
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !48, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.is_last, align 4, !dbg !58, !tbaa !20
  %9 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i, metadata !49, metadata !DIExpression()), !dbg !54
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !57, !tbaa !27
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !57
  %12 = load i32, i32* %11, align 4, !dbg !57, !tbaa !20
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !57
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  %cmp = icmp sgt i32 %13, 998, !dbg !58
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !58

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !58

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 998, %cond.true ], [ %14, %cond.false ], !dbg !58
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !58, !tbaa !20
  store i32 %15, i32* %.omp.iv, align 4, !dbg !58, !tbaa !20
  br label %omp.inner.for.cond, !dbg !57

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !20
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  %cmp1 = icmp sle i32 %16, %17, !dbg !57
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !57

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !57

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !20
  %mul = mul nsw i32 %18, 1, !dbg !59
  %add = add nsw i32 0, %mul, !dbg !59
  store i32 %add, i32* %i, align 4, !dbg !59, !tbaa !20
  %19 = bitcast i32* %j to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %j, metadata !50, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %j, align 4, !dbg !61, !tbaa !20
  br label %for.cond, !dbg !60

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %20 = load i32, i32* %j, align 4, !dbg !62, !tbaa !20
  %cmp2 = icmp slt i32 %20, 1000, !dbg !64
  br i1 %cmp2, label %for.body, label %for.cond.cleanup, !dbg !65

for.cond.cleanup:                                 ; preds = %for.cond
  %21 = bitcast i32* %j to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !66
  br label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4, !dbg !67, !tbaa !20
  %add3 = add nsw i32 %22, 1, !dbg !69
  %idxprom = sext i32 %add3 to i64, !dbg !70
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* %3, i64 0, i64 %idxprom, !dbg !70
  %23 = load i32, i32* %j, align 4, !dbg !71, !tbaa !20
  %idxprom4 = sext i32 %23 to i64, !dbg !70
  %arrayidx5 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !70
  %24 = load i32, i32* %arrayidx5, align 4, !dbg !70, !tbaa !20
  %add6 = add nsw i32 %24, 1, !dbg !72
  %25 = load i32, i32* %i, align 4, !dbg !73, !tbaa !20
  %idxprom7 = sext i32 %25 to i64, !dbg !74
  %arrayidx8 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* %3, i64 0, i64 %idxprom7, !dbg !74
  %26 = load i32, i32* %j, align 4, !dbg !75, !tbaa !20
  %idxprom9 = sext i32 %26 to i64, !dbg !74
  %arrayidx10 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !74
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !76, !tbaa !20
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4, !dbg !78, !tbaa !20
  %inc = add nsw i32 %27, 1, !dbg !78
  store i32 %inc, i32* %j, align 4, !dbg !78, !tbaa !20
  br label %for.cond, !dbg !66, !llvm.loop !79

for.end:                                          ; preds = %for.cond.cleanup
  br label %omp.body.continue, !dbg !81

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !82

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !20
  %add11 = add nsw i32 %28, 1, !dbg !57
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !57, !tbaa !20
  br label %omp.inner.for.cond, !dbg !82, !llvm.loop !83

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !82

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !82
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2, i32 0, i32 0), i8** %29, align 8, !dbg !82, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !82
  %30 = bitcast i32* %i to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !82
  %31 = bitcast i32* %.omp.is_last to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !82
  %32 = bitcast i32* %.omp.stride to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !82
  %33 = bitcast i32* %.omp.ub to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !82
  %34 = bitcast i32* %.omp.lb to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !82
  %35 = bitcast i32* %.omp.iv to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !82
  ret void, !dbg !85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x [1000 x i32]]* dereferenceable(4000000) %A) #3 !dbg !86 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x [1000 x i32]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !92
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !89, metadata !DIExpression()), !dbg !92
  store i32* %N, i32** %N.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !90, metadata !DIExpression()), !dbg !92
  store [1000 x [1000 x i32]]* %A, [1000 x [1000 x i32]]** %A.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]** %A.addr, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = load i32*, i32** %N.addr, align 8, !dbg !93, !tbaa !53
  %1 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !93, !tbaa !53
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !93, !tbaa !53
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !93, !tbaa !53
  %4 = load i32*, i32** %N.addr, align 8, !dbg !93, !tbaa !53
  %5 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !93, !tbaa !53
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [1000 x [1000 x i32]]* %5) #4, !dbg !93
  ret void, !dbg !93
}

declare !callback !94 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/array-index-inner-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14}
!12 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 4, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!14 = !DILocalVariable(name: "A", scope: !7, file: !1, line: 5, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32000000, elements: !16)
!16 = !{!17, !17}
!17 = !DISubrange(count: 1000)
!18 = !DILocation(line: 4, column: 3, scope: !7)
!19 = !DILocation(line: 4, column: 13, scope: !7)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 5, column: 3, scope: !7)
!25 = !DILocation(line: 5, column: 7, scope: !7)
!26 = !DILocation(line: 7, column: 1, scope: !7)
!27 = !{!28, !29, i64 16}
!28 = !{!"ident_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !29, i64 16}
!29 = !{!"any pointer", !22, i64 0}
!30 = !DILocation(line: 13, column: 1, scope: !7)
!31 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 8, type: !32, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34, !37, !38}
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !31, type: !34, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !31, type: !34, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "N", arg: 3, scope: !31, file: !1, line: 4, type: !37)
!43 = !DILocalVariable(name: "A", arg: 4, scope: !31, file: !1, line: 5, type: !38)
!44 = !DILocalVariable(name: ".omp.iv", scope: !31, type: !10, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.lb", scope: !31, type: !10, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.ub", scope: !31, type: !10, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.stride", scope: !31, type: !10, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.is_last", scope: !31, type: !10, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "i", scope: !31, type: !10, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "j", scope: !51, file: !1, line: 9, type: !10)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 9, column: 5)
!52 = distinct !DILexicalBlock(scope: !31, file: !1, line: 8, column: 35)
!53 = !{!29, !29, i64 0}
!54 = !DILocation(line: 0, scope: !31)
!55 = !DILocation(line: 4, column: 13, scope: !31)
!56 = !DILocation(line: 5, column: 7, scope: !31)
!57 = !DILocation(line: 8, column: 3, scope: !31)
!58 = !DILocation(line: 8, column: 8, scope: !31)
!59 = !DILocation(line: 8, column: 30, scope: !31)
!60 = !DILocation(line: 9, column: 10, scope: !51)
!61 = !DILocation(line: 9, column: 14, scope: !51)
!62 = !DILocation(line: 9, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !51, file: !1, line: 9, column: 5)
!64 = !DILocation(line: 9, column: 23, scope: !63)
!65 = !DILocation(line: 9, column: 5, scope: !51)
!66 = !DILocation(line: 9, column: 5, scope: !63)
!67 = !DILocation(line: 10, column: 19, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 9, column: 33)
!69 = !DILocation(line: 10, column: 21, scope: !68)
!70 = !DILocation(line: 10, column: 17, scope: !68)
!71 = !DILocation(line: 10, column: 26, scope: !68)
!72 = !DILocation(line: 10, column: 29, scope: !68)
!73 = !DILocation(line: 10, column: 9, scope: !68)
!74 = !DILocation(line: 10, column: 7, scope: !68)
!75 = !DILocation(line: 10, column: 12, scope: !68)
!76 = !DILocation(line: 10, column: 15, scope: !68)
!77 = !DILocation(line: 11, column: 5, scope: !68)
!78 = !DILocation(line: 9, column: 29, scope: !63)
!79 = distinct !{!79, !65, !80}
!80 = !DILocation(line: 11, column: 5, scope: !51)
!81 = !DILocation(line: 12, column: 3, scope: !52)
!82 = !DILocation(line: 7, column: 1, scope: !31)
!83 = distinct !{!83, !82, !84}
!84 = !DILocation(line: 7, column: 25, scope: !31)
!85 = !DILocation(line: 12, column: 3, scope: !31)
!86 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 8, type: !32, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!87 = !{!88, !89, !90, !91}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !86, type: !34, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !86, type: !34, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "N", arg: 3, scope: !86, type: !37, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "A", arg: 4, scope: !86, type: !38, flags: DIFlagArtificial)
!92 = !DILocation(line: 0, scope: !86)
!93 = !DILocation(line: 8, column: 3, scope: !86)
!94 = !{!95}
!95 = !{i64 2, i64 -1, i64 -1, i1 true}
