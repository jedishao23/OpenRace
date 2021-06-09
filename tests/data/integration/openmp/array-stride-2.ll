; ModuleID = 'integration/openmp/array-stride-2.c'
source_filename = "integration/openmp/array-stride-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";integration/openmp/array-stride-2.c;main;5;1;;\00", align 1
@2 = private unnamed_addr constant [49 x i8] c";integration/openmp/array-stride-2.c;main;5;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %N = alloca i32, align 4
  %A = alloca [1000 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %N to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %N, metadata !12, metadata !DIExpression()), !dbg !19
  store i32 1000, i32* %N, align 4, !dbg !19, !tbaa !20
  %3 = bitcast [1000 x i32]* %A to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* %3) #4, !dbg !24
  call void @llvm.dbg.declare(metadata [1000 x i32]* %A, metadata !14, metadata !DIExpression()), !dbg !25
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !26
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !26, !tbaa !27
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N, [1000 x i32]* %A), !dbg !26
  %5 = bitcast [1000 x i32]* %A to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* %5) #4, !dbg !30
  %6 = bitcast i32* %N to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !30
  ret i32 0, !dbg !30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x i32]* dereferenceable(4000) %A) #3 !dbg !31 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !51
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !51
  store i32* %N, i32** %N.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !42, metadata !DIExpression()), !dbg !52
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !43, metadata !DIExpression()), !dbg !53
  %2 = load i32*, i32** %N.addr, align 8, !dbg !54, !tbaa !50
  %3 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !54, !tbaa !50
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !44, metadata !DIExpression()), !dbg !51
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !45, metadata !DIExpression()), !dbg !51
  store i32 0, i32* %.omp.lb, align 4, !dbg !55, !tbaa !20
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !46, metadata !DIExpression()), !dbg !51
  store i32 499, i32* %.omp.ub, align 4, !dbg !55, !tbaa !20
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !47, metadata !DIExpression()), !dbg !51
  store i32 1, i32* %.omp.stride, align 4, !dbg !55, !tbaa !20
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !48, metadata !DIExpression()), !dbg !51
  store i32 0, i32* %.omp.is_last, align 4, !dbg !55, !tbaa !20
  %9 = bitcast i32* %i to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %i, metadata !49, metadata !DIExpression()), !dbg !51
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !54, !tbaa !27
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !54
  %12 = load i32, i32* %11, align 4, !dbg !54, !tbaa !20
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !54
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !55, !tbaa !20
  %cmp = icmp sgt i32 %13, 499, !dbg !55
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !55

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !55

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !55, !tbaa !20
  br label %cond.end, !dbg !55

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 499, %cond.true ], [ %14, %cond.false ], !dbg !55
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !55, !tbaa !20
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !55, !tbaa !20
  store i32 %15, i32* %.omp.iv, align 4, !dbg !55, !tbaa !20
  br label %omp.inner.for.cond, !dbg !54

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !55, !tbaa !20
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !55, !tbaa !20
  %cmp1 = icmp sle i32 %16, %17, !dbg !54
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !54

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !54

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !55, !tbaa !20
  %mul = mul nsw i32 %18, 2, !dbg !56
  %add = add nsw i32 0, %mul, !dbg !56
  store i32 %add, i32* %i, align 4, !dbg !56, !tbaa !20
  %19 = load i32, i32* %i, align 4, !dbg !57, !tbaa !20
  %20 = load i32, i32* %i, align 4, !dbg !59, !tbaa !20
  %idxprom = sext i32 %20 to i64, !dbg !60
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom, !dbg !60
  store i32 %19, i32* %arrayidx, align 4, !dbg !61, !tbaa !20
  %21 = load i32, i32* %i, align 4, !dbg !62, !tbaa !20
  %22 = load i32, i32* %i, align 4, !dbg !63, !tbaa !20
  %add2 = add nsw i32 %22, 1, !dbg !64
  %idxprom3 = sext i32 %add2 to i64, !dbg !65
  %arrayidx4 = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom3, !dbg !65
  store i32 %21, i32* %arrayidx4, align 4, !dbg !66, !tbaa !20
  br label %omp.body.continue, !dbg !67

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !68

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !55, !tbaa !20
  %add5 = add nsw i32 %23, 1, !dbg !54
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !54, !tbaa !20
  br label %omp.inner.for.cond, !dbg !68, !llvm.loop !69

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !68

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !68
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %24, align 8, !dbg !68, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !68
  %25 = bitcast i32* %i to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !68
  %26 = bitcast i32* %.omp.is_last to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !68
  %27 = bitcast i32* %.omp.stride to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !68
  %28 = bitcast i32* %.omp.ub to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !68
  %29 = bitcast i32* %.omp.lb to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !68
  %30 = bitcast i32* %.omp.iv to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !68
  ret void, !dbg !71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x i32]* dereferenceable(4000) %A) #3 !dbg !72 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !78
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !78
  store i32* %N, i32** %N.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !76, metadata !DIExpression()), !dbg !78
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !77, metadata !DIExpression()), !dbg !78
  %0 = load i32*, i32** %N.addr, align 8, !dbg !79, !tbaa !50
  %1 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !79, !tbaa !50
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79, !tbaa !50
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !79, !tbaa !50
  %4 = load i32*, i32** %N.addr, align 8, !dbg !79, !tbaa !50
  %5 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !79, !tbaa !50
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [1000 x i32]* %5) #4, !dbg !79
  ret void, !dbg !79
}

declare !callback !80 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/array-stride-2.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14}
!12 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 2, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!14 = !DILocalVariable(name: "A", scope: !7, file: !1, line: 3, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32000, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 1000)
!18 = !DILocation(line: 2, column: 3, scope: !7)
!19 = !DILocation(line: 2, column: 13, scope: !7)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 3, column: 3, scope: !7)
!25 = !DILocation(line: 3, column: 7, scope: !7)
!26 = !DILocation(line: 5, column: 1, scope: !7)
!27 = !{!28, !29, i64 16}
!28 = !{!"ident_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !29, i64 16}
!29 = !{!"any pointer", !22, i64 0}
!30 = !DILocation(line: 10, column: 1, scope: !7)
!31 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 6, type: !32, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34, !37, !38}
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !31, type: !34, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !31, type: !34, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "N", arg: 3, scope: !31, file: !1, line: 2, type: !37)
!43 = !DILocalVariable(name: "A", arg: 4, scope: !31, file: !1, line: 3, type: !38)
!44 = !DILocalVariable(name: ".omp.iv", scope: !31, type: !10, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.lb", scope: !31, type: !10, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.ub", scope: !31, type: !10, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.stride", scope: !31, type: !10, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.is_last", scope: !31, type: !10, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "i", scope: !31, type: !10, flags: DIFlagArtificial)
!50 = !{!29, !29, i64 0}
!51 = !DILocation(line: 0, scope: !31)
!52 = !DILocation(line: 2, column: 13, scope: !31)
!53 = !DILocation(line: 3, column: 7, scope: !31)
!54 = !DILocation(line: 6, column: 3, scope: !31)
!55 = !DILocation(line: 6, column: 8, scope: !31)
!56 = !DILocation(line: 6, column: 30, scope: !31)
!57 = !DILocation(line: 7, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !31, file: !1, line: 6, column: 38)
!59 = !DILocation(line: 7, column: 7, scope: !58)
!60 = !DILocation(line: 7, column: 5, scope: !58)
!61 = !DILocation(line: 7, column: 10, scope: !58)
!62 = !DILocation(line: 8, column: 16, scope: !58)
!63 = !DILocation(line: 8, column: 7, scope: !58)
!64 = !DILocation(line: 8, column: 9, scope: !58)
!65 = !DILocation(line: 8, column: 5, scope: !58)
!66 = !DILocation(line: 8, column: 14, scope: !58)
!67 = !DILocation(line: 9, column: 3, scope: !58)
!68 = !DILocation(line: 5, column: 1, scope: !31)
!69 = distinct !{!69, !68, !70}
!70 = !DILocation(line: 5, column: 25, scope: !31)
!71 = !DILocation(line: 9, column: 3, scope: !31)
!72 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 6, type: !32, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !72, type: !34, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !72, type: !34, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "N", arg: 3, scope: !72, type: !37, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "A", arg: 4, scope: !72, type: !38, flags: DIFlagArtificial)
!78 = !DILocation(line: 0, scope: !72)
!79 = !DILocation(line: 6, column: 3, scope: !72)
!80 = !{!81}
!81 = !{i64 2, i64 -1, i64 -1, i1 true}
