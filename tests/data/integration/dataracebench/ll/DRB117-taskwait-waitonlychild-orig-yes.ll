; ModuleID = 'DRB117-taskwait-waitonlychild-orig-yes.c'
source_filename = "DRB117-taskwait-waitonlychild-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { [2 x i32]*, [4 x i32]* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.anon.0 = type { [2 x i32]*, [4 x i32]* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;28;5;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;35;5;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;39;8;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @5, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;37;7;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @7, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;46;7;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @9, i32 0, i32 0) }, align 8
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @3, i32 0, i32 0) }, align 8
@12 = private unnamed_addr constant [55 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;26;24;;\00", align 1
@13 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @12, i32 0, i32 0) }, align 8
@14 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;26;3;;\00", align 1
@15 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @14, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [4 x i32], align 16
  %psum = alloca [2 x i32], align 4
  %sum = alloca i32, align 4
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @13)
  store i32 0, i32* %retval, align 4
  %1 = bitcast [4 x i32]* %a to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #4, !dbg !23
  call void @llvm.dbg.declare(metadata [4 x i32]* %a, metadata !14, metadata !DIExpression()), !dbg !24
  %2 = bitcast [2 x i32]* %psum to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4, !dbg !25
  call void @llvm.dbg.declare(metadata [2 x i32]* %psum, metadata !18, metadata !DIExpression()), !dbg !26
  %3 = bitcast i32* %sum to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !22, metadata !DIExpression()), !dbg !28
  call void @__kmpc_push_num_threads(%struct.ident_t* @13, i32 %0, i32 2), !dbg !29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @15, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [4 x i32]*, [2 x i32]*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), [4 x i32]* %a, [2 x i32]* %psum, i32* %sum), !dbg !29
  %4 = load i32, i32* %sum, align 4, !dbg !30, !tbaa !31
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4), !dbg !35
  %5 = bitcast i32* %sum to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !36
  %6 = bitcast [2 x i32]* %psum to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #4, !dbg !36
  %7 = bitcast [4 x i32]* %a to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %7) #4, !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [4 x i32]* nonnull align 4 dereferenceable(16) %a, [2 x i32]* nonnull align 4 dereferenceable(8) %psum, i32* nonnull align 4 dereferenceable(4) %sum) #3 !dbg !38 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [4 x i32]*, align 8
  %psum.addr = alloca [2 x i32]*, align 8
  %sum.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !49, metadata !DIExpression()), !dbg !66
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !50, metadata !DIExpression()), !dbg !66
  store [4 x i32]* %a, [4 x i32]** %a.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata [4 x i32]** %a.addr, metadata !51, metadata !DIExpression()), !dbg !67
  store [2 x i32]* %psum, [2 x i32]** %psum.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata [2 x i32]** %psum.addr, metadata !52, metadata !DIExpression()), !dbg !68
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !53, metadata !DIExpression()), !dbg !69
  %0 = load [4 x i32]*, [4 x i32]** %a.addr, align 8, !dbg !70, !tbaa !64
  %1 = load [2 x i32]*, [2 x i32]** %psum.addr, align 8, !dbg !70, !tbaa !64
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !70, !tbaa !64
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !54, metadata !DIExpression()), !dbg !72
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !57, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.lb, align 4, !dbg !73, !tbaa !31
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !58, metadata !DIExpression()), !dbg !72
  store i32 3, i32* %.omp.ub, align 4, !dbg !73, !tbaa !31
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !59, metadata !DIExpression()), !dbg !72
  store i32 1, i32* %.omp.stride, align 4, !dbg !73, !tbaa !31
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !60, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.is_last, align 4, !dbg !73, !tbaa !31
  %8 = bitcast i32* %i to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %i, metadata !61, metadata !DIExpression()), !dbg !72
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %10 = load i32, i32* %9, align 4, !dbg !71, !tbaa !31
  call void @__kmpc_dispatch_init_4(%struct.ident_t* @1, i32 %10, i32 1073741859, i32 0, i32 3, i32 1, i32 1), !dbg !71
  br label %omp.dispatch.cond, !dbg !71

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %11 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* @1, i32 %10, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !71
  %tobool = icmp ne i32 %11, 0, !dbg !71
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !71

omp.dispatch.cleanup:                             ; preds = %omp.dispatch.cond
  br label %omp.dispatch.end, !dbg !71

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !73, !tbaa !31
  store i32 %12, i32* %.omp.iv, align 4, !dbg !73, !tbaa !31
  br label %omp.inner.for.cond, !dbg !71

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !31, !llvm.access.group !74
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !73, !tbaa !31, !llvm.access.group !74
  %cmp = icmp sle i32 %13, %14, !dbg !75
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !71

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !71

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !31, !llvm.access.group !74
  %mul = mul nsw i32 %15, 1, !dbg !76
  %add = add nsw i32 0, %mul, !dbg !76
  store i32 %add, i32* %i, align 4, !dbg !76, !tbaa !31, !llvm.access.group !74
  %16 = load i32, i32* %i, align 4, !dbg !77, !tbaa !31, !llvm.access.group !74
  %17 = load i32, i32* %i, align 4, !dbg !78, !tbaa !31, !llvm.access.group !74
  %idxprom = sext i32 %17 to i64, !dbg !79
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, i64 %idxprom, !dbg !79
  store i32 %16, i32* %arrayidx, align 4, !dbg !80, !tbaa !31, !llvm.access.group !74
  %18 = bitcast i32* %s to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !81, !llvm.access.group !74
  call void @llvm.dbg.declare(metadata i32* %s, metadata !62, metadata !DIExpression()), !dbg !82
  store i32 2, i32* %s, align 4, !dbg !83, !tbaa !31, !llvm.access.group !74
  %19 = bitcast i32* %s to i8*, !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !84, !llvm.access.group !74
  br label %omp.body.continue, !dbg !85

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !86

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !31, !llvm.access.group !74
  %add1 = add nsw i32 %20, 1, !dbg !75
  store i32 %add1, i32* %.omp.iv, align 4, !dbg !75, !tbaa !31, !llvm.access.group !74
  br label %omp.inner.for.cond, !dbg !86, !llvm.loop !87

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !86

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !86, !llvm.loop !90

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %21 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !86
  %22 = bitcast i32* %.omp.is_last to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !86
  %23 = bitcast i32* %.omp.stride to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !86
  %24 = bitcast i32* %.omp.ub to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !86
  %25 = bitcast i32* %.omp.lb to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !86
  %26 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !86
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %10), !dbg !88
  %27 = call i32 @__kmpc_single(%struct.ident_t* @4, i32 %10), !dbg !91
  %28 = icmp ne i32 %27, 0, !dbg !91
  br i1 %28, label %omp_if.then, label %omp_if.end, !dbg !91

omp_if.then:                                      ; preds = %omp.dispatch.end
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !92
  store [2 x i32]* %1, [2 x i32]** %29, align 8, !dbg !92, !tbaa !64
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 1, !dbg !92
  store [4 x i32]* %0, [4 x i32]** %30, align 8, !dbg !92, !tbaa !64
  %31 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @8, i32 %10, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !92
  %32 = bitcast i8* %31 to %struct.kmp_task_t_with_privates.1*, !dbg !92
  %33 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %32, i32 0, i32 0, !dbg !92
  %34 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %33, i32 0, i32 0, !dbg !92
  %35 = load i8*, i8** %34, align 8, !dbg !92, !tbaa !95
  %36 = bitcast %struct.anon* %agg.captured to i8*, !dbg !92
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false), !dbg !92, !tbaa.struct !98
  %37 = call i32 @__kmpc_omp_task(%struct.ident_t* @8, i32 %10, i8* %31), !dbg !92
  %38 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @10, i32 %10), !dbg !99
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1, !dbg !100
  %39 = load i32, i32* %arrayidx2, align 4, !dbg !100, !tbaa !31
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0, !dbg !101
  %40 = load i32, i32* %arrayidx3, align 4, !dbg !101, !tbaa !31
  %add4 = add nsw i32 %39, %40, !dbg !102
  store i32 %add4, i32* %2, align 4, !dbg !103, !tbaa !31
  call void @__kmpc_end_single(%struct.ident_t* @4, i32 %10), !dbg !104
  br label %omp_if.end, !dbg !104

omp_if.end:                                       ; preds = %omp_if.then, %omp.dispatch.end
  call void @__kmpc_barrier(%struct.ident_t* @11, i32 %10), !dbg !105
  ret void, !dbg !106
}

declare void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #5 !dbg !107 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %agg.captured = alloca %struct.anon.0, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !124, metadata !DIExpression()), !dbg !130
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !125, metadata !DIExpression()), !dbg !130
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !126, metadata !DIExpression()), !dbg !130
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !127, metadata !DIExpression()), !dbg !130
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !128, metadata !DIExpression()), !dbg !130
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !131
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured, i32 0, i32 0, !dbg !132
  %2 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !134
  %3 = load [2 x i32]*, [2 x i32]** %2, align 8, !dbg !134, !tbaa !135
  store [2 x i32]* %3, [2 x i32]** %1, align 8, !dbg !132, !tbaa !64
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured, i32 0, i32 1, !dbg !132
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 1, !dbg !137
  %6 = load [4 x i32]*, [4 x i32]** %5, align 8, !dbg !137, !tbaa !138
  store [4 x i32]* %6, [4 x i32]** %4, align 8, !dbg !132, !tbaa !64
  %7 = load i32, i32* %.global_tid..addr, align 4, !dbg !132, !tbaa !31
  %8 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @6, i32 %7, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !132
  %9 = bitcast i8* %8 to %struct.kmp_task_t_with_privates*, !dbg !132
  %10 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %9, i32 0, i32 0, !dbg !132
  %11 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %10, i32 0, i32 0, !dbg !132
  %12 = load i8*, i8** %11, align 8, !dbg !132, !tbaa !95
  %13 = bitcast %struct.anon.0* %agg.captured to i8*, !dbg !132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false), !dbg !132, !tbaa.struct !98
  %14 = call i32 @__kmpc_omp_task(%struct.ident_t* @6, i32 %7, i8* %8), !dbg !132
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 1, !dbg !139
  %16 = load [4 x i32]*, [4 x i32]** %15, align 8, !dbg !139, !tbaa !138
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0, !dbg !139
  %17 = load i32, i32* %arrayidx, align 16, !dbg !139, !tbaa !31
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 1, !dbg !140
  %19 = load [4 x i32]*, [4 x i32]** %18, align 8, !dbg !140, !tbaa !138
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1, !dbg !140
  %20 = load i32, i32* %arrayidx1, align 4, !dbg !140, !tbaa !31
  %add = add nsw i32 %17, %20, !dbg !141
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !142
  %22 = load [2 x i32]*, [2 x i32]** %21, align 8, !dbg !142, !tbaa !135
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0, !dbg !142
  store i32 %add, i32* %arrayidx2, align 4, !dbg !143, !tbaa !31
  ret void, !dbg !144
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #5 !dbg !145 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !153, metadata !DIExpression()), !dbg !159
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !154, metadata !DIExpression()), !dbg !159
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !155, metadata !DIExpression()), !dbg !159
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !156, metadata !DIExpression()), !dbg !159
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !157, metadata !DIExpression()), !dbg !159
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !158, metadata !DIExpression()), !dbg !159
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !160
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 1, !dbg !161
  %2 = load [4 x i32]*, [4 x i32]** %1, align 8, !dbg !161, !tbaa !138
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2, !dbg !161
  %3 = load i32, i32* %arrayidx, align 8, !dbg !161, !tbaa !31
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 1, !dbg !163
  %5 = load [4 x i32]*, [4 x i32]** %4, align 8, !dbg !163, !tbaa !138
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !163
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !163, !tbaa !31
  %add = add nsw i32 %3, %6, !dbg !164
  %7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !165
  %8 = load [2 x i32]*, [2 x i32]** %7, align 8, !dbg !165, !tbaa !135
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !165
  store i32 %add, i32* %arrayidx2, align 4, !dbg !166, !tbaa !31
  ret void, !dbg !167
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !168 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !171, metadata !DIExpression()), !dbg !183
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !172, metadata !DIExpression()), !dbg !183
  %2 = load i32, i32* %.addr, align 4, !dbg !184, !tbaa !31
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !184
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !184
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !184
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !184
  %7 = load i8*, i8** %6, align 8, !dbg !184, !tbaa !95
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !184
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !184
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #4, !dbg !184
  ret i32 0, !dbg !184
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !185 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !187, metadata !DIExpression()), !dbg !194
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !188, metadata !DIExpression()), !dbg !194
  %2 = load i32, i32* %.addr, align 4, !dbg !195, !tbaa !31
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !195
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !195
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !195
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !195
  %7 = load i8*, i8** %6, align 8, !dbg !195, !tbaa !95
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !195
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !195
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #4, !dbg !195
  ret i32 0, !dbg !195
}

declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., [4 x i32]* nonnull align 4 dereferenceable(16) %a, [2 x i32]* nonnull align 4 dereferenceable(8) %psum, i32* nonnull align 4 dereferenceable(4) %sum) #3 !dbg !196 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [4 x i32]*, align 8
  %psum.addr = alloca [2 x i32]*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !198, metadata !DIExpression()), !dbg !203
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !199, metadata !DIExpression()), !dbg !203
  store [4 x i32]* %a, [4 x i32]** %a.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata [4 x i32]** %a.addr, metadata !200, metadata !DIExpression()), !dbg !203
  store [2 x i32]* %psum, [2 x i32]** %psum.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata [2 x i32]** %psum.addr, metadata !201, metadata !DIExpression()), !dbg !203
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = load [4 x i32]*, [4 x i32]** %a.addr, align 8, !dbg !204, !tbaa !64
  %1 = load [2 x i32]*, [2 x i32]** %psum.addr, align 8, !dbg !204, !tbaa !64
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !204, !tbaa !64
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !204, !tbaa !64
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !204, !tbaa !64
  %5 = load [4 x i32]*, [4 x i32]** %a.addr, align 8, !dbg !204, !tbaa !64
  %6 = load [2 x i32]*, [2 x i32]** %psum.addr, align 8, !dbg !204, !tbaa !64
  %7 = load i32*, i32** %sum.addr, align 8, !dbg !204, !tbaa !64
  call void @.omp_outlined._debug__(i32* %3, i32* %4, [4 x i32]* %5, [2 x i32]* %6, i32* %7) #4, !dbg !204
  ret void, !dbg !204
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #4

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32) #6

; Function Attrs: nounwind
declare !callback !205 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #7

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inaccessiblemem_or_argmemonly }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB117-taskwait-waitonlychild-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!13 = !{!14, !18, !22}
!14 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 22, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 4)
!18 = !DILocalVariable(name: "psum", scope: !9, file: !1, line: 23, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 2)
!22 = !DILocalVariable(name: "sum", scope: !9, file: !1, line: 24, type: !12)
!23 = !DILocation(line: 22, column: 3, scope: !9)
!24 = !DILocation(line: 22, column: 7, scope: !9)
!25 = !DILocation(line: 23, column: 3, scope: !9)
!26 = !DILocation(line: 23, column: 7, scope: !9)
!27 = !DILocation(line: 24, column: 3, scope: !9)
!28 = !DILocation(line: 24, column: 7, scope: !9)
!29 = !DILocation(line: 26, column: 3, scope: !9)
!30 = !DILocation(line: 51, column: 24, scope: !9)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 51, column: 3, scope: !9)
!36 = !DILocation(line: 53, column: 2, scope: !9)
!37 = !DILocation(line: 52, column: 3, scope: !9)
!38 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !39, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !45, !46, !47}
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!48 = !{!49, !50, !51, !52, !53, !54, !57, !58, !59, !60, !61, !62}
!49 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !38, type: !41, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !38, type: !41, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "a", arg: 3, scope: !38, file: !1, line: 22, type: !45)
!52 = !DILocalVariable(name: "psum", arg: 4, scope: !38, file: !1, line: 23, type: !46)
!53 = !DILocalVariable(name: "sum", arg: 5, scope: !38, file: !1, line: 24, type: !47)
!54 = !DILocalVariable(name: ".omp.iv", scope: !55, type: !12, flags: DIFlagArtificial)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 28, column: 5)
!56 = distinct !DILexicalBlock(scope: !38, file: !1, line: 27, column: 3)
!57 = !DILocalVariable(name: ".omp.lb", scope: !55, type: !12, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.ub", scope: !55, type: !12, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.stride", scope: !55, type: !12, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.is_last", scope: !55, type: !12, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "i", scope: !55, type: !12, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "s", scope: !63, file: !1, line: 31, type: !12)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 29, column: 30)
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !33, i64 0}
!66 = !DILocation(line: 0, scope: !38)
!67 = !DILocation(line: 22, column: 7, scope: !38)
!68 = !DILocation(line: 23, column: 7, scope: !38)
!69 = !DILocation(line: 24, column: 7, scope: !38)
!70 = !DILocation(line: 27, column: 3, scope: !38)
!71 = !DILocation(line: 28, column: 5, scope: !56)
!72 = !DILocation(line: 0, scope: !55)
!73 = !DILocation(line: 29, column: 10, scope: !55)
!74 = distinct !{}
!75 = !DILocation(line: 29, column: 5, scope: !55)
!76 = !DILocation(line: 29, column: 26, scope: !55)
!77 = !DILocation(line: 30, column: 14, scope: !63)
!78 = !DILocation(line: 30, column: 9, scope: !63)
!79 = !DILocation(line: 30, column: 7, scope: !63)
!80 = !DILocation(line: 30, column: 12, scope: !63)
!81 = !DILocation(line: 31, column: 7, scope: !63)
!82 = !DILocation(line: 31, column: 11, scope: !63)
!83 = !DILocation(line: 32, column: 9, scope: !63)
!84 = !DILocation(line: 33, column: 5, scope: !55)
!85 = !DILocation(line: 33, column: 5, scope: !63)
!86 = !DILocation(line: 28, column: 5, scope: !55)
!87 = distinct !{!87, !86, !88, !89}
!88 = !DILocation(line: 28, column: 41, scope: !55)
!89 = !{!"llvm.loop.parallel_accesses", !74}
!90 = distinct !{!90, !86, !88}
!91 = !DILocation(line: 35, column: 5, scope: !56)
!92 = !DILocation(line: 37, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 36, column: 5)
!94 = distinct !DILexicalBlock(scope: !56, file: !1, line: 35, column: 5)
!95 = !{!96, !65, i64 0}
!96 = !{!"kmp_task_t_with_privates", !97, i64 0}
!97 = !{!"kmp_task_t", !65, i64 0, !65, i64 8, !32, i64 16, !33, i64 24, !33, i64 32}
!98 = !{i64 0, i64 8, !64, i64 8, i64 8, !64}
!99 = !DILocation(line: 46, column: 7, scope: !93)
!100 = !DILocation(line: 47, column: 13, scope: !93)
!101 = !DILocation(line: 47, column: 23, scope: !93)
!102 = !DILocation(line: 47, column: 21, scope: !93)
!103 = !DILocation(line: 47, column: 11, scope: !93)
!104 = !DILocation(line: 48, column: 5, scope: !93)
!105 = !DILocation(line: 35, column: 23, scope: !94)
!106 = !DILocation(line: 49, column: 3, scope: !38)
!107 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 41, type: !108, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !44, !41, !110, !113, !118, !119}
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !110, null}
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 37, size: 128, elements: !2)
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !107, type: !44, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !107, type: !41, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".privates.", arg: 3, scope: !107, type: !110, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !107, type: !113, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !107, type: !118, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "__context", arg: 6, scope: !107, type: !119, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !107)
!131 = !DILocation(line: 38, column: 7, scope: !107)
!132 = !DILocation(line: 39, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !107, file: !1, line: 38, column: 7)
!134 = !DILocation(line: 41, column: 10, scope: !133)
!135 = !{!136, !65, i64 0}
!136 = !{!"", !65, i64 0, !65, i64 8}
!137 = !DILocation(line: 41, column: 20, scope: !133)
!138 = !{!136, !65, i64 8}
!139 = !DILocation(line: 43, column: 19, scope: !133)
!140 = !DILocation(line: 43, column: 26, scope: !133)
!141 = !DILocation(line: 43, column: 24, scope: !133)
!142 = !DILocation(line: 43, column: 9, scope: !133)
!143 = !DILocation(line: 43, column: 17, scope: !133)
!144 = !DILocation(line: 44, column: 7, scope: !107)
!145 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 41, type: !146, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !152)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !44, !41, !110, !113, !118, !148}
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !107, file: !1, line: 39, size: 128, elements: !2)
!152 = !{!153, !154, !155, !156, !157, !158}
!153 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !145, type: !44, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !145, type: !41, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: ".privates.", arg: 3, scope: !145, type: !110, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !145, type: !113, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !145, type: !118, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: "__context", arg: 6, scope: !145, type: !148, flags: DIFlagArtificial)
!159 = !DILocation(line: 0, scope: !145)
!160 = !DILocation(line: 40, column: 8, scope: !145)
!161 = !DILocation(line: 41, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !145, file: !1, line: 40, column: 8)
!163 = !DILocation(line: 41, column: 27, scope: !162)
!164 = !DILocation(line: 41, column: 25, scope: !162)
!165 = !DILocation(line: 41, column: 10, scope: !162)
!166 = !DILocation(line: 41, column: 18, scope: !162)
!167 = !DILocation(line: 42, column: 8, scope: !145)
!168 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 39, type: !169, scopeLine: 39, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!169 = !DISubroutineType(types: !2)
!170 = !{!171, !172}
!171 = !DILocalVariable(arg: 1, scope: !168, type: !12, flags: DIFlagArtificial)
!172 = !DILocalVariable(arg: 2, scope: !168, type: !173, flags: DIFlagArtificial)
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !1, baseType: !178, size: 320)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !179)
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !1, baseType: !181, size: 64, offset: 192)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !1, baseType: !181, size: 64, offset: 256)
!183 = !DILocation(line: 0, scope: !168)
!184 = !DILocation(line: 39, column: 8, scope: !168)
!185 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 37, type: !169, scopeLine: 37, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!186 = !{!187, !188}
!187 = !DILocalVariable(arg: 1, scope: !185, type: !12, flags: DIFlagArtificial)
!188 = !DILocalVariable(arg: 2, scope: !185, type: !189, flags: DIFlagArtificial)
!189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !1, baseType: !178, size: 320)
!194 = !DILocation(line: 0, scope: !185)
!195 = !DILocation(line: 37, column: 7, scope: !185)
!196 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 26, type: !39, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !196, type: !41, flags: DIFlagArtificial)
!199 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !196, type: !41, flags: DIFlagArtificial)
!200 = !DILocalVariable(name: "a", arg: 3, scope: !196, type: !45, flags: DIFlagArtificial)
!201 = !DILocalVariable(name: "psum", arg: 4, scope: !196, type: !46, flags: DIFlagArtificial)
!202 = !DILocalVariable(name: "sum", arg: 5, scope: !196, type: !47, flags: DIFlagArtificial)
!203 = !DILocation(line: 0, scope: !196)
!204 = !DILocation(line: 26, column: 3, scope: !196)
!205 = !{!206}
!206 = !{i64 2, i64 -1, i64 -1, i1 true}
