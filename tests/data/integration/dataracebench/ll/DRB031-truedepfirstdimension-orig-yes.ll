; ModuleID = 'DRB031-truedepfirstdimension-orig-yes.c'
source_filename = "DRB031-truedepfirstdimension-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [53 x i8] c";DRB031-truedepfirstdimension-orig-yes.c;main;63;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [54 x i8] c";DRB031-truedepfirstdimension-orig-yes.c;main;63;36;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"b[500][500]=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %b = alloca [1000 x [1000 x double]], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !32
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !35
  %0 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !37
  %1 = bitcast i32* %j to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !38
  %2 = bitcast i32* %n to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %n, metadata !21, metadata !DIExpression()), !dbg !40
  store i32 1000, i32* %n, align 4, !dbg !40, !tbaa !28
  %3 = bitcast i32* %m to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %m, metadata !22, metadata !DIExpression()), !dbg !41
  store i32 1000, i32* %m, align 4, !dbg !41, !tbaa !28
  %4 = bitcast [1000 x [1000 x double]]* %b to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 8000000, i8* %4) #4, !dbg !42
  call void @llvm.dbg.declare(metadata [1000 x [1000 x double]]* %b, metadata !23, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %i, align 4, !dbg !44, !tbaa !28
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %for.inc6, %entry
  %5 = load i32, i32* %i, align 4, !dbg !47, !tbaa !28
  %6 = load i32, i32* %n, align 4, !dbg !49, !tbaa !28
  %cmp = icmp slt i32 %5, %6, !dbg !50
  br i1 %cmp, label %for.body, label %for.end8, !dbg !51

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !52, !tbaa !28
  br label %for.cond1, !dbg !54

for.cond1:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4, !dbg !55, !tbaa !28
  %8 = load i32, i32* %m, align 4, !dbg !57, !tbaa !28
  %cmp2 = icmp slt i32 %7, %8, !dbg !58
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !59

for.body3:                                        ; preds = %for.cond1
  %9 = load i32, i32* %i, align 4, !dbg !60, !tbaa !28
  %idxprom = sext i32 %9 to i64, !dbg !61
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %b, i64 0, i64 %idxprom, !dbg !61
  %10 = load i32, i32* %j, align 4, !dbg !62, !tbaa !28
  %idxprom4 = sext i32 %10 to i64, !dbg !61
  %arrayidx5 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom4, !dbg !61
  store double 5.000000e-01, double* %arrayidx5, align 8, !dbg !63, !tbaa !64
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %for.body3
  %11 = load i32, i32* %j, align 4, !dbg !66, !tbaa !28
  %inc = add nsw i32 %11, 1, !dbg !66
  store i32 %inc, i32* %j, align 4, !dbg !66, !tbaa !28
  br label %for.cond1, !dbg !67, !llvm.loop !68

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !69

for.inc6:                                         ; preds = %for.end
  %12 = load i32, i32* %i, align 4, !dbg !71, !tbaa !28
  %inc7 = add nsw i32 %12, 1, !dbg !71
  store i32 %inc7, i32* %i, align 4, !dbg !71, !tbaa !28
  br label %for.cond, !dbg !72, !llvm.loop !73

for.end8:                                         ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [1000 x [1000 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, [1000 x [1000 x double]]* %b), !dbg !75
  %arrayidx9 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %b, i64 0, i64 500, !dbg !76
  %arrayidx10 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx9, i64 0, i64 500, !dbg !76
  %13 = load double, double* %arrayidx10, align 16, !dbg !76, !tbaa !64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %13), !dbg !77
  %14 = bitcast [1000 x [1000 x double]]* %b to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 8000000, i8* %14) #4, !dbg !78
  %15 = bitcast i32* %m to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4, !dbg !78
  %16 = bitcast i32* %n to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !78
  %17 = bitcast i32* %j to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !78
  %18 = bitcast i32* %i to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !78
  ret i32 0, !dbg !79
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32* nonnull align 4 dereferenceable(4) %m, [1000 x [1000 x double]]* nonnull align 8 dereferenceable(8000000) %b) #3 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %b.addr = alloca [1000 x [1000 x double]]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !90, metadata !DIExpression()), !dbg !103
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !91, metadata !DIExpression()), !dbg !103
  store i32* %n, i32** %n.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !92, metadata !DIExpression()), !dbg !104
  store i32* %m, i32** %m.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !93, metadata !DIExpression()), !dbg !105
  store [1000 x [1000 x double]]* %b, [1000 x [1000 x double]]** %b.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata [1000 x [1000 x double]]** %b.addr, metadata !94, metadata !DIExpression()), !dbg !106
  %0 = load i32*, i32** %n.addr, align 8, !dbg !107, !tbaa !33
  %1 = load i32*, i32** %m.addr, align 8, !dbg !107, !tbaa !33
  %2 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %b.addr, align 8, !dbg !107, !tbaa !33
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !95, metadata !DIExpression()), !dbg !103
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !96, metadata !DIExpression()), !dbg !103
  %5 = load i32, i32* %0, align 4, !dbg !108, !tbaa !28
  store i32 %5, i32* %.capture_expr., align 4, !dbg !108, !tbaa !28
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !96, metadata !DIExpression()), !dbg !103
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !108, !tbaa !28
  %sub = sub nsw i32 %7, 1, !dbg !107
  %div = sdiv i32 %sub, 1, !dbg !107
  %sub2 = sub nsw i32 %div, 1, !dbg !107
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !107, !tbaa !28
  %8 = bitcast i32* %i to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %i, metadata !97, metadata !DIExpression()), !dbg !103
  store i32 1, i32* %i, align 4, !dbg !109, !tbaa !28
  %9 = bitcast i32* %i to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !107
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !108, !tbaa !28
  %cmp = icmp slt i32 1, %10, !dbg !107
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !107

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !98, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %.omp.lb, align 4, !dbg !110, !tbaa !28
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !99, metadata !DIExpression()), !dbg !103
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !107, !tbaa !28
  store i32 %13, i32* %.omp.ub, align 4, !dbg !110, !tbaa !28
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !100, metadata !DIExpression()), !dbg !103
  store i32 1, i32* %.omp.stride, align 4, !dbg !110, !tbaa !28
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !101, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %.omp.is_last, align 4, !dbg !110, !tbaa !28
  %16 = bitcast i32* %j to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %j, metadata !102, metadata !DIExpression()), !dbg !103
  %17 = bitcast i32* %i3 to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !97, metadata !DIExpression()), !dbg !103
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107
  %19 = load i32, i32* %18, align 4, !dbg !107, !tbaa !28
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !111
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !110, !tbaa !28
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !107, !tbaa !28
  %cmp4 = icmp sgt i32 %20, %21, !dbg !110
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !110

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !107, !tbaa !28
  br label %cond.end, !dbg !110

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !110, !tbaa !28
  br label %cond.end, !dbg !110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !110
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !110, !tbaa !28
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !110, !tbaa !28
  store i32 %24, i32* %.omp.iv, align 4, !dbg !110, !tbaa !28
  br label %omp.inner.for.cond, !dbg !107

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !110, !tbaa !28
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !110, !tbaa !28
  %cmp5 = icmp sle i32 %25, %26, !dbg !107
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !107

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !107

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !110, !tbaa !28
  %mul = mul nsw i32 %27, 1, !dbg !109
  %add = add nsw i32 1, %mul, !dbg !109
  store i32 %add, i32* %i3, align 4, !dbg !109, !tbaa !28
  store i32 1, i32* %j, align 4, !dbg !112, !tbaa !28
  br label %for.cond, !dbg !114

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %28 = load i32, i32* %j, align 4, !dbg !115, !tbaa !28
  %29 = load i32, i32* %1, align 4, !dbg !117, !tbaa !28
  %cmp6 = icmp slt i32 %28, %29, !dbg !118
  br i1 %cmp6, label %for.body, label %for.end, !dbg !119

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i3, align 4, !dbg !120, !tbaa !28
  %sub7 = sub nsw i32 %30, 1, !dbg !121
  %idxprom = sext i32 %sub7 to i64, !dbg !122
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %2, i64 0, i64 %idxprom, !dbg !122
  %31 = load i32, i32* %j, align 4, !dbg !123, !tbaa !28
  %sub8 = sub nsw i32 %31, 1, !dbg !124
  %idxprom9 = sext i32 %sub8 to i64, !dbg !122
  %arrayidx10 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom9, !dbg !122
  %32 = load double, double* %arrayidx10, align 8, !dbg !122, !tbaa !64
  %33 = load i32, i32* %i3, align 4, !dbg !125, !tbaa !28
  %idxprom11 = sext i32 %33 to i64, !dbg !126
  %arrayidx12 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %2, i64 0, i64 %idxprom11, !dbg !126
  %34 = load i32, i32* %j, align 4, !dbg !127, !tbaa !28
  %idxprom13 = sext i32 %34 to i64, !dbg !126
  %arrayidx14 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx12, i64 0, i64 %idxprom13, !dbg !126
  store double %32, double* %arrayidx14, align 8, !dbg !128, !tbaa !64
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %j, align 4, !dbg !129, !tbaa !28
  %inc = add nsw i32 %35, 1, !dbg !129
  store i32 %inc, i32* %j, align 4, !dbg !129, !tbaa !28
  br label %for.cond, !dbg !130, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !132

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !111

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !110, !tbaa !28
  %add15 = add nsw i32 %36, 1, !dbg !107
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !107, !tbaa !28
  br label %omp.inner.for.cond, !dbg !111, !llvm.loop !133

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !111

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111
  %38 = load i32, i32* %37, align 4, !dbg !111, !tbaa !28
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %38), !dbg !134
  %39 = bitcast i32* %i3 to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !111
  %40 = bitcast i32* %j to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !111
  %41 = bitcast i32* %.omp.is_last to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !111
  %42 = bitcast i32* %.omp.stride to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !111
  %43 = bitcast i32* %.omp.ub to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !111
  %44 = bitcast i32* %.omp.lb to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !111
  br label %omp.precond.end, !dbg !111

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %45 = bitcast i32* %.capture_expr.1 to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !111
  %46 = bitcast i32* %.capture_expr. to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !111
  %47 = bitcast i32* %.omp.iv to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !111
  ret void, !dbg !135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32* nonnull align 4 dereferenceable(4) %m, [1000 x [1000 x double]]* nonnull align 8 dereferenceable(8000000) %b) #3 !dbg !136 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %b.addr = alloca [1000 x [1000 x double]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !138, metadata !DIExpression()), !dbg !143
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !139, metadata !DIExpression()), !dbg !143
  store i32* %n, i32** %n.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !140, metadata !DIExpression()), !dbg !143
  store i32* %m, i32** %m.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !141, metadata !DIExpression()), !dbg !143
  store [1000 x [1000 x double]]* %b, [1000 x [1000 x double]]** %b.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata [1000 x [1000 x double]]** %b.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load i32*, i32** %n.addr, align 8, !dbg !144, !tbaa !33
  %1 = load i32*, i32** %m.addr, align 8, !dbg !144, !tbaa !33
  %2 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %b.addr, align 8, !dbg !144, !tbaa !33
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !144, !tbaa !33
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !144, !tbaa !33
  %5 = load i32*, i32** %n.addr, align 8, !dbg !144, !tbaa !33
  %6 = load i32*, i32** %m.addr, align 8, !dbg !144, !tbaa !33
  %7 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %b.addr, align 8, !dbg !144, !tbaa !33
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, [1000 x [1000 x double]]* %7) #4, !dbg !144
  ret void, !dbg !144
}

; Function Attrs: nounwind
declare !callback !145 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB031-truedepfirstdimension-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = !{!17, !18, !19, !20, !21, !22, !23}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 53, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 53, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!20 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 55, type: !12)
!21 = !DILocalVariable(name: "n", scope: !9, file: !1, line: 56, type: !12)
!22 = !DILocalVariable(name: "m", scope: !9, file: !1, line: 56, type: !12)
!23 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 57, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64000000, elements: !26)
!25 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!26 = !{!27, !27}
!27 = !DISubrange(count: 1000)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 53, column: 14, scope: !9)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !DILocation(line: 53, column: 26, scope: !9)
!36 = !DILocation(line: 55, column: 3, scope: !9)
!37 = !DILocation(line: 55, column: 7, scope: !9)
!38 = !DILocation(line: 55, column: 9, scope: !9)
!39 = !DILocation(line: 56, column: 3, scope: !9)
!40 = !DILocation(line: 56, column: 7, scope: !9)
!41 = !DILocation(line: 56, column: 15, scope: !9)
!42 = !DILocation(line: 57, column: 3, scope: !9)
!43 = !DILocation(line: 57, column: 10, scope: !9)
!44 = !DILocation(line: 59, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!46 = !DILocation(line: 59, column: 8, scope: !45)
!47 = !DILocation(line: 59, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !1, line: 59, column: 3)
!49 = !DILocation(line: 59, column: 15, scope: !48)
!50 = !DILocation(line: 59, column: 14, scope: !48)
!51 = !DILocation(line: 59, column: 3, scope: !45)
!52 = !DILocation(line: 60, column: 11, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 60, column: 5)
!54 = !DILocation(line: 60, column: 10, scope: !53)
!55 = !DILocation(line: 60, column: 15, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 60, column: 5)
!57 = !DILocation(line: 60, column: 17, scope: !56)
!58 = !DILocation(line: 60, column: 16, scope: !56)
!59 = !DILocation(line: 60, column: 5, scope: !53)
!60 = !DILocation(line: 61, column: 9, scope: !56)
!61 = !DILocation(line: 61, column: 7, scope: !56)
!62 = !DILocation(line: 61, column: 12, scope: !56)
!63 = !DILocation(line: 61, column: 15, scope: !56)
!64 = !{!65, !65, i64 0}
!65 = !{!"double", !30, i64 0}
!66 = !DILocation(line: 60, column: 21, scope: !56)
!67 = !DILocation(line: 60, column: 5, scope: !56)
!68 = distinct !{!68, !59, !69, !70}
!69 = !DILocation(line: 61, column: 17, scope: !53)
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !DILocation(line: 59, column: 19, scope: !48)
!72 = !DILocation(line: 59, column: 3, scope: !48)
!73 = distinct !{!73, !51, !74, !70}
!74 = !DILocation(line: 61, column: 17, scope: !45)
!75 = !DILocation(line: 63, column: 1, scope: !9)
!76 = !DILocation(line: 68, column: 30, scope: !9)
!77 = !DILocation(line: 68, column: 3, scope: !9)
!78 = !DILocation(line: 70, column: 1, scope: !9)
!79 = !DILocation(line: 69, column: 3, scope: !9)
!80 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !81, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !89)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !83, !87, !87, !88}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!87 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !96, !97, !98, !99, !100, !101, !102, !97}
!90 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !83, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !83, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "n", arg: 3, scope: !80, file: !1, line: 56, type: !87)
!93 = !DILocalVariable(name: "m", arg: 4, scope: !80, file: !1, line: 56, type: !87)
!94 = !DILocalVariable(name: "b", arg: 5, scope: !80, file: !1, line: 57, type: !88)
!95 = !DILocalVariable(name: ".omp.iv", scope: !80, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".capture_expr.", scope: !80, type: !12, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "i", scope: !80, type: !12, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.lb", scope: !80, type: !12, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".omp.ub", scope: !80, type: !12, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".omp.stride", scope: !80, type: !12, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.is_last", scope: !80, type: !12, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "j", scope: !80, type: !12, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !80)
!104 = !DILocation(line: 56, column: 7, scope: !80)
!105 = !DILocation(line: 56, column: 15, scope: !80)
!106 = !DILocation(line: 57, column: 10, scope: !80)
!107 = !DILocation(line: 64, column: 3, scope: !80)
!108 = !DILocation(line: 64, column: 14, scope: !80)
!109 = !DILocation(line: 64, column: 16, scope: !80)
!110 = !DILocation(line: 64, column: 8, scope: !80)
!111 = !DILocation(line: 63, column: 1, scope: !80)
!112 = !DILocation(line: 65, column: 11, scope: !113)
!113 = distinct !DILexicalBlock(scope: !80, file: !1, line: 65, column: 5)
!114 = !DILocation(line: 65, column: 10, scope: !113)
!115 = !DILocation(line: 65, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !1, line: 65, column: 5)
!117 = !DILocation(line: 65, column: 16, scope: !116)
!118 = !DILocation(line: 65, column: 15, scope: !116)
!119 = !DILocation(line: 65, column: 5, scope: !113)
!120 = !DILocation(line: 66, column: 17, scope: !116)
!121 = !DILocation(line: 66, column: 18, scope: !116)
!122 = !DILocation(line: 66, column: 15, scope: !116)
!123 = !DILocation(line: 66, column: 22, scope: !116)
!124 = !DILocation(line: 66, column: 23, scope: !116)
!125 = !DILocation(line: 66, column: 9, scope: !116)
!126 = !DILocation(line: 66, column: 7, scope: !116)
!127 = !DILocation(line: 66, column: 12, scope: !116)
!128 = !DILocation(line: 66, column: 14, scope: !116)
!129 = !DILocation(line: 65, column: 19, scope: !116)
!130 = !DILocation(line: 65, column: 5, scope: !116)
!131 = distinct !{!131, !119, !132, !70}
!132 = !DILocation(line: 66, column: 25, scope: !113)
!133 = distinct !{!133, !111, !134}
!134 = !DILocation(line: 63, column: 36, scope: !80)
!135 = !DILocation(line: 66, column: 25, scope: !80)
!136 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !81, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138, !139, !140, !141, !142}
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !136, type: !83, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !136, type: !83, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "n", arg: 3, scope: !136, type: !87, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "m", arg: 4, scope: !136, type: !87, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "b", arg: 5, scope: !136, type: !88, flags: DIFlagArtificial)
!143 = !DILocation(line: 0, scope: !136)
!144 = !DILocation(line: 63, column: 1, scope: !136)
!145 = !{!146}
!146 = !{i64 2, i64 -1, i64 -1, i1 true}
