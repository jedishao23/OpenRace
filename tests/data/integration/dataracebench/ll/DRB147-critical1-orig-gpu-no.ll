; ModuleID = 'DRB147-critical1-orig-gpu-no.c'
source_filename = "DRB147-critical1-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@var = dso_local global i32 0, align 4, !dbg !0
@0 = private unnamed_addr constant [44 x i8] c";DRB147-critical1-orig-gpu-no.c;main;26;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [45 x i8] c";DRB147-critical1-orig-gpu-no.c;main;26;44;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @__omp_offloading_10308_be047b_main_l25(i32* @var) #4, !dbg !16
  %0 = load i32, i32* @var, align 4, !dbg !18, !tbaa !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0), !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047b_main_l25_debug__(i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !25 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !30, metadata !DIExpression()), !dbg !33
  %0 = load i32*, i32** %var.addr, align 8, !dbg !34, !tbaa !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @5, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %0), !dbg !34
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
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !53
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !53
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !46, metadata !DIExpression()), !dbg !54
  %0 = load i32*, i32** %var.addr, align 8, !dbg !55, !tbaa !31
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !53
  %2 = bitcast i32* %.omp.comb.lb to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !48, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !56, !tbaa !19
  %3 = bitcast i32* %.omp.comb.ub to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !49, metadata !DIExpression()), !dbg !53
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !19
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !50, metadata !DIExpression()), !dbg !53
  store i32 1, i32* %.omp.stride, align 4, !dbg !56, !tbaa !19
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !51, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %.omp.is_last, align 4, !dbg !56, !tbaa !19
  %6 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !53
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !55
  %8 = load i32, i32* %7, align 4, !dbg !55, !tbaa !19
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !55
  %9 = load i32, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !19
  %cmp = icmp sgt i32 %9, 99, !dbg !56
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !56

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !56

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !19
  br label %cond.end, !dbg !56

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %10, %cond.false ], !dbg !56
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !19
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !56, !tbaa !19
  store i32 %11, i32* %.omp.iv, align 4, !dbg !56, !tbaa !19
  br label %omp.inner.for.cond, !dbg !55

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !19
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !19
  %cmp1 = icmp sle i32 %12, %13, !dbg !55
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !55

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !55

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !57
  %15 = zext i32 %14 to i64, !dbg !57
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !57
  %17 = zext i32 %16 to i64, !dbg !57
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %15, i64 %17, i32* %0), !dbg !57
  br label %omp.inner.for.inc, !dbg !58

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !19
  %19 = load i32, i32* %.omp.stride, align 4, !dbg !56, !tbaa !19
  %add = add nsw i32 %18, %19, !dbg !55
  store i32 %add, i32* %.omp.iv, align 4, !dbg !55, !tbaa !19
  br label %omp.inner.for.cond, !dbg !58, !llvm.loop !60

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !58

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %8), !dbg !61
  %20 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !58
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !58
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !58
  %23 = bitcast i32* %.omp.comb.ub to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !58
  %24 = bitcast i32* %.omp.comb.lb to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !58
  %25 = bitcast i32* %.omp.iv to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !58
  ret void, !dbg !62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !63 {
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
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !80
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !70, metadata !DIExpression()), !dbg !80
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !71, metadata !DIExpression()), !dbg !80
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !72, metadata !DIExpression()), !dbg !80
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !73, metadata !DIExpression()), !dbg !83
  %0 = load i32*, i32** %var.addr, align 8, !dbg !84, !tbaa !31
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !74, metadata !DIExpression()), !dbg !80
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !75, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %.omp.lb, align 4, !dbg !85, !tbaa !19
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !76, metadata !DIExpression()), !dbg !80
  store i32 99, i32* %.omp.ub, align 4, !dbg !85, !tbaa !19
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !84, !tbaa !81
  %conv = trunc i64 %4 to i32, !dbg !84
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !84, !tbaa !81
  %conv1 = trunc i64 %5 to i32, !dbg !84
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !84, !tbaa !19
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !84, !tbaa !19
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !77, metadata !DIExpression()), !dbg !80
  store i32 1, i32* %.omp.stride, align 4, !dbg !85, !tbaa !19
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !78, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %.omp.is_last, align 4, !dbg !85, !tbaa !19
  %8 = bitcast i32* %i to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %i, metadata !79, metadata !DIExpression()), !dbg !80
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !84
  %10 = load i32, i32* %9, align 4, !dbg !84, !tbaa !19
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !86
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !85, !tbaa !19
  %cmp = icmp sgt i32 %11, 99, !dbg !85
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !85

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !85

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !85, !tbaa !19
  br label %cond.end, !dbg !85

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %12, %cond.false ], !dbg !85
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !85, !tbaa !19
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !85, !tbaa !19
  store i32 %13, i32* %.omp.iv, align 4, !dbg !85, !tbaa !19
  br label %omp.inner.for.cond, !dbg !84

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !85, !tbaa !19
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !85, !tbaa !19
  %cmp3 = icmp sle i32 %14, %15, !dbg !84
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !84

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !84

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !85, !tbaa !19
  %mul = mul nsw i32 %16, 1, !dbg !87
  %add = add nsw i32 0, %mul, !dbg !87
  store i32 %add, i32* %i, align 4, !dbg !87, !tbaa !19
  %17 = atomicrmw add i32* %0, i32 1 monotonic, !dbg !88
  %18 = atomicrmw sub i32* %0, i32 2 monotonic, !dbg !91
  br label %omp.body.continue, !dbg !93

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !86

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !85, !tbaa !19
  %add5 = add nsw i32 %19, 1, !dbg !84
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !84, !tbaa !19
  br label %omp.inner.for.cond, !dbg !86, !llvm.loop !94

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !86

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %10), !dbg !95
  %20 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !86
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !86
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !86
  %23 = bitcast i32* %.omp.ub to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !86
  %24 = bitcast i32* %.omp.lb to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !86
  %25 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !86
  ret void, !dbg !96
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !97 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !99, metadata !DIExpression()), !dbg !104
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !100, metadata !DIExpression()), !dbg !104
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !101, metadata !DIExpression()), !dbg !104
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !102, metadata !DIExpression()), !dbg !104
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load i32*, i32** %var.addr, align 8, !dbg !105, !tbaa !31
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !105, !tbaa !31
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !105, !tbaa !31
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !105, !tbaa !81
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !105, !tbaa !81
  %5 = load i32*, i32** %var.addr, align 8, !dbg !105, !tbaa !31
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #4, !dbg !105
  ret void, !dbg !105
}

; Function Attrs: nounwind
declare !callback !106 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !108 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !110, metadata !DIExpression()), !dbg !113
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !111, metadata !DIExpression()), !dbg !113
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !112, metadata !DIExpression()), !dbg !113
  %0 = load i32*, i32** %var.addr, align 8, !dbg !114, !tbaa !31
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !114, !tbaa !31
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !114, !tbaa !31
  %3 = load i32*, i32** %var.addr, align 8, !dbg !114, !tbaa !31
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !114
  ret void, !dbg !114
}

; Function Attrs: nounwind
declare !callback !106 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047b_main_l25(i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !115 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load i32*, i32** %var.addr, align 8, !dbg !119, !tbaa !31
  %1 = load i32*, i32** %var.addr, align 8, !dbg !119, !tbaa !31
  call void @__omp_offloading_10308_be047b_main_l25_debug__(i32* %1) #4, !dbg !119
  ret void, !dbg !119
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
!1 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 21, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB147-critical1-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{!"clang version 11.1.0"}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 23, type: !14, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{!6}
!16 = !DILocation(line: 25, column: 3, scope: !17)
!17 = distinct !DILexicalBlock(scope: !13, file: !3, line: 25, column: 3)
!18 = !DILocation(line: 35, column: 17, scope: !13)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 35, column: 3, scope: !13)
!24 = !DILocation(line: 36, column: 3, scope: !13)
!25 = distinct !DISubprogram(name: "__omp_offloading_10308_be047b_main_l25_debug__", scope: !3, file: !3, line: 26, type: !26, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !29)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!29 = !{!30}
!30 = !DILocalVariable(name: "var", arg: 1, scope: !25, file: !3, line: 21, type: !28)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !21, i64 0}
!33 = !DILocation(line: 21, column: 5, scope: !25)
!34 = !DILocation(line: 26, column: 3, scope: !25)
!35 = !DILocation(line: 26, column: 44, scope: !25)
!36 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 27, type: !37, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39, !28}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !36, type: !39, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "var", arg: 3, scope: !36, file: !3, line: 21, type: !28)
!47 = !DILocalVariable(name: ".omp.iv", scope: !36, type: !6, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.comb.lb", scope: !36, type: !6, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.comb.ub", scope: !36, type: !6, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.stride", scope: !36, type: !6, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.is_last", scope: !36, type: !6, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "i", scope: !36, type: !6, flags: DIFlagArtificial)
!53 = !DILocation(line: 0, scope: !36)
!54 = !DILocation(line: 21, column: 5, scope: !36)
!55 = !DILocation(line: 27, column: 3, scope: !36)
!56 = !DILocation(line: 27, column: 7, scope: !36)
!57 = !DILocation(line: 26, column: 3, scope: !36)
!58 = !DILocation(line: 26, column: 44, scope: !59)
!59 = distinct !DILexicalBlock(scope: !36, file: !3, line: 26, column: 3)
!60 = distinct !{!60, !57, !61}
!61 = !DILocation(line: 26, column: 44, scope: !36)
!62 = !DILocation(line: 33, column: 3, scope: !36)
!63 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 27, type: !64, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !39, !39, !66, !66, !28}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !63, type: !39, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !63, type: !39, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !63, type: !66, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !63, type: !66, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "var", arg: 5, scope: !63, file: !3, line: 21, type: !28)
!74 = !DILocalVariable(name: ".omp.iv", scope: !63, type: !6, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.lb", scope: !63, type: !6, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.ub", scope: !63, type: !6, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.stride", scope: !63, type: !6, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.is_last", scope: !63, type: !6, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "i", scope: !63, type: !6, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !63)
!81 = !{!82, !82, i64 0}
!82 = !{!"long", !21, i64 0}
!83 = !DILocation(line: 21, column: 5, scope: !63)
!84 = !DILocation(line: 27, column: 3, scope: !63)
!85 = !DILocation(line: 27, column: 7, scope: !63)
!86 = !DILocation(line: 26, column: 3, scope: !63)
!87 = !DILocation(line: 27, column: 21, scope: !63)
!88 = !DILocation(line: 29, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 28, column: 5)
!90 = distinct !DILexicalBlock(scope: !63, file: !3, line: 27, column: 25)
!91 = !DILocation(line: 32, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !90, file: !3, line: 31, column: 5)
!93 = !DILocation(line: 33, column: 3, scope: !90)
!94 = distinct !{!94, !86, !95}
!95 = !DILocation(line: 26, column: 44, scope: !63)
!96 = !DILocation(line: 33, column: 3, scope: !63)
!97 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 26, type: !64, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !97, type: !39, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !97, type: !39, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !97, type: !66, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !97, type: !66, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: "var", arg: 5, scope: !97, type: !28, flags: DIFlagArtificial)
!104 = !DILocation(line: 0, scope: !97)
!105 = !DILocation(line: 26, column: 3, scope: !97)
!106 = !{!107}
!107 = !{i64 2, i64 -1, i64 -1, i1 true}
!108 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 26, type: !37, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!109 = !{!110, !111, !112}
!110 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !108, type: !39, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !108, type: !39, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "var", arg: 3, scope: !108, type: !28, flags: DIFlagArtificial)
!113 = !DILocation(line: 0, scope: !108)
!114 = !DILocation(line: 26, column: 3, scope: !108)
!115 = distinct !DISubprogram(name: "__omp_offloading_10308_be047b_main_l25", scope: !3, file: !3, line: 25, type: !26, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!116 = !{!117}
!117 = !DILocalVariable(name: "var", arg: 1, scope: !115, type: !28, flags: DIFlagArtificial)
!118 = !DILocation(line: 0, scope: !115)
!119 = !DILocation(line: 25, column: 3, scope: !115)
