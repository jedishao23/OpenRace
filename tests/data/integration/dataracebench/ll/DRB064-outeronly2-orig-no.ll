; ModuleID = 'DRB064-outeronly2-orig-no.c'
source_filename = "DRB064-outeronly2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@b = dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !0
@n = dso_local global i32 100, align 4, !dbg !6
@m = dso_local global i32 100, align 4, !dbg !9
@0 = private unnamed_addr constant [40 x i8] c";DRB064-outeronly2-orig-no.c;foo;59;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [41 x i8] c";DRB064-outeronly2-orig-no.c;foo;59;36;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo() #0 !dbg !21 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = bitcast i32* %i to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !25, metadata !DIExpression()), !dbg !28
  %1 = bitcast i32* %j to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %j, metadata !26, metadata !DIExpression()), !dbg !29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !30
  %2 = bitcast i32* %j to i8*, !dbg !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !31
  %3 = bitcast i32* %i to i8*, !dbg !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !31
  ret void, !dbg !31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !32 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %i3 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !54
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !54
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !42, metadata !DIExpression()), !dbg !54
  %1 = bitcast i32* %.capture_expr. to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !43, metadata !DIExpression()), !dbg !54
  %2 = load i32, i32* @n, align 4, !dbg !56, !tbaa !57
  store i32 %2, i32* %.capture_expr., align 4, !dbg !56, !tbaa !57
  %3 = bitcast i32* %.capture_expr.1 to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !43, metadata !DIExpression()), !dbg !54
  %4 = load i32, i32* %.capture_expr., align 4, !dbg !56, !tbaa !57
  %sub = sub nsw i32 %4, 0, !dbg !55
  %div = sdiv i32 %sub, 1, !dbg !55
  %sub2 = sub nsw i32 %div, 1, !dbg !55
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !55, !tbaa !57
  %5 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %i, align 4, !dbg !59, !tbaa !57
  %6 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !55
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !56, !tbaa !57
  %cmp = icmp slt i32 0, %7, !dbg !55
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !55

omp.precond.then:                                 ; preds = %entry
  %8 = bitcast i32* %.omp.lb to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !45, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.lb, align 4, !dbg !60, !tbaa !57
  %9 = bitcast i32* %.omp.ub to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !46, metadata !DIExpression()), !dbg !54
  %10 = load i32, i32* %.capture_expr.1, align 4, !dbg !55, !tbaa !57
  store i32 %10, i32* %.omp.ub, align 4, !dbg !60, !tbaa !57
  %11 = bitcast i32* %.omp.stride to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !47, metadata !DIExpression()), !dbg !54
  store i32 1, i32* %.omp.stride, align 4, !dbg !60, !tbaa !57
  %12 = bitcast i32* %.omp.is_last to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !48, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.is_last, align 4, !dbg !60, !tbaa !57
  %13 = bitcast i32* %j to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %j, metadata !49, metadata !DIExpression()), !dbg !54
  %14 = bitcast i32* %i3 to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !44, metadata !DIExpression()), !dbg !54
  %15 = load i32*, i32** %.global_tid..addr, align 8, !dbg !55
  %16 = load i32, i32* %15, align 4, !dbg !55, !tbaa !57
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %16, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !61
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !57
  %18 = load i32, i32* %.capture_expr.1, align 4, !dbg !55, !tbaa !57
  %cmp4 = icmp sgt i32 %17, %18, !dbg !60
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !60

cond.true:                                        ; preds = %omp.precond.then
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !55, !tbaa !57
  br label %cond.end, !dbg !60

cond.false:                                       ; preds = %omp.precond.then
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !57
  br label %cond.end, !dbg !60

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !60
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !60, !tbaa !57
  %21 = load i32, i32* %.omp.lb, align 4, !dbg !60, !tbaa !57
  store i32 %21, i32* %.omp.iv, align 4, !dbg !60, !tbaa !57
  br label %omp.inner.for.cond, !dbg !55

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !57
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !57
  %cmp5 = icmp sle i32 %22, %23, !dbg !55
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !55

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !55

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !57
  %mul = mul nsw i32 %24, 1, !dbg !59
  %add = add nsw i32 0, %mul, !dbg !59
  store i32 %add, i32* %i3, align 4, !dbg !59, !tbaa !57
  store i32 1, i32* %j, align 4, !dbg !62, !tbaa !57
  br label %for.cond, !dbg !64

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %25 = load i32, i32* %j, align 4, !dbg !65, !tbaa !57
  %26 = load i32, i32* @m, align 4, !dbg !67, !tbaa !57
  %cmp6 = icmp slt i32 %25, %26, !dbg !68
  br i1 %cmp6, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i3, align 4, !dbg !70, !tbaa !57
  %idxprom = sext i32 %27 to i64, !dbg !71
  %arrayidx = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %idxprom, !dbg !71
  %28 = load i32, i32* %j, align 4, !dbg !72, !tbaa !57
  %sub7 = sub nsw i32 %28, 1, !dbg !73
  %idxprom8 = sext i32 %sub7 to i64, !dbg !71
  %arrayidx9 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx, i64 0, i64 %idxprom8, !dbg !71
  %29 = load double, double* %arrayidx9, align 8, !dbg !71, !tbaa !74
  %30 = load i32, i32* %i3, align 4, !dbg !76, !tbaa !57
  %idxprom10 = sext i32 %30 to i64, !dbg !77
  %arrayidx11 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %idxprom10, !dbg !77
  %31 = load i32, i32* %j, align 4, !dbg !78, !tbaa !57
  %idxprom12 = sext i32 %31 to i64, !dbg !77
  %arrayidx13 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx11, i64 0, i64 %idxprom12, !dbg !77
  store double %29, double* %arrayidx13, align 8, !dbg !79, !tbaa !74
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %j, align 4, !dbg !80, !tbaa !57
  %inc = add nsw i32 %32, 1, !dbg !80
  store i32 %inc, i32* %j, align 4, !dbg !80, !tbaa !57
  br label %for.cond, !dbg !81, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !83

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !61

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !57
  %add14 = add nsw i32 %33, 1, !dbg !55
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !55, !tbaa !57
  br label %omp.inner.for.cond, !dbg !61, !llvm.loop !85

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !61

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !61
  %35 = load i32, i32* %34, align 4, !dbg !61, !tbaa !57
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %35), !dbg !86
  %36 = bitcast i32* %i3 to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !61
  %37 = bitcast i32* %j to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !61
  %38 = bitcast i32* %.omp.is_last to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !61
  %39 = bitcast i32* %.omp.stride to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !61
  %40 = bitcast i32* %.omp.ub to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !61
  %41 = bitcast i32* %.omp.lb to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !61
  br label %omp.precond.end, !dbg !61

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %42 = bitcast i32* %.capture_expr.1 to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !61
  %43 = bitcast i32* %.capture_expr. to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !61
  %44 = bitcast i32* %.omp.iv to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !61
  ret void, !dbg !87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !88 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !90, metadata !DIExpression()), !dbg !92
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !93, !tbaa !50
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !93, !tbaa !50
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !93
  ret void, !dbg !93
}

; Function Attrs: nounwind
declare !callback !94 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !96 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo(), !dbg !99
  ret i32 0, !dbg !100
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB064-outeronly2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !9}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 53, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 53, type: !8, isLocal: false, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640000, elements: !13)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14, !14}
!14 = !DISubrange(count: 100)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{!"clang version 11.1.0"}
!21 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 56, type: !22, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{null}
!24 = !{!25, !26}
!25 = !DILocalVariable(name: "i", scope: !21, file: !3, line: 58, type: !8)
!26 = !DILocalVariable(name: "j", scope: !21, file: !3, line: 58, type: !8)
!27 = !DILocation(line: 58, column: 3, scope: !21)
!28 = !DILocation(line: 58, column: 7, scope: !21)
!29 = !DILocation(line: 58, column: 9, scope: !21)
!30 = !DILocation(line: 59, column: 1, scope: !21)
!31 = !DILocation(line: 63, column: 1, scope: !21)
!32 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !33, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!39 = !{!40, !41, !42, !43, !43, !44, !45, !46, !47, !48, !49, !44}
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !32, type: !35, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !32, type: !35, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.iv", scope: !32, type: !8, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".capture_expr.", scope: !32, type: !8, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: "i", scope: !32, type: !8, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.lb", scope: !32, type: !8, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.ub", scope: !32, type: !8, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.stride", scope: !32, type: !8, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.is_last", scope: !32, type: !8, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "j", scope: !32, type: !8, flags: DIFlagArtificial)
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 0, scope: !32)
!55 = !DILocation(line: 60, column: 3, scope: !32)
!56 = !DILocation(line: 60, column: 14, scope: !32)
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !52, i64 0}
!59 = !DILocation(line: 60, column: 16, scope: !32)
!60 = !DILocation(line: 60, column: 8, scope: !32)
!61 = !DILocation(line: 59, column: 1, scope: !32)
!62 = !DILocation(line: 61, column: 11, scope: !63)
!63 = distinct !DILexicalBlock(scope: !32, file: !3, line: 61, column: 5)
!64 = !DILocation(line: 61, column: 10, scope: !63)
!65 = !DILocation(line: 61, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !3, line: 61, column: 5)
!67 = !DILocation(line: 61, column: 16, scope: !66)
!68 = !DILocation(line: 61, column: 15, scope: !66)
!69 = !DILocation(line: 61, column: 5, scope: !63)
!70 = !DILocation(line: 62, column: 17, scope: !66)
!71 = !DILocation(line: 62, column: 15, scope: !66)
!72 = !DILocation(line: 62, column: 20, scope: !66)
!73 = !DILocation(line: 62, column: 21, scope: !66)
!74 = !{!75, !75, i64 0}
!75 = !{!"double", !52, i64 0}
!76 = !DILocation(line: 62, column: 9, scope: !66)
!77 = !DILocation(line: 62, column: 7, scope: !66)
!78 = !DILocation(line: 62, column: 12, scope: !66)
!79 = !DILocation(line: 62, column: 14, scope: !66)
!80 = !DILocation(line: 61, column: 19, scope: !66)
!81 = !DILocation(line: 61, column: 5, scope: !66)
!82 = distinct !{!82, !69, !83, !84}
!83 = !DILocation(line: 62, column: 23, scope: !63)
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !61, !86}
!86 = !DILocation(line: 59, column: 36, scope: !32)
!87 = !DILocation(line: 62, column: 23, scope: !32)
!88 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 59, type: !33, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!89 = !{!90, !91}
!90 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !88, type: !35, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !88, type: !35, flags: DIFlagArtificial)
!92 = !DILocation(line: 0, scope: !88)
!93 = !DILocation(line: 59, column: 1, scope: !88)
!94 = !{!95}
!95 = !{i64 2, i64 -1, i64 -1, i1 true}
!96 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 65, type: !97, scopeLine: 66, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!97 = !DISubroutineType(types: !98)
!98 = !{!8}
!99 = !DILocation(line: 67, column: 3, scope: !96)
!100 = !DILocation(line: 68, column: 3, scope: !96)
