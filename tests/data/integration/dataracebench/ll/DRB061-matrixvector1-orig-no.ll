; ModuleID = 'DRB061-matrixvector1-orig-no.c'
source_filename = "DRB061-matrixvector1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !0
@v = dso_local global [100 x double] zeroinitializer, align 16, !dbg !6
@v_out = dso_local global [100 x double] zeroinitializer, align 16, !dbg !12
@0 = private unnamed_addr constant [42 x i8] c";DRB061-matrixvector1-orig-no.c;mv;56;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [43 x i8] c";DRB061-matrixvector1-orig-no.c;mv;56;39;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mv() #0 !dbg !22 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = bitcast i32* %i to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !DIExpression()), !dbg !30
  %1 = bitcast i32* %j to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %j, metadata !28, metadata !DIExpression()), !dbg !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !32
  %2 = bitcast i32* %j to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !33
  %3 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !35 {
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
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %sum = alloca float, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !43, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !44, metadata !DIExpression()), !dbg !59
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !45, metadata !DIExpression()), !dbg !59
  %1 = bitcast i32* %.omp.lb to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !46, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.lb, align 4, !dbg !61, !tbaa !62
  %2 = bitcast i32* %.omp.ub to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !47, metadata !DIExpression()), !dbg !59
  store i32 99, i32* %.omp.ub, align 4, !dbg !61, !tbaa !62
  %3 = bitcast i32* %.omp.stride to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !48, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !61, !tbaa !62
  %4 = bitcast i32* %.omp.is_last to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !49, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !61, !tbaa !62
  %5 = bitcast i32* %i to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %i, metadata !50, metadata !DIExpression()), !dbg !59
  %6 = bitcast i32* %j to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %j, metadata !51, metadata !DIExpression()), !dbg !59
  %7 = bitcast i32* %i1 to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !50, metadata !DIExpression()), !dbg !59
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !60
  %9 = load i32, i32* %8, align 4, !dbg !60, !tbaa !62
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %9, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !64
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !61, !tbaa !62
  %cmp = icmp sgt i32 %10, 99, !dbg !61
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !61

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !61

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !61, !tbaa !62
  br label %cond.end, !dbg !61

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %11, %cond.false ], !dbg !61
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !61, !tbaa !62
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !61, !tbaa !62
  store i32 %12, i32* %.omp.iv, align 4, !dbg !61, !tbaa !62
  br label %omp.inner.for.cond, !dbg !60

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !61, !tbaa !62
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !61, !tbaa !62
  %cmp2 = icmp sle i32 %13, %14, !dbg !60
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !60

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !60

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !61, !tbaa !62
  %mul = mul nsw i32 %15, 1, !dbg !65
  %add = add nsw i32 0, %mul, !dbg !65
  store i32 %add, i32* %i, align 4, !dbg !65, !tbaa !62
  %16 = bitcast float* %sum to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !66
  call void @llvm.dbg.declare(metadata float* %sum, metadata !52, metadata !DIExpression()), !dbg !67
  store float 0.000000e+00, float* %sum, align 4, !dbg !67, !tbaa !68
  store i32 0, i32* %j, align 4, !dbg !70, !tbaa !62
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %17 = load i32, i32* %j, align 4, !dbg !73, !tbaa !62
  %cmp3 = icmp slt i32 %17, 100, !dbg !75
  br i1 %cmp3, label %for.body, label %for.end, !dbg !76

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4, !dbg !77, !tbaa !62
  %idxprom = sext i32 %18 to i64, !dbg !79
  %arrayidx = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @a, i64 0, i64 %idxprom, !dbg !79
  %19 = load i32, i32* %j, align 4, !dbg !80, !tbaa !62
  %idxprom4 = sext i32 %19 to i64, !dbg !79
  %arrayidx5 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx, i64 0, i64 %idxprom4, !dbg !79
  %20 = load double, double* %arrayidx5, align 8, !dbg !79, !tbaa !81
  %21 = load i32, i32* %j, align 4, !dbg !83, !tbaa !62
  %idxprom6 = sext i32 %21 to i64, !dbg !84
  %arrayidx7 = getelementptr inbounds [100 x double], [100 x double]* @v, i64 0, i64 %idxprom6, !dbg !84
  %22 = load double, double* %arrayidx7, align 8, !dbg !84, !tbaa !81
  %mul8 = fmul double %20, %22, !dbg !85
  %23 = load float, float* %sum, align 4, !dbg !86, !tbaa !68
  %conv = fpext float %23 to double, !dbg !86
  %add9 = fadd double %conv, %mul8, !dbg !86
  %conv10 = fptrunc double %add9 to float, !dbg !86
  store float %conv10, float* %sum, align 4, !dbg !86, !tbaa !68
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4, !dbg !88, !tbaa !62
  %inc = add nsw i32 %24, 1, !dbg !88
  store i32 %inc, i32* %j, align 4, !dbg !88, !tbaa !62
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  %25 = load float, float* %sum, align 4, !dbg !93, !tbaa !68
  %conv11 = fpext float %25 to double, !dbg !93
  %26 = load i32, i32* %i, align 4, !dbg !94, !tbaa !62
  %idxprom12 = sext i32 %26 to i64, !dbg !95
  %arrayidx13 = getelementptr inbounds [100 x double], [100 x double]* @v_out, i64 0, i64 %idxprom12, !dbg !95
  store double %conv11, double* %arrayidx13, align 8, !dbg !96, !tbaa !81
  %27 = bitcast float* %sum to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !97
  br label %omp.body.continue, !dbg !98

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !64

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !61, !tbaa !62
  %add14 = add nsw i32 %28, 1, !dbg !60
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !60, !tbaa !62
  br label %omp.inner.for.cond, !dbg !64, !llvm.loop !99

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !64

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %9), !dbg !100
  %29 = bitcast i32* %i1 to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !64
  %30 = bitcast i32* %j to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !64
  %31 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !64
  %32 = bitcast i32* %.omp.is_last to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !64
  %33 = bitcast i32* %.omp.stride to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !64
  %34 = bitcast i32* %.omp.ub to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !64
  %35 = bitcast i32* %.omp.lb to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !64
  %36 = bitcast i32* %.omp.iv to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !64
  ret void, !dbg !97
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !101 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !103, metadata !DIExpression()), !dbg !105
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106, !tbaa !55
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !106, !tbaa !55
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !106
  ret void, !dbg !106
}

; Function Attrs: nounwind
declare !callback !107 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !109 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @mv(), !dbg !110
  ret i32 0, !dbg !111
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 52, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB061-matrixvector1-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "v", scope: !2, file: !3, line: 52, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 6400, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "v_out", scope: !2, file: !3, line: 52, type: !8, isLocal: false, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640000, elements: !15)
!15 = !{!11, !11}
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{!"clang version 11.1.0"}
!22 = distinct !DISubprogram(name: "mv", scope: !3, file: !3, line: 53, type: !23, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!27, !28}
!27 = !DILocalVariable(name: "i", scope: !22, file: !3, line: 55, type: !25)
!28 = !DILocalVariable(name: "j", scope: !22, file: !3, line: 55, type: !25)
!29 = !DILocation(line: 55, column: 3, scope: !22)
!30 = !DILocation(line: 55, column: 7, scope: !22)
!31 = !DILocation(line: 55, column: 9, scope: !22)
!32 = !DILocation(line: 56, column: 1, scope: !22)
!33 = !DILocation(line: 67, column: 1, scope: !22)
!34 = !DILocation(line: 66, column: 3, scope: !22)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 57, type: !36, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !50, !52}
!43 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.iv", scope: !35, type: !25, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.lb", scope: !35, type: !25, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.ub", scope: !35, type: !25, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.stride", scope: !35, type: !25, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.is_last", scope: !35, type: !25, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "i", scope: !35, type: !25, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "j", scope: !35, type: !25, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "sum", scope: !53, file: !3, line: 59, type: !54)
!53 = distinct !DILexicalBlock(scope: !35, file: !3, line: 58, column: 3)
!54 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 0, scope: !35)
!60 = !DILocation(line: 57, column: 3, scope: !35)
!61 = !DILocation(line: 57, column: 8, scope: !35)
!62 = !{!63, !63, i64 0}
!63 = !{!"int", !57, i64 0}
!64 = !DILocation(line: 56, column: 1, scope: !35)
!65 = !DILocation(line: 57, column: 22, scope: !35)
!66 = !DILocation(line: 59, column: 5, scope: !53)
!67 = !DILocation(line: 59, column: 11, scope: !53)
!68 = !{!69, !69, i64 0}
!69 = !{!"float", !57, i64 0}
!70 = !DILocation(line: 60, column: 12, scope: !71)
!71 = distinct !DILexicalBlock(scope: !53, file: !3, line: 60, column: 5)
!72 = !DILocation(line: 60, column: 10, scope: !71)
!73 = !DILocation(line: 60, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !3, line: 60, column: 5)
!75 = !DILocation(line: 60, column: 19, scope: !74)
!76 = !DILocation(line: 60, column: 5, scope: !71)
!77 = !DILocation(line: 62, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !3, line: 61, column: 5)
!79 = !DILocation(line: 62, column: 14, scope: !78)
!80 = !DILocation(line: 62, column: 19, scope: !78)
!81 = !{!82, !82, i64 0}
!82 = !{!"double", !57, i64 0}
!83 = !DILocation(line: 62, column: 24, scope: !78)
!84 = !DILocation(line: 62, column: 22, scope: !78)
!85 = !DILocation(line: 62, column: 21, scope: !78)
!86 = !DILocation(line: 62, column: 11, scope: !78)
!87 = !DILocation(line: 63, column: 5, scope: !78)
!88 = !DILocation(line: 60, column: 25, scope: !74)
!89 = !DILocation(line: 60, column: 5, scope: !74)
!90 = distinct !{!90, !76, !91, !92}
!91 = !DILocation(line: 63, column: 5, scope: !71)
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !DILocation(line: 64, column: 16, scope: !53)
!94 = !DILocation(line: 64, column: 11, scope: !53)
!95 = !DILocation(line: 64, column: 5, scope: !53)
!96 = !DILocation(line: 64, column: 14, scope: !53)
!97 = !DILocation(line: 65, column: 3, scope: !35)
!98 = !DILocation(line: 65, column: 3, scope: !53)
!99 = distinct !{!99, !64, !100}
!100 = !DILocation(line: 56, column: 39, scope: !35)
!101 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 56, type: !36, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!102 = !{!103, !104}
!103 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !38, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !101, type: !38, flags: DIFlagArtificial)
!105 = !DILocation(line: 0, scope: !101)
!106 = !DILocation(line: 56, column: 1, scope: !101)
!107 = !{!108}
!108 = !{i64 2, i64 -1, i64 -1, i1 true}
!109 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 69, type: !23, scopeLine: 70, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!110 = !DILocation(line: 71, column: 3, scope: !109)
!111 = !DILocation(line: 72, column: 3, scope: !109)
