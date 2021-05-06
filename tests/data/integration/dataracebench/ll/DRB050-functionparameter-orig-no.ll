; ModuleID = 'DRB050-functionparameter-orig-no.c'
source_filename = "DRB050-functionparameter-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@o1 = dso_local global [100 x double] zeroinitializer, align 16, !dbg !0
@c = dso_local global [100 x double] zeroinitializer, align 16, !dbg !6
@0 = private unnamed_addr constant [48 x i8] c";DRB050-functionparameter-orig-no.c;foo1;53;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [49 x i8] c";DRB050-functionparameter-orig-no.c;foo1;53;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo1(double* %o1, double* %c, i32 %len) #0 !dbg !18 {
entry:
  %o1.addr = alloca double*, align 8
  %c.addr = alloca double*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double* %o1, double** %o1.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata double** %o1.addr, metadata !24, metadata !DIExpression()), !dbg !32
  store double* %c, double** %c.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata double** %c.addr, metadata !25, metadata !DIExpression()), !dbg !33
  store i32 %len, i32* %len.addr, align 4, !tbaa !34
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !26, metadata !DIExpression()), !dbg !36
  %0 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !DIExpression()), !dbg !38
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len.addr, double** %c.addr, double** %o1.addr), !dbg !39
  %1 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #4, !dbg !40
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, double** nonnull align 8 dereferenceable(8) %c, double** nonnull align 8 dereferenceable(8) %o1) #3 !dbg !41 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %c.addr = alloca double**, align 8
  %o1.addr = alloca double**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i3 = alloca i32, align 4
  %volnew_o8 = alloca double, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !51, metadata !DIExpression()), !dbg !65
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !52, metadata !DIExpression()), !dbg !65
  store i32* %len, i32** %len.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !53, metadata !DIExpression()), !dbg !66
  store double** %c, double*** %c.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata double*** %c.addr, metadata !54, metadata !DIExpression()), !dbg !67
  store double** %o1, double*** %o1.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata double*** %o1.addr, metadata !55, metadata !DIExpression()), !dbg !68
  %0 = load i32*, i32** %len.addr, align 8, !dbg !69, !tbaa !28
  %1 = load double**, double*** %c.addr, align 8, !dbg !69, !tbaa !28
  %2 = load double**, double*** %o1.addr, align 8, !dbg !69, !tbaa !28
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !56, metadata !DIExpression()), !dbg !65
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !57, metadata !DIExpression()), !dbg !65
  %5 = load i32, i32* %0, align 4, !dbg !70, !tbaa !34
  store i32 %5, i32* %.capture_expr., align 4, !dbg !70, !tbaa !34
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !57, metadata !DIExpression()), !dbg !65
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !70, !tbaa !34
  %sub = sub nsw i32 %7, 0, !dbg !69
  %div = sdiv i32 %sub, 1, !dbg !69
  %sub2 = sub nsw i32 %div, 1, !dbg !69
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !34
  %8 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !58, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %i, align 4, !dbg !71, !tbaa !34
  %9 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !69
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !70, !tbaa !34
  %cmp = icmp slt i32 0, %10, !dbg !69
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !69

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !59, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %.omp.lb, align 4, !dbg !72, !tbaa !34
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !60, metadata !DIExpression()), !dbg !65
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !34
  store i32 %13, i32* %.omp.ub, align 4, !dbg !72, !tbaa !34
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !61, metadata !DIExpression()), !dbg !65
  store i32 1, i32* %.omp.stride, align 4, !dbg !72, !tbaa !34
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !62, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %.omp.is_last, align 4, !dbg !72, !tbaa !34
  %16 = bitcast i32* %i3 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !58, metadata !DIExpression()), !dbg !65
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !69
  %18 = load i32, i32* %17, align 4, !dbg !69, !tbaa !34
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !73
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !34
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !34
  %cmp4 = icmp sgt i32 %19, %20, !dbg !72
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !72

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !34
  br label %cond.end, !dbg !72

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !34
  br label %cond.end, !dbg !72

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !72
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !72, !tbaa !34
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !72, !tbaa !34
  store i32 %23, i32* %.omp.iv, align 4, !dbg !72, !tbaa !34
  br label %omp.inner.for.cond, !dbg !69

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !34
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !34
  %cmp5 = icmp sle i32 %24, %25, !dbg !69
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !69

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !69

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !34
  %mul = mul nsw i32 %26, 1, !dbg !71
  %add = add nsw i32 0, %mul, !dbg !71
  store i32 %add, i32* %i3, align 4, !dbg !71, !tbaa !34
  %27 = bitcast double* %volnew_o8 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #4, !dbg !74
  call void @llvm.dbg.declare(metadata double* %volnew_o8, metadata !63, metadata !DIExpression()), !dbg !75
  %28 = load double*, double** %1, align 8, !dbg !76, !tbaa !28
  %29 = load i32, i32* %i3, align 4, !dbg !77, !tbaa !34
  %idxprom = sext i32 %29 to i64, !dbg !76
  %arrayidx = getelementptr inbounds double, double* %28, i64 %idxprom, !dbg !76
  %30 = load double, double* %arrayidx, align 8, !dbg !76, !tbaa !78
  %mul6 = fmul double 5.000000e-01, %30, !dbg !80
  store double %mul6, double* %volnew_o8, align 8, !dbg !75, !tbaa !78
  %31 = load double, double* %volnew_o8, align 8, !dbg !81, !tbaa !78
  %32 = load double*, double** %2, align 8, !dbg !82, !tbaa !28
  %33 = load i32, i32* %i3, align 4, !dbg !83, !tbaa !34
  %idxprom7 = sext i32 %33 to i64, !dbg !82
  %arrayidx8 = getelementptr inbounds double, double* %32, i64 %idxprom7, !dbg !82
  store double %31, double* %arrayidx8, align 8, !dbg !84, !tbaa !78
  %34 = bitcast double* %volnew_o8 to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #4, !dbg !85
  br label %omp.body.continue, !dbg !86

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !73

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %35 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !34
  %add9 = add nsw i32 %35, 1, !dbg !69
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !69, !tbaa !34
  br label %omp.inner.for.cond, !dbg !73, !llvm.loop !87

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !73

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %36 = load i32*, i32** %.global_tid..addr, align 8, !dbg !73
  %37 = load i32, i32* %36, align 4, !dbg !73, !tbaa !34
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %37), !dbg !88
  %38 = bitcast i32* %i3 to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !73
  %39 = bitcast i32* %.omp.is_last to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !73
  %40 = bitcast i32* %.omp.stride to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !73
  %41 = bitcast i32* %.omp.ub to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !73
  %42 = bitcast i32* %.omp.lb to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !73
  br label %omp.precond.end, !dbg !73

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %43 = bitcast i32* %.capture_expr.1 to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !73
  %44 = bitcast i32* %.capture_expr. to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !73
  %45 = bitcast i32* %.omp.iv to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !73
  ret void, !dbg !85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, double** nonnull align 8 dereferenceable(8) %c, double** nonnull align 8 dereferenceable(8) %o1) #3 !dbg !89 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %c.addr = alloca double**, align 8
  %o1.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !91, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !92, metadata !DIExpression()), !dbg !96
  store i32* %len, i32** %len.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !93, metadata !DIExpression()), !dbg !96
  store double** %c, double*** %c.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata double*** %c.addr, metadata !94, metadata !DIExpression()), !dbg !96
  store double** %o1, double*** %o1.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata double*** %o1.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i32*, i32** %len.addr, align 8, !dbg !97, !tbaa !28
  %1 = load double**, double*** %c.addr, align 8, !dbg !97, !tbaa !28
  %2 = load double**, double*** %o1.addr, align 8, !dbg !97, !tbaa !28
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97, !tbaa !28
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !97, !tbaa !28
  %5 = load i32*, i32** %len.addr, align 8, !dbg !97, !tbaa !28
  %6 = load double**, double*** %c.addr, align 8, !dbg !97, !tbaa !28
  %7 = load double**, double*** %o1.addr, align 8, !dbg !97, !tbaa !28
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, double** %6, double** %7) #4, !dbg !97
  ret void, !dbg !97
}

; Function Attrs: nounwind
declare !callback !98 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !100 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo1(double* getelementptr inbounds ([100 x double], [100 x double]* @o1, i64 0, i64 0), double* getelementptr inbounds ([100 x double], [100 x double]* @c, i64 0, i64 0), i32 100), !dbg !103
  ret i32 0, !dbg !104
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "o1", scope: !2, file: !3, line: 60, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB050-functionparameter-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 61, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 6400, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 100)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{!"clang version 11.1.0"}
!18 = distinct !DISubprogram(name: "foo1", scope: !3, file: !3, line: 50, type: !19, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !21, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24, !25, !26, !27}
!24 = !DILocalVariable(name: "o1", arg: 1, scope: !18, file: !3, line: 50, type: !21)
!25 = !DILocalVariable(name: "c", arg: 2, scope: !18, file: !3, line: 50, type: !21)
!26 = !DILocalVariable(name: "len", arg: 3, scope: !18, file: !3, line: 50, type: !22)
!27 = !DILocalVariable(name: "i", scope: !18, file: !3, line: 52, type: !22)
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 50, column: 18, scope: !18)
!33 = !DILocation(line: 50, column: 31, scope: !18)
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !30, i64 0}
!36 = !DILocation(line: 50, column: 40, scope: !18)
!37 = !DILocation(line: 52, column: 3, scope: !18)
!38 = !DILocation(line: 52, column: 7, scope: !18)
!39 = !DILocation(line: 53, column: 1, scope: !18)
!40 = !DILocation(line: 58, column: 1, scope: !18)
!41 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 54, type: !42, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !44, !48, !49, !49}
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !57, !58, !59, !60, !61, !62, !58, !63}
!51 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !41, type: !44, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !41, type: !44, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "len", arg: 3, scope: !41, file: !3, line: 50, type: !48)
!54 = !DILocalVariable(name: "c", arg: 4, scope: !41, file: !3, line: 50, type: !49)
!55 = !DILocalVariable(name: "o1", arg: 5, scope: !41, file: !3, line: 50, type: !49)
!56 = !DILocalVariable(name: ".omp.iv", scope: !41, type: !22, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".capture_expr.", scope: !41, type: !22, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: "i", scope: !41, type: !22, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.lb", scope: !41, type: !22, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.ub", scope: !41, type: !22, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.stride", scope: !41, type: !22, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.is_last", scope: !41, type: !22, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "volnew_o8", scope: !64, file: !3, line: 55, type: !9)
!64 = distinct !DILexicalBlock(scope: !41, file: !3, line: 54, column: 29)
!65 = !DILocation(line: 0, scope: !41)
!66 = !DILocation(line: 50, column: 40, scope: !41)
!67 = !DILocation(line: 50, column: 31, scope: !41)
!68 = !DILocation(line: 50, column: 18, scope: !41)
!69 = !DILocation(line: 54, column: 3, scope: !41)
!70 = !DILocation(line: 54, column: 19, scope: !41)
!71 = !DILocation(line: 54, column: 24, scope: !41)
!72 = !DILocation(line: 54, column: 8, scope: !41)
!73 = !DILocation(line: 53, column: 1, scope: !41)
!74 = !DILocation(line: 55, column: 5, scope: !64)
!75 = !DILocation(line: 55, column: 12, scope: !64)
!76 = !DILocation(line: 55, column: 30, scope: !64)
!77 = !DILocation(line: 55, column: 32, scope: !64)
!78 = !{!79, !79, i64 0}
!79 = !{!"double", !30, i64 0}
!80 = !DILocation(line: 55, column: 28, scope: !64)
!81 = !DILocation(line: 56, column: 13, scope: !64)
!82 = !DILocation(line: 56, column: 5, scope: !64)
!83 = !DILocation(line: 56, column: 8, scope: !64)
!84 = !DILocation(line: 56, column: 11, scope: !64)
!85 = !DILocation(line: 57, column: 3, scope: !41)
!86 = !DILocation(line: 57, column: 3, scope: !64)
!87 = distinct !{!87, !73, !88}
!88 = !DILocation(line: 53, column: 25, scope: !41)
!89 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 53, type: !42, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!90 = !{!91, !92, !93, !94, !95}
!91 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !44, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !44, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "len", arg: 3, scope: !89, type: !48, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "c", arg: 4, scope: !89, type: !49, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "o1", arg: 5, scope: !89, type: !49, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !89)
!97 = !DILocation(line: 53, column: 1, scope: !89)
!98 = !{!99}
!99 = !{i64 2, i64 -1, i64 -1, i1 true}
!100 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !101, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!101 = !DISubroutineType(types: !102)
!102 = !{!22}
!103 = !DILocation(line: 64, column: 3, scope: !100)
!104 = !DILocation(line: 65, column: 3, scope: !100)
