; ModuleID = 'DRB151-missinglock3-orig-gpu-yes.c'
source_filename = "DRB151-missinglock3-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [48 x i8] c";DRB151-missinglock3-orig-gpu-yes.c;main;24;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [49 x i8] c";DRB151-missinglock3-orig-gpu-yes.c;main;24;44;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %var to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %var, metadata !14, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %var, align 4, !dbg !17, !tbaa !18
  %1 = bitcast i32* %i to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !15, metadata !DIExpression()), !dbg !22
  call void @__omp_offloading_10308_be047f_main_l23(i32* %var) #4, !dbg !23
  %2 = load i32, i32* %var, align 4, !dbg !25, !tbaa !18
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2), !dbg !26
  %3 = bitcast i32* %i to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !27
  %4 = bitcast i32* %var to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !27
  ret i32 0, !dbg !28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047f_main_l23_debug__(i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !29 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !34, metadata !DIExpression()), !dbg !37
  %0 = load i32*, i32** %var.addr, align 8, !dbg !38, !tbaa !35
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @5, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %0), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !40 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !48, metadata !DIExpression()), !dbg !57
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !49, metadata !DIExpression()), !dbg !57
  store i32* %var, i32** %var.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !50, metadata !DIExpression()), !dbg !58
  %0 = load i32*, i32** %var.addr, align 8, !dbg !59, !tbaa !35
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !51, metadata !DIExpression()), !dbg !57
  %2 = bitcast i32* %.omp.comb.lb to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !52, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !60, !tbaa !18
  %3 = bitcast i32* %.omp.comb.ub to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !53, metadata !DIExpression()), !dbg !57
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !18
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !54, metadata !DIExpression()), !dbg !57
  store i32 1, i32* %.omp.stride, align 4, !dbg !60, !tbaa !18
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !55, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %.omp.is_last, align 4, !dbg !60, !tbaa !18
  %6 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !57
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !59
  %8 = load i32, i32* %7, align 4, !dbg !59, !tbaa !18
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !59
  %9 = load i32, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !18
  %cmp = icmp sgt i32 %9, 99, !dbg !60
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !60

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !60

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !18
  br label %cond.end, !dbg !60

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %10, %cond.false ], !dbg !60
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !18
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !60, !tbaa !18
  store i32 %11, i32* %.omp.iv, align 4, !dbg !60, !tbaa !18
  br label %omp.inner.for.cond, !dbg !59

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !18
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !18
  %cmp1 = icmp sle i32 %12, %13, !dbg !59
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !59

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !59

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !61
  %15 = zext i32 %14 to i64, !dbg !61
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !61
  %17 = zext i32 %16 to i64, !dbg !61
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %15, i64 %17, i32* %0), !dbg !61
  br label %omp.inner.for.inc, !dbg !62

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !18
  %19 = load i32, i32* %.omp.stride, align 4, !dbg !60, !tbaa !18
  %add = add nsw i32 %18, %19, !dbg !59
  store i32 %add, i32* %.omp.iv, align 4, !dbg !59, !tbaa !18
  br label %omp.inner.for.cond, !dbg !62, !llvm.loop !64

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !62

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %8), !dbg !65
  %20 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !62
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !62
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !62
  %23 = bitcast i32* %.omp.comb.ub to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !62
  %24 = bitcast i32* %.omp.comb.lb to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !62
  %25 = bitcast i32* %.omp.iv to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !62
  ret void, !dbg !66
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !67 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !84
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !75, metadata !DIExpression()), !dbg !84
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !76, metadata !DIExpression()), !dbg !84
  store i32* %var, i32** %var.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !77, metadata !DIExpression()), !dbg !87
  %0 = load i32*, i32** %var.addr, align 8, !dbg !88, !tbaa !35
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !78, metadata !DIExpression()), !dbg !84
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !79, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.lb, align 4, !dbg !89, !tbaa !18
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !80, metadata !DIExpression()), !dbg !84
  store i32 99, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !88, !tbaa !85
  %conv = trunc i64 %4 to i32, !dbg !88
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !88, !tbaa !85
  %conv1 = trunc i64 %5 to i32, !dbg !88
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !88, !tbaa !18
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !88, !tbaa !18
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !81, metadata !DIExpression()), !dbg !84
  store i32 1, i32* %.omp.stride, align 4, !dbg !89, !tbaa !18
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !82, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89, !tbaa !18
  %8 = bitcast i32* %i to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i, metadata !83, metadata !DIExpression()), !dbg !84
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88
  %10 = load i32, i32* %9, align 4, !dbg !88, !tbaa !18
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !90
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  %cmp = icmp sgt i32 %11, 99, !dbg !89
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %12, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !89, !tbaa !18
  store i32 %13, i32* %.omp.iv, align 4, !dbg !89, !tbaa !18
  br label %omp.inner.for.cond, !dbg !88

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !18
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  %cmp3 = icmp sle i32 %14, %15, !dbg !88
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !88

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !88

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !18
  %mul = mul nsw i32 %16, 1, !dbg !91
  %add = add nsw i32 0, %mul, !dbg !91
  store i32 %add, i32* %i, align 4, !dbg !91, !tbaa !18
  %17 = load i32, i32* %0, align 4, !dbg !92, !tbaa !18
  %inc = add nsw i32 %17, 1, !dbg !92
  store i32 %inc, i32* %0, align 4, !dbg !92, !tbaa !18
  br label %omp.body.continue, !dbg !94

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !90

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !18
  %add5 = add nsw i32 %18, 1, !dbg !88
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !88, !tbaa !18
  br label %omp.inner.for.cond, !dbg !90, !llvm.loop !95

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !90

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %10), !dbg !96
  %19 = bitcast i32* %i to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !90
  %20 = bitcast i32* %.omp.is_last to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !90
  %21 = bitcast i32* %.omp.stride to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !90
  %22 = bitcast i32* %.omp.ub to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !90
  %23 = bitcast i32* %.omp.lb to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !90
  %24 = bitcast i32* %.omp.iv to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !90
  ret void, !dbg !97
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !98 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !100, metadata !DIExpression()), !dbg !105
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !101, metadata !DIExpression()), !dbg !105
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !102, metadata !DIExpression()), !dbg !105
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !103, metadata !DIExpression()), !dbg !105
  store i32* %var, i32** %var.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i32*, i32** %var.addr, align 8, !dbg !106, !tbaa !35
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106, !tbaa !35
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !106, !tbaa !35
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !106, !tbaa !85
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !106, !tbaa !85
  %5 = load i32*, i32** %var.addr, align 8, !dbg !106, !tbaa !35
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #4, !dbg !106
  ret void, !dbg !106
}

; Function Attrs: nounwind
declare !callback !107 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !109 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !111, metadata !DIExpression()), !dbg !114
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !112, metadata !DIExpression()), !dbg !114
  store i32* %var, i32** %var.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load i32*, i32** %var.addr, align 8, !dbg !115, !tbaa !35
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !115, !tbaa !35
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !115, !tbaa !35
  %3 = load i32*, i32** %var.addr, align 8, !dbg !115, !tbaa !35
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !115
  ret void, !dbg !115
}

; Function Attrs: nounwind
declare !callback !107 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047f_main_l23(i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !116 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = load i32*, i32** %var.addr, align 8, !dbg !120, !tbaa !35
  %1 = load i32*, i32** %var.addr, align 8, !dbg !120, !tbaa !35
  call void @__omp_offloading_10308_be047f_main_l23_debug__(i32* %1) #4, !dbg !120
  ret void, !dbg !120
}

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB151-missinglock3-orig-gpu-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !10, scopeLine: 19, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 21, type: !12)
!15 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 21, type: !12)
!16 = !DILocation(line: 21, column: 3, scope: !9)
!17 = !DILocation(line: 21, column: 7, scope: !9)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 21, column: 13, scope: !9)
!23 = !DILocation(line: 23, column: 3, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 23, column: 3)
!25 = !DILocation(line: 29, column: 17, scope: !9)
!26 = !DILocation(line: 29, column: 3, scope: !9)
!27 = !DILocation(line: 31, column: 1, scope: !9)
!28 = !DILocation(line: 30, column: 3, scope: !9)
!29 = distinct !DISubprogram(name: "__omp_offloading_10308_be047f_main_l23_debug__", scope: !1, file: !1, line: 24, type: !30, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!33 = !{!34}
!34 = !DILocalVariable(name: "var", arg: 1, scope: !29, file: !1, line: 21, type: !32)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !20, i64 0}
!37 = !DILocation(line: 21, column: 7, scope: !29)
!38 = !DILocation(line: 24, column: 3, scope: !29)
!39 = !DILocation(line: 24, column: 44, scope: !29)
!40 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 25, type: !41, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43, !32}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56}
!48 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !40, type: !43, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !40, type: !43, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "var", arg: 3, scope: !40, file: !1, line: 21, type: !32)
!51 = !DILocalVariable(name: ".omp.iv", scope: !40, type: !12, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.comb.lb", scope: !40, type: !12, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".omp.comb.ub", scope: !40, type: !12, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".omp.stride", scope: !40, type: !12, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.is_last", scope: !40, type: !12, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "i", scope: !40, type: !12, flags: DIFlagArtificial)
!57 = !DILocation(line: 0, scope: !40)
!58 = !DILocation(line: 21, column: 7, scope: !40)
!59 = !DILocation(line: 25, column: 3, scope: !40)
!60 = !DILocation(line: 25, column: 8, scope: !40)
!61 = !DILocation(line: 24, column: 3, scope: !40)
!62 = !DILocation(line: 24, column: 44, scope: !63)
!63 = distinct !DILexicalBlock(scope: !40, file: !1, line: 24, column: 3)
!64 = distinct !{!64, !61, !65}
!65 = !DILocation(line: 24, column: 44, scope: !40)
!66 = !DILocation(line: 27, column: 3, scope: !40)
!67 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 25, type: !68, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !43, !43, !70, !70, !32}
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !67, type: !43, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !67, type: !43, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !67, type: !70, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !67, type: !70, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "var", arg: 5, scope: !67, file: !1, line: 21, type: !32)
!78 = !DILocalVariable(name: ".omp.iv", scope: !67, type: !12, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.lb", scope: !67, type: !12, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.ub", scope: !67, type: !12, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.stride", scope: !67, type: !12, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.is_last", scope: !67, type: !12, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "i", scope: !67, type: !12, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !67)
!85 = !{!86, !86, i64 0}
!86 = !{!"long", !20, i64 0}
!87 = !DILocation(line: 21, column: 7, scope: !67)
!88 = !DILocation(line: 25, column: 3, scope: !67)
!89 = !DILocation(line: 25, column: 8, scope: !67)
!90 = !DILocation(line: 24, column: 3, scope: !67)
!91 = !DILocation(line: 25, column: 24, scope: !67)
!92 = !DILocation(line: 26, column: 8, scope: !93)
!93 = distinct !DILexicalBlock(scope: !67, file: !1, line: 25, column: 28)
!94 = !DILocation(line: 27, column: 3, scope: !93)
!95 = distinct !{!95, !90, !96}
!96 = !DILocation(line: 24, column: 44, scope: !67)
!97 = !DILocation(line: 27, column: 3, scope: !67)
!98 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 24, type: !68, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !99)
!99 = !{!100, !101, !102, !103, !104}
!100 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !98, type: !43, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !98, type: !43, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !98, type: !70, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !98, type: !70, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "var", arg: 5, scope: !98, type: !32, flags: DIFlagArtificial)
!105 = !DILocation(line: 0, scope: !98)
!106 = !DILocation(line: 24, column: 3, scope: !98)
!107 = !{!108}
!108 = !{i64 2, i64 -1, i64 -1, i1 true}
!109 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 24, type: !41, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!110 = !{!111, !112, !113}
!111 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !109, type: !43, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !109, type: !43, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "var", arg: 3, scope: !109, type: !32, flags: DIFlagArtificial)
!114 = !DILocation(line: 0, scope: !109)
!115 = !DILocation(line: 24, column: 3, scope: !109)
!116 = distinct !DISubprogram(name: "__omp_offloading_10308_be047f_main_l23", scope: !1, file: !1, line: 23, type: !30, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!117 = !{!118}
!118 = !DILocalVariable(name: "var", arg: 1, scope: !116, type: !32, flags: DIFlagArtificial)
!119 = !DILocation(line: 0, scope: !116)
!120 = !DILocation(line: 23, column: 3, scope: !116)
