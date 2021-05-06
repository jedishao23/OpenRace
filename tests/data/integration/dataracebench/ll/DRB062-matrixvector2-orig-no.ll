; ModuleID = 'DRB062-matrixvector2-orig-no.c'
source_filename = "DRB062-matrixvector2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [1000 x [1000 x double]] zeroinitializer, align 16, !dbg !0
@v = dso_local global [1000 x double] zeroinitializer, align 16, !dbg !6
@v_out = dso_local global [1000 x double] zeroinitializer, align 16, !dbg !12
@0 = private unnamed_addr constant [42 x i8] c";DRB062-matrixvector2-orig-no.c;mv;59;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [43 x i8] c";DRB062-matrixvector2-orig-no.c;mv;59;42;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @mv() #0 !dbg !22 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca float, align 4
  %0 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !35
  %1 = bitcast i32* %j to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %j, metadata !28, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !37, !tbaa !38
  br label %for.cond, !dbg !42

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !43, !tbaa !38
  %cmp = icmp slt i32 %2, 1000, !dbg !44
  br i1 %cmp, label %for.body, label %for.end, !dbg !45

for.body:                                         ; preds = %for.cond
  %3 = bitcast float* %sum to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !46
  call void @llvm.dbg.declare(metadata float* %sum, metadata !29, metadata !DIExpression()), !dbg !47
  store float 0.000000e+00, float* %sum, align 4, !dbg !47, !tbaa !48
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, float*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), float* %sum, i32* %i), !dbg !50
  %4 = load float, float* %sum, align 4, !dbg !51, !tbaa !48
  %conv = fpext float %4 to double, !dbg !51
  %5 = load i32, i32* %i, align 4, !dbg !52, !tbaa !38
  %idxprom = sext i32 %5 to i64, !dbg !53
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* @v_out, i64 0, i64 %idxprom, !dbg !53
  store double %conv, double* %arrayidx, align 8, !dbg !54, !tbaa !55
  %6 = bitcast float* %sum to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !57
  br label %for.inc, !dbg !58

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !59, !tbaa !38
  %inc = add nsw i32 %7, 1, !dbg !59
  store i32 %inc, i32* %i, align 4, !dbg !59, !tbaa !38
  br label %for.cond, !dbg !60, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %j to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !64
  %9 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !64
  ret void, !dbg !64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., float* nonnull align 4 dereferenceable(4) %sum, i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca float*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum1 = alloca float, align 4
  %j = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca float, align 4
  %tmp12 = alloca float, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !88
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !88
  store float* %sum, float** %sum.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !77, metadata !DIExpression()), !dbg !89
  store i32* %i, i32** %i.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !78, metadata !DIExpression()), !dbg !90
  %0 = load float*, float** %sum.addr, align 8, !dbg !91, !tbaa !86
  %1 = load i32*, i32** %i.addr, align 8, !dbg !91, !tbaa !86
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !79, metadata !DIExpression()), !dbg !88
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !80, metadata !DIExpression()), !dbg !88
  store i32 0, i32* %.omp.lb, align 4, !dbg !92, !tbaa !38
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !81, metadata !DIExpression()), !dbg !88
  store i32 999, i32* %.omp.ub, align 4, !dbg !92, !tbaa !38
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !82, metadata !DIExpression()), !dbg !88
  store i32 1, i32* %.omp.stride, align 4, !dbg !92, !tbaa !38
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !83, metadata !DIExpression()), !dbg !88
  store i32 0, i32* %.omp.is_last, align 4, !dbg !92, !tbaa !38
  %7 = bitcast float* %sum1 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !91
  call void @llvm.dbg.declare(metadata float* %sum1, metadata !84, metadata !DIExpression()), !dbg !88
  store float 0.000000e+00, float* %sum1, align 4, !dbg !93, !tbaa !48
  %8 = bitcast i32* %j to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %j, metadata !85, metadata !DIExpression()), !dbg !88
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !91
  %10 = load i32, i32* %9, align 4, !dbg !91, !tbaa !38
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !94
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !38
  %cmp = icmp sgt i32 %11, 999, !dbg !92
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !92

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !92

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !38
  br label %cond.end, !dbg !92

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %12, %cond.false ], !dbg !92
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !92, !tbaa !38
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !92, !tbaa !38
  store i32 %13, i32* %.omp.iv, align 4, !dbg !92, !tbaa !38
  br label %omp.inner.for.cond, !dbg !91

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !38
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !38
  %cmp2 = icmp sle i32 %14, %15, !dbg !91
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !91

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !91

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !38
  %mul = mul nsw i32 %16, 1, !dbg !95
  %add = add nsw i32 0, %mul, !dbg !95
  store i32 %add, i32* %j, align 4, !dbg !95, !tbaa !38
  %17 = load i32, i32* %1, align 4, !dbg !96, !tbaa !38
  %idxprom = sext i32 %17 to i64, !dbg !98
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @a, i64 0, i64 %idxprom, !dbg !98
  %18 = load i32, i32* %j, align 4, !dbg !99, !tbaa !38
  %idxprom3 = sext i32 %18 to i64, !dbg !98
  %arrayidx4 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom3, !dbg !98
  %19 = load double, double* %arrayidx4, align 8, !dbg !98, !tbaa !55
  %20 = load i32, i32* %j, align 4, !dbg !100, !tbaa !38
  %idxprom5 = sext i32 %20 to i64, !dbg !101
  %arrayidx6 = getelementptr inbounds [1000 x double], [1000 x double]* @v, i64 0, i64 %idxprom5, !dbg !101
  %21 = load double, double* %arrayidx6, align 8, !dbg !101, !tbaa !55
  %mul7 = fmul double %19, %21, !dbg !102
  %22 = load float, float* %sum1, align 4, !dbg !103, !tbaa !48
  %conv = fpext float %22 to double, !dbg !103
  %add8 = fadd double %conv, %mul7, !dbg !103
  %conv9 = fptrunc double %add8 to float, !dbg !103
  store float %conv9, float* %sum1, align 4, !dbg !103, !tbaa !48
  br label %omp.body.continue, !dbg !104

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !94

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !38
  %add10 = add nsw i32 %23, 1, !dbg !91
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !91, !tbaa !38
  br label %omp.inner.for.cond, !dbg !94, !llvm.loop !105

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !94

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %10), !dbg !106
  %24 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !94
  %25 = bitcast float* %sum1 to i8*, !dbg !94
  store i8* %25, i8** %24, align 8, !dbg !94
  %26 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !94
  %27 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @4, i32 %10, i32 1, i64 8, i8* %26, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !94
  switch i32 %27, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !94

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %28 = load float, float* %0, align 4, !dbg !93, !tbaa !48
  %29 = load float, float* %sum1, align 4, !dbg !93, !tbaa !48
  %add11 = fadd float %28, %29, !dbg !107
  store float %add11, float* %0, align 4, !dbg !107, !tbaa !48
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @4, i32 %10, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !94
  br label %.omp.reduction.default, !dbg !94

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %30 = load float, float* %sum1, align 4, !dbg !93, !tbaa !48
  %31 = bitcast float* %0 to i32*, !dbg !94
  %atomic-load = load atomic i32, i32* %31 monotonic, align 4, !dbg !94, !tbaa !48
  br label %atomic_cont, !dbg !94

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %32 = phi i32 [ %atomic-load, %.omp.reduction.case2 ], [ %40, %atomic_cont ], !dbg !94
  %33 = bitcast float* %atomic-temp to i32*, !dbg !94
  %34 = bitcast i32 %32 to float, !dbg !94
  store float %34, float* %tmp12, align 4, !dbg !94, !tbaa !48
  %35 = load float, float* %tmp12, align 4, !dbg !93, !tbaa !48
  %36 = load float, float* %sum1, align 4, !dbg !93, !tbaa !48
  %add13 = fadd float %35, %36, !dbg !107
  store float %add13, float* %atomic-temp, align 4, !dbg !94, !tbaa !48
  %37 = load i32, i32* %33, align 4, !dbg !94
  %38 = bitcast float* %0 to i32*, !dbg !94
  %39 = cmpxchg i32* %38, i32 %32, i32 %37 monotonic monotonic, !dbg !94
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !94
  %41 = extractvalue { i32, i1 } %39, 1, !dbg !94
  br i1 %41, label %atomic_exit, label %atomic_cont, !dbg !94

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !94

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  %42 = bitcast i32* %j to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !94
  %43 = bitcast float* %sum1 to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !94
  %44 = bitcast i32* %.omp.is_last to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !94
  %45 = bitcast i32* %.omp.stride to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !94
  %46 = bitcast i32* %.omp.ub to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !94
  %47 = bitcast i32* %.omp.lb to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !94
  %48 = bitcast i32* %.omp.iv to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !94
  ret void, !dbg !108
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !109 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !112, metadata !DIExpression()), !dbg !115
  store i8* %1, i8** %.addr1, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !114, metadata !DIExpression()), !dbg !115
  %2 = load i8*, i8** %.addr, align 8, !dbg !116
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !116
  %4 = load i8*, i8** %.addr1, align 8, !dbg !116
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !116
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !116
  %7 = load i8*, i8** %6, align 8, !dbg !116
  %8 = bitcast i8* %7 to float*, !dbg !116
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !116
  %10 = load i8*, i8** %9, align 8, !dbg !116
  %11 = bitcast i8* %10 to float*, !dbg !116
  %12 = load float, float* %11, align 4, !dbg !117, !tbaa !48
  %13 = load float, float* %8, align 4, !dbg !117, !tbaa !48
  %add = fadd float %12, %13, !dbg !118
  store float %add, float* %11, align 4, !dbg !118, !tbaa !48
  ret void, !dbg !117
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., float* nonnull align 4 dereferenceable(4) %sum, i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !119 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca float*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !121, metadata !DIExpression()), !dbg !125
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !122, metadata !DIExpression()), !dbg !125
  store float* %sum, float** %sum.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !123, metadata !DIExpression()), !dbg !125
  store i32* %i, i32** %i.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load float*, float** %sum.addr, align 8, !dbg !126, !tbaa !86
  %1 = load i32*, i32** %i.addr, align 8, !dbg !126, !tbaa !86
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !126, !tbaa !86
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !126, !tbaa !86
  %4 = load float*, float** %sum.addr, align 8, !dbg !126, !tbaa !86
  %5 = load i32*, i32** %i.addr, align 8, !dbg !126, !tbaa !86
  call void @.omp_outlined._debug__(i32* %2, i32* %3, float* %4, i32* %5) #4, !dbg !126
  ret void, !dbg !126
}

; Function Attrs: nounwind
declare !callback !127 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !129 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @mv(), !dbg !132
  ret i32 0, !dbg !133
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
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 51, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB062-matrixvector2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "v", scope: !2, file: !3, line: 51, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64000, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 1000)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "v_out", scope: !2, file: !3, line: 51, type: !8, isLocal: false, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64000000, elements: !15)
!15 = !{!11, !11}
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{!"clang version 11.1.0"}
!22 = distinct !DISubprogram(name: "mv", scope: !3, file: !3, line: 53, type: !23, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{null}
!25 = !{!26, !28, !29}
!26 = !DILocalVariable(name: "i", scope: !22, file: !3, line: 55, type: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(name: "j", scope: !22, file: !3, line: 55, type: !27)
!29 = !DILocalVariable(name: "sum", scope: !30, file: !3, line: 58, type: !33)
!30 = distinct !DILexicalBlock(scope: !31, file: !3, line: 57, column: 3)
!31 = distinct !DILexicalBlock(scope: !32, file: !3, line: 56, column: 3)
!32 = distinct !DILexicalBlock(scope: !22, file: !3, line: 56, column: 3)
!33 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!34 = !DILocation(line: 55, column: 3, scope: !22)
!35 = !DILocation(line: 55, column: 7, scope: !22)
!36 = !DILocation(line: 55, column: 9, scope: !22)
!37 = !DILocation(line: 56, column: 10, scope: !32)
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 56, column: 8, scope: !32)
!43 = !DILocation(line: 56, column: 15, scope: !31)
!44 = !DILocation(line: 56, column: 17, scope: !31)
!45 = !DILocation(line: 56, column: 3, scope: !32)
!46 = !DILocation(line: 58, column: 5, scope: !30)
!47 = !DILocation(line: 58, column: 11, scope: !30)
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !40, i64 0}
!50 = !DILocation(line: 59, column: 1, scope: !30)
!51 = !DILocation(line: 64, column: 16, scope: !30)
!52 = !DILocation(line: 64, column: 11, scope: !30)
!53 = !DILocation(line: 64, column: 5, scope: !30)
!54 = !DILocation(line: 64, column: 14, scope: !30)
!55 = !{!56, !56, i64 0}
!56 = !{!"double", !40, i64 0}
!57 = !DILocation(line: 65, column: 3, scope: !31)
!58 = !DILocation(line: 65, column: 3, scope: !30)
!59 = !DILocation(line: 56, column: 23, scope: !31)
!60 = !DILocation(line: 56, column: 3, scope: !31)
!61 = distinct !{!61, !45, !62, !63}
!62 = !DILocation(line: 65, column: 3, scope: !32)
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !DILocation(line: 66, column: 1, scope: !22)
!65 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !66, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !68, !72, !73}
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !33, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !27, size: 64)
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !68, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !65, type: !68, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "sum", arg: 3, scope: !65, file: !3, line: 58, type: !72)
!78 = !DILocalVariable(name: "i", arg: 4, scope: !65, file: !3, line: 55, type: !73)
!79 = !DILocalVariable(name: ".omp.iv", scope: !65, type: !27, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.lb", scope: !65, type: !27, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.ub", scope: !65, type: !27, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.stride", scope: !65, type: !27, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.is_last", scope: !65, type: !27, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "sum", scope: !65, type: !33, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "j", scope: !65, type: !27, flags: DIFlagArtificial)
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !40, i64 0}
!88 = !DILocation(line: 0, scope: !65)
!89 = !DILocation(line: 58, column: 11, scope: !65)
!90 = !DILocation(line: 55, column: 7, scope: !65)
!91 = !DILocation(line: 60, column: 5, scope: !65)
!92 = !DILocation(line: 60, column: 10, scope: !65)
!93 = !DILocation(line: 59, column: 38, scope: !65)
!94 = !DILocation(line: 59, column: 1, scope: !65)
!95 = !DILocation(line: 60, column: 24, scope: !65)
!96 = !DILocation(line: 62, column: 16, scope: !97)
!97 = distinct !DILexicalBlock(scope: !65, file: !3, line: 61, column: 5)
!98 = !DILocation(line: 62, column: 14, scope: !97)
!99 = !DILocation(line: 62, column: 19, scope: !97)
!100 = !DILocation(line: 62, column: 24, scope: !97)
!101 = !DILocation(line: 62, column: 22, scope: !97)
!102 = !DILocation(line: 62, column: 21, scope: !97)
!103 = !DILocation(line: 62, column: 11, scope: !97)
!104 = !DILocation(line: 63, column: 5, scope: !97)
!105 = distinct !{!105, !94, !106}
!106 = !DILocation(line: 59, column: 42, scope: !65)
!107 = !DILocation(line: 59, column: 36, scope: !65)
!108 = !DILocation(line: 63, column: 5, scope: !65)
!109 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !3, file: !3, line: 59, type: !110, scopeLine: 59, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!110 = !DISubroutineType(types: !4)
!111 = !{!112, !114}
!112 = !DILocalVariable(arg: 1, scope: !109, type: !113, flags: DIFlagArtificial)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!114 = !DILocalVariable(arg: 2, scope: !109, type: !113, flags: DIFlagArtificial)
!115 = !DILocation(line: 0, scope: !109)
!116 = !DILocation(line: 59, column: 42, scope: !109)
!117 = !DILocation(line: 59, column: 38, scope: !109)
!118 = !DILocation(line: 59, column: 36, scope: !109)
!119 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 59, type: !66, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!120 = !{!121, !122, !123, !124}
!121 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !119, type: !68, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !119, type: !68, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "sum", arg: 3, scope: !119, type: !72, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "i", arg: 4, scope: !119, type: !73, flags: DIFlagArtificial)
!125 = !DILocation(line: 0, scope: !119)
!126 = !DILocation(line: 59, column: 1, scope: !119)
!127 = !{!128}
!128 = !{i64 2, i64 -1, i64 -1, i1 true}
!129 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !130, scopeLine: 69, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!130 = !DISubroutineType(types: !131)
!131 = !{!27}
!132 = !DILocation(line: 70, column: 3, scope: !129)
!133 = !DILocation(line: 71, column: 3, scope: !129)
