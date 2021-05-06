; ModuleID = 'DRB065-pireduction-orig-no.c'
source_filename = "DRB065-pireduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [42 x i8] c";DRB065-pireduction-orig-no.c;main;61;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [43 x i8] c";DRB065-pireduction-orig-no.c;main;61;52;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"PI=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pi = alloca double, align 8
  %i = alloca i64, align 8
  %x = alloca double, align 8
  %interval_width = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !26
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !30
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !33
  %0 = bitcast double* %pi to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #4, !dbg !34
  call void @llvm.dbg.declare(metadata double* %pi, metadata !21, metadata !DIExpression()), !dbg !35
  store double 0.000000e+00, double* %pi, align 8, !dbg !35, !tbaa !36
  %1 = bitcast i64* %i to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i64* %i, metadata !22, metadata !DIExpression()), !dbg !39
  %2 = bitcast double* %x to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4, !dbg !40
  call void @llvm.dbg.declare(metadata double* %x, metadata !24, metadata !DIExpression()), !dbg !41
  %3 = bitcast double* %interval_width to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #4, !dbg !40
  call void @llvm.dbg.declare(metadata double* %interval_width, metadata !25, metadata !DIExpression()), !dbg !42
  store double 5.000000e-10, double* %interval_width, align 8, !dbg !43, !tbaa !36
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %interval_width, double* %pi), !dbg !44
  %4 = load double, double* %pi, align 8, !dbg !45, !tbaa !36
  %mul = fmul double %4, 4.000000e+00, !dbg !46
  %5 = load double, double* %interval_width, align 8, !dbg !47, !tbaa !36
  %mul1 = fmul double %mul, %5, !dbg !48
  store double %mul1, double* %pi, align 8, !dbg !49, !tbaa !36
  %6 = load double, double* %pi, align 8, !dbg !50, !tbaa !36
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %6), !dbg !51
  %7 = bitcast double* %interval_width to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #4, !dbg !52
  %8 = bitcast double* %x to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #4, !dbg !52
  %9 = bitcast i64* %i to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #4, !dbg !52
  %10 = bitcast double* %pi to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #4, !dbg !52
  ret i32 0, !dbg !53
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* nonnull align 8 dereferenceable(8) %interval_width, double* nonnull align 8 dereferenceable(8) %pi) #3 !dbg !54 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %interval_width.addr = alloca double*, align 8
  %pi.addr = alloca double*, align 8
  %.omp.iv = alloca i64, align 8
  %tmp = alloca i64, align 8
  %.omp.lb = alloca i64, align 8
  %.omp.ub = alloca i64, align 8
  %.omp.stride = alloca i64, align 8
  %.omp.is_last = alloca i32, align 4
  %x = alloca double, align 8
  %pi1 = alloca double, align 8
  %i = alloca i64, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp10 = alloca double, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !63, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !64, metadata !DIExpression()), !dbg !75
  store double* %interval_width, double** %interval_width.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata double** %interval_width.addr, metadata !65, metadata !DIExpression()), !dbg !76
  store double* %pi, double** %pi.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata double** %pi.addr, metadata !66, metadata !DIExpression()), !dbg !77
  %0 = load double*, double** %interval_width.addr, align 8, !dbg !78, !tbaa !31
  %1 = load double*, double** %pi.addr, align 8, !dbg !78, !tbaa !31
  %2 = bitcast i64* %.omp.iv to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %.omp.iv, metadata !67, metadata !DIExpression()), !dbg !75
  %3 = bitcast i64* %.omp.lb to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %.omp.lb, metadata !68, metadata !DIExpression()), !dbg !75
  store i64 0, i64* %.omp.lb, align 8, !dbg !79, !tbaa !80
  %4 = bitcast i64* %.omp.ub to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %.omp.ub, metadata !69, metadata !DIExpression()), !dbg !75
  store i64 1999999999, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  %5 = bitcast i64* %.omp.stride to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %.omp.stride, metadata !70, metadata !DIExpression()), !dbg !75
  store i64 1, i64* %.omp.stride, align 8, !dbg !79, !tbaa !80
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !71, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.is_last, align 4, !dbg !79, !tbaa !26
  %7 = bitcast double* %x to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #4, !dbg !78
  call void @llvm.dbg.declare(metadata double* %x, metadata !72, metadata !DIExpression()), !dbg !75
  %8 = bitcast double* %pi1 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !78
  call void @llvm.dbg.declare(metadata double* %pi1, metadata !73, metadata !DIExpression()), !dbg !75
  store double 0.000000e+00, double* %pi1, align 8, !dbg !82, !tbaa !36
  %9 = bitcast i64* %i to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %i, metadata !74, metadata !DIExpression()), !dbg !75
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %11 = load i32, i32* %10, align 4, !dbg !78, !tbaa !26
  call void @__kmpc_for_static_init_8(%struct.ident_t* @1, i32 %11, i32 34, i32* %.omp.is_last, i64* %.omp.lb, i64* %.omp.ub, i64* %.omp.stride, i64 1, i64 1), !dbg !83
  %12 = load i64, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  %cmp = icmp sgt i64 %12, 1999999999, !dbg !79
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !79

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !79

cond.false:                                       ; preds = %entry
  %13 = load i64, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  br label %cond.end, !dbg !79

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1999999999, %cond.true ], [ %13, %cond.false ], !dbg !79
  store i64 %cond, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  %14 = load i64, i64* %.omp.lb, align 8, !dbg !79, !tbaa !80
  store i64 %14, i64* %.omp.iv, align 8, !dbg !79, !tbaa !80
  br label %omp.inner.for.cond, !dbg !78

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i64, i64* %.omp.iv, align 8, !dbg !79, !tbaa !80
  %16 = load i64, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  %cmp2 = icmp sle i64 %15, %16, !dbg !78
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !78

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !78

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i64, i64* %.omp.iv, align 8, !dbg !79, !tbaa !80
  %mul = mul nsw i64 %17, 1, !dbg !84
  %add = add nsw i64 0, %mul, !dbg !84
  store i64 %add, i64* %i, align 8, !dbg !84, !tbaa !80
  %18 = load i64, i64* %i, align 8, !dbg !85, !tbaa !80
  %conv = sitofp i64 %18 to double, !dbg !85
  %add3 = fadd double %conv, 5.000000e-01, !dbg !87
  %19 = load double, double* %0, align 8, !dbg !88, !tbaa !36
  %mul4 = fmul double %add3, %19, !dbg !89
  store double %mul4, double* %x, align 8, !dbg !90, !tbaa !36
  %20 = load double, double* %x, align 8, !dbg !91, !tbaa !36
  %21 = load double, double* %x, align 8, !dbg !92, !tbaa !36
  %mul5 = fmul double %20, %21, !dbg !93
  %add6 = fadd double %mul5, 1.000000e+00, !dbg !94
  %div = fdiv double 1.000000e+00, %add6, !dbg !95
  %22 = load double, double* %pi1, align 8, !dbg !96, !tbaa !36
  %add7 = fadd double %22, %div, !dbg !96
  store double %add7, double* %pi1, align 8, !dbg !96, !tbaa !36
  br label %omp.body.continue, !dbg !97

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !83

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i64, i64* %.omp.iv, align 8, !dbg !79, !tbaa !80
  %add8 = add nsw i64 %23, 1, !dbg !78
  store i64 %add8, i64* %.omp.iv, align 8, !dbg !78, !tbaa !80
  br label %omp.inner.for.cond, !dbg !83, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !83

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %11), !dbg !99
  %24 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !83
  %25 = bitcast double* %pi1 to i8*, !dbg !83
  store i8* %25, i8** %24, align 8, !dbg !83
  %26 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !83
  %27 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @4, i32 %11, i32 1, i64 8, i8* %26, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !83
  switch i32 %27, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !83

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %28 = load double, double* %1, align 8, !dbg !82, !tbaa !36
  %29 = load double, double* %pi1, align 8, !dbg !82, !tbaa !36
  %add9 = fadd double %28, %29, !dbg !100
  store double %add9, double* %1, align 8, !dbg !100, !tbaa !36
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @4, i32 %11, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !83
  br label %.omp.reduction.default, !dbg !83

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %30 = load double, double* %pi1, align 8, !dbg !82, !tbaa !36
  %31 = bitcast double* %1 to i64*, !dbg !83
  %atomic-load = load atomic i64, i64* %31 monotonic, align 8, !dbg !83, !tbaa !36
  br label %atomic_cont, !dbg !83

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %32 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %40, %atomic_cont ], !dbg !83
  %33 = bitcast double* %atomic-temp to i64*, !dbg !83
  %34 = bitcast i64 %32 to double, !dbg !83
  store double %34, double* %tmp10, align 8, !dbg !83, !tbaa !36
  %35 = load double, double* %tmp10, align 8, !dbg !82, !tbaa !36
  %36 = load double, double* %pi1, align 8, !dbg !82, !tbaa !36
  %add11 = fadd double %35, %36, !dbg !100
  store double %add11, double* %atomic-temp, align 8, !dbg !83, !tbaa !36
  %37 = load i64, i64* %33, align 8, !dbg !83
  %38 = bitcast double* %1 to i64*, !dbg !83
  %39 = cmpxchg i64* %38, i64 %32, i64 %37 monotonic monotonic, !dbg !83
  %40 = extractvalue { i64, i1 } %39, 0, !dbg !83
  %41 = extractvalue { i64, i1 } %39, 1, !dbg !83
  br i1 %41, label %atomic_exit, label %atomic_cont, !dbg !83

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !83

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  %42 = bitcast i64* %i to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #4, !dbg !83
  %43 = bitcast double* %pi1 to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #4, !dbg !83
  %44 = bitcast double* %x to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #4, !dbg !83
  %45 = bitcast i32* %.omp.is_last to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !83
  %46 = bitcast i64* %.omp.stride to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #4, !dbg !83
  %47 = bitcast i64* %.omp.ub to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #4, !dbg !83
  %48 = bitcast i64* %.omp.lb to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #4, !dbg !83
  %49 = bitcast i64* %.omp.iv to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #4, !dbg !83
  ret void, !dbg !101
}

declare void @__kmpc_for_static_init_8(%struct.ident_t*, i32, i32, i32*, i64*, i64*, i64*, i64, i64)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !102 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !105, metadata !DIExpression()), !dbg !108
  store i8* %1, i8** %.addr1, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !107, metadata !DIExpression()), !dbg !108
  %2 = load i8*, i8** %.addr, align 8, !dbg !109
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !109
  %4 = load i8*, i8** %.addr1, align 8, !dbg !109
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !109
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !109
  %7 = load i8*, i8** %6, align 8, !dbg !109
  %8 = bitcast i8* %7 to double*, !dbg !109
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !109
  %10 = load i8*, i8** %9, align 8, !dbg !109
  %11 = bitcast i8* %10 to double*, !dbg !109
  %12 = load double, double* %11, align 8, !dbg !110, !tbaa !36
  %13 = load double, double* %8, align 8, !dbg !110, !tbaa !36
  %add = fadd double %12, %13, !dbg !111
  store double %add, double* %11, align 8, !dbg !111, !tbaa !36
  ret void, !dbg !110
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* nonnull align 8 dereferenceable(8) %interval_width, double* nonnull align 8 dereferenceable(8) %pi) #3 !dbg !112 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %interval_width.addr = alloca double*, align 8
  %pi.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !118
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !118
  store double* %interval_width, double** %interval_width.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata double** %interval_width.addr, metadata !116, metadata !DIExpression()), !dbg !118
  store double* %pi, double** %pi.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata double** %pi.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load double*, double** %interval_width.addr, align 8, !dbg !119, !tbaa !31
  %1 = load double*, double** %pi.addr, align 8, !dbg !119, !tbaa !31
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !119, !tbaa !31
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !119, !tbaa !31
  %4 = load double*, double** %interval_width.addr, align 8, !dbg !119, !tbaa !31
  %5 = load double*, double** %pi.addr, align 8, !dbg !119, !tbaa !31
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double* %4, double* %5) #4, !dbg !119
  ret void, !dbg !119
}

; Function Attrs: nounwind
declare !callback !120 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

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
!1 = !DIFile(filename: "DRB065-pireduction-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"clang version 11.1.0"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !12, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21, !22, !24, !25}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !11, file: !1, line: 54, type: !14)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !11, file: !1, line: 54, type: !15)
!21 = !DILocalVariable(name: "pi", scope: !11, file: !1, line: 56, type: !4)
!22 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 57, type: !23)
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DILocalVariable(name: "x", scope: !11, file: !1, line: 58, type: !4)
!25 = !DILocalVariable(name: "interval_width", scope: !11, file: !1, line: 58, type: !4)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 54, column: 14, scope: !11)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !DILocation(line: 54, column: 27, scope: !11)
!34 = !DILocation(line: 56, column: 3, scope: !11)
!35 = !DILocation(line: 56, column: 10, scope: !11)
!36 = !{!37, !37, i64 0}
!37 = !{!"double", !28, i64 0}
!38 = !DILocation(line: 57, column: 3, scope: !11)
!39 = !DILocation(line: 57, column: 12, scope: !11)
!40 = !DILocation(line: 58, column: 3, scope: !11)
!41 = !DILocation(line: 58, column: 10, scope: !11)
!42 = !DILocation(line: 58, column: 13, scope: !11)
!43 = !DILocation(line: 59, column: 18, scope: !11)
!44 = !DILocation(line: 61, column: 1, scope: !11)
!45 = !DILocation(line: 67, column: 8, scope: !11)
!46 = !DILocation(line: 67, column: 11, scope: !11)
!47 = !DILocation(line: 67, column: 19, scope: !11)
!48 = !DILocation(line: 67, column: 17, scope: !11)
!49 = !DILocation(line: 67, column: 6, scope: !11)
!50 = !DILocation(line: 68, column: 22, scope: !11)
!51 = !DILocation(line: 68, column: 3, scope: !11)
!52 = !DILocation(line: 70, column: 1, scope: !11)
!53 = !DILocation(line: 69, column: 3, scope: !11)
!54 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !55, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !57, !61, !61}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!63 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !57, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !54, type: !57, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "interval_width", arg: 3, scope: !54, file: !1, line: 58, type: !61)
!66 = !DILocalVariable(name: "pi", arg: 4, scope: !54, file: !1, line: 56, type: !61)
!67 = !DILocalVariable(name: ".omp.iv", scope: !54, type: !23, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.lb", scope: !54, type: !23, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.ub", scope: !54, type: !23, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.stride", scope: !54, type: !23, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.is_last", scope: !54, type: !14, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "x", scope: !54, type: !4, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "pi", scope: !54, type: !4, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "i", scope: !54, type: !23, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !54)
!76 = !DILocation(line: 58, column: 13, scope: !54)
!77 = !DILocation(line: 56, column: 10, scope: !54)
!78 = !DILocation(line: 62, column: 3, scope: !54)
!79 = !DILocation(line: 62, column: 8, scope: !54)
!80 = !{!81, !81, i64 0}
!81 = !{!"long", !28, i64 0}
!82 = !DILocation(line: 61, column: 38, scope: !54)
!83 = !DILocation(line: 61, column: 1, scope: !54)
!84 = !DILocation(line: 62, column: 30, scope: !54)
!85 = !DILocation(line: 63, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !54, file: !1, line: 62, column: 35)
!87 = !DILocation(line: 63, column: 11, scope: !86)
!88 = !DILocation(line: 63, column: 20, scope: !86)
!89 = !DILocation(line: 63, column: 18, scope: !86)
!90 = !DILocation(line: 63, column: 7, scope: !86)
!91 = !DILocation(line: 64, column: 18, scope: !86)
!92 = !DILocation(line: 64, column: 20, scope: !86)
!93 = !DILocation(line: 64, column: 19, scope: !86)
!94 = !DILocation(line: 64, column: 22, scope: !86)
!95 = !DILocation(line: 64, column: 15, scope: !86)
!96 = !DILocation(line: 64, column: 8, scope: !86)
!97 = !DILocation(line: 65, column: 3, scope: !86)
!98 = distinct !{!98, !83, !99}
!99 = !DILocation(line: 61, column: 52, scope: !54)
!100 = !DILocation(line: 61, column: 36, scope: !54)
!101 = !DILocation(line: 65, column: 3, scope: !54)
!102 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 61, type: !103, scopeLine: 61, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!103 = !DISubroutineType(types: !2)
!104 = !{!105, !107}
!105 = !DILocalVariable(arg: 1, scope: !102, type: !106, flags: DIFlagArtificial)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DILocalVariable(arg: 2, scope: !102, type: !106, flags: DIFlagArtificial)
!108 = !DILocation(line: 0, scope: !102)
!109 = !DILocation(line: 61, column: 52, scope: !102)
!110 = !DILocation(line: 61, column: 38, scope: !102)
!111 = !DILocation(line: 61, column: 36, scope: !102)
!112 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !55, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !112, type: !57, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !112, type: !57, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "interval_width", arg: 3, scope: !112, type: !61, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "pi", arg: 4, scope: !112, type: !61, flags: DIFlagArtificial)
!118 = !DILocation(line: 0, scope: !112)
!119 = !DILocation(line: 61, column: 1, scope: !112)
!120 = !{!121}
!121 = !{i64 2, i64 -1, i64 -1, i1 true}
