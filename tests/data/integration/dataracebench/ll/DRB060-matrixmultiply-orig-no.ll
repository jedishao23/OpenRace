; ModuleID = 'DRB060-matrixmultiply-orig-no.c'
source_filename = "DRB060-matrixmultiply-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !0
@b = dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !6
@c = dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !12
@0 = private unnamed_addr constant [44 x i8] c";DRB060-matrixmultiply-orig-no.c;mmm;59;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [45 x i8] c";DRB060-matrixmultiply-orig-no.c;mmm;59;38;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mmm() #0 !dbg !20 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %0 = bitcast i32* %i to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !25, metadata !DIExpression()), !dbg !29
  %1 = bitcast i32* %j to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !26, metadata !DIExpression()), !dbg !30
  %2 = bitcast i32* %k to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %k, metadata !27, metadata !DIExpression()), !dbg !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !32
  %3 = bitcast i32* %k to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !33
  %4 = bitcast i32* %j to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !33
  %5 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !33
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
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !43, metadata !DIExpression()), !dbg !57
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !44, metadata !DIExpression()), !dbg !57
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !45, metadata !DIExpression()), !dbg !57
  %1 = bitcast i32* %.omp.lb to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !46, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %.omp.lb, align 4, !dbg !59, !tbaa !60
  %2 = bitcast i32* %.omp.ub to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !47, metadata !DIExpression()), !dbg !57
  store i32 99, i32* %.omp.ub, align 4, !dbg !59, !tbaa !60
  %3 = bitcast i32* %.omp.stride to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !48, metadata !DIExpression()), !dbg !57
  store i32 1, i32* %.omp.stride, align 4, !dbg !59, !tbaa !60
  %4 = bitcast i32* %.omp.is_last to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !49, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %.omp.is_last, align 4, !dbg !59, !tbaa !60
  %5 = bitcast i32* %j to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %j, metadata !50, metadata !DIExpression()), !dbg !57
  %6 = bitcast i32* %k to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %k, metadata !51, metadata !DIExpression()), !dbg !57
  %7 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !57
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !58
  %9 = load i32, i32* %8, align 4, !dbg !58, !tbaa !60
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %9, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !62
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !59, !tbaa !60
  %cmp = icmp sgt i32 %10, 99, !dbg !59
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !59

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !59

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !59, !tbaa !60
  br label %cond.end, !dbg !59

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %11, %cond.false ], !dbg !59
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !59, !tbaa !60
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !59, !tbaa !60
  store i32 %12, i32* %.omp.iv, align 4, !dbg !59, !tbaa !60
  br label %omp.inner.for.cond, !dbg !58

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !59, !tbaa !60
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !59, !tbaa !60
  %cmp1 = icmp sle i32 %13, %14, !dbg !58
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !58

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !58

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !59, !tbaa !60
  %mul = mul nsw i32 %15, 1, !dbg !63
  %add = add nsw i32 0, %mul, !dbg !63
  store i32 %add, i32* %i, align 4, !dbg !63, !tbaa !60
  store i32 0, i32* %k, align 4, !dbg !64, !tbaa !60
  br label %for.cond, !dbg !66

for.cond:                                         ; preds = %for.inc22, %omp.inner.for.body
  %16 = load i32, i32* %k, align 4, !dbg !67, !tbaa !60
  %cmp2 = icmp slt i32 %16, 100, !dbg !69
  br i1 %cmp2, label %for.body, label %for.end24, !dbg !70

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !71, !tbaa !60
  br label %for.cond3, !dbg !73

for.cond3:                                        ; preds = %for.inc, %for.body
  %17 = load i32, i32* %j, align 4, !dbg !74, !tbaa !60
  %cmp4 = icmp slt i32 %17, 100, !dbg !76
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !77

for.body5:                                        ; preds = %for.cond3
  %18 = load i32, i32* %i, align 4, !dbg !78, !tbaa !60
  %idxprom = sext i32 %18 to i64, !dbg !79
  %arrayidx = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @c, i64 0, i64 %idxprom, !dbg !79
  %19 = load i32, i32* %j, align 4, !dbg !80, !tbaa !60
  %idxprom6 = sext i32 %19 to i64, !dbg !79
  %arrayidx7 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx, i64 0, i64 %idxprom6, !dbg !79
  %20 = load double, double* %arrayidx7, align 8, !dbg !79, !tbaa !81
  %21 = load i32, i32* %i, align 4, !dbg !83, !tbaa !60
  %idxprom8 = sext i32 %21 to i64, !dbg !84
  %arrayidx9 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @a, i64 0, i64 %idxprom8, !dbg !84
  %22 = load i32, i32* %k, align 4, !dbg !85, !tbaa !60
  %idxprom10 = sext i32 %22 to i64, !dbg !84
  %arrayidx11 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx9, i64 0, i64 %idxprom10, !dbg !84
  %23 = load double, double* %arrayidx11, align 8, !dbg !84, !tbaa !81
  %24 = load i32, i32* %k, align 4, !dbg !86, !tbaa !60
  %idxprom12 = sext i32 %24 to i64, !dbg !87
  %arrayidx13 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %idxprom12, !dbg !87
  %25 = load i32, i32* %j, align 4, !dbg !88, !tbaa !60
  %idxprom14 = sext i32 %25 to i64, !dbg !87
  %arrayidx15 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx13, i64 0, i64 %idxprom14, !dbg !87
  %26 = load double, double* %arrayidx15, align 8, !dbg !87, !tbaa !81
  %mul16 = fmul double %23, %26, !dbg !89
  %add17 = fadd double %20, %mul16, !dbg !90
  %27 = load i32, i32* %i, align 4, !dbg !91, !tbaa !60
  %idxprom18 = sext i32 %27 to i64, !dbg !92
  %arrayidx19 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @c, i64 0, i64 %idxprom18, !dbg !92
  %28 = load i32, i32* %j, align 4, !dbg !93, !tbaa !60
  %idxprom20 = sext i32 %28 to i64, !dbg !92
  %arrayidx21 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx19, i64 0, i64 %idxprom20, !dbg !92
  store double %add17, double* %arrayidx21, align 8, !dbg !94, !tbaa !81
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body5
  %29 = load i32, i32* %j, align 4, !dbg !95, !tbaa !60
  %inc = add nsw i32 %29, 1, !dbg !95
  store i32 %inc, i32* %j, align 4, !dbg !95, !tbaa !60
  br label %for.cond3, !dbg !96, !llvm.loop !97

for.end:                                          ; preds = %for.cond3
  br label %for.inc22, !dbg !98

for.inc22:                                        ; preds = %for.end
  %30 = load i32, i32* %k, align 4, !dbg !100, !tbaa !60
  %inc23 = add nsw i32 %30, 1, !dbg !100
  store i32 %inc23, i32* %k, align 4, !dbg !100, !tbaa !60
  br label %for.cond, !dbg !101, !llvm.loop !102

for.end24:                                        ; preds = %for.cond
  br label %omp.body.continue, !dbg !103

omp.body.continue:                                ; preds = %for.end24
  br label %omp.inner.for.inc, !dbg !62

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !59, !tbaa !60
  %add25 = add nsw i32 %31, 1, !dbg !58
  store i32 %add25, i32* %.omp.iv, align 4, !dbg !58, !tbaa !60
  br label %omp.inner.for.cond, !dbg !62, !llvm.loop !104

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !62

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %9), !dbg !105
  %32 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !62
  %33 = bitcast i32* %k to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !62
  %34 = bitcast i32* %j to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !62
  %35 = bitcast i32* %.omp.is_last to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !62
  %36 = bitcast i32* %.omp.stride to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !62
  %37 = bitcast i32* %.omp.ub to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !62
  %38 = bitcast i32* %.omp.lb to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !62
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !62
  ret void, !dbg !106
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !107 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !109, metadata !DIExpression()), !dbg !111
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112, !tbaa !53
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !112, !tbaa !53
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !112
  ret void, !dbg !112
}

; Function Attrs: nounwind
declare !callback !113 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !115 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @mmm(), !dbg !116
  ret i32 0, !dbg !117
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB060-matrixmultiply-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640000, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11, !11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{!"clang version 11.1.0"}
!20 = distinct !DISubprogram(name: "mmm", scope: !3, file: !3, line: 56, type: !21, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27}
!25 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 58, type: !23)
!26 = !DILocalVariable(name: "j", scope: !20, file: !3, line: 58, type: !23)
!27 = !DILocalVariable(name: "k", scope: !20, file: !3, line: 58, type: !23)
!28 = !DILocation(line: 58, column: 3, scope: !20)
!29 = !DILocation(line: 58, column: 7, scope: !20)
!30 = !DILocation(line: 58, column: 9, scope: !20)
!31 = !DILocation(line: 58, column: 11, scope: !20)
!32 = !DILocation(line: 59, column: 1, scope: !20)
!33 = !DILocation(line: 65, column: 1, scope: !20)
!34 = !DILocation(line: 64, column: 3, scope: !20)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !36, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!43 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.iv", scope: !35, type: !23, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.lb", scope: !35, type: !23, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.ub", scope: !35, type: !23, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.stride", scope: !35, type: !23, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.is_last", scope: !35, type: !23, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "j", scope: !35, type: !23, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "k", scope: !35, type: !23, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "i", scope: !35, type: !23, flags: DIFlagArtificial)
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 0, scope: !35)
!58 = !DILocation(line: 60, column: 3, scope: !35)
!59 = !DILocation(line: 60, column: 8, scope: !35)
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !55, i64 0}
!62 = !DILocation(line: 59, column: 1, scope: !35)
!63 = !DILocation(line: 60, column: 22, scope: !35)
!64 = !DILocation(line: 61, column: 12, scope: !65)
!65 = distinct !DILexicalBlock(scope: !35, file: !3, line: 61, column: 5)
!66 = !DILocation(line: 61, column: 10, scope: !65)
!67 = !DILocation(line: 61, column: 17, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !3, line: 61, column: 5)
!69 = !DILocation(line: 61, column: 19, scope: !68)
!70 = !DILocation(line: 61, column: 5, scope: !65)
!71 = !DILocation(line: 62, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 62, column: 7)
!73 = !DILocation(line: 62, column: 12, scope: !72)
!74 = !DILocation(line: 62, column: 19, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !3, line: 62, column: 7)
!76 = !DILocation(line: 62, column: 21, scope: !75)
!77 = !DILocation(line: 62, column: 7, scope: !72)
!78 = !DILocation(line: 63, column: 20, scope: !75)
!79 = !DILocation(line: 63, column: 18, scope: !75)
!80 = !DILocation(line: 63, column: 23, scope: !75)
!81 = !{!82, !82, i64 0}
!82 = !{!"double", !55, i64 0}
!83 = !DILocation(line: 63, column: 28, scope: !75)
!84 = !DILocation(line: 63, column: 26, scope: !75)
!85 = !DILocation(line: 63, column: 31, scope: !75)
!86 = !DILocation(line: 63, column: 36, scope: !75)
!87 = !DILocation(line: 63, column: 34, scope: !75)
!88 = !DILocation(line: 63, column: 39, scope: !75)
!89 = !DILocation(line: 63, column: 33, scope: !75)
!90 = !DILocation(line: 63, column: 25, scope: !75)
!91 = !DILocation(line: 63, column: 11, scope: !75)
!92 = !DILocation(line: 63, column: 9, scope: !75)
!93 = !DILocation(line: 63, column: 14, scope: !75)
!94 = !DILocation(line: 63, column: 16, scope: !75)
!95 = !DILocation(line: 62, column: 27, scope: !75)
!96 = !DILocation(line: 62, column: 7, scope: !75)
!97 = distinct !{!97, !77, !98, !99}
!98 = !DILocation(line: 63, column: 40, scope: !72)
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !DILocation(line: 61, column: 25, scope: !68)
!101 = !DILocation(line: 61, column: 5, scope: !68)
!102 = distinct !{!102, !70, !103, !99}
!103 = !DILocation(line: 63, column: 40, scope: !65)
!104 = distinct !{!104, !62, !105}
!105 = !DILocation(line: 59, column: 38, scope: !35)
!106 = !DILocation(line: 63, column: 40, scope: !35)
!107 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 59, type: !36, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !108)
!108 = !{!109, !110}
!109 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !107, type: !38, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !107, type: !38, flags: DIFlagArtificial)
!111 = !DILocation(line: 0, scope: !107)
!112 = !DILocation(line: 59, column: 1, scope: !107)
!113 = !{!114}
!114 = !{i64 2, i64 -1, i64 -1, i1 true}
!115 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 67, type: !21, scopeLine: 68, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!116 = !DILocation(line: 69, column: 3, scope: !115)
!117 = !DILocation(line: 70, column: 3, scope: !115)
