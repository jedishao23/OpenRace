; ModuleID = 'DRB145-atomiccritical-orig-gpu-no.c'
source_filename = "DRB145-atomiccritical-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@var = dso_local global i32 0, align 4, !dbg !0
@0 = private unnamed_addr constant [49 x i8] c";DRB145-atomiccritical-orig-gpu-no.c;main;23;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [50 x i8] c";DRB145-atomiccritical-orig-gpu-no.c;main;23;61;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @3, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @3, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @__omp_offloading_10308_be0479_main_l22(i32* @var) #4, !dbg !16
  %0 = load i32, i32* @var, align 4, !dbg !18, !tbaa !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0), !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0479_main_l22_debug__(i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !25 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !30, metadata !DIExpression()), !dbg !33
  %0 = load i32*, i32** %var.addr, align 8, !dbg !34, !tbaa !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @6, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %0), !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !36 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %var1 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !54
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !54
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !46, metadata !DIExpression()), !dbg !55
  %0 = load i32*, i32** %var.addr, align 8, !dbg !56, !tbaa !31
  %1 = bitcast i32* %var1 to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !47, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %var1, align 4, !dbg !57, !tbaa !19
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !48, metadata !DIExpression()), !dbg !54
  %3 = bitcast i32* %.omp.comb.lb to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !49, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !58, !tbaa !19
  %4 = bitcast i32* %.omp.comb.ub to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !50, metadata !DIExpression()), !dbg !54
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !19
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !51, metadata !DIExpression()), !dbg !54
  store i32 1, i32* %.omp.stride, align 4, !dbg !58, !tbaa !19
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !52, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.is_last, align 4, !dbg !58, !tbaa !19
  %7 = bitcast i32* %i to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i, metadata !53, metadata !DIExpression()), !dbg !54
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !56
  %9 = load i32, i32* %8, align 4, !dbg !56, !tbaa !19
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %9, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !56
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !19
  %cmp = icmp sgt i32 %10, 99, !dbg !58
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !58

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !58

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !19
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %11, %cond.false ], !dbg !58
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !19
  %12 = load i32, i32* %.omp.comb.lb, align 4, !dbg !58, !tbaa !19
  store i32 %12, i32* %.omp.iv, align 4, !dbg !58, !tbaa !19
  br label %omp.inner.for.cond, !dbg !56

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !19
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !19
  %cmp2 = icmp sle i32 %13, %14, !dbg !56
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !56

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !56

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.comb.lb, align 4, !dbg !59
  %16 = zext i32 %15 to i64, !dbg !59
  %17 = load i32, i32* %.omp.comb.ub, align 4, !dbg !59
  %18 = zext i32 %17 to i64, !dbg !59
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @6, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %16, i64 %18, i32* %var1), !dbg !59
  br label %omp.inner.for.inc, !dbg !60

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !19
  %20 = load i32, i32* %.omp.stride, align 4, !dbg !58, !tbaa !19
  %add = add nsw i32 %19, %20, !dbg !56
  store i32 %add, i32* %.omp.iv, align 4, !dbg !56, !tbaa !19
  br label %omp.inner.for.cond, !dbg !60, !llvm.loop !62

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !60

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %9), !dbg !63
  %21 = bitcast i32* %i to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !60
  %22 = bitcast i32* %.omp.is_last to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !60
  %23 = bitcast i32* %.omp.stride to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !60
  %24 = bitcast i32* %.omp.comb.ub to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !60
  %25 = bitcast i32* %.omp.comb.lb to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !60
  %26 = bitcast i32* %.omp.iv to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !60
  %27 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !60
  %28 = bitcast i32* %var1 to i8*, !dbg !60
  store i8* %28, i8** %27, align 8, !dbg !60
  %29 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !60
  %30 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @5, i32 %9, i32 1, i64 8, i8* %29, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !60
  switch i32 %30, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !60

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %31 = load i32, i32* %0, align 4, !dbg !57, !tbaa !19
  %32 = load i32, i32* %var1, align 4, !dbg !57, !tbaa !19
  %add3 = add nsw i32 %31, %32, !dbg !64
  store i32 %add3, i32* %0, align 4, !dbg !64, !tbaa !19
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @5, i32 %9, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !60
  br label %.omp.reduction.default, !dbg !60

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %33 = load i32, i32* %var1, align 4, !dbg !57, !tbaa !19
  %34 = atomicrmw add i32* %0, i32 %33 monotonic, !dbg !60
  br label %.omp.reduction.default, !dbg !60

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %35 = bitcast i32* %var1 to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !60
  ret void, !dbg !65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !66 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %var2 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !84
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !74, metadata !DIExpression()), !dbg !84
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !75, metadata !DIExpression()), !dbg !84
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !76, metadata !DIExpression()), !dbg !87
  %0 = load i32*, i32** %var.addr, align 8, !dbg !88, !tbaa !31
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !77, metadata !DIExpression()), !dbg !84
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !78, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.lb, align 4, !dbg !89, !tbaa !19
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !79, metadata !DIExpression()), !dbg !84
  store i32 99, i32* %.omp.ub, align 4, !dbg !89, !tbaa !19
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !88, !tbaa !85
  %conv = trunc i64 %4 to i32, !dbg !88
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !88, !tbaa !85
  %conv1 = trunc i64 %5 to i32, !dbg !88
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !88, !tbaa !19
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !88, !tbaa !19
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !80, metadata !DIExpression()), !dbg !84
  store i32 1, i32* %.omp.stride, align 4, !dbg !89, !tbaa !19
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !81, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89, !tbaa !19
  %8 = bitcast i32* %var2 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %var2, metadata !82, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %var2, align 4, !dbg !90, !tbaa !19
  %9 = bitcast i32* %i to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i, metadata !83, metadata !DIExpression()), !dbg !84
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88
  %11 = load i32, i32* %10, align 4, !dbg !88, !tbaa !19
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !91
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !19
  %cmp = icmp sgt i32 %12, 99, !dbg !89
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !19
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %13, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89, !tbaa !19
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !89, !tbaa !19
  store i32 %14, i32* %.omp.iv, align 4, !dbg !89, !tbaa !19
  br label %omp.inner.for.cond, !dbg !88

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !19
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !19
  %cmp4 = icmp sle i32 %15, %16, !dbg !88
  br i1 %cmp4, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !88

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !88

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !19
  %mul = mul nsw i32 %17, 1, !dbg !92
  %add = add nsw i32 0, %mul, !dbg !92
  store i32 %add, i32* %i, align 4, !dbg !92, !tbaa !19
  %18 = load i32, i32* %var2, align 4, !dbg !93, !tbaa !19
  %inc = add nsw i32 %18, 1, !dbg !93
  store i32 %inc, i32* %var2, align 4, !dbg !93, !tbaa !19
  br label %omp.body.continue, !dbg !95

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !91

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !19
  %add6 = add nsw i32 %19, 1, !dbg !88
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !88, !tbaa !19
  br label %omp.inner.for.cond, !dbg !91, !llvm.loop !96

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !91

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %11), !dbg !97
  %20 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !91
  %21 = bitcast i32* %var2 to i8*, !dbg !91
  store i8* %21, i8** %20, align 8, !dbg !91
  %22 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !91
  %23 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @5, i32 %11, i32 1, i64 8, i8* %22, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !91
  switch i32 %23, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !91

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %24 = load i32, i32* %0, align 4, !dbg !90, !tbaa !19
  %25 = load i32, i32* %var2, align 4, !dbg !90, !tbaa !19
  %add7 = add nsw i32 %24, %25, !dbg !98
  store i32 %add7, i32* %0, align 4, !dbg !98, !tbaa !19
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @5, i32 %11, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !91
  br label %.omp.reduction.default, !dbg !91

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %26 = load i32, i32* %var2, align 4, !dbg !90, !tbaa !19
  %27 = atomicrmw add i32* %0, i32 %26 monotonic, !dbg !91
  br label %.omp.reduction.default, !dbg !91

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %28 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !91
  %29 = bitcast i32* %var2 to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !91
  %30 = bitcast i32* %.omp.is_last to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !91
  %31 = bitcast i32* %.omp.stride to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !91
  %32 = bitcast i32* %.omp.ub to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !91
  %33 = bitcast i32* %.omp.lb to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !91
  %34 = bitcast i32* %.omp.iv to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !91
  ret void, !dbg !99
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #1 !dbg !100 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !103, metadata !DIExpression()), !dbg !106
  store i8* %1, i8** %.addr1, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !105, metadata !DIExpression()), !dbg !106
  %2 = load i8*, i8** %.addr, align 8, !dbg !107
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !107
  %4 = load i8*, i8** %.addr1, align 8, !dbg !107
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !107
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !107
  %7 = load i8*, i8** %6, align 8, !dbg !107
  %8 = bitcast i8* %7 to i32*, !dbg !107
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !107
  %10 = load i8*, i8** %9, align 8, !dbg !107
  %11 = bitcast i8* %10 to i32*, !dbg !107
  %12 = load i32, i32* %11, align 4, !dbg !108, !tbaa !19
  %13 = load i32, i32* %8, align 4, !dbg !108, !tbaa !19
  %add = add nsw i32 %12, %13, !dbg !109
  store i32 %add, i32* %11, align 4, !dbg !109, !tbaa !19
  ret void, !dbg !108
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !110 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !112, metadata !DIExpression()), !dbg !117
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !113, metadata !DIExpression()), !dbg !117
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !114, metadata !DIExpression()), !dbg !117
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !115, metadata !DIExpression()), !dbg !117
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i32*, i32** %var.addr, align 8, !dbg !118, !tbaa !31
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !118, !tbaa !31
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !118, !tbaa !31
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !118, !tbaa !85
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !118, !tbaa !85
  %5 = load i32*, i32** %var.addr, align 8, !dbg !118, !tbaa !31
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #4, !dbg !118
  ret void, !dbg !118
}

; Function Attrs: nounwind
declare !callback !119 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #1 !dbg !121 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !123, metadata !DIExpression()), !dbg !125
  store i8* %1, i8** %.addr1, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !124, metadata !DIExpression()), !dbg !125
  %2 = load i8*, i8** %.addr, align 8, !dbg !126
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !126
  %4 = load i8*, i8** %.addr1, align 8, !dbg !126
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !126
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !126
  %7 = load i8*, i8** %6, align 8, !dbg !126
  %8 = bitcast i8* %7 to i32*, !dbg !126
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !126
  %10 = load i8*, i8** %9, align 8, !dbg !126
  %11 = bitcast i8* %10 to i32*, !dbg !126
  %12 = load i32, i32* %11, align 4, !dbg !127, !tbaa !19
  %13 = load i32, i32* %8, align 4, !dbg !127, !tbaa !19
  %add = add nsw i32 %12, %13, !dbg !128
  store i32 %add, i32* %11, align 4, !dbg !128, !tbaa !19
  ret void, !dbg !127
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !129 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !131, metadata !DIExpression()), !dbg !134
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !132, metadata !DIExpression()), !dbg !134
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load i32*, i32** %var.addr, align 8, !dbg !135, !tbaa !31
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !135, !tbaa !31
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !135, !tbaa !31
  %3 = load i32*, i32** %var.addr, align 8, !dbg !135, !tbaa !31
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !135
  ret void, !dbg !135
}

; Function Attrs: nounwind
declare !callback !119 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0479_main_l22(i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !136 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = load i32*, i32** %var.addr, align 8, !dbg !140, !tbaa !31
  %1 = load i32*, i32** %var.addr, align 8, !dbg !140, !tbaa !31
  call void @__omp_offloading_10308_be0479_main_l22_debug__(i32* %1) #4, !dbg !140
  ret void, !dbg !140
}

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 19, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB145-atomiccritical-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{!"clang version 11.1.0"}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 21, type: !14, scopeLine: 21, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{!6}
!16 = !DILocation(line: 22, column: 3, scope: !17)
!17 = distinct !DILexicalBlock(scope: !13, file: !3, line: 22, column: 3)
!18 = !DILocation(line: 28, column: 17, scope: !13)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 28, column: 3, scope: !13)
!24 = !DILocation(line: 29, column: 3, scope: !13)
!25 = distinct !DISubprogram(name: "__omp_offloading_10308_be0479_main_l22_debug__", scope: !3, file: !3, line: 23, type: !26, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !29)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!29 = !{!30}
!30 = !DILocalVariable(name: "var", arg: 1, scope: !25, file: !3, line: 19, type: !28)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !21, i64 0}
!33 = !DILocation(line: 19, column: 5, scope: !25)
!34 = !DILocation(line: 23, column: 3, scope: !25)
!35 = !DILocation(line: 23, column: 61, scope: !25)
!36 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 24, type: !37, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39, !28}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !36, type: !39, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "var", arg: 3, scope: !36, file: !3, line: 19, type: !28)
!47 = !DILocalVariable(name: "var", scope: !36, type: !6, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.iv", scope: !36, type: !6, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.comb.lb", scope: !36, type: !6, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.comb.ub", scope: !36, type: !6, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.stride", scope: !36, type: !6, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.is_last", scope: !36, type: !6, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "i", scope: !36, type: !6, flags: DIFlagArtificial)
!54 = !DILocation(line: 0, scope: !36)
!55 = !DILocation(line: 19, column: 5, scope: !36)
!56 = !DILocation(line: 24, column: 3, scope: !36)
!57 = !DILocation(line: 23, column: 57, scope: !36)
!58 = !DILocation(line: 24, column: 8, scope: !36)
!59 = !DILocation(line: 23, column: 3, scope: !36)
!60 = !DILocation(line: 23, column: 61, scope: !61)
!61 = distinct !DILexicalBlock(scope: !36, file: !3, line: 23, column: 3)
!62 = distinct !{!62, !59, !63}
!63 = !DILocation(line: 23, column: 61, scope: !36)
!64 = !DILocation(line: 23, column: 55, scope: !36)
!65 = !DILocation(line: 26, column: 3, scope: !36)
!66 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 24, type: !67, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !39, !39, !69, !69, !28}
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !66, type: !39, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !66, type: !39, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !66, type: !69, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !66, type: !69, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "var", arg: 5, scope: !66, file: !3, line: 19, type: !28)
!77 = !DILocalVariable(name: ".omp.iv", scope: !66, type: !6, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.lb", scope: !66, type: !6, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.ub", scope: !66, type: !6, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.stride", scope: !66, type: !6, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.is_last", scope: !66, type: !6, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "var", scope: !66, type: !6, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "i", scope: !66, type: !6, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !66)
!85 = !{!86, !86, i64 0}
!86 = !{!"long", !21, i64 0}
!87 = !DILocation(line: 19, column: 5, scope: !66)
!88 = !DILocation(line: 24, column: 3, scope: !66)
!89 = !DILocation(line: 24, column: 8, scope: !66)
!90 = !DILocation(line: 23, column: 57, scope: !66)
!91 = !DILocation(line: 23, column: 3, scope: !66)
!92 = !DILocation(line: 24, column: 22, scope: !66)
!93 = !DILocation(line: 25, column: 8, scope: !94)
!94 = distinct !DILexicalBlock(scope: !66, file: !3, line: 24, column: 26)
!95 = !DILocation(line: 26, column: 3, scope: !94)
!96 = distinct !{!96, !91, !97}
!97 = !DILocation(line: 23, column: 61, scope: !66)
!98 = !DILocation(line: 23, column: 55, scope: !66)
!99 = !DILocation(line: 26, column: 3, scope: !66)
!100 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !3, file: !3, line: 23, type: !101, scopeLine: 23, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!101 = !DISubroutineType(types: !4)
!102 = !{!103, !105}
!103 = !DILocalVariable(arg: 1, scope: !100, type: !104, flags: DIFlagArtificial)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DILocalVariable(arg: 2, scope: !100, type: !104, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !100)
!107 = !DILocation(line: 23, column: 61, scope: !100)
!108 = !DILocation(line: 23, column: 57, scope: !100)
!109 = !DILocation(line: 23, column: 55, scope: !100)
!110 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 23, type: !67, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!111 = !{!112, !113, !114, !115, !116}
!112 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !110, type: !39, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !110, type: !39, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !110, type: !69, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !110, type: !69, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "var", arg: 5, scope: !110, type: !28, flags: DIFlagArtificial)
!117 = !DILocation(line: 0, scope: !110)
!118 = !DILocation(line: 23, column: 3, scope: !110)
!119 = !{!120}
!120 = !{i64 2, i64 -1, i64 -1, i1 true}
!121 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !3, file: !3, line: 23, type: !101, scopeLine: 23, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!122 = !{!123, !124}
!123 = !DILocalVariable(arg: 1, scope: !121, type: !104, flags: DIFlagArtificial)
!124 = !DILocalVariable(arg: 2, scope: !121, type: !104, flags: DIFlagArtificial)
!125 = !DILocation(line: 0, scope: !121)
!126 = !DILocation(line: 23, column: 61, scope: !121)
!127 = !DILocation(line: 23, column: 57, scope: !121)
!128 = !DILocation(line: 23, column: 55, scope: !121)
!129 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !3, file: !3, line: 23, type: !37, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !129, type: !39, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !129, type: !39, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "var", arg: 3, scope: !129, type: !28, flags: DIFlagArtificial)
!134 = !DILocation(line: 0, scope: !129)
!135 = !DILocation(line: 23, column: 3, scope: !129)
!136 = distinct !DISubprogram(name: "__omp_offloading_10308_be0479_main_l22", scope: !3, file: !3, line: 22, type: !26, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!137 = !{!138}
!138 = !DILocalVariable(name: "var", arg: 1, scope: !136, type: !28, flags: DIFlagArtificial)
!139 = !DILocation(line: 0, scope: !136)
!140 = !DILocation(line: 22, column: 3, scope: !136)
