; ModuleID = 'DRB003-antidep2-orig-yes.c'
source_filename = "DRB003-antidep2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [40 x i8] c";DRB003-antidep2-orig-yes.c;main;64;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [41 x i8] c";DRB003-antidep2-orig-yes.c;main;64;36;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"a[10][10]=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [20 x [20 x double]], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !31
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !34
  %0 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !36
  %1 = bitcast i32* %j to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !37
  %2 = bitcast i32* %len to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %len, metadata !21, metadata !DIExpression()), !dbg !39
  store i32 20, i32* %len, align 4, !dbg !39, !tbaa !27
  %3 = bitcast [20 x [20 x double]]* %a to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 3200, i8* %3) #4, !dbg !40
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]* %a, metadata !22, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %i, align 4, !dbg !42, !tbaa !27
  br label %for.cond, !dbg !44

for.cond:                                         ; preds = %for.inc6, %entry
  %4 = load i32, i32* %i, align 4, !dbg !45, !tbaa !27
  %5 = load i32, i32* %len, align 4, !dbg !47, !tbaa !27
  %cmp = icmp slt i32 %4, %5, !dbg !48
  br i1 %cmp, label %for.body, label %for.end8, !dbg !49

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !50, !tbaa !27
  br label %for.cond1, !dbg !52

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4, !dbg !53, !tbaa !27
  %7 = load i32, i32* %len, align 4, !dbg !55, !tbaa !27
  %cmp2 = icmp slt i32 %6, %7, !dbg !56
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !57

for.body3:                                        ; preds = %for.cond1
  %8 = load i32, i32* %i, align 4, !dbg !58, !tbaa !27
  %idxprom = sext i32 %8 to i64, !dbg !59
  %arrayidx = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %a, i64 0, i64 %idxprom, !dbg !59
  %9 = load i32, i32* %j, align 4, !dbg !60, !tbaa !27
  %idxprom4 = sext i32 %9 to i64, !dbg !59
  %arrayidx5 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx, i64 0, i64 %idxprom4, !dbg !59
  store double 5.000000e-01, double* %arrayidx5, align 8, !dbg !61, !tbaa !62
  br label %for.inc, !dbg !59

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %j, align 4, !dbg !64, !tbaa !27
  %inc = add nsw i32 %10, 1, !dbg !64
  store i32 %inc, i32* %j, align 4, !dbg !64, !tbaa !27
  br label %for.cond1, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !67

for.inc6:                                         ; preds = %for.end
  %11 = load i32, i32* %i, align 4, !dbg !69, !tbaa !27
  %inc7 = add nsw i32 %11, 1, !dbg !69
  store i32 %inc7, i32* %i, align 4, !dbg !69, !tbaa !27
  br label %for.cond, !dbg !70, !llvm.loop !71

for.end8:                                         ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [20 x [20 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [20 x [20 x double]]* %a), !dbg !73
  %arrayidx9 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %a, i64 0, i64 10, !dbg !74
  %arrayidx10 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx9, i64 0, i64 10, !dbg !74
  %12 = load double, double* %arrayidx10, align 16, !dbg !74, !tbaa !62
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %12), !dbg !75
  %13 = bitcast [20 x [20 x double]]* %a to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 3200, i8* %13) #4, !dbg !76
  %14 = bitcast i32* %len to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !76
  %15 = bitcast i32* %j to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4, !dbg !76
  %16 = bitcast i32* %i to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !76
  ret i32 0, !dbg !77
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [20 x [20 x double]]* nonnull align 8 dereferenceable(3200) %a) #3 !dbg !78 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
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
  %i4 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !89, metadata !DIExpression()), !dbg !100
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !90, metadata !DIExpression()), !dbg !101
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !91, metadata !DIExpression()), !dbg !102
  %0 = load i32*, i32** %len.addr, align 8, !dbg !103, !tbaa !32
  %1 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !103, !tbaa !32
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !92, metadata !DIExpression()), !dbg !100
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !93, metadata !DIExpression()), !dbg !100
  %4 = load i32, i32* %0, align 4, !dbg !104, !tbaa !27
  %sub = sub nsw i32 %4, 1, !dbg !105
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !104, !tbaa !27
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !93, metadata !DIExpression()), !dbg !100
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !105, !tbaa !27
  %sub2 = sub nsw i32 %6, 0, !dbg !103
  %div = sdiv i32 %sub2, 1, !dbg !103
  %sub3 = sub nsw i32 %div, 1, !dbg !103
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !27
  %7 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !94, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %i, align 4, !dbg !106, !tbaa !27
  %8 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !103
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !105, !tbaa !27
  %cmp = icmp slt i32 0, %9, !dbg !103
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !103

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !95, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.lb, align 4, !dbg !107, !tbaa !27
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !96, metadata !DIExpression()), !dbg !100
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !27
  store i32 %12, i32* %.omp.ub, align 4, !dbg !107, !tbaa !27
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !97, metadata !DIExpression()), !dbg !100
  store i32 1, i32* %.omp.stride, align 4, !dbg !107, !tbaa !27
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !98, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.is_last, align 4, !dbg !107, !tbaa !27
  %15 = bitcast i32* %j to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %j, metadata !99, metadata !DIExpression()), !dbg !100
  %16 = bitcast i32* %i4 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !94, metadata !DIExpression()), !dbg !100
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %18 = load i32, i32* %17, align 4, !dbg !103, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !108
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !107, !tbaa !27
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !27
  %cmp5 = icmp sgt i32 %19, %20, !dbg !107
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !107

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !27
  br label %cond.end, !dbg !107

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !107, !tbaa !27
  br label %cond.end, !dbg !107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !107
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !107, !tbaa !27
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !107, !tbaa !27
  store i32 %23, i32* %.omp.iv, align 4, !dbg !107, !tbaa !27
  br label %omp.inner.for.cond, !dbg !103

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !107, !tbaa !27
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !107, !tbaa !27
  %cmp6 = icmp sle i32 %24, %25, !dbg !103
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !103

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !103

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !107, !tbaa !27
  %mul = mul nsw i32 %26, 1, !dbg !106
  %add = add nsw i32 0, %mul, !dbg !106
  store i32 %add, i32* %i4, align 4, !dbg !106, !tbaa !27
  store i32 0, i32* %j, align 4, !dbg !109, !tbaa !27
  br label %for.cond, !dbg !112

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %27 = load i32, i32* %j, align 4, !dbg !113, !tbaa !27
  %28 = load i32, i32* %0, align 4, !dbg !115, !tbaa !27
  %cmp7 = icmp slt i32 %27, %28, !dbg !116
  br i1 %cmp7, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i4, align 4, !dbg !118, !tbaa !27
  %add8 = add nsw i32 %29, 1, !dbg !120
  %idxprom = sext i32 %add8 to i64, !dbg !121
  %arrayidx = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %1, i64 0, i64 %idxprom, !dbg !121
  %30 = load i32, i32* %j, align 4, !dbg !122, !tbaa !27
  %idxprom9 = sext i32 %30 to i64, !dbg !121
  %arrayidx10 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx, i64 0, i64 %idxprom9, !dbg !121
  %31 = load double, double* %arrayidx10, align 8, !dbg !121, !tbaa !62
  %32 = load i32, i32* %i4, align 4, !dbg !123, !tbaa !27
  %idxprom11 = sext i32 %32 to i64, !dbg !124
  %arrayidx12 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %1, i64 0, i64 %idxprom11, !dbg !124
  %33 = load i32, i32* %j, align 4, !dbg !125, !tbaa !27
  %idxprom13 = sext i32 %33 to i64, !dbg !124
  %arrayidx14 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx12, i64 0, i64 %idxprom13, !dbg !124
  %34 = load double, double* %arrayidx14, align 8, !dbg !126, !tbaa !62
  %add15 = fadd double %34, %31, !dbg !126
  store double %add15, double* %arrayidx14, align 8, !dbg !126, !tbaa !62
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %j, align 4, !dbg !128, !tbaa !27
  %add16 = add nsw i32 %35, 1, !dbg !128
  store i32 %add16, i32* %j, align 4, !dbg !128, !tbaa !27
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !132

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !108

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !107, !tbaa !27
  %add17 = add nsw i32 %36, 1, !dbg !103
  store i32 %add17, i32* %.omp.iv, align 4, !dbg !103, !tbaa !27
  br label %omp.inner.for.cond, !dbg !108, !llvm.loop !133

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !108

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %38 = load i32, i32* %37, align 4, !dbg !108, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %38), !dbg !134
  %39 = bitcast i32* %i4 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !108
  %40 = bitcast i32* %j to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !108
  %41 = bitcast i32* %.omp.is_last to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !108
  %42 = bitcast i32* %.omp.stride to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !108
  %43 = bitcast i32* %.omp.ub to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !108
  %44 = bitcast i32* %.omp.lb to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !108
  br label %omp.precond.end, !dbg !108

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %45 = bitcast i32* %.capture_expr.1 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !108
  %46 = bitcast i32* %.capture_expr. to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !108
  %47 = bitcast i32* %.omp.iv to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !108
  ret void, !dbg !135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [20 x [20 x double]]* nonnull align 8 dereferenceable(3200) %a) #3 !dbg !136 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !138, metadata !DIExpression()), !dbg !142
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !139, metadata !DIExpression()), !dbg !142
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !140, metadata !DIExpression()), !dbg !142
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load i32*, i32** %len.addr, align 8, !dbg !143, !tbaa !32
  %1 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !143, !tbaa !32
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !143, !tbaa !32
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !143, !tbaa !32
  %4 = load i32*, i32** %len.addr, align 8, !dbg !143, !tbaa !32
  %5 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !143, !tbaa !32
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [20 x [20 x double]]* %5) #4, !dbg !143
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare !callback !144 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB003-antidep2-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !22}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 53, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 53, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!20 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 55, type: !12)
!21 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 56, type: !12)
!22 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 58, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 25600, elements: !25)
!24 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!25 = !{!26, !26}
!26 = !DISubrange(count: 20)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 53, column: 14, scope: !9)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !DILocation(line: 53, column: 25, scope: !9)
!35 = !DILocation(line: 55, column: 3, scope: !9)
!36 = !DILocation(line: 55, column: 7, scope: !9)
!37 = !DILocation(line: 55, column: 10, scope: !9)
!38 = !DILocation(line: 56, column: 3, scope: !9)
!39 = !DILocation(line: 56, column: 7, scope: !9)
!40 = !DILocation(line: 58, column: 3, scope: !9)
!41 = !DILocation(line: 58, column: 10, scope: !9)
!42 = !DILocation(line: 60, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !9, file: !1, line: 60, column: 3)
!44 = !DILocation(line: 60, column: 8, scope: !43)
!45 = !DILocation(line: 60, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 60, column: 3)
!47 = !DILocation(line: 60, column: 16, scope: !46)
!48 = !DILocation(line: 60, column: 14, scope: !46)
!49 = !DILocation(line: 60, column: 3, scope: !43)
!50 = !DILocation(line: 61, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 61, column: 5)
!52 = !DILocation(line: 61, column: 10, scope: !51)
!53 = !DILocation(line: 61, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 61, column: 5)
!55 = !DILocation(line: 61, column: 17, scope: !54)
!56 = !DILocation(line: 61, column: 16, scope: !54)
!57 = !DILocation(line: 61, column: 5, scope: !51)
!58 = !DILocation(line: 62, column: 9, scope: !54)
!59 = !DILocation(line: 62, column: 7, scope: !54)
!60 = !DILocation(line: 62, column: 12, scope: !54)
!61 = !DILocation(line: 62, column: 15, scope: !54)
!62 = !{!63, !63, i64 0}
!63 = !{!"double", !29, i64 0}
!64 = !DILocation(line: 61, column: 23, scope: !54)
!65 = !DILocation(line: 61, column: 5, scope: !54)
!66 = distinct !{!66, !57, !67, !68}
!67 = !DILocation(line: 62, column: 17, scope: !51)
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !DILocation(line: 60, column: 22, scope: !46)
!70 = !DILocation(line: 60, column: 3, scope: !46)
!71 = distinct !{!71, !49, !72, !68}
!72 = !DILocation(line: 62, column: 17, scope: !43)
!73 = !DILocation(line: 64, column: 1, scope: !9)
!74 = !DILocation(line: 71, column: 29, scope: !9)
!75 = !DILocation(line: 71, column: 3, scope: !9)
!76 = !DILocation(line: 73, column: 1, scope: !9)
!77 = !DILocation(line: 72, column: 3, scope: !9)
!78 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !79, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81, !81, !85, !86}
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!85 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!87 = !{!88, !89, !90, !91, !92, !93, !93, !94, !95, !96, !97, !98, !99, !94}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !78, type: !81, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !78, type: !81, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "len", arg: 3, scope: !78, file: !1, line: 56, type: !85)
!91 = !DILocalVariable(name: "a", arg: 4, scope: !78, file: !1, line: 58, type: !86)
!92 = !DILocalVariable(name: ".omp.iv", scope: !78, type: !12, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".capture_expr.", scope: !78, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "i", scope: !78, type: !12, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.lb", scope: !78, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.ub", scope: !78, type: !12, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.stride", scope: !78, type: !12, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.is_last", scope: !78, type: !12, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "j", scope: !78, type: !12, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !78)
!101 = !DILocation(line: 56, column: 7, scope: !78)
!102 = !DILocation(line: 58, column: 10, scope: !78)
!103 = !DILocation(line: 65, column: 3, scope: !78)
!104 = !DILocation(line: 65, column: 19, scope: !78)
!105 = !DILocation(line: 65, column: 23, scope: !78)
!106 = !DILocation(line: 65, column: 28, scope: !78)
!107 = !DILocation(line: 65, column: 8, scope: !78)
!108 = !DILocation(line: 64, column: 1, scope: !78)
!109 = !DILocation(line: 66, column: 12, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 66, column: 5)
!111 = distinct !DILexicalBlock(scope: !78, file: !1, line: 65, column: 36)
!112 = !DILocation(line: 66, column: 10, scope: !110)
!113 = !DILocation(line: 66, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 66, column: 5)
!115 = !DILocation(line: 66, column: 21, scope: !114)
!116 = !DILocation(line: 66, column: 19, scope: !114)
!117 = !DILocation(line: 66, column: 5, scope: !110)
!118 = !DILocation(line: 67, column: 20, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 66, column: 35)
!120 = !DILocation(line: 67, column: 22, scope: !119)
!121 = !DILocation(line: 67, column: 18, scope: !119)
!122 = !DILocation(line: 67, column: 27, scope: !119)
!123 = !DILocation(line: 67, column: 9, scope: !119)
!124 = !DILocation(line: 67, column: 7, scope: !119)
!125 = !DILocation(line: 67, column: 12, scope: !119)
!126 = !DILocation(line: 67, column: 15, scope: !119)
!127 = !DILocation(line: 68, column: 5, scope: !119)
!128 = !DILocation(line: 66, column: 29, scope: !114)
!129 = !DILocation(line: 66, column: 5, scope: !114)
!130 = distinct !{!130, !117, !131, !68}
!131 = !DILocation(line: 68, column: 5, scope: !110)
!132 = !DILocation(line: 69, column: 3, scope: !111)
!133 = distinct !{!133, !108, !134}
!134 = !DILocation(line: 64, column: 36, scope: !78)
!135 = !DILocation(line: 69, column: 3, scope: !78)
!136 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !79, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138, !139, !140, !141}
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !136, type: !81, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !136, type: !81, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "len", arg: 3, scope: !136, type: !85, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "a", arg: 4, scope: !136, type: !86, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !136)
!143 = !DILocation(line: 64, column: 1, scope: !136)
!144 = !{!145}
!145 = !{i64 2, i64 -1, i64 -1, i1 true}
