; ModuleID = 'DRB150-missinglock1-orig-gpu-yes.c'
source_filename = "DRB150-missinglock1-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@0 = private unnamed_addr constant [48 x i8] c";DRB150-missinglock1-orig-gpu-yes.c;main;27;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [49 x i8] c";DRB150-missinglock1-orig-gpu-yes.c;main;27;44;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !23
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !14, metadata !DIExpression()), !dbg !24
  %1 = bitcast i32* %var to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %var, metadata !21, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %var, align 4, !dbg !26, !tbaa !27
  %2 = bitcast i32* %i to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !31
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !32
  call void @__omp_offloading_10308_be047e_main_l26(%struct.omp_lock_t* %lck, i32* %var) #5, !dbg !33
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !35
  %3 = load i32, i32* %var, align 4, !dbg !36, !tbaa !27
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3), !dbg !37
  %4 = bitcast i32* %i to i8*, !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !38
  %5 = bitcast i32* %var to i8*, !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !38
  %6 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #5, !dbg !38
  ret i32 0, !dbg !39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !40 void @omp_init_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047e_main_l26_debug__(%struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !44 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !50, metadata !DIExpression()), !dbg !54
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !51, metadata !DIExpression()), !dbg !55
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !56, !tbaa !52
  %1 = load i32*, i32** %var.addr, align 8, !dbg !56, !tbaa !52
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @5, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), %struct.omp_lock_t* %0, i32* %1), !dbg !56
  ret void, !dbg !57
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !76
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !68, metadata !DIExpression()), !dbg !77
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !69, metadata !DIExpression()), !dbg !78
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !79, !tbaa !52
  %1 = load i32*, i32** %var.addr, align 8, !dbg !79, !tbaa !52
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !70, metadata !DIExpression()), !dbg !76
  %3 = bitcast i32* %.omp.comb.lb to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !71, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !80, !tbaa !27
  %4 = bitcast i32* %.omp.comb.ub to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !72, metadata !DIExpression()), !dbg !76
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !27
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !73, metadata !DIExpression()), !dbg !76
  store i32 1, i32* %.omp.stride, align 4, !dbg !80, !tbaa !27
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !74, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.is_last, align 4, !dbg !80, !tbaa !27
  %7 = bitcast i32* %i to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %i, metadata !75, metadata !DIExpression()), !dbg !76
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79
  %9 = load i32, i32* %8, align 4, !dbg !79, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %9, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !79
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !27
  %cmp = icmp sgt i32 %10, 99, !dbg !80
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !80

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !80

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !27
  br label %cond.end, !dbg !80

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %11, %cond.false ], !dbg !80
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !27
  %12 = load i32, i32* %.omp.comb.lb, align 4, !dbg !80, !tbaa !27
  store i32 %12, i32* %.omp.iv, align 4, !dbg !80, !tbaa !27
  br label %omp.inner.for.cond, !dbg !79

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !27
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !27
  %cmp1 = icmp sle i32 %13, %14, !dbg !79
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !79

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !79

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.comb.lb, align 4, !dbg !81
  %16 = zext i32 %15 to i64, !dbg !81
  %17 = load i32, i32* %.omp.comb.ub, align 4, !dbg !81
  %18 = zext i32 %17 to i64, !dbg !81
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %16, i64 %18, %struct.omp_lock_t* %0, i32* %1), !dbg !81
  br label %omp.inner.for.inc, !dbg !82

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !27
  %20 = load i32, i32* %.omp.stride, align 4, !dbg !80, !tbaa !27
  %add = add nsw i32 %19, %20, !dbg !79
  store i32 %add, i32* %.omp.iv, align 4, !dbg !79, !tbaa !27
  br label %omp.inner.for.cond, !dbg !82, !llvm.loop !84

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !82

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %9), !dbg !85
  %21 = bitcast i32* %i to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !82
  %22 = bitcast i32* %.omp.is_last to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !82
  %23 = bitcast i32* %.omp.stride to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !82
  %24 = bitcast i32* %.omp.comb.ub to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !82
  %25 = bitcast i32* %.omp.comb.lb to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !82
  %26 = bitcast i32* %.omp.iv to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !82
  ret void, !dbg !86
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !87 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !105
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !105
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !95, metadata !DIExpression()), !dbg !105
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !96, metadata !DIExpression()), !dbg !105
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !97, metadata !DIExpression()), !dbg !108
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !98, metadata !DIExpression()), !dbg !109
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !110, !tbaa !52
  %1 = load i32*, i32** %var.addr, align 8, !dbg !110, !tbaa !52
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !99, metadata !DIExpression()), !dbg !105
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !100, metadata !DIExpression()), !dbg !105
  store i32 0, i32* %.omp.lb, align 4, !dbg !111, !tbaa !27
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !101, metadata !DIExpression()), !dbg !105
  store i32 99, i32* %.omp.ub, align 4, !dbg !111, !tbaa !27
  %5 = load i64, i64* %.previous.lb..addr, align 8, !dbg !110, !tbaa !106
  %conv = trunc i64 %5 to i32, !dbg !110
  %6 = load i64, i64* %.previous.ub..addr, align 8, !dbg !110, !tbaa !106
  %conv1 = trunc i64 %6 to i32, !dbg !110
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !110, !tbaa !27
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !110, !tbaa !27
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !102, metadata !DIExpression()), !dbg !105
  store i32 1, i32* %.omp.stride, align 4, !dbg !111, !tbaa !27
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !103, metadata !DIExpression()), !dbg !105
  store i32 0, i32* %.omp.is_last, align 4, !dbg !111, !tbaa !27
  %9 = bitcast i32* %i to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %i, metadata !104, metadata !DIExpression()), !dbg !105
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !110
  %11 = load i32, i32* %10, align 4, !dbg !110, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !112
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !27
  %cmp = icmp sgt i32 %12, 99, !dbg !111
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !111

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !111

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !27
  br label %cond.end, !dbg !111

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %13, %cond.false ], !dbg !111
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !111, !tbaa !27
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !111, !tbaa !27
  store i32 %14, i32* %.omp.iv, align 4, !dbg !111, !tbaa !27
  br label %omp.inner.for.cond, !dbg !110

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !27
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !27
  %cmp3 = icmp sle i32 %15, %16, !dbg !110
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !110

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !110

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !27
  %mul = mul nsw i32 %17, 1, !dbg !113
  %add = add nsw i32 0, %mul, !dbg !113
  store i32 %add, i32* %i, align 4, !dbg !113, !tbaa !27
  call void @omp_set_lock(%struct.omp_lock_t* %0), !dbg !114
  %18 = load i32, i32* %1, align 4, !dbg !116, !tbaa !27
  %inc = add nsw i32 %18, 1, !dbg !116
  store i32 %inc, i32* %1, align 4, !dbg !116, !tbaa !27
  call void @omp_unset_lock(%struct.omp_lock_t* %0), !dbg !117
  br label %omp.body.continue, !dbg !118

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !112

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !27
  %add5 = add nsw i32 %19, 1, !dbg !110
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !110, !tbaa !27
  br label %omp.inner.for.cond, !dbg !112, !llvm.loop !119

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !112

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %11), !dbg !120
  %20 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !112
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !112
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !112
  %23 = bitcast i32* %.omp.ub to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !112
  %24 = bitcast i32* %.omp.lb to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !112
  %25 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !112
  ret void, !dbg !121
}

declare !dbg !122 void @omp_set_lock(%struct.omp_lock_t*) #3

declare !dbg !123 void @omp_unset_lock(%struct.omp_lock_t*) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !124 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !126, metadata !DIExpression()), !dbg !132
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !127, metadata !DIExpression()), !dbg !132
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !128, metadata !DIExpression()), !dbg !132
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !129, metadata !DIExpression()), !dbg !132
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !130, metadata !DIExpression()), !dbg !132
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !133, !tbaa !52
  %1 = load i32*, i32** %var.addr, align 8, !dbg !133, !tbaa !52
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !133, !tbaa !52
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !133, !tbaa !52
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !133, !tbaa !106
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !133, !tbaa !106
  %6 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !133, !tbaa !52
  %7 = load i32*, i32** %var.addr, align 8, !dbg !133, !tbaa !52
  call void @.omp_outlined._debug__.1(i32* %2, i32* %3, i64 %4, i64 %5, %struct.omp_lock_t* %6, i32* %7) #5, !dbg !133
  ret void, !dbg !133
}

; Function Attrs: nounwind
declare !callback !134 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !136 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !138, metadata !DIExpression()), !dbg !142
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !139, metadata !DIExpression()), !dbg !142
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !140, metadata !DIExpression()), !dbg !142
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !143, !tbaa !52
  %1 = load i32*, i32** %var.addr, align 8, !dbg !143, !tbaa !52
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !143, !tbaa !52
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !143, !tbaa !52
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !143, !tbaa !52
  %5 = load i32*, i32** %var.addr, align 8, !dbg !143, !tbaa !52
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !143
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare !callback !134 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047e_main_l26(%struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !144 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !146, metadata !DIExpression()), !dbg !148
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !149, !tbaa !52
  %1 = load i32*, i32** %var.addr, align 8, !dbg !149, !tbaa !52
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !149, !tbaa !52
  %3 = load i32*, i32** %var.addr, align 8, !dbg !149, !tbaa !52
  call void @__omp_offloading_10308_be047e_main_l26_debug__(%struct.omp_lock_t* %2, i32* %3) #5, !dbg !149
  ret void, !dbg !149
}

declare !dbg !150 void @omp_destroy_lock(%struct.omp_lock_t*) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB150-missinglock1-orig-gpu-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !10, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !21, !22}
!14 = !DILocalVariable(name: "lck", scope: !9, file: !1, line: 22, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !16, line: 84, baseType: !17)
!16 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !16, line: 82, size: 64, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !17, file: !16, line: 83, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 23, type: !12)
!22 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 23, type: !12)
!23 = !DILocation(line: 22, column: 3, scope: !9)
!24 = !DILocation(line: 22, column: 14, scope: !9)
!25 = !DILocation(line: 23, column: 3, scope: !9)
!26 = !DILocation(line: 23, column: 7, scope: !9)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 23, column: 13, scope: !9)
!32 = !DILocation(line: 24, column: 3, scope: !9)
!33 = !DILocation(line: 26, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !9, file: !1, line: 26, column: 3)
!35 = !DILocation(line: 34, column: 3, scope: !9)
!36 = !DILocation(line: 36, column: 17, scope: !9)
!37 = !DILocation(line: 36, column: 3, scope: !9)
!38 = !DILocation(line: 38, column: 1, scope: !9)
!39 = !DILocation(line: 37, column: 3, scope: !9)
!40 = !DISubprogram(name: "omp_init_lock", scope: !16, file: !16, line: 86, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!44 = distinct !DISubprogram(name: "__omp_offloading_10308_be047e_main_l26_debug__", scope: !1, file: !1, line: 27, type: !45, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48}
!47 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!49 = !{!50, !51}
!50 = !DILocalVariable(name: "lck", arg: 1, scope: !44, file: !1, line: 22, type: !47)
!51 = !DILocalVariable(name: "var", arg: 2, scope: !44, file: !1, line: 23, type: !48)
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !29, i64 0}
!54 = !DILocation(line: 22, column: 14, scope: !44)
!55 = !DILocation(line: 23, column: 7, scope: !44)
!56 = !DILocation(line: 27, column: 3, scope: !44)
!57 = !DILocation(line: 27, column: 44, scope: !44)
!58 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 28, type: !59, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !61, !47, !48}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !61, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !58, type: !61, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "lck", arg: 3, scope: !58, file: !1, line: 22, type: !47)
!69 = !DILocalVariable(name: "var", arg: 4, scope: !58, file: !1, line: 23, type: !48)
!70 = !DILocalVariable(name: ".omp.iv", scope: !58, type: !12, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.comb.lb", scope: !58, type: !12, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.comb.ub", scope: !58, type: !12, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.stride", scope: !58, type: !12, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.is_last", scope: !58, type: !12, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "i", scope: !58, type: !12, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !58)
!77 = !DILocation(line: 22, column: 14, scope: !58)
!78 = !DILocation(line: 23, column: 7, scope: !58)
!79 = !DILocation(line: 28, column: 3, scope: !58)
!80 = !DILocation(line: 28, column: 8, scope: !58)
!81 = !DILocation(line: 27, column: 3, scope: !58)
!82 = !DILocation(line: 27, column: 44, scope: !83)
!83 = distinct !DILexicalBlock(scope: !58, file: !1, line: 27, column: 3)
!84 = distinct !{!84, !81, !85}
!85 = !DILocation(line: 27, column: 44, scope: !58)
!86 = !DILocation(line: 32, column: 3, scope: !58)
!87 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 28, type: !88, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !61, !61, !90, !90, !47, !48}
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !87, type: !61, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !87, type: !61, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !87, type: !90, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !87, type: !90, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "lck", arg: 5, scope: !87, file: !1, line: 22, type: !47)
!98 = !DILocalVariable(name: "var", arg: 6, scope: !87, file: !1, line: 23, type: !48)
!99 = !DILocalVariable(name: ".omp.iv", scope: !87, type: !12, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".omp.lb", scope: !87, type: !12, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.ub", scope: !87, type: !12, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.stride", scope: !87, type: !12, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.is_last", scope: !87, type: !12, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "i", scope: !87, type: !12, flags: DIFlagArtificial)
!105 = !DILocation(line: 0, scope: !87)
!106 = !{!107, !107, i64 0}
!107 = !{!"long", !29, i64 0}
!108 = !DILocation(line: 22, column: 14, scope: !87)
!109 = !DILocation(line: 23, column: 7, scope: !87)
!110 = !DILocation(line: 28, column: 3, scope: !87)
!111 = !DILocation(line: 28, column: 8, scope: !87)
!112 = !DILocation(line: 27, column: 3, scope: !87)
!113 = !DILocation(line: 28, column: 24, scope: !87)
!114 = !DILocation(line: 29, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !87, file: !1, line: 28, column: 28)
!116 = !DILocation(line: 30, column: 8, scope: !115)
!117 = !DILocation(line: 31, column: 5, scope: !115)
!118 = !DILocation(line: 32, column: 3, scope: !115)
!119 = distinct !{!119, !112, !120}
!120 = !DILocation(line: 27, column: 44, scope: !87)
!121 = !DILocation(line: 32, column: 3, scope: !87)
!122 = !DISubprogram(name: "omp_set_lock", scope: !16, file: !16, line: 87, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!123 = !DISubprogram(name: "omp_unset_lock", scope: !16, file: !16, line: 88, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!124 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !88, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!125 = !{!126, !127, !128, !129, !130, !131}
!126 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !124, type: !61, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !124, type: !61, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !124, type: !90, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !124, type: !90, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: "lck", arg: 5, scope: !124, type: !47, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "var", arg: 6, scope: !124, type: !48, flags: DIFlagArtificial)
!132 = !DILocation(line: 0, scope: !124)
!133 = !DILocation(line: 27, column: 3, scope: !124)
!134 = !{!135}
!135 = !{i64 2, i64 -1, i64 -1, i1 true}
!136 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 27, type: !59, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138, !139, !140, !141}
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !136, type: !61, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !136, type: !61, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "lck", arg: 3, scope: !136, type: !47, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "var", arg: 4, scope: !136, type: !48, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !136)
!143 = !DILocation(line: 27, column: 3, scope: !136)
!144 = distinct !DISubprogram(name: "__omp_offloading_10308_be047e_main_l26", scope: !1, file: !1, line: 26, type: !45, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146, !147}
!146 = !DILocalVariable(name: "lck", arg: 1, scope: !144, type: !47, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: "var", arg: 2, scope: !144, type: !48, flags: DIFlagArtificial)
!148 = !DILocation(line: 0, scope: !144)
!149 = !DILocation(line: 26, column: 3, scope: !144)
!150 = !DISubprogram(name: "omp_destroy_lock", scope: !16, file: !16, line: 89, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
