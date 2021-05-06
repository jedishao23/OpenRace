; ModuleID = 'DRB154-missinglock3-orig-gpu-no.c'
source_filename = "DRB154-missinglock3-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@0 = private unnamed_addr constant [47 x i8] c";DRB154-missinglock3-orig-gpu-no.c;main;24;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [48 x i8] c";DRB154-missinglock3-orig-gpu-no.c;main;24;48;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

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
  call void @__omp_offloading_10308_be0482_main_l23(i32* %var, %struct.omp_lock_t* %lck) #5, !dbg !31
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !33
  %2 = load i32, i32* %var, align 4, !dbg !34, !tbaa !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %2), !dbg !35
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
define internal void @__omp_offloading_10308_be0482_main_l23_debug__(i32* nonnull align 4 dereferenceable(4) %var, %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck) #4 !dbg !42 {
entry:
  %var.addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !48, metadata !DIExpression()), !dbg !52
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !49, metadata !DIExpression()), !dbg !53
  %0 = load i32*, i32** %var.addr, align 8, !dbg !54, !tbaa !50
  %1 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !54, !tbaa !50
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @5, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* %1, i32* %0), !dbg !54
  ret void, !dbg !55
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %var1 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
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
  %2 = bitcast i32* %var1 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !68, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %var1, align 4, !dbg !79, !tbaa !26
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !69, metadata !DIExpression()), !dbg !75
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !70, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.lb, align 4, !dbg !80, !tbaa !26
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !71, metadata !DIExpression()), !dbg !75
  store i32 99, i32* %.omp.ub, align 4, !dbg !80, !tbaa !26
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !72, metadata !DIExpression()), !dbg !75
  store i32 1, i32* %.omp.stride, align 4, !dbg !80, !tbaa !26
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !73, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.is_last, align 4, !dbg !80, !tbaa !26
  %8 = bitcast i32* %i to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %i, metadata !74, metadata !DIExpression()), !dbg !75
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %10 = load i32, i32* %9, align 4, !dbg !78, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %10, i32 92, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !78
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !80, !tbaa !26
  %cmp = icmp sgt i32 %11, 99, !dbg !80
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !80

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !80

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !80, !tbaa !26
  br label %cond.end, !dbg !80

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %12, %cond.false ], !dbg !80
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !80, !tbaa !26
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !80, !tbaa !26
  store i32 %13, i32* %.omp.iv, align 4, !dbg !80, !tbaa !26
  br label %omp.inner.for.cond, !dbg !78

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !26
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !80, !tbaa !26
  %cmp2 = icmp sle i32 %14, %15, !dbg !78
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !78

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !78

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !26
  %mul = mul nsw i32 %16, 1, !dbg !81
  %add = add nsw i32 0, %mul, !dbg !81
  store i32 %add, i32* %i, align 4, !dbg !81, !tbaa !26
  call void @omp_set_lock(%struct.omp_lock_t* %0), !dbg !82
  %17 = load i32, i32* %var1, align 4, !dbg !84, !tbaa !26
  %inc = add nsw i32 %17, 1, !dbg !84
  store i32 %inc, i32* %var1, align 4, !dbg !84, !tbaa !26
  call void @omp_unset_lock(%struct.omp_lock_t* %0), !dbg !85
  br label %omp.body.continue, !dbg !86

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !87

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !26
  %add3 = add nsw i32 %18, 1, !dbg !78
  store i32 %add3, i32* %.omp.iv, align 4, !dbg !78, !tbaa !26
  br label %omp.inner.for.cond, !dbg !87, !llvm.loop !88

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !87

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %10), !dbg !89
  %19 = bitcast i32* %i to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #5, !dbg !87
  %20 = bitcast i32* %.omp.is_last to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !87
  %21 = bitcast i32* %.omp.stride to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !87
  %22 = bitcast i32* %.omp.ub to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !87
  %23 = bitcast i32* %.omp.lb to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !87
  %24 = bitcast i32* %.omp.iv to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !87
  %25 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !87
  %26 = bitcast i32* %var1 to i8*, !dbg !87
  store i8* %26, i8** %25, align 8, !dbg !87
  %27 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !87
  %28 = call i32 @__kmpc_reduce(%struct.ident_t* @4, i32 %10, i32 1, i64 8, i8* %27, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !87
  switch i32 %28, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !87

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %29 = load i32, i32* %1, align 4, !dbg !79, !tbaa !26
  %30 = load i32, i32* %var1, align 4, !dbg !79, !tbaa !26
  %add4 = add nsw i32 %29, %30, !dbg !90
  store i32 %add4, i32* %1, align 4, !dbg !90, !tbaa !26
  call void @__kmpc_end_reduce(%struct.ident_t* @4, i32 %10, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !87
  br label %.omp.reduction.default, !dbg !87

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %31 = load i32, i32* %var1, align 4, !dbg !79, !tbaa !26
  %32 = atomicrmw add i32* %1, i32 %31 monotonic, !dbg !87
  call void @__kmpc_end_reduce(%struct.ident_t* @4, i32 %10, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !87
  br label %.omp.reduction.default, !dbg !87

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %33 = bitcast i32* %var1 to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !87
  ret void, !dbg !91
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare !dbg !92 void @omp_set_lock(%struct.omp_lock_t*) #3

declare !dbg !93 void @omp_unset_lock(%struct.omp_lock_t*) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !94 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !97, metadata !DIExpression()), !dbg !99
  store i8* %1, i8** %.addr1, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !98, metadata !DIExpression()), !dbg !99
  %2 = load i8*, i8** %.addr, align 8, !dbg !100
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !100
  %4 = load i8*, i8** %.addr1, align 8, !dbg !100
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !100
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !100
  %7 = load i8*, i8** %6, align 8, !dbg !100
  %8 = bitcast i8* %7 to i32*, !dbg !100
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !100
  %10 = load i8*, i8** %9, align 8, !dbg !100
  %11 = bitcast i8* %10 to i32*, !dbg !100
  %12 = load i32, i32* %11, align 4, !dbg !101, !tbaa !26
  %13 = load i32, i32* %8, align 4, !dbg !101, !tbaa !26
  %add = add nsw i32 %12, %13, !dbg !102
  store i32 %add, i32* %11, align 4, !dbg !102, !tbaa !26
  ret void, !dbg !101
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #5

; Function Attrs: nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !103 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !105, metadata !DIExpression()), !dbg !109
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !106, metadata !DIExpression()), !dbg !109
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !107, metadata !DIExpression()), !dbg !109
  store i32* %var, i32** %var.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !110, !tbaa !50
  %1 = load i32*, i32** %var.addr, align 8, !dbg !110, !tbaa !50
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !110, !tbaa !50
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !110, !tbaa !50
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !110, !tbaa !50
  %5 = load i32*, i32** %var.addr, align 8, !dbg !110, !tbaa !50
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !110
  ret void, !dbg !110
}

; Function Attrs: nounwind
declare !callback !111 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0482_main_l23(i32* nonnull align 4 dereferenceable(4) %var, %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck) #4 !dbg !113 {
entry:
  %var.addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !115, metadata !DIExpression()), !dbg !117
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i32*, i32** %var.addr, align 8, !dbg !118, !tbaa !50
  %1 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !118, !tbaa !50
  %2 = load i32*, i32** %var.addr, align 8, !dbg !118, !tbaa !50
  %3 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !118, !tbaa !50
  call void @__omp_offloading_10308_be0482_main_l23_debug__(i32* %2, %struct.omp_lock_t* %3) #5, !dbg !118
  ret void, !dbg !118
}

declare !dbg !119 void @omp_destroy_lock(%struct.omp_lock_t*) #3

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
!1 = !DIFile(filename: "DRB154-missinglock3-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!33 = !DILocation(line: 31, column: 3, scope: !9)
!34 = !DILocation(line: 32, column: 18, scope: !9)
!35 = !DILocation(line: 32, column: 3, scope: !9)
!36 = !DILocation(line: 34, column: 1, scope: !9)
!37 = !DILocation(line: 33, column: 3, scope: !9)
!38 = !DISubprogram(name: "omp_init_lock", scope: !16, file: !16, line: 86, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!42 = distinct !DISubprogram(name: "__omp_offloading_10308_be0482_main_l23_debug__", scope: !1, file: !1, line: 24, type: !43, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !46}
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!47 = !{!48, !49}
!48 = !DILocalVariable(name: "var", arg: 1, scope: !42, file: !1, line: 20, type: !45)
!49 = !DILocalVariable(name: "lck", arg: 2, scope: !42, file: !1, line: 19, type: !46)
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !28, i64 0}
!52 = !DILocation(line: 20, column: 7, scope: !42)
!53 = !DILocation(line: 19, column: 14, scope: !42)
!54 = !DILocation(line: 24, column: 3, scope: !42)
!55 = !DILocation(line: 24, column: 48, scope: !42)
!56 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 25, type: !57, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59, !59, !46, !45}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!64 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !59, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !59, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "lck", arg: 3, scope: !56, file: !1, line: 19, type: !46)
!67 = !DILocalVariable(name: "var", arg: 4, scope: !56, file: !1, line: 20, type: !45)
!68 = !DILocalVariable(name: "var", scope: !56, type: !12, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.iv", scope: !56, type: !12, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.lb", scope: !56, type: !12, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.ub", scope: !56, type: !12, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.stride", scope: !56, type: !12, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.is_last", scope: !56, type: !12, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "i", scope: !56, type: !12, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !56)
!76 = !DILocation(line: 19, column: 14, scope: !56)
!77 = !DILocation(line: 20, column: 7, scope: !56)
!78 = !DILocation(line: 25, column: 3, scope: !56)
!79 = !DILocation(line: 24, column: 44, scope: !56)
!80 = !DILocation(line: 25, column: 8, scope: !56)
!81 = !DILocation(line: 25, column: 24, scope: !56)
!82 = !DILocation(line: 26, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !56, file: !1, line: 25, column: 28)
!84 = !DILocation(line: 27, column: 8, scope: !83)
!85 = !DILocation(line: 28, column: 5, scope: !83)
!86 = !DILocation(line: 29, column: 3, scope: !83)
!87 = !DILocation(line: 24, column: 3, scope: !56)
!88 = distinct !{!88, !87, !89}
!89 = !DILocation(line: 24, column: 48, scope: !56)
!90 = !DILocation(line: 24, column: 42, scope: !56)
!91 = !DILocation(line: 29, column: 3, scope: !56)
!92 = !DISubprogram(name: "omp_set_lock", scope: !16, file: !16, line: 87, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!93 = !DISubprogram(name: "omp_unset_lock", scope: !16, file: !16, line: 88, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!94 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 24, type: !95, scopeLine: 24, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!95 = !DISubroutineType(types: !2)
!96 = !{!97, !98}
!97 = !DILocalVariable(arg: 1, scope: !94, type: !20, flags: DIFlagArtificial)
!98 = !DILocalVariable(arg: 2, scope: !94, type: !20, flags: DIFlagArtificial)
!99 = !DILocation(line: 0, scope: !94)
!100 = !DILocation(line: 24, column: 48, scope: !94)
!101 = !DILocation(line: 24, column: 44, scope: !94)
!102 = !DILocation(line: 24, column: 42, scope: !94)
!103 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 24, type: !57, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!104 = !{!105, !106, !107, !108}
!105 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !103, type: !59, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !103, type: !59, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "lck", arg: 3, scope: !103, type: !46, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "var", arg: 4, scope: !103, type: !45, flags: DIFlagArtificial)
!109 = !DILocation(line: 0, scope: !103)
!110 = !DILocation(line: 24, column: 3, scope: !103)
!111 = !{!112}
!112 = !{i64 2, i64 -1, i64 -1, i1 true}
!113 = distinct !DISubprogram(name: "__omp_offloading_10308_be0482_main_l23", scope: !1, file: !1, line: 23, type: !43, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!114 = !{!115, !116}
!115 = !DILocalVariable(name: "var", arg: 1, scope: !113, type: !45, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "lck", arg: 2, scope: !113, type: !46, flags: DIFlagArtificial)
!117 = !DILocation(line: 0, scope: !113)
!118 = !DILocation(line: 23, column: 3, scope: !113)
!119 = !DISubprogram(name: "omp_destroy_lock", scope: !16, file: !16, line: 89, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
