; ModuleID = 'DRB037-truedepseconddimension-orig-yes.c'
source_filename = "DRB037-truedepseconddimension-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@b = dso_local global [1000 x [1000 x double]] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [54 x i8] c";DRB037-truedepseconddimension-orig-yes.c;main;61;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [55 x i8] c";DRB037-truedepseconddimension-orig-yes.c;main;61;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"b[500][500]=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !24, metadata !DIExpression()), !dbg !34
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !25, metadata !DIExpression()), !dbg !37
  %0 = bitcast i32* %i to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !39
  %1 = bitcast i32* %j to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %j, metadata !27, metadata !DIExpression()), !dbg !40
  %2 = bitcast i32* %n to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %n, metadata !28, metadata !DIExpression()), !dbg !42
  store i32 1000, i32* %n, align 4, !dbg !42, !tbaa !30
  %3 = bitcast i32* %m to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %m, metadata !29, metadata !DIExpression()), !dbg !43
  store i32 1000, i32* %m, align 4, !dbg !43, !tbaa !30
  store i32 0, i32* %i, align 4, !dbg !44, !tbaa !30
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !47, !tbaa !30
  %5 = load i32, i32* %n, align 4, !dbg !49, !tbaa !30
  %cmp = icmp slt i32 %4, %5, !dbg !50
  br i1 %cmp, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, i32* %i), !dbg !52
  br label %for.inc, !dbg !53

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !55, !tbaa !30
  %inc = add nsw i32 %6, 1, !dbg !55
  store i32 %inc, i32* %i, align 4, !dbg !55, !tbaa !30
  br label %for.cond, !dbg !56, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %7 = load double, double* getelementptr inbounds ([1000 x [1000 x double]], [1000 x [1000 x double]]* @b, i64 0, i64 500, i64 500), align 16, !dbg !60, !tbaa !61
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %7), !dbg !63
  %8 = bitcast i32* %m to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !64
  %9 = bitcast i32* %n to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !64
  %10 = bitcast i32* %j to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !64
  %11 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !64
  ret i32 0, !dbg !65
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %m, i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !66 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %j = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j3 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !86
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !86
  store i32* %m, i32** %m.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !77, metadata !DIExpression()), !dbg !87
  store i32* %i, i32** %i.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !78, metadata !DIExpression()), !dbg !88
  %0 = load i32*, i32** %m.addr, align 8, !dbg !89, !tbaa !35
  %1 = load i32*, i32** %i.addr, align 8, !dbg !89, !tbaa !35
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !79, metadata !DIExpression()), !dbg !86
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !80, metadata !DIExpression()), !dbg !86
  %4 = load i32, i32* %0, align 4, !dbg !90, !tbaa !30
  store i32 %4, i32* %.capture_expr., align 4, !dbg !90, !tbaa !30
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !80, metadata !DIExpression()), !dbg !86
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !90, !tbaa !30
  %sub = sub nsw i32 %6, 1, !dbg !89
  %div = sdiv i32 %sub, 1, !dbg !89
  %sub2 = sub nsw i32 %div, 1, !dbg !89
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !89, !tbaa !30
  %7 = bitcast i32* %j to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %j, metadata !81, metadata !DIExpression()), !dbg !86
  store i32 1, i32* %j, align 4, !dbg !91, !tbaa !30
  %8 = bitcast i32* %j to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !89
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !90, !tbaa !30
  %cmp = icmp slt i32 1, %9, !dbg !89
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !89

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !82, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %.omp.lb, align 4, !dbg !92, !tbaa !30
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !83, metadata !DIExpression()), !dbg !86
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !89, !tbaa !30
  store i32 %12, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !84, metadata !DIExpression()), !dbg !86
  store i32 1, i32* %.omp.stride, align 4, !dbg !92, !tbaa !30
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %.omp.is_last, align 4, !dbg !92, !tbaa !30
  %15 = bitcast i32* %j3 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %j3, metadata !81, metadata !DIExpression()), !dbg !86
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %17 = load i32, i32* %16, align 4, !dbg !89, !tbaa !30
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !93
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !89, !tbaa !30
  %cmp4 = icmp sgt i32 %18, %19, !dbg !92
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !92

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !89, !tbaa !30
  br label %cond.end, !dbg !92

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  br label %cond.end, !dbg !92

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !92
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !92, !tbaa !30
  store i32 %22, i32* %.omp.iv, align 4, !dbg !92, !tbaa !30
  br label %omp.inner.for.cond, !dbg !89

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !30
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  %cmp5 = icmp sle i32 %23, %24, !dbg !89
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !89

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !89

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !30
  %mul = mul nsw i32 %25, 1, !dbg !91
  %add = add nsw i32 1, %mul, !dbg !91
  store i32 %add, i32* %j3, align 4, !dbg !91, !tbaa !30
  %26 = load i32, i32* %1, align 4, !dbg !94, !tbaa !30
  %idxprom = sext i32 %26 to i64, !dbg !95
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @b, i64 0, i64 %idxprom, !dbg !95
  %27 = load i32, i32* %j3, align 4, !dbg !96, !tbaa !30
  %sub6 = sub nsw i32 %27, 1, !dbg !97
  %idxprom7 = sext i32 %sub6 to i64, !dbg !95
  %arrayidx8 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom7, !dbg !95
  %28 = load double, double* %arrayidx8, align 8, !dbg !95, !tbaa !61
  %29 = load i32, i32* %1, align 4, !dbg !98, !tbaa !30
  %idxprom9 = sext i32 %29 to i64, !dbg !99
  %arrayidx10 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @b, i64 0, i64 %idxprom9, !dbg !99
  %30 = load i32, i32* %j3, align 4, !dbg !100, !tbaa !30
  %idxprom11 = sext i32 %30 to i64, !dbg !99
  %arrayidx12 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx10, i64 0, i64 %idxprom11, !dbg !99
  store double %28, double* %arrayidx12, align 8, !dbg !101, !tbaa !61
  br label %omp.body.continue, !dbg !99

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !93

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !30
  %add13 = add nsw i32 %31, 1, !dbg !89
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !89, !tbaa !30
  br label %omp.inner.for.cond, !dbg !93, !llvm.loop !102

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !93

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %32 = load i32*, i32** %.global_tid..addr, align 8, !dbg !93
  %33 = load i32, i32* %32, align 4, !dbg !93, !tbaa !30
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %33), !dbg !103
  %34 = bitcast i32* %j3 to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !93
  %35 = bitcast i32* %.omp.is_last to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !93
  %36 = bitcast i32* %.omp.stride to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !93
  %37 = bitcast i32* %.omp.ub to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !93
  %38 = bitcast i32* %.omp.lb to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !93
  br label %omp.precond.end, !dbg !93

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %39 = bitcast i32* %.capture_expr.1 to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !93
  %40 = bitcast i32* %.capture_expr. to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !93
  %41 = bitcast i32* %.omp.iv to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !93
  ret void, !dbg !104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %m, i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !105 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !107, metadata !DIExpression()), !dbg !111
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !108, metadata !DIExpression()), !dbg !111
  store i32* %m, i32** %m.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !109, metadata !DIExpression()), !dbg !111
  store i32* %i, i32** %i.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = load i32*, i32** %m.addr, align 8, !dbg !112, !tbaa !35
  %1 = load i32*, i32** %i.addr, align 8, !dbg !112, !tbaa !35
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112, !tbaa !35
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !112, !tbaa !35
  %4 = load i32*, i32** %m.addr, align 8, !dbg !112, !tbaa !35
  %5 = load i32*, i32** %i.addr, align 8, !dbg !112, !tbaa !35
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #4, !dbg !112
  ret void, !dbg !112
}

; Function Attrs: nounwind
declare !callback !113 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB037-truedepseconddimension-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64000000, elements: !8)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9, !9}
!9 = !DISubrange(count: 1000)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 56, type: !17, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19, !20}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DILocalVariable(name: "argc", arg: 1, scope: !16, file: !3, line: 56, type: !19)
!25 = !DILocalVariable(name: "argv", arg: 2, scope: !16, file: !3, line: 56, type: !20)
!26 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 58, type: !19)
!27 = !DILocalVariable(name: "j", scope: !16, file: !3, line: 58, type: !19)
!28 = !DILocalVariable(name: "n", scope: !16, file: !3, line: 59, type: !19)
!29 = !DILocalVariable(name: "m", scope: !16, file: !3, line: 59, type: !19)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 56, column: 14, scope: !16)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !32, i64 0}
!37 = !DILocation(line: 56, column: 26, scope: !16)
!38 = !DILocation(line: 58, column: 3, scope: !16)
!39 = !DILocation(line: 58, column: 7, scope: !16)
!40 = !DILocation(line: 58, column: 9, scope: !16)
!41 = !DILocation(line: 59, column: 3, scope: !16)
!42 = !DILocation(line: 59, column: 7, scope: !16)
!43 = !DILocation(line: 59, column: 15, scope: !16)
!44 = !DILocation(line: 60, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !16, file: !3, line: 60, column: 3)
!46 = !DILocation(line: 60, column: 8, scope: !45)
!47 = !DILocation(line: 60, column: 12, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !3, line: 60, column: 3)
!49 = !DILocation(line: 60, column: 14, scope: !48)
!50 = !DILocation(line: 60, column: 13, scope: !48)
!51 = !DILocation(line: 60, column: 3, scope: !45)
!52 = !DILocation(line: 61, column: 1, scope: !48)
!53 = !DILocation(line: 61, column: 25, scope: !54)
!54 = distinct !DILexicalBlock(scope: !48, file: !3, line: 61, column: 1)
!55 = !DILocation(line: 60, column: 17, scope: !48)
!56 = !DILocation(line: 60, column: 3, scope: !48)
!57 = distinct !{!57, !51, !58, !59}
!58 = !DILocation(line: 61, column: 25, scope: !45)
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !DILocation(line: 65, column: 30, scope: !16)
!61 = !{!62, !62, i64 0}
!62 = !{!"double", !32, i64 0}
!63 = !DILocation(line: 65, column: 3, scope: !16)
!64 = !DILocation(line: 67, column: 1, scope: !16)
!65 = !DILocation(line: 66, column: 3, scope: !16)
!66 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 62, type: !67, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69, !69, !73, !73}
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!73 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!74 = !{!75, !76, !77, !78, !79, !80, !80, !81, !82, !83, !84, !85, !81}
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !66, type: !69, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !66, type: !69, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "m", arg: 3, scope: !66, file: !3, line: 59, type: !73)
!78 = !DILocalVariable(name: "i", arg: 4, scope: !66, file: !3, line: 58, type: !73)
!79 = !DILocalVariable(name: ".omp.iv", scope: !66, type: !19, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".capture_expr.", scope: !66, type: !19, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "j", scope: !66, type: !19, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.lb", scope: !66, type: !19, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.ub", scope: !66, type: !19, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.stride", scope: !66, type: !19, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.is_last", scope: !66, type: !19, flags: DIFlagArtificial)
!86 = !DILocation(line: 0, scope: !66)
!87 = !DILocation(line: 59, column: 15, scope: !66)
!88 = !DILocation(line: 58, column: 7, scope: !66)
!89 = !DILocation(line: 62, column: 5, scope: !66)
!90 = !DILocation(line: 62, column: 16, scope: !66)
!91 = !DILocation(line: 62, column: 18, scope: !66)
!92 = !DILocation(line: 62, column: 10, scope: !66)
!93 = !DILocation(line: 61, column: 1, scope: !66)
!94 = !DILocation(line: 63, column: 17, scope: !66)
!95 = !DILocation(line: 63, column: 15, scope: !66)
!96 = !DILocation(line: 63, column: 20, scope: !66)
!97 = !DILocation(line: 63, column: 21, scope: !66)
!98 = !DILocation(line: 63, column: 9, scope: !66)
!99 = !DILocation(line: 63, column: 7, scope: !66)
!100 = !DILocation(line: 63, column: 12, scope: !66)
!101 = !DILocation(line: 63, column: 14, scope: !66)
!102 = distinct !{!102, !93, !103}
!103 = !DILocation(line: 61, column: 25, scope: !66)
!104 = !DILocation(line: 63, column: 23, scope: !66)
!105 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 61, type: !67, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!106 = !{!107, !108, !109, !110}
!107 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !105, type: !69, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !105, type: !69, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "m", arg: 3, scope: !105, type: !73, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "i", arg: 4, scope: !105, type: !73, flags: DIFlagArtificial)
!111 = !DILocation(line: 0, scope: !105)
!112 = !DILocation(line: 61, column: 1, scope: !105)
!113 = !{!114}
!114 = !{i64 2, i64 -1, i64 -1, i1 true}
