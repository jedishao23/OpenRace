; ModuleID = 'DRB152-missinglock2-orig-gpu-no.c'
source_filename = "DRB152-missinglock2-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@0 = private unnamed_addr constant [47 x i8] c";DRB152-missinglock2-orig-gpu-no.c;main;25;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [48 x i8] c";DRB152-missinglock2-orig-gpu-no.c;main;25;38;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [47 x i8] c";DRB152-missinglock2-orig-gpu-no.c;main;24;3;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @6, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %var = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !22
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !14, metadata !DIExpression()), !dbg !23
  %1 = bitcast i32* %var to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %var, metadata !21, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %var, align 4, !dbg !25, !tbaa !26
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !30
  call void @__omp_offloading_10308_be0480_main_l23(%struct.omp_lock_t* %lck, i32* %var) #5, !dbg !31
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !33
  %2 = load i32, i32* %var, align 4, !dbg !34, !tbaa !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2), !dbg !35
  %3 = bitcast i32* %var to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !36
  %4 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #5, !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !38 void @omp_init_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0480_main_l23_debug__(%struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !42 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @7)
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !48, metadata !DIExpression()), !dbg !52
  store i32* %var, i32** %var.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !49, metadata !DIExpression()), !dbg !53
  %1 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !54, !tbaa !50
  %2 = load i32*, i32** %var.addr, align 8, !dbg !54, !tbaa !50
  call void @__kmpc_push_num_teams(%struct.ident_t* @7, i32 %0, i32 1, i32 0), !dbg !54
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @7, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), %struct.omp_lock_t* %1, i32* %2), !dbg !54
  ret void, !dbg !55
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !56 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !64, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !65, metadata !DIExpression()), !dbg !75
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !66, metadata !DIExpression()), !dbg !76
  store i32* %var, i32** %var.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !67, metadata !DIExpression()), !dbg !77
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !78, !tbaa !50
  %1 = load i32*, i32** %var.addr, align 8, !dbg !78, !tbaa !50
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !68, metadata !DIExpression()), !dbg !79
  %3 = bitcast i32* %.omp.comb.lb to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !70, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !80, !tbaa !26
  %4 = bitcast i32* %.omp.comb.ub to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !71, metadata !DIExpression()), !dbg !79
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !26
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !72, metadata !DIExpression()), !dbg !79
  store i32 1, i32* %.omp.stride, align 4, !dbg !80, !tbaa !26
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !73, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.is_last, align 4, !dbg !80, !tbaa !26
  %7 = bitcast i32* %i to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %i, metadata !74, metadata !DIExpression()), !dbg !79
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %9 = load i32, i32* %8, align 4, !dbg !78, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %9, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !78
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !26
  %cmp = icmp sgt i32 %10, 99, !dbg !80
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !80

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !80

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !26
  br label %cond.end, !dbg !80

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %11, %cond.false ], !dbg !80
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !26
  %12 = load i32, i32* %.omp.comb.lb, align 4, !dbg !80, !tbaa !26
  store i32 %12, i32* %.omp.iv, align 4, !dbg !80, !tbaa !26
  br label %omp.inner.for.cond, !dbg !78

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !26
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !80, !tbaa !26
  %cmp1 = icmp sle i32 %13, %14, !dbg !81
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !78

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !78

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.comb.lb, align 4, !dbg !82
  %16 = zext i32 %15 to i64, !dbg !82
  %17 = load i32, i32* %.omp.comb.ub, align 4, !dbg !82
  %18 = zext i32 %17 to i64, !dbg !82
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %16, i64 %18, %struct.omp_lock_t* %0, i32* %1), !dbg !82
  br label %omp.inner.for.inc, !dbg !83

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !26
  %20 = load i32, i32* %.omp.stride, align 4, !dbg !80, !tbaa !26
  %add = add nsw i32 %19, %20, !dbg !81
  store i32 %add, i32* %.omp.iv, align 4, !dbg !81, !tbaa !26
  br label %omp.inner.for.cond, !dbg !83, !llvm.loop !85

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !83

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %9), !dbg !86
  %21 = bitcast i32* %i to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !83
  %22 = bitcast i32* %.omp.is_last to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !83
  %23 = bitcast i32* %.omp.stride to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !83
  %24 = bitcast i32* %.omp.comb.ub to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !83
  %25 = bitcast i32* %.omp.comb.lb to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !83
  %26 = bitcast i32* %.omp.iv to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !83
  ret void, !dbg !87
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !88 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !106
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !96, metadata !DIExpression()), !dbg !106
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !97, metadata !DIExpression()), !dbg !106
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !98, metadata !DIExpression()), !dbg !109
  store i32* %var, i32** %var.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !99, metadata !DIExpression()), !dbg !110
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !111, !tbaa !50
  %1 = load i32*, i32** %var.addr, align 8, !dbg !111, !tbaa !50
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !100, metadata !DIExpression()), !dbg !106
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !101, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.lb, align 4, !dbg !112, !tbaa !26
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !102, metadata !DIExpression()), !dbg !106
  store i32 99, i32* %.omp.ub, align 4, !dbg !112, !tbaa !26
  %5 = load i64, i64* %.previous.lb..addr, align 8, !dbg !111, !tbaa !107
  %conv = trunc i64 %5 to i32, !dbg !111
  %6 = load i64, i64* %.previous.ub..addr, align 8, !dbg !111, !tbaa !107
  %conv1 = trunc i64 %6 to i32, !dbg !111
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !111, !tbaa !26
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !111, !tbaa !26
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !103, metadata !DIExpression()), !dbg !106
  store i32 1, i32* %.omp.stride, align 4, !dbg !112, !tbaa !26
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !104, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.is_last, align 4, !dbg !112, !tbaa !26
  %9 = bitcast i32* %i to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i, metadata !105, metadata !DIExpression()), !dbg !106
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111
  %11 = load i32, i32* %10, align 4, !dbg !111, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !113
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !112, !tbaa !26
  %cmp = icmp sgt i32 %12, 99, !dbg !112
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !112

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !112

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !112, !tbaa !26
  br label %cond.end, !dbg !112

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %13, %cond.false ], !dbg !112
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !112, !tbaa !26
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !112, !tbaa !26
  store i32 %14, i32* %.omp.iv, align 4, !dbg !112, !tbaa !26
  br label %omp.inner.for.cond, !dbg !111

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !112, !tbaa !26
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !112, !tbaa !26
  %cmp3 = icmp sle i32 %15, %16, !dbg !111
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !111

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !111

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !112, !tbaa !26
  %mul = mul nsw i32 %17, 1, !dbg !114
  %add = add nsw i32 0, %mul, !dbg !114
  store i32 %add, i32* %i, align 4, !dbg !114, !tbaa !26
  call void @omp_set_lock(%struct.omp_lock_t* %0), !dbg !115
  %18 = load i32, i32* %1, align 4, !dbg !117, !tbaa !26
  %inc = add nsw i32 %18, 1, !dbg !117
  store i32 %inc, i32* %1, align 4, !dbg !117, !tbaa !26
  call void @omp_unset_lock(%struct.omp_lock_t* %0), !dbg !118
  br label %omp.body.continue, !dbg !119

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !113

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !112, !tbaa !26
  %add5 = add nsw i32 %19, 1, !dbg !111
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !111, !tbaa !26
  br label %omp.inner.for.cond, !dbg !113, !llvm.loop !120

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !113

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %11), !dbg !121
  %20 = bitcast i32* %i to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !113
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !113
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !113
  %23 = bitcast i32* %.omp.ub to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !113
  %24 = bitcast i32* %.omp.lb to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !113
  %25 = bitcast i32* %.omp.iv to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !113
  ret void, !dbg !122
}

declare !dbg !123 void @omp_set_lock(%struct.omp_lock_t*) #3

declare !dbg !124 void @omp_unset_lock(%struct.omp_lock_t*) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !125 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !127, metadata !DIExpression()), !dbg !133
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !128, metadata !DIExpression()), !dbg !133
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !129, metadata !DIExpression()), !dbg !133
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !130, metadata !DIExpression()), !dbg !133
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !131, metadata !DIExpression()), !dbg !133
  store i32* %var, i32** %var.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !134, !tbaa !50
  %1 = load i32*, i32** %var.addr, align 8, !dbg !134, !tbaa !50
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !134, !tbaa !50
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !134, !tbaa !50
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !134, !tbaa !107
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !134, !tbaa !107
  %6 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !134, !tbaa !50
  %7 = load i32*, i32** %var.addr, align 8, !dbg !134, !tbaa !50
  call void @.omp_outlined._debug__.1(i32* %2, i32* %3, i64 %4, i64 %5, %struct.omp_lock_t* %6, i32* %7) #5, !dbg !134
  ret void, !dbg !134
}

; Function Attrs: nounwind
declare !callback !135 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !137 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !139, metadata !DIExpression()), !dbg !143
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !140, metadata !DIExpression()), !dbg !143
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !141, metadata !DIExpression()), !dbg !143
  store i32* %var, i32** %var.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !144, !tbaa !50
  %1 = load i32*, i32** %var.addr, align 8, !dbg !144, !tbaa !50
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !144, !tbaa !50
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !144, !tbaa !50
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !144, !tbaa !50
  %5 = load i32*, i32** %var.addr, align 8, !dbg !144, !tbaa !50
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !144
  ret void, !dbg !144
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #5

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) #5

; Function Attrs: nounwind
declare !callback !135 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0480_main_l23(%struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !145 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !147, metadata !DIExpression()), !dbg !149
  store i32* %var, i32** %var.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !148, metadata !DIExpression()), !dbg !149
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !150, !tbaa !50
  %1 = load i32*, i32** %var.addr, align 8, !dbg !150, !tbaa !50
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !150, !tbaa !50
  %3 = load i32*, i32** %var.addr, align 8, !dbg !150, !tbaa !50
  call void @__omp_offloading_10308_be0480_main_l23_debug__(%struct.omp_lock_t* %2, i32* %3) #5, !dbg !150
  ret void, !dbg !150
}

declare !dbg !151 void @omp_destroy_lock(%struct.omp_lock_t*) #3

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
!1 = !DIFile(filename: "DRB152-missinglock2-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !10, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !21}
!14 = !DILocalVariable(name: "lck", scope: !9, file: !1, line: 19, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !16, line: 84, baseType: !17)
!16 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !16, line: 82, size: 64, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !17, file: !16, line: 83, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 20, type: !12)
!22 = !DILocation(line: 19, column: 3, scope: !9)
!23 = !DILocation(line: 19, column: 14, scope: !9)
!24 = !DILocation(line: 20, column: 3, scope: !9)
!25 = !DILocation(line: 20, column: 7, scope: !9)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 21, column: 3, scope: !9)
!31 = !DILocation(line: 23, column: 3, scope: !32)
!32 = distinct !DILexicalBlock(scope: !9, file: !1, line: 23, column: 3)
!33 = !DILocation(line: 32, column: 3, scope: !9)
!34 = !DILocation(line: 33, column: 17, scope: !9)
!35 = !DILocation(line: 33, column: 3, scope: !9)
!36 = !DILocation(line: 35, column: 1, scope: !9)
!37 = !DILocation(line: 34, column: 3, scope: !9)
!38 = !DISubprogram(name: "omp_init_lock", scope: !16, file: !16, line: 86, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!42 = distinct !DISubprogram(name: "__omp_offloading_10308_be0480_main_l23_debug__", scope: !1, file: !1, line: 24, type: !43, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !46}
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!47 = !{!48, !49}
!48 = !DILocalVariable(name: "lck", arg: 1, scope: !42, file: !1, line: 19, type: !45)
!49 = !DILocalVariable(name: "var", arg: 2, scope: !42, file: !1, line: 20, type: !46)
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !28, i64 0}
!52 = !DILocation(line: 19, column: 14, scope: !42)
!53 = !DILocation(line: 20, column: 7, scope: !42)
!54 = !DILocation(line: 24, column: 3, scope: !42)
!55 = !DILocation(line: 24, column: 33, scope: !42)
!56 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 25, type: !57, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59, !59, !45, !46}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!63 = !{!64, !65, !66, !67, !68, !70, !71, !72, !73, !74}
!64 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !59, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !59, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "lck", arg: 3, scope: !56, file: !1, line: 19, type: !45)
!67 = !DILocalVariable(name: "var", arg: 4, scope: !56, file: !1, line: 20, type: !46)
!68 = !DILocalVariable(name: ".omp.iv", scope: !69, type: !12, flags: DIFlagArtificial)
!69 = distinct !DILexicalBlock(scope: !56, file: !1, line: 25, column: 3)
!70 = !DILocalVariable(name: ".omp.comb.lb", scope: !69, type: !12, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.comb.ub", scope: !69, type: !12, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.stride", scope: !69, type: !12, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.is_last", scope: !69, type: !12, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "i", scope: !69, type: !12, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !56)
!76 = !DILocation(line: 19, column: 14, scope: !56)
!77 = !DILocation(line: 20, column: 7, scope: !56)
!78 = !DILocation(line: 25, column: 3, scope: !56)
!79 = !DILocation(line: 0, scope: !69)
!80 = !DILocation(line: 26, column: 8, scope: !69)
!81 = !DILocation(line: 26, column: 3, scope: !69)
!82 = !DILocation(line: 25, column: 3, scope: !69)
!83 = !DILocation(line: 25, column: 38, scope: !84)
!84 = distinct !DILexicalBlock(scope: !69, file: !1, line: 25, column: 3)
!85 = distinct !{!85, !82, !86}
!86 = !DILocation(line: 25, column: 38, scope: !69)
!87 = !DILocation(line: 25, column: 38, scope: !56)
!88 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 26, type: !89, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !59, !59, !91, !91, !45, !46}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !88, type: !59, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !88, type: !59, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !88, type: !91, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !88, type: !91, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "lck", arg: 5, scope: !88, file: !1, line: 19, type: !45)
!99 = !DILocalVariable(name: "var", arg: 6, scope: !88, file: !1, line: 20, type: !46)
!100 = !DILocalVariable(name: ".omp.iv", scope: !88, type: !12, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.lb", scope: !88, type: !12, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.ub", scope: !88, type: !12, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.stride", scope: !88, type: !12, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.is_last", scope: !88, type: !12, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "i", scope: !88, type: !12, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !88)
!107 = !{!108, !108, i64 0}
!108 = !{!"long", !28, i64 0}
!109 = !DILocation(line: 19, column: 14, scope: !88)
!110 = !DILocation(line: 20, column: 7, scope: !88)
!111 = !DILocation(line: 26, column: 3, scope: !88)
!112 = !DILocation(line: 26, column: 8, scope: !88)
!113 = !DILocation(line: 25, column: 3, scope: !88)
!114 = !DILocation(line: 26, column: 22, scope: !88)
!115 = !DILocation(line: 27, column: 5, scope: !116)
!116 = distinct !DILexicalBlock(scope: !88, file: !1, line: 26, column: 26)
!117 = !DILocation(line: 28, column: 8, scope: !116)
!118 = !DILocation(line: 29, column: 5, scope: !116)
!119 = !DILocation(line: 30, column: 3, scope: !116)
!120 = distinct !{!120, !113, !121}
!121 = !DILocation(line: 25, column: 38, scope: !88)
!122 = !DILocation(line: 30, column: 3, scope: !88)
!123 = !DISubprogram(name: "omp_set_lock", scope: !16, file: !16, line: 87, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!124 = !DISubprogram(name: "omp_unset_lock", scope: !16, file: !16, line: 88, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!125 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !89, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !125, type: !59, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !125, type: !59, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !125, type: !91, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !125, type: !91, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "lck", arg: 5, scope: !125, type: !45, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "var", arg: 6, scope: !125, type: !46, flags: DIFlagArtificial)
!133 = !DILocation(line: 0, scope: !125)
!134 = !DILocation(line: 25, column: 3, scope: !125)
!135 = !{!136}
!136 = !{i64 2, i64 -1, i64 -1, i1 true}
!137 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 24, type: !57, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140, !141, !142}
!139 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !137, type: !59, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !137, type: !59, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "lck", arg: 3, scope: !137, type: !45, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "var", arg: 4, scope: !137, type: !46, flags: DIFlagArtificial)
!143 = !DILocation(line: 0, scope: !137)
!144 = !DILocation(line: 24, column: 3, scope: !137)
!145 = distinct !DISubprogram(name: "__omp_offloading_10308_be0480_main_l23", scope: !1, file: !1, line: 23, type: !43, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!146 = !{!147, !148}
!147 = !DILocalVariable(name: "lck", arg: 1, scope: !145, type: !45, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "var", arg: 2, scope: !145, type: !46, flags: DIFlagArtificial)
!149 = !DILocation(line: 0, scope: !145)
!150 = !DILocation(line: 23, column: 3, scope: !145)
!151 = !DISubprogram(name: "omp_destroy_lock", scope: !16, file: !16, line: 89, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
