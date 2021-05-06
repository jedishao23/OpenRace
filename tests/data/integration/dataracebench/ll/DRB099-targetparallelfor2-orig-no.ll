; ModuleID = 'DRB099-targetparallelfor2-orig-no.c'
source_filename = "DRB099-targetparallelfor2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [48 x i8] c";DRB099-targetparallelfor2-orig-no.c;foo;54;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [49 x i8] c";DRB099-targetparallelfor2-orig-no.c;foo;54;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"b[50]=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo(double* %a, double* %b, i32 %N) #0 !dbg !11 {
entry:
  %a.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %N.casted = alloca i64, align 8
  store double* %a, double** %a.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !17, metadata !DIExpression()), !dbg !25
  store double* %b, double** %b.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !18, metadata !DIExpression()), !dbg !26
  store i32 %N, i32* %N.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %N.addr, metadata !19, metadata !DIExpression()), !dbg !29
  %0 = bitcast i32* %i to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !31
  %1 = load i32, i32* %N.addr, align 4, !dbg !32, !tbaa !27
  %conv = bitcast i64* %N.casted to i32*, !dbg !32
  store i32 %1, i32* %conv, align 4, !dbg !32, !tbaa !27
  %2 = load i64, i64* %N.casted, align 8, !dbg !32, !tbaa !33
  %3 = load double*, double** %b.addr, align 8, !dbg !32, !tbaa !21
  %4 = load double*, double** %a.addr, align 8, !dbg !32, !tbaa !21
  call void @__omp_offloading_10308_be044b_foo_l53(i64 %2, double* %3, double* %4) #4, !dbg !35
  %5 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !37
  ret void, !dbg !37
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be044b_foo_l53_debug__(i32 %N, double* %b, double* %a) #3 !dbg !38 {
entry:
  %N.addr = alloca i32, align 4
  %b.addr = alloca double*, align 8
  %a.addr = alloca double*, align 8
  store i32 %N, i32* %N.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %N.addr, metadata !42, metadata !DIExpression()), !dbg !45
  store double* %b, double** %b.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !43, metadata !DIExpression()), !dbg !46
  store double* %a, double** %a.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !44, metadata !DIExpression()), !dbg !47
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N.addr, double** %b.addr, double** %a.addr), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %N, double** nonnull align 8 dereferenceable(8) %b, double** nonnull align 8 dereferenceable(8) %a) #3 !dbg !50 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %b.addr = alloca double**, align 8
  %a.addr = alloca double**, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !60, metadata !DIExpression()), !dbg !72
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !61, metadata !DIExpression()), !dbg !72
  store i32* %N, i32** %N.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !62, metadata !DIExpression()), !dbg !73
  store double** %b, double*** %b.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double*** %b.addr, metadata !63, metadata !DIExpression()), !dbg !74
  store double** %a, double*** %a.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double*** %a.addr, metadata !64, metadata !DIExpression()), !dbg !75
  %0 = load i32*, i32** %N.addr, align 8, !dbg !76, !tbaa !21
  %1 = load double**, double*** %b.addr, align 8, !dbg !76, !tbaa !21
  %2 = load double**, double*** %a.addr, align 8, !dbg !76, !tbaa !21
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !65, metadata !DIExpression()), !dbg !72
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !66, metadata !DIExpression()), !dbg !72
  %5 = load i32, i32* %0, align 4, !dbg !77, !tbaa !27
  store i32 %5, i32* %.capture_expr., align 4, !dbg !77, !tbaa !27
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !66, metadata !DIExpression()), !dbg !72
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !77, !tbaa !27
  %sub = sub nsw i32 %7, 0, !dbg !76
  %div = sdiv i32 %sub, 1, !dbg !76
  %sub2 = sub nsw i32 %div, 1, !dbg !76
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !76, !tbaa !27
  %8 = bitcast i32* %i to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i, metadata !67, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %i, align 4, !dbg !78, !tbaa !27
  %9 = bitcast i32* %i to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !76
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !77, !tbaa !27
  %cmp = icmp slt i32 0, %10, !dbg !76
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !76

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !68, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.lb, align 4, !dbg !79, !tbaa !27
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !69, metadata !DIExpression()), !dbg !72
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !76, !tbaa !27
  store i32 %13, i32* %.omp.ub, align 4, !dbg !79, !tbaa !27
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !70, metadata !DIExpression()), !dbg !72
  store i32 1, i32* %.omp.stride, align 4, !dbg !79, !tbaa !27
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.is_last, align 4, !dbg !79, !tbaa !27
  %16 = bitcast i32* %i3 to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !67, metadata !DIExpression()), !dbg !72
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %18 = load i32, i32* %17, align 4, !dbg !76, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !80
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !79, !tbaa !27
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !76, !tbaa !27
  %cmp4 = icmp sgt i32 %19, %20, !dbg !79
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !79

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !76, !tbaa !27
  br label %cond.end, !dbg !79

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !79, !tbaa !27
  br label %cond.end, !dbg !79

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !79
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !79, !tbaa !27
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !79, !tbaa !27
  store i32 %23, i32* %.omp.iv, align 4, !dbg !79, !tbaa !27
  br label %omp.inner.for.cond, !dbg !76

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !27
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !79, !tbaa !27
  %cmp5 = icmp sle i32 %24, %25, !dbg !76
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !76

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !76

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !27
  %mul = mul nsw i32 %26, 1, !dbg !78
  %add = add nsw i32 0, %mul, !dbg !78
  store i32 %add, i32* %i3, align 4, !dbg !78, !tbaa !27
  %27 = load double*, double** %2, align 8, !dbg !81, !tbaa !21
  %28 = load i32, i32* %i3, align 4, !dbg !82, !tbaa !27
  %idxprom = sext i32 %28 to i64, !dbg !81
  %arrayidx = getelementptr inbounds double, double* %27, i64 %idxprom, !dbg !81
  %29 = load double, double* %arrayidx, align 8, !dbg !81, !tbaa !83
  %30 = load i32, i32* %i3, align 4, !dbg !85, !tbaa !27
  %conv = sitofp i32 %30 to double, !dbg !86
  %mul6 = fmul double %29, %conv, !dbg !87
  %31 = load double*, double** %1, align 8, !dbg !88, !tbaa !21
  %32 = load i32, i32* %i3, align 4, !dbg !89, !tbaa !27
  %idxprom7 = sext i32 %32 to i64, !dbg !88
  %arrayidx8 = getelementptr inbounds double, double* %31, i64 %idxprom7, !dbg !88
  store double %mul6, double* %arrayidx8, align 8, !dbg !90, !tbaa !83
  br label %omp.body.continue, !dbg !88

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !80

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !27
  %add9 = add nsw i32 %33, 1, !dbg !76
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !76, !tbaa !27
  br label %omp.inner.for.cond, !dbg !80, !llvm.loop !91

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !80

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !80
  %35 = load i32, i32* %34, align 4, !dbg !80, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %35), !dbg !92
  %36 = bitcast i32* %i3 to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !80
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !80
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !80
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !80
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !80
  br label %omp.precond.end, !dbg !80

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.1 to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !80
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !80
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !80
  ret void, !dbg !85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %N, double** nonnull align 8 dereferenceable(8) %b, double** nonnull align 8 dereferenceable(8) %a) #3 !dbg !93 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %b.addr = alloca double**, align 8
  %a.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !95, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !96, metadata !DIExpression()), !dbg !100
  store i32* %N, i32** %N.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !97, metadata !DIExpression()), !dbg !100
  store double** %b, double*** %b.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double*** %b.addr, metadata !98, metadata !DIExpression()), !dbg !100
  store double** %a, double*** %a.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double*** %a.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i32*, i32** %N.addr, align 8, !dbg !101, !tbaa !21
  %1 = load double**, double*** %b.addr, align 8, !dbg !101, !tbaa !21
  %2 = load double**, double*** %a.addr, align 8, !dbg !101, !tbaa !21
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101, !tbaa !21
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !101, !tbaa !21
  %5 = load i32*, i32** %N.addr, align 8, !dbg !101, !tbaa !21
  %6 = load double**, double*** %b.addr, align 8, !dbg !101, !tbaa !21
  %7 = load double**, double*** %a.addr, align 8, !dbg !101, !tbaa !21
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, double** %6, double** %7) #4, !dbg !101
  ret void, !dbg !101
}

; Function Attrs: nounwind
declare !callback !102 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be044b_foo_l53(i64 %N, double* %b, double* %a) #3 !dbg !104 {
entry:
  %N.addr = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %a.addr = alloca double*, align 8
  store i64 %N, i64* %N.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i64* %N.addr, metadata !109, metadata !DIExpression()), !dbg !112
  store double* %b, double** %b.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !110, metadata !DIExpression()), !dbg !112
  store double* %a, double** %a.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !111, metadata !DIExpression()), !dbg !112
  %conv = bitcast i64* %N.addr to i32*, !dbg !113
  %0 = load i32, i32* %conv, align 8, !dbg !113, !tbaa !27
  %1 = load double*, double** %b.addr, align 8, !dbg !113, !tbaa !21
  %2 = load double*, double** %a.addr, align 8, !dbg !113, !tbaa !21
  call void @__omp_offloading_10308_be044b_foo_l53_debug__(i32 %0, double* %1, double* %2) #4, !dbg !113
  ret void, !dbg !113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !114 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !121, metadata !DIExpression()), !dbg !135
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !122, metadata !DIExpression()), !dbg !136
  %0 = bitcast i32* %i to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %i, metadata !123, metadata !DIExpression()), !dbg !138
  %1 = bitcast i32* %len to i8*, !dbg !139
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %len, metadata !124, metadata !DIExpression()), !dbg !140
  store i32 1000, i32* %len, align 4, !dbg !140, !tbaa !27
  %2 = load i32, i32* %len, align 4, !dbg !141, !tbaa !27
  %3 = zext i32 %2 to i64, !dbg !142
  %4 = call i8* @llvm.stacksave(), !dbg !142
  store i8* %4, i8** %saved_stack, align 8, !dbg !142
  %vla = alloca double, i64 %3, align 16, !dbg !142
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !125, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata double* %vla, metadata !126, metadata !DIExpression()), !dbg !144
  %5 = load i32, i32* %len, align 4, !dbg !145, !tbaa !27
  %6 = zext i32 %5 to i64, !dbg !142
  %vla1 = alloca double, i64 %6, align 16, !dbg !142
  store i64 %6, i64* %__vla_expr1, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !130, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata double* %vla1, metadata !131, metadata !DIExpression()), !dbg !146
  store i32 0, i32* %i, align 4, !dbg !147, !tbaa !27
  br label %for.cond, !dbg !149

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !150, !tbaa !27
  %8 = load i32, i32* %len, align 4, !dbg !152, !tbaa !27
  %cmp = icmp slt i32 %7, %8, !dbg !153
  br i1 %cmp, label %for.body, label %for.end, !dbg !154

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !155, !tbaa !27
  %conv = sitofp i32 %9 to double, !dbg !157
  %div = fdiv double %conv, 2.000000e+00, !dbg !158
  %10 = load i32, i32* %i, align 4, !dbg !159, !tbaa !27
  %idxprom = sext i32 %10 to i64, !dbg !160
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !160
  store double %div, double* %arrayidx, align 8, !dbg !161, !tbaa !83
  %11 = load i32, i32* %i, align 4, !dbg !162, !tbaa !27
  %idxprom2 = sext i32 %11 to i64, !dbg !163
  %arrayidx3 = getelementptr inbounds double, double* %vla1, i64 %idxprom2, !dbg !163
  store double 0.000000e+00, double* %arrayidx3, align 8, !dbg !164, !tbaa !83
  br label %for.inc, !dbg !165

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !166, !tbaa !27
  %inc = add nsw i32 %12, 1, !dbg !166
  store i32 %inc, i32* %i, align 4, !dbg !166, !tbaa !27
  br label %for.cond, !dbg !167, !llvm.loop !168

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %len, align 4, !dbg !171, !tbaa !27
  call void @foo(double* %vla, double* %vla1, i32 %13), !dbg !172
  %arrayidx4 = getelementptr inbounds double, double* %vla1, i64 50, !dbg !173
  %14 = load double, double* %arrayidx4, align 16, !dbg !173, !tbaa !83
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %14), !dbg !174
  store i32 0, i32* %retval, align 4, !dbg !175
  %15 = load i8*, i8** %saved_stack, align 8, !dbg !176
  call void @llvm.stackrestore(i8* %15), !dbg !176
  %16 = bitcast i32* %len to i8*, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !176
  %17 = bitcast i32* %i to i8*, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !176
  %18 = load i32, i32* %retval, align 4, !dbg !176
  ret i32 %18, !dbg !176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB099-targetparallelfor2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"clang version 11.1.0"}
!11 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 50, type: !12, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !14, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "a", arg: 1, scope: !11, file: !1, line: 50, type: !14)
!18 = !DILocalVariable(name: "b", arg: 2, scope: !11, file: !1, line: 50, type: !14)
!19 = !DILocalVariable(name: "N", arg: 3, scope: !11, file: !1, line: 50, type: !15)
!20 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 52, type: !15)
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 50, column: 19, scope: !11)
!26 = !DILocation(line: 50, column: 30, scope: !11)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !23, i64 0}
!29 = !DILocation(line: 50, column: 37, scope: !11)
!30 = !DILocation(line: 52, column: 3, scope: !11)
!31 = !DILocation(line: 52, column: 7, scope: !11)
!32 = !DILocation(line: 53, column: 1, scope: !11)
!33 = !{!34, !34, i64 0}
!34 = !{!"long", !23, i64 0}
!35 = !DILocation(line: 53, column: 1, scope: !36)
!36 = distinct !DILexicalBlock(scope: !11, file: !1, line: 53, column: 1)
!37 = !DILocation(line: 57, column: 1, scope: !11)
!38 = distinct !DISubprogram(name: "__omp_offloading_10308_be044b_foo_l53_debug__", scope: !1, file: !1, line: 54, type: !39, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !15, !14, !14}
!41 = !{!42, !43, !44}
!42 = !DILocalVariable(name: "N", arg: 1, scope: !38, file: !1, line: 50, type: !15)
!43 = !DILocalVariable(name: "b", arg: 2, scope: !38, file: !1, line: 50, type: !14)
!44 = !DILocalVariable(name: "a", arg: 3, scope: !38, file: !1, line: 50, type: !14)
!45 = !DILocation(line: 50, column: 37, scope: !38)
!46 = !DILocation(line: 50, column: 30, scope: !38)
!47 = !DILocation(line: 50, column: 19, scope: !38)
!48 = !DILocation(line: 54, column: 1, scope: !38)
!49 = !DILocation(line: 54, column: 25, scope: !38)
!50 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 55, type: !51, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !53, !57, !58, !58}
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!57 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !66, !67, !68, !69, !70, !71, !67}
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !50, type: !53, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !50, type: !53, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "N", arg: 3, scope: !50, file: !1, line: 50, type: !57)
!63 = !DILocalVariable(name: "b", arg: 4, scope: !50, file: !1, line: 50, type: !58)
!64 = !DILocalVariable(name: "a", arg: 5, scope: !50, file: !1, line: 50, type: !58)
!65 = !DILocalVariable(name: ".omp.iv", scope: !50, type: !15, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".capture_expr.", scope: !50, type: !15, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "i", scope: !50, type: !15, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.lb", scope: !50, type: !15, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.ub", scope: !50, type: !15, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.stride", scope: !50, type: !15, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.is_last", scope: !50, type: !15, flags: DIFlagArtificial)
!72 = !DILocation(line: 0, scope: !50)
!73 = !DILocation(line: 50, column: 37, scope: !50)
!74 = !DILocation(line: 50, column: 30, scope: !50)
!75 = !DILocation(line: 50, column: 19, scope: !50)
!76 = !DILocation(line: 55, column: 3, scope: !50)
!77 = !DILocation(line: 55, column: 15, scope: !50)
!78 = !DILocation(line: 55, column: 18, scope: !50)
!79 = !DILocation(line: 55, column: 8, scope: !50)
!80 = !DILocation(line: 54, column: 1, scope: !50)
!81 = !DILocation(line: 56, column: 10, scope: !50)
!82 = !DILocation(line: 56, column: 12, scope: !50)
!83 = !{!84, !84, i64 0}
!84 = !{!"double", !23, i64 0}
!85 = !DILocation(line: 56, column: 23, scope: !50)
!86 = !DILocation(line: 56, column: 15, scope: !50)
!87 = !DILocation(line: 56, column: 14, scope: !50)
!88 = !DILocation(line: 56, column: 5, scope: !50)
!89 = !DILocation(line: 56, column: 7, scope: !50)
!90 = !DILocation(line: 56, column: 9, scope: !50)
!91 = distinct !{!91, !80, !92}
!92 = !DILocation(line: 54, column: 25, scope: !50)
!93 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 54, type: !51, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !93, type: !53, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !93, type: !53, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "N", arg: 3, scope: !93, type: !57, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "b", arg: 4, scope: !93, type: !58, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "a", arg: 5, scope: !93, type: !58, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !93)
!101 = !DILocation(line: 54, column: 1, scope: !93)
!102 = !{!103}
!103 = !{i64 2, i64 -1, i64 -1, i1 true}
!104 = distinct !DISubprogram(name: "__omp_offloading_10308_be044b_foo_l53", scope: !1, file: !1, line: 53, type: !105, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !108)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !14, !14}
!107 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!108 = !{!109, !110, !111}
!109 = !DILocalVariable(name: "N", arg: 1, scope: !104, type: !107, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "b", arg: 2, scope: !104, type: !14, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "a", arg: 3, scope: !104, type: !14, flags: DIFlagArtificial)
!112 = !DILocation(line: 0, scope: !104)
!113 = !DILocation(line: 53, column: 1, scope: !104)
!114 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 59, type: !115, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!115 = !DISubroutineType(types: !116)
!116 = !{!15, !15, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!120 = !{!121, !122, !123, !124, !125, !126, !130, !131}
!121 = !DILocalVariable(name: "argc", arg: 1, scope: !114, file: !1, line: 59, type: !15)
!122 = !DILocalVariable(name: "argv", arg: 2, scope: !114, file: !1, line: 59, type: !117)
!123 = !DILocalVariable(name: "i", scope: !114, file: !1, line: 61, type: !15)
!124 = !DILocalVariable(name: "len", scope: !114, file: !1, line: 62, type: !15)
!125 = !DILocalVariable(name: "__vla_expr0", scope: !114, type: !107, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: "a", scope: !114, file: !1, line: 63, type: !127)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: !125)
!130 = !DILocalVariable(name: "__vla_expr1", scope: !114, type: !107, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "b", scope: !114, file: !1, line: 63, type: !132)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: !130)
!135 = !DILocation(line: 59, column: 14, scope: !114)
!136 = !DILocation(line: 59, column: 26, scope: !114)
!137 = !DILocation(line: 61, column: 3, scope: !114)
!138 = !DILocation(line: 61, column: 7, scope: !114)
!139 = !DILocation(line: 62, column: 3, scope: !114)
!140 = !DILocation(line: 62, column: 7, scope: !114)
!141 = !DILocation(line: 63, column: 12, scope: !114)
!142 = !DILocation(line: 63, column: 3, scope: !114)
!143 = !DILocation(line: 0, scope: !114)
!144 = !DILocation(line: 63, column: 10, scope: !114)
!145 = !DILocation(line: 63, column: 20, scope: !114)
!146 = !DILocation(line: 63, column: 18, scope: !114)
!147 = !DILocation(line: 64, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !114, file: !1, line: 64, column: 3)
!149 = !DILocation(line: 64, column: 8, scope: !148)
!150 = !DILocation(line: 64, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 64, column: 3)
!152 = !DILocation(line: 64, column: 15, scope: !151)
!153 = !DILocation(line: 64, column: 14, scope: !151)
!154 = !DILocation(line: 64, column: 3, scope: !148)
!155 = !DILocation(line: 66, column: 20, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 65, column: 3)
!157 = !DILocation(line: 66, column: 12, scope: !156)
!158 = !DILocation(line: 66, column: 22, scope: !156)
!159 = !DILocation(line: 66, column: 7, scope: !156)
!160 = !DILocation(line: 66, column: 5, scope: !156)
!161 = !DILocation(line: 66, column: 9, scope: !156)
!162 = !DILocation(line: 67, column: 7, scope: !156)
!163 = !DILocation(line: 67, column: 5, scope: !156)
!164 = !DILocation(line: 67, column: 9, scope: !156)
!165 = !DILocation(line: 68, column: 3, scope: !156)
!166 = !DILocation(line: 64, column: 21, scope: !151)
!167 = !DILocation(line: 64, column: 3, scope: !151)
!168 = distinct !{!168, !154, !169, !170}
!169 = !DILocation(line: 68, column: 3, scope: !148)
!170 = !{!"llvm.loop.unroll.disable"}
!171 = !DILocation(line: 70, column: 13, scope: !114)
!172 = !DILocation(line: 70, column: 3, scope: !114)
!173 = !DILocation(line: 72, column: 23, scope: !114)
!174 = !DILocation(line: 72, column: 3, scope: !114)
!175 = !DILocation(line: 73, column: 3, scope: !114)
!176 = !DILocation(line: 74, column: 1, scope: !114)
