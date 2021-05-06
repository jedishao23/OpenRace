; ModuleID = 'DRB047-doallchar-orig-no.c'
source_filename = "DRB047-doallchar-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [100 x i8] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [40 x i8] c";DRB047-doallchar-orig-no.c;main;57;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [41 x i8] c";DRB047-doallchar-orig-no.c;main;57;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !24
  %1 = bitcast i32* %i to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #4, !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !27 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !47
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !47
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !37, metadata !DIExpression()), !dbg !47
  %1 = bitcast i32* %.omp.lb to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !38, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %.omp.lb, align 4, !dbg !49, !tbaa !50
  %2 = bitcast i32* %.omp.ub to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !39, metadata !DIExpression()), !dbg !47
  store i32 99, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  %3 = bitcast i32* %.omp.stride to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !40, metadata !DIExpression()), !dbg !47
  store i32 1, i32* %.omp.stride, align 4, !dbg !49, !tbaa !50
  %4 = bitcast i32* %.omp.is_last to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !41, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %.omp.is_last, align 4, !dbg !49, !tbaa !50
  %5 = bitcast i32* %i to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %i, metadata !42, metadata !DIExpression()), !dbg !47
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !48
  %7 = load i32, i32* %6, align 4, !dbg !48, !tbaa !50
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !52
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  %cmp = icmp sgt i32 %8, 99, !dbg !49
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !49

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !49

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  br label %cond.end, !dbg !49

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %9, %cond.false ], !dbg !49
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !49, !tbaa !50
  store i32 %10, i32* %.omp.iv, align 4, !dbg !49, !tbaa !50
  br label %omp.inner.for.cond, !dbg !48

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !50
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  %cmp1 = icmp sle i32 %11, %12, !dbg !48
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !48

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !48

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !50
  %mul = mul nsw i32 %13, 1, !dbg !53
  %add = add nsw i32 0, %mul, !dbg !53
  store i32 %add, i32* %i, align 4, !dbg !53, !tbaa !50
  %14 = load i32, i32* %i, align 4, !dbg !54, !tbaa !50
  %idxprom = sext i32 %14 to i64, !dbg !55
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* @a, i64 0, i64 %idxprom, !dbg !55
  %15 = load i8, i8* %arrayidx, align 1, !dbg !55, !tbaa !56
  %conv = sext i8 %15 to i32, !dbg !55
  %add2 = add nsw i32 %conv, 1, !dbg !57
  %conv3 = trunc i32 %add2 to i8, !dbg !55
  %16 = load i32, i32* %i, align 4, !dbg !58, !tbaa !50
  %idxprom4 = sext i32 %16 to i64, !dbg !59
  %arrayidx5 = getelementptr inbounds [100 x i8], [100 x i8]* @a, i64 0, i64 %idxprom4, !dbg !59
  store i8 %conv3, i8* %arrayidx5, align 1, !dbg !60, !tbaa !56
  br label %omp.body.continue, !dbg !59

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !52

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !50
  %add6 = add nsw i32 %17, 1, !dbg !48
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !48, !tbaa !50
  br label %omp.inner.for.cond, !dbg !52, !llvm.loop !61

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !52

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %7), !dbg !62
  %18 = bitcast i32* %i to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !52
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !52
  %20 = bitcast i32* %.omp.stride to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !52
  %21 = bitcast i32* %.omp.ub to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !52
  %22 = bitcast i32* %.omp.lb to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !52
  %23 = bitcast i32* %.omp.iv to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !52
  ret void, !dbg !63
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !68
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !69, !tbaa !43
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !69, !tbaa !43
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !69
  ret void, !dbg !69
}

; Function Attrs: nounwind
declare !callback !70 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 53, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB047-doallchar-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 800, elements: !8)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 54, type: !17, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21}
!21 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 56, type: !19)
!22 = !DILocation(line: 56, column: 3, scope: !16)
!23 = !DILocation(line: 56, column: 7, scope: !16)
!24 = !DILocation(line: 57, column: 1, scope: !16)
!25 = !DILocation(line: 61, column: 1, scope: !16)
!26 = !DILocation(line: 60, column: 3, scope: !16)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 58, type: !28, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !34)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".omp.iv", scope: !27, type: !19, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.lb", scope: !27, type: !19, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".omp.ub", scope: !27, type: !19, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.stride", scope: !27, type: !19, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.is_last", scope: !27, type: !19, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "i", scope: !27, type: !19, flags: DIFlagArtificial)
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 0, scope: !27)
!48 = !DILocation(line: 58, column: 3, scope: !27)
!49 = !DILocation(line: 58, column: 8, scope: !27)
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !45, i64 0}
!52 = !DILocation(line: 57, column: 1, scope: !27)
!53 = !DILocation(line: 58, column: 18, scope: !27)
!54 = !DILocation(line: 59, column: 12, scope: !27)
!55 = !DILocation(line: 59, column: 10, scope: !27)
!56 = !{!45, !45, i64 0}
!57 = !DILocation(line: 59, column: 14, scope: !27)
!58 = !DILocation(line: 59, column: 7, scope: !27)
!59 = !DILocation(line: 59, column: 5, scope: !27)
!60 = !DILocation(line: 59, column: 9, scope: !27)
!61 = distinct !{!61, !52, !62}
!62 = !DILocation(line: 57, column: 25, scope: !27)
!63 = !DILocation(line: 59, column: 15, scope: !27)
!64 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 57, type: !28, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!65 = !{!66, !67}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !30, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !30, flags: DIFlagArtificial)
!68 = !DILocation(line: 0, scope: !64)
!69 = !DILocation(line: 57, column: 1, scope: !64)
!70 = !{!71}
!71 = !{i64 2, i64 -1, i64 -1, i1 true}
