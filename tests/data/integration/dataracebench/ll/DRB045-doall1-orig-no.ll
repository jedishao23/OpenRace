; ModuleID = 'DRB045-doall1-orig-no.c'
source_filename = "DRB045-doall1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [37 x i8] c";DRB045-doall1-orig-no.c;main;54;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [38 x i8] c";DRB045-doall1-orig-no.c;main;54;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !23
  %1 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #4, !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !26 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !34, metadata !DIExpression()), !dbg !46
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !35, metadata !DIExpression()), !dbg !46
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !36, metadata !DIExpression()), !dbg !46
  %1 = bitcast i32* %.omp.lb to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !37, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %.omp.lb, align 4, !dbg !48, !tbaa !49
  %2 = bitcast i32* %.omp.ub to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !38, metadata !DIExpression()), !dbg !46
  store i32 99, i32* %.omp.ub, align 4, !dbg !48, !tbaa !49
  %3 = bitcast i32* %.omp.stride to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !39, metadata !DIExpression()), !dbg !46
  store i32 1, i32* %.omp.stride, align 4, !dbg !48, !tbaa !49
  %4 = bitcast i32* %.omp.is_last to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !40, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %.omp.is_last, align 4, !dbg !48, !tbaa !49
  %5 = bitcast i32* %i to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %i, metadata !41, metadata !DIExpression()), !dbg !46
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !47
  %7 = load i32, i32* %6, align 4, !dbg !47, !tbaa !49
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !51
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !48, !tbaa !49
  %cmp = icmp sgt i32 %8, 99, !dbg !48
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !48

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !48

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !48, !tbaa !49
  br label %cond.end, !dbg !48

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %9, %cond.false ], !dbg !48
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !48, !tbaa !49
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !48, !tbaa !49
  store i32 %10, i32* %.omp.iv, align 4, !dbg !48, !tbaa !49
  br label %omp.inner.for.cond, !dbg !47

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !48, !tbaa !49
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !48, !tbaa !49
  %cmp1 = icmp sle i32 %11, %12, !dbg !47
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !47

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !47

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !48, !tbaa !49
  %mul = mul nsw i32 %13, 1, !dbg !52
  %add = add nsw i32 0, %mul, !dbg !52
  store i32 %add, i32* %i, align 4, !dbg !52, !tbaa !49
  %14 = load i32, i32* %i, align 4, !dbg !53, !tbaa !49
  %idxprom = sext i32 %14 to i64, !dbg !54
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !54
  %15 = load i32, i32* %arrayidx, align 4, !dbg !54, !tbaa !49
  %add2 = add nsw i32 %15, 1, !dbg !55
  %16 = load i32, i32* %i, align 4, !dbg !56, !tbaa !49
  %idxprom3 = sext i32 %16 to i64, !dbg !57
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom3, !dbg !57
  store i32 %add2, i32* %arrayidx4, align 4, !dbg !58, !tbaa !49
  br label %omp.body.continue, !dbg !57

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !51

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !48, !tbaa !49
  %add5 = add nsw i32 %17, 1, !dbg !47
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !47, !tbaa !49
  br label %omp.inner.for.cond, !dbg !51, !llvm.loop !59

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !51

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %7), !dbg !60
  %18 = bitcast i32* %i to i8*, !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !51
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !51
  %20 = bitcast i32* %.omp.stride to i8*, !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !51
  %21 = bitcast i32* %.omp.ub to i8*, !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !51
  %22 = bitcast i32* %.omp.lb to i8*, !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !51
  %23 = bitcast i32* %.omp.iv to i8*, !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !51
  ret void, !dbg !61
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !62 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !64, metadata !DIExpression()), !dbg !66
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !67, !tbaa !42
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !67, !tbaa !42
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !67
  ret void, !dbg !67
}

; Function Attrs: nounwind
declare !callback !68 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 50, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB045-doall1-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 51, type: !17, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7}
!19 = !{!20}
!20 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 53, type: !7)
!21 = !DILocation(line: 53, column: 1, scope: !16)
!22 = !DILocation(line: 53, column: 5, scope: !16)
!23 = !DILocation(line: 54, column: 1, scope: !16)
!24 = !DILocation(line: 58, column: 1, scope: !16)
!25 = !DILocation(line: 57, column: 3, scope: !16)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 55, type: !27, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41}
!34 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!35 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".omp.iv", scope: !26, type: !7, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".omp.lb", scope: !26, type: !7, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.ub", scope: !26, type: !7, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".omp.stride", scope: !26, type: !7, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.is_last", scope: !26, type: !7, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: "i", scope: !26, type: !7, flags: DIFlagArtificial)
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 0, scope: !26)
!47 = !DILocation(line: 55, column: 3, scope: !26)
!48 = !DILocation(line: 55, column: 8, scope: !26)
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !44, i64 0}
!51 = !DILocation(line: 54, column: 1, scope: !26)
!52 = !DILocation(line: 55, column: 18, scope: !26)
!53 = !DILocation(line: 56, column: 12, scope: !26)
!54 = !DILocation(line: 56, column: 10, scope: !26)
!55 = !DILocation(line: 56, column: 14, scope: !26)
!56 = !DILocation(line: 56, column: 7, scope: !26)
!57 = !DILocation(line: 56, column: 5, scope: !26)
!58 = !DILocation(line: 56, column: 9, scope: !26)
!59 = distinct !{!59, !51, !60}
!60 = !DILocation(line: 54, column: 25, scope: !26)
!61 = !DILocation(line: 56, column: 15, scope: !26)
!62 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 54, type: !27, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !62, type: !29, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !62, type: !29, flags: DIFlagArtificial)
!66 = !DILocation(line: 0, scope: !62)
!67 = !DILocation(line: 54, column: 1, scope: !62)
!68 = !{!69}
!69 = !{i64 2, i64 -1, i64 -1, i1 true}
