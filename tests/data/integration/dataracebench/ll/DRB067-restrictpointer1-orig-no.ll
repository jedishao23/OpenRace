; ModuleID = 'DRB067-restrictpointer1-orig-no.c'
source_filename = "DRB067-restrictpointer1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [46 x i8] c";DRB067-restrictpointer1-orig-no.c;foo;61;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [47 x i8] c";DRB067-restrictpointer1-orig-no.c;foo;61;59;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo(double* noalias %newSxx, double* noalias %newSyy, i32 %length) #0 !dbg !9 {
entry:
  %newSxx.addr = alloca double*, align 8
  %newSyy.addr = alloca double*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %length.casted = alloca i64, align 8
  store double* %newSxx, double** %newSxx.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata double** %newSxx.addr, metadata !18, metadata !DIExpression()), !dbg !26
  store double* %newSyy, double** %newSyy.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata double** %newSyy.addr, metadata !19, metadata !DIExpression()), !dbg !27
  store i32 %length, i32* %length.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !20, metadata !DIExpression()), !dbg !30
  %0 = bitcast i32* %i to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !32
  %1 = load i32, i32* %length.addr, align 4, !dbg !33, !tbaa !28
  %conv = bitcast i64* %length.casted to i32*, !dbg !33
  store i32 %1, i32* %conv, align 4, !dbg !33, !tbaa !28
  %2 = load i64, i64* %length.casted, align 8, !dbg !33, !tbaa !34
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %2, double** %newSxx.addr, double** %newSyy.addr), !dbg !33
  %3 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !36
  ret void, !dbg !36
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32 %length, double** nonnull align 8 dereferenceable(8) %newSxx, double** nonnull align 8 dereferenceable(8) %newSyy) #3 !dbg !37 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %newSxx.addr = alloca double**, align 8
  %newSyy.addr = alloca double**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !46, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !47, metadata !DIExpression()), !dbg !60
  store i32 %length, i32* %length.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !48, metadata !DIExpression()), !dbg !61
  store double** %newSxx, double*** %newSxx.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata double*** %newSxx.addr, metadata !49, metadata !DIExpression()), !dbg !62
  store double** %newSyy, double*** %newSyy.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata double*** %newSyy.addr, metadata !50, metadata !DIExpression()), !dbg !63
  %0 = load double**, double*** %newSxx.addr, align 8, !dbg !64, !tbaa !22
  %1 = load double**, double*** %newSyy.addr, align 8, !dbg !64, !tbaa !22
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !51, metadata !DIExpression()), !dbg !60
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !53, metadata !DIExpression()), !dbg !60
  %4 = load i32, i32* %length.addr, align 4, !dbg !65, !tbaa !28
  %sub = sub nsw i32 %4, 1, !dbg !66
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !65, !tbaa !28
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !54, metadata !DIExpression()), !dbg !60
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !66, !tbaa !28
  %sub2 = sub i32 %6, -1, !dbg !64
  %div = udiv i32 %sub2, 1, !dbg !64
  %sub3 = sub i32 %div, 1, !dbg !64
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !64, !tbaa !28
  %7 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %i, align 4, !dbg !67, !tbaa !28
  %8 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !64
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !66, !tbaa !28
  %cmp = icmp sle i32 0, %9, !dbg !64
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !64

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !56, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.lb, align 4, !dbg !68, !tbaa !28
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !57, metadata !DIExpression()), !dbg !60
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !64, !tbaa !28
  store i32 %12, i32* %.omp.ub, align 4, !dbg !68, !tbaa !28
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !58, metadata !DIExpression()), !dbg !60
  store i32 1, i32* %.omp.stride, align 4, !dbg !68, !tbaa !28
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.is_last, align 4, !dbg !68, !tbaa !28
  %15 = bitcast i32* %i4 to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !55, metadata !DIExpression()), !dbg !60
  %16 = bitcast i32* %i5 to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !55, metadata !DIExpression()), !dbg !60
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !64
  %18 = load i32, i32* %17, align 4, !dbg !64, !tbaa !28
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !69
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !68, !tbaa !28
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !64, !tbaa !28
  %cmp6 = icmp ugt i32 %19, %20, !dbg !68
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !68

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !64, !tbaa !28
  br label %cond.end, !dbg !68

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !68, !tbaa !28
  br label %cond.end, !dbg !68

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !68
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !68, !tbaa !28
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !68, !tbaa !28
  store i32 %23, i32* %.omp.iv, align 4, !dbg !68, !tbaa !28
  br label %omp.inner.for.cond, !dbg !64

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !68, !tbaa !28
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !68, !tbaa !28
  %cmp7 = icmp ule i32 %24, %25, !dbg !64
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !64

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !64

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !68, !tbaa !28
  %mul = mul i32 %26, 1, !dbg !67
  %add = add i32 0, %mul, !dbg !67
  store i32 %add, i32* %i4, align 4, !dbg !67, !tbaa !28
  %27 = load double*, double** %0, align 8, !dbg !70, !tbaa !22
  %28 = load i32, i32* %i4, align 4, !dbg !72, !tbaa !28
  %idxprom = sext i32 %28 to i64, !dbg !70
  %arrayidx = getelementptr inbounds double, double* %27, i64 %idxprom, !dbg !70
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !73, !tbaa !74
  %29 = load double*, double** %1, align 8, !dbg !76, !tbaa !22
  %30 = load i32, i32* %i4, align 4, !dbg !77, !tbaa !28
  %idxprom8 = sext i32 %30 to i64, !dbg !76
  %arrayidx9 = getelementptr inbounds double, double* %29, i64 %idxprom8, !dbg !76
  store double 0.000000e+00, double* %arrayidx9, align 8, !dbg !78, !tbaa !74
  br label %omp.body.continue, !dbg !79

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !69

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !68, !tbaa !28
  %add10 = add i32 %31, 1, !dbg !64
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !64, !tbaa !28
  br label %omp.inner.for.cond, !dbg !69, !llvm.loop !80

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !69

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %32 = load i32*, i32** %.global_tid..addr, align 8, !dbg !69
  %33 = load i32, i32* %32, align 4, !dbg !69, !tbaa !28
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %33), !dbg !81
  %34 = bitcast i32* %i5 to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !69
  %35 = bitcast i32* %i4 to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !69
  %36 = bitcast i32* %.omp.is_last to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !69
  %37 = bitcast i32* %.omp.stride to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !69
  %38 = bitcast i32* %.omp.ub to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !69
  %39 = bitcast i32* %.omp.lb to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !69
  br label %omp.precond.end, !dbg !69

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %40 = bitcast i32* %.capture_expr.1 to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !69
  %41 = bitcast i32* %.capture_expr. to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !69
  %42 = bitcast i32* %.omp.iv to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !69
  ret void, !dbg !82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %length, double** nonnull align 8 dereferenceable(8) %newSxx, double** nonnull align 8 dereferenceable(8) %newSyy) #3 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %length.addr = alloca i64, align 8
  %newSxx.addr = alloca double**, align 8
  %newSyy.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !93
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !89, metadata !DIExpression()), !dbg !93
  store i64 %length, i64* %length.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !90, metadata !DIExpression()), !dbg !93
  store double** %newSxx, double*** %newSxx.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata double*** %newSxx.addr, metadata !91, metadata !DIExpression()), !dbg !93
  store double** %newSyy, double*** %newSyy.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata double*** %newSyy.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %conv = bitcast i64* %length.addr to i32*, !dbg !94
  %0 = load double**, double*** %newSxx.addr, align 8, !dbg !94, !tbaa !22
  %1 = load double**, double*** %newSyy.addr, align 8, !dbg !94, !tbaa !22
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !94, !tbaa !22
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !94, !tbaa !22
  %4 = load i32, i32* %conv, align 8, !dbg !94, !tbaa !28
  %5 = load double**, double*** %newSxx.addr, align 8, !dbg !94, !tbaa !22
  %6 = load double**, double*** %newSyy.addr, align 8, !dbg !94, !tbaa !22
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32 %4, double** %5, double** %6) #4, !dbg !94
  ret void, !dbg !94
}

; Function Attrs: nounwind
declare !callback !95 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  %length = alloca i32, align 4
  %newSxx = alloca double*, align 8
  %newSyy = alloca double*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %length to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %length, metadata !101, metadata !DIExpression()), !dbg !105
  store i32 1000, i32* %length, align 4, !dbg !105, !tbaa !28
  %1 = bitcast double** %newSxx to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #4, !dbg !106
  call void @llvm.dbg.declare(metadata double** %newSxx, metadata !102, metadata !DIExpression()), !dbg !107
  %2 = load i32, i32* %length, align 4, !dbg !108, !tbaa !28
  %conv = sext i32 %2 to i64, !dbg !108
  %mul = mul i64 %conv, 8, !dbg !109
  %call = call noalias i8* @malloc(i64 %mul) #4, !dbg !110
  %3 = bitcast i8* %call to double*, !dbg !110
  store double* %3, double** %newSxx, align 8, !dbg !107, !tbaa !22
  %4 = bitcast double** %newSyy to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4, !dbg !111
  call void @llvm.dbg.declare(metadata double** %newSyy, metadata !103, metadata !DIExpression()), !dbg !112
  %5 = load i32, i32* %length, align 4, !dbg !113, !tbaa !28
  %conv1 = sext i32 %5 to i64, !dbg !113
  %mul2 = mul i64 %conv1, 8, !dbg !114
  %call3 = call noalias i8* @malloc(i64 %mul2) #4, !dbg !115
  %6 = bitcast i8* %call3 to double*, !dbg !115
  store double* %6, double** %newSyy, align 8, !dbg !112, !tbaa !22
  %7 = load double*, double** %newSxx, align 8, !dbg !116, !tbaa !22
  %8 = load double*, double** %newSyy, align 8, !dbg !117, !tbaa !22
  %9 = load i32, i32* %length, align 4, !dbg !118, !tbaa !28
  call void @foo(double* %7, double* %8, i32 %9), !dbg !119
  %10 = load double*, double** %newSxx, align 8, !dbg !120, !tbaa !22
  %11 = bitcast double* %10 to i8*, !dbg !120
  call void @free(i8* %11) #4, !dbg !121
  %12 = load double*, double** %newSyy, align 8, !dbg !122, !tbaa !22
  %13 = bitcast double* %12 to i8*, !dbg !122
  call void @free(i8* %13) #4, !dbg !123
  %14 = bitcast double** %newSyy to i8*, !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #4, !dbg !124
  %15 = bitcast double** %newSxx to i8*, !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #4, !dbg !124
  %16 = bitcast i32* %length to i8*, !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !124
  ret i32 0, !dbg !125
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare !dbg !126 void @free(i8*) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB067-restrictpointer1-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 57, type: !10, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !16}
!12 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "real8", file: !1, line: 55, baseType: !15)
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21}
!18 = !DILocalVariable(name: "newSxx", arg: 1, scope: !9, file: !1, line: 57, type: !12)
!19 = !DILocalVariable(name: "newSyy", arg: 2, scope: !9, file: !1, line: 57, type: !12)
!20 = !DILocalVariable(name: "length", arg: 3, scope: !9, file: !1, line: 57, type: !16)
!21 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 59, type: !16)
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 57, column: 27, scope: !9)
!27 = !DILocation(line: 57, column: 52, scope: !9)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !24, i64 0}
!30 = !DILocation(line: 57, column: 64, scope: !9)
!31 = !DILocation(line: 59, column: 3, scope: !9)
!32 = !DILocation(line: 59, column: 7, scope: !9)
!33 = !DILocation(line: 61, column: 1, scope: !9)
!34 = !{!35, !35, i64 0}
!35 = !{!"long", !24, i64 0}
!36 = !DILocation(line: 66, column: 1, scope: !9)
!37 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !38, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, !40, !16, !44, !44}
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!44 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!45 = !{!46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58, !59, !55, !55}
!46 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !37, type: !40, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !37, type: !40, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "length", arg: 3, scope: !37, file: !1, line: 57, type: !16)
!49 = !DILocalVariable(name: "newSxx", arg: 4, scope: !37, file: !1, line: 57, type: !44)
!50 = !DILocalVariable(name: "newSyy", arg: 5, scope: !37, file: !1, line: 57, type: !44)
!51 = !DILocalVariable(name: ".omp.iv", scope: !37, type: !52, flags: DIFlagArtificial)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DILocalVariable(name: ".capture_expr.", scope: !37, type: !16, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".capture_expr.", scope: !37, type: !52, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "i", scope: !37, type: !16, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.lb", scope: !37, type: !52, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".omp.ub", scope: !37, type: !52, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.stride", scope: !37, type: !52, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.is_last", scope: !37, type: !16, flags: DIFlagArtificial)
!60 = !DILocation(line: 0, scope: !37)
!61 = !DILocation(line: 57, column: 64, scope: !37)
!62 = !DILocation(line: 57, column: 27, scope: !37)
!63 = !DILocation(line: 57, column: 52, scope: !37)
!64 = !DILocation(line: 62, column: 3, scope: !37)
!65 = !DILocation(line: 62, column: 20, scope: !37)
!66 = !DILocation(line: 62, column: 27, scope: !37)
!67 = !DILocation(line: 62, column: 32, scope: !37)
!68 = !DILocation(line: 62, column: 8, scope: !37)
!69 = !DILocation(line: 61, column: 1, scope: !37)
!70 = !DILocation(line: 63, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !37, file: !1, line: 62, column: 40)
!72 = !DILocation(line: 63, column: 12, scope: !71)
!73 = !DILocation(line: 63, column: 15, scope: !71)
!74 = !{!75, !75, i64 0}
!75 = !{!"double", !24, i64 0}
!76 = !DILocation(line: 64, column: 5, scope: !71)
!77 = !DILocation(line: 64, column: 12, scope: !71)
!78 = !DILocation(line: 64, column: 15, scope: !71)
!79 = !DILocation(line: 65, column: 3, scope: !71)
!80 = distinct !{!80, !69, !81}
!81 = !DILocation(line: 61, column: 59, scope: !37)
!82 = !DILocation(line: 65, column: 3, scope: !37)
!83 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !84, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !40, !40, !86, !44, !44}
!86 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!87 = !{!88, !89, !90, !91, !92}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !40, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !40, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "length", arg: 3, scope: !83, type: !86, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "newSxx", arg: 4, scope: !83, type: !44, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "newSyy", arg: 5, scope: !83, type: !44, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !83)
!94 = !DILocation(line: 61, column: 1, scope: !83)
!95 = !{!96}
!96 = !{i64 2, i64 -1, i64 -1, i1 true}
!97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !98, scopeLine: 69, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{!16}
!100 = !{!101, !102, !103}
!101 = !DILocalVariable(name: "length", scope: !97, file: !1, line: 70, type: !16)
!102 = !DILocalVariable(name: "newSxx", scope: !97, file: !1, line: 71, type: !13)
!103 = !DILocalVariable(name: "newSyy", scope: !97, file: !1, line: 72, type: !13)
!104 = !DILocation(line: 70, column: 3, scope: !97)
!105 = !DILocation(line: 70, column: 7, scope: !97)
!106 = !DILocation(line: 71, column: 3, scope: !97)
!107 = !DILocation(line: 71, column: 10, scope: !97)
!108 = !DILocation(line: 71, column: 27, scope: !97)
!109 = !DILocation(line: 71, column: 33, scope: !97)
!110 = !DILocation(line: 71, column: 19, scope: !97)
!111 = !DILocation(line: 72, column: 3, scope: !97)
!112 = !DILocation(line: 72, column: 10, scope: !97)
!113 = !DILocation(line: 72, column: 27, scope: !97)
!114 = !DILocation(line: 72, column: 33, scope: !97)
!115 = !DILocation(line: 72, column: 19, scope: !97)
!116 = !DILocation(line: 74, column: 7, scope: !97)
!117 = !DILocation(line: 74, column: 15, scope: !97)
!118 = !DILocation(line: 74, column: 23, scope: !97)
!119 = !DILocation(line: 74, column: 3, scope: !97)
!120 = !DILocation(line: 76, column: 9, scope: !97)
!121 = !DILocation(line: 76, column: 3, scope: !97)
!122 = !DILocation(line: 77, column: 9, scope: !97)
!123 = !DILocation(line: 77, column: 3, scope: !97)
!124 = !DILocation(line: 79, column: 1, scope: !97)
!125 = !DILocation(line: 78, column: 3, scope: !97)
!126 = !DISubprogram(name: "free", scope: !127, file: !127, line: 565, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!127 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
