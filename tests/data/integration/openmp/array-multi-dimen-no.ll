; ModuleID = 'integration/openmp/array-multi-dimen-no.c'
source_filename = "integration/openmp/array-multi-dimen-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [54 x i8] c";integration/openmp/array-multi-dimen-no.c;main;7;1;;\00", align 1
@2 = private unnamed_addr constant [55 x i8] c";integration/openmp/array-multi-dimen-no.c;main;7;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [55 x i8] c";integration/openmp/array-multi-dimen-no.c;main;15;1;;\00", align 1
@5 = private unnamed_addr constant [56 x i8] c";integration/openmp/array-multi-dimen-no.c;main;15;25;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %A = alloca [1000 x [1000 x i32]], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %N to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %N, metadata !12, metadata !DIExpression()), !dbg !21
  store i32 1000, i32* %N, align 4, !dbg !21, !tbaa !22
  %3 = bitcast [1000 x [1000 x i32]]* %A to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4000000, i8* %3) #4, !dbg !26
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]* %A, metadata !14, metadata !DIExpression()), !dbg !27
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !28, !tbaa !29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x [1000 x i32]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N, [1000 x [1000 x i32]]* %A), !dbg !28
  %5 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %i, align 4, !dbg !33, !tbaa !22
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !34, !tbaa !22
  %cmp = icmp slt i32 %6, 999, !dbg !36
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !37

for.cond.cleanup:                                 ; preds = %for.cond
  %7 = bitcast i32* %i to i8*, !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #4, !dbg !38
  br label %for.end

for.body:                                         ; preds = %for.cond
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @4, i32 0, i32 0), i8** %8, align 8, !dbg !39, !tbaa !29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x [1000 x i32]]*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %N, [1000 x [1000 x i32]]* %A, i32* %i), !dbg !39
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !42, !tbaa !22
  %inc = add nsw i32 %9, 1, !dbg !42
  store i32 %inc, i32* %i, align 4, !dbg !42, !tbaa !22
  br label %for.cond, !dbg !38, !llvm.loop !43

for.end:                                          ; preds = %for.cond.cleanup
  %10 = bitcast [1000 x [1000 x i32]]* %A to i8*, !dbg !45
  call void @llvm.lifetime.end.p0i8(i64 4000000, i8* %10) #4, !dbg !45
  %11 = bitcast i32* %N to i8*, !dbg !45
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !45
  %12 = load i32, i32* %retval, align 4, !dbg !45
  ret i32 %12, !dbg !45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x [1000 x i32]]* dereferenceable(4000000) %A) #3 !dbg !46 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x [1000 x i32]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %j = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !55, metadata !DIExpression()), !dbg !69
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !56, metadata !DIExpression()), !dbg !69
  store i32* %N, i32** %N.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !57, metadata !DIExpression()), !dbg !70
  store [1000 x [1000 x i32]]* %A, [1000 x [1000 x i32]]** %A.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]** %A.addr, metadata !58, metadata !DIExpression()), !dbg !71
  %2 = load i32*, i32** %N.addr, align 8, !dbg !72, !tbaa !68
  %3 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !72, !tbaa !68
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !59, metadata !DIExpression()), !dbg !69
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !60, metadata !DIExpression()), !dbg !69
  store i32 0, i32* %.omp.lb, align 4, !dbg !73, !tbaa !22
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !61, metadata !DIExpression()), !dbg !69
  store i32 998, i32* %.omp.ub, align 4, !dbg !73, !tbaa !22
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !62, metadata !DIExpression()), !dbg !69
  store i32 1, i32* %.omp.stride, align 4, !dbg !73, !tbaa !22
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !63, metadata !DIExpression()), !dbg !69
  store i32 0, i32* %.omp.is_last, align 4, !dbg !73, !tbaa !22
  %9 = bitcast i32* %i to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %i, metadata !64, metadata !DIExpression()), !dbg !69
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !72, !tbaa !29
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !72
  %12 = load i32, i32* %11, align 4, !dbg !72, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !72
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !73, !tbaa !22
  %cmp = icmp sgt i32 %13, 998, !dbg !73
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !73

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !73

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !73, !tbaa !22
  br label %cond.end, !dbg !73

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 998, %cond.true ], [ %14, %cond.false ], !dbg !73
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !73, !tbaa !22
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !73, !tbaa !22
  store i32 %15, i32* %.omp.iv, align 4, !dbg !73, !tbaa !22
  br label %omp.inner.for.cond, !dbg !72

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !22
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !73, !tbaa !22
  %cmp1 = icmp sle i32 %16, %17, !dbg !72
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !72

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !72

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !22
  %mul = mul nsw i32 %18, 1, !dbg !74
  %add = add nsw i32 0, %mul, !dbg !74
  store i32 %add, i32* %i, align 4, !dbg !74, !tbaa !22
  %19 = bitcast i32* %j to i8*, !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %j, metadata !65, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %j, align 4, !dbg !76, !tbaa !22
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %20 = load i32, i32* %j, align 4, !dbg !77, !tbaa !22
  %cmp2 = icmp slt i32 %20, 1000, !dbg !79
  br i1 %cmp2, label %for.body, label %for.cond.cleanup, !dbg !80

for.cond.cleanup:                                 ; preds = %for.cond
  %21 = bitcast i32* %j to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !81
  br label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4, !dbg !82, !tbaa !22
  %idxprom = sext i32 %22 to i64, !dbg !84
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* %3, i64 0, i64 %idxprom, !dbg !84
  %23 = load i32, i32* %j, align 4, !dbg !85, !tbaa !22
  %idxprom3 = sext i32 %23 to i64, !dbg !84
  %arrayidx4 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx, i64 0, i64 %idxprom3, !dbg !84
  %24 = load i32, i32* %arrayidx4, align 4, !dbg !84, !tbaa !22
  %add5 = add nsw i32 %24, 1, !dbg !86
  %25 = load i32, i32* %i, align 4, !dbg !87, !tbaa !22
  %idxprom6 = sext i32 %25 to i64, !dbg !88
  %arrayidx7 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* %3, i64 0, i64 %idxprom6, !dbg !88
  %26 = load i32, i32* %j, align 4, !dbg !89, !tbaa !22
  %idxprom8 = sext i32 %26 to i64, !dbg !88
  %arrayidx9 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx7, i64 0, i64 %idxprom8, !dbg !88
  store i32 %add5, i32* %arrayidx9, align 4, !dbg !90, !tbaa !22
  br label %for.inc, !dbg !91

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4, !dbg !92, !tbaa !22
  %inc = add nsw i32 %27, 1, !dbg !92
  store i32 %inc, i32* %j, align 4, !dbg !92, !tbaa !22
  br label %for.cond, !dbg !81, !llvm.loop !93

for.end:                                          ; preds = %for.cond.cleanup
  br label %omp.body.continue, !dbg !95

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !96

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !22
  %add10 = add nsw i32 %28, 1, !dbg !72
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !72, !tbaa !22
  br label %omp.inner.for.cond, !dbg !96, !llvm.loop !97

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !96

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !96
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2, i32 0, i32 0), i8** %29, align 8, !dbg !96, !tbaa !29
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !96
  %30 = bitcast i32* %i to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !96
  %31 = bitcast i32* %.omp.is_last to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !96
  %32 = bitcast i32* %.omp.stride to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !96
  %33 = bitcast i32* %.omp.ub to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !96
  %34 = bitcast i32* %.omp.lb to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !96
  %35 = bitcast i32* %.omp.iv to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !96
  ret void, !dbg !99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x [1000 x i32]]* dereferenceable(4000000) %A) #3 !dbg !100 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x [1000 x i32]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !106
  store i32* %N, i32** %N.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !104, metadata !DIExpression()), !dbg !106
  store [1000 x [1000 x i32]]* %A, [1000 x [1000 x i32]]** %A.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]** %A.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load i32*, i32** %N.addr, align 8, !dbg !107, !tbaa !68
  %1 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !107, !tbaa !68
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107, !tbaa !68
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !107, !tbaa !68
  %4 = load i32*, i32** %N.addr, align 8, !dbg !107, !tbaa !68
  %5 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !107, !tbaa !68
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [1000 x [1000 x i32]]* %5) #4, !dbg !107
  ret void, !dbg !107
}

declare !callback !108 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x [1000 x i32]]* dereferenceable(4000000) %A, i32* dereferenceable(4) %i) #3 !dbg !110 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x [1000 x i32]]*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !115, metadata !DIExpression()), !dbg !126
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !116, metadata !DIExpression()), !dbg !126
  store i32* %N, i32** %N.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !117, metadata !DIExpression()), !dbg !127
  store [1000 x [1000 x i32]]* %A, [1000 x [1000 x i32]]** %A.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]** %A.addr, metadata !118, metadata !DIExpression()), !dbg !128
  store i32* %i, i32** %i.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !119, metadata !DIExpression()), !dbg !129
  %2 = load i32*, i32** %N.addr, align 8, !dbg !130, !tbaa !68
  %3 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !130, !tbaa !68
  %4 = load i32*, i32** %i.addr, align 8, !dbg !130, !tbaa !68
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !120, metadata !DIExpression()), !dbg !126
  %6 = bitcast i32* %.omp.lb to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !121, metadata !DIExpression()), !dbg !126
  store i32 0, i32* %.omp.lb, align 4, !dbg !131, !tbaa !22
  %7 = bitcast i32* %.omp.ub to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !122, metadata !DIExpression()), !dbg !126
  store i32 999, i32* %.omp.ub, align 4, !dbg !131, !tbaa !22
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !123, metadata !DIExpression()), !dbg !126
  store i32 1, i32* %.omp.stride, align 4, !dbg !131, !tbaa !22
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !124, metadata !DIExpression()), !dbg !126
  store i32 0, i32* %.omp.is_last, align 4, !dbg !131, !tbaa !22
  %10 = bitcast i32* %j to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %j, metadata !125, metadata !DIExpression()), !dbg !126
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !130
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @4, i32 0, i32 0), i8** %11, align 8, !dbg !130, !tbaa !29
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !130
  %13 = load i32, i32* %12, align 4, !dbg !130, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !130
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !131, !tbaa !22
  %cmp = icmp sgt i32 %14, 999, !dbg !131
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !131

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !131

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !131, !tbaa !22
  br label %cond.end, !dbg !131

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %15, %cond.false ], !dbg !131
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !131, !tbaa !22
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !131, !tbaa !22
  store i32 %16, i32* %.omp.iv, align 4, !dbg !131, !tbaa !22
  br label %omp.inner.for.cond, !dbg !130

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !131, !tbaa !22
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !131, !tbaa !22
  %cmp1 = icmp sle i32 %17, %18, !dbg !130
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !130

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !130

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !131, !tbaa !22
  %mul = mul nsw i32 %19, 1, !dbg !132
  %add = add nsw i32 0, %mul, !dbg !132
  store i32 %add, i32* %j, align 4, !dbg !132, !tbaa !22
  %20 = load i32, i32* %4, align 4, !dbg !133, !tbaa !22
  %idxprom = sext i32 %20 to i64, !dbg !135
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* %3, i64 0, i64 %idxprom, !dbg !135
  %21 = load i32, i32* %j, align 4, !dbg !136, !tbaa !22
  %idxprom2 = sext i32 %21 to i64, !dbg !135
  %arrayidx3 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx, i64 0, i64 %idxprom2, !dbg !135
  %22 = load i32, i32* %arrayidx3, align 4, !dbg !135, !tbaa !22
  %add4 = add nsw i32 %22, 1, !dbg !137
  %23 = load i32, i32* %4, align 4, !dbg !138, !tbaa !22
  %idxprom5 = sext i32 %23 to i64, !dbg !139
  %arrayidx6 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* %3, i64 0, i64 %idxprom5, !dbg !139
  %24 = load i32, i32* %j, align 4, !dbg !140, !tbaa !22
  %idxprom7 = sext i32 %24 to i64, !dbg !139
  %arrayidx8 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx6, i64 0, i64 %idxprom7, !dbg !139
  store i32 %add4, i32* %arrayidx8, align 4, !dbg !141, !tbaa !22
  br label %omp.body.continue, !dbg !142

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !143

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !131, !tbaa !22
  %add9 = add nsw i32 %25, 1, !dbg !130
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !130, !tbaa !22
  br label %omp.inner.for.cond, !dbg !143, !llvm.loop !144

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !143

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !143
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @5, i32 0, i32 0), i8** %26, align 8, !dbg !143, !tbaa !29
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !143
  %27 = bitcast i32* %j to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !143
  %28 = bitcast i32* %.omp.is_last to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !143
  %29 = bitcast i32* %.omp.stride to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !143
  %30 = bitcast i32* %.omp.ub to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !143
  %31 = bitcast i32* %.omp.lb to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !143
  %32 = bitcast i32* %.omp.iv to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !143
  ret void, !dbg !146
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x [1000 x i32]]* dereferenceable(4000000) %A, i32* dereferenceable(4) %i) #3 !dbg !147 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x [1000 x i32]]*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !149, metadata !DIExpression()), !dbg !154
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !150, metadata !DIExpression()), !dbg !154
  store i32* %N, i32** %N.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !151, metadata !DIExpression()), !dbg !154
  store [1000 x [1000 x i32]]* %A, [1000 x [1000 x i32]]** %A.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata [1000 x [1000 x i32]]** %A.addr, metadata !152, metadata !DIExpression()), !dbg !154
  store i32* %i, i32** %i.addr, align 8, !tbaa !68
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i32*, i32** %N.addr, align 8, !dbg !155, !tbaa !68
  %1 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !155, !tbaa !68
  %2 = load i32*, i32** %i.addr, align 8, !dbg !155, !tbaa !68
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !155, !tbaa !68
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !155, !tbaa !68
  %5 = load i32*, i32** %N.addr, align 8, !dbg !155, !tbaa !68
  %6 = load [1000 x [1000 x i32]]*, [1000 x [1000 x i32]]** %A.addr, align 8, !dbg !155, !tbaa !68
  %7 = load i32*, i32** %i.addr, align 8, !dbg !155, !tbaa !68
  call void @.omp_outlined._debug__.1(i32* %3, i32* %4, i32* %5, [1000 x [1000 x i32]]* %6, i32* %7) #4, !dbg !155
  ret void, !dbg !155
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/array-multi-dimen-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14, !18}
!12 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 4, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!14 = !DILocalVariable(name: "A", scope: !7, file: !1, line: 5, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32000000, elements: !16)
!16 = !{!17, !17}
!17 = !DISubrange(count: 1000)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 14, type: !10)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 3)
!20 = !DILocation(line: 4, column: 3, scope: !7)
!21 = !DILocation(line: 4, column: 13, scope: !7)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 5, column: 3, scope: !7)
!27 = !DILocation(line: 5, column: 7, scope: !7)
!28 = !DILocation(line: 7, column: 1, scope: !7)
!29 = !{!30, !31, i64 16}
!30 = !{!"ident_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !31, i64 16}
!31 = !{!"any pointer", !24, i64 0}
!32 = !DILocation(line: 14, column: 8, scope: !19)
!33 = !DILocation(line: 14, column: 12, scope: !19)
!34 = !DILocation(line: 14, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !19, file: !1, line: 14, column: 3)
!36 = !DILocation(line: 14, column: 21, scope: !35)
!37 = !DILocation(line: 14, column: 3, scope: !19)
!38 = !DILocation(line: 14, column: 3, scope: !35)
!39 = !DILocation(line: 15, column: 1, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 14, column: 35)
!41 = !DILocation(line: 19, column: 3, scope: !40)
!42 = !DILocation(line: 14, column: 31, scope: !35)
!43 = distinct !{!43, !37, !44}
!44 = !DILocation(line: 19, column: 3, scope: !19)
!45 = !DILocation(line: 20, column: 1, scope: !7)
!46 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 8, type: !47, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !49, !52, !53}
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!55 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !46, type: !49, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !46, type: !49, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "N", arg: 3, scope: !46, file: !1, line: 4, type: !52)
!58 = !DILocalVariable(name: "A", arg: 4, scope: !46, file: !1, line: 5, type: !53)
!59 = !DILocalVariable(name: ".omp.iv", scope: !46, type: !10, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.lb", scope: !46, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.ub", scope: !46, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.stride", scope: !46, type: !10, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.is_last", scope: !46, type: !10, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: "i", scope: !46, type: !10, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "j", scope: !66, file: !1, line: 9, type: !10)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 9, column: 5)
!67 = distinct !DILexicalBlock(scope: !46, file: !1, line: 8, column: 35)
!68 = !{!31, !31, i64 0}
!69 = !DILocation(line: 0, scope: !46)
!70 = !DILocation(line: 4, column: 13, scope: !46)
!71 = !DILocation(line: 5, column: 7, scope: !46)
!72 = !DILocation(line: 8, column: 3, scope: !46)
!73 = !DILocation(line: 8, column: 8, scope: !46)
!74 = !DILocation(line: 8, column: 30, scope: !46)
!75 = !DILocation(line: 9, column: 10, scope: !66)
!76 = !DILocation(line: 9, column: 14, scope: !66)
!77 = !DILocation(line: 9, column: 21, scope: !78)
!78 = distinct !DILexicalBlock(scope: !66, file: !1, line: 9, column: 5)
!79 = !DILocation(line: 9, column: 23, scope: !78)
!80 = !DILocation(line: 9, column: 5, scope: !66)
!81 = !DILocation(line: 9, column: 5, scope: !78)
!82 = !DILocation(line: 10, column: 19, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 9, column: 33)
!84 = !DILocation(line: 10, column: 17, scope: !83)
!85 = !DILocation(line: 10, column: 22, scope: !83)
!86 = !DILocation(line: 10, column: 25, scope: !83)
!87 = !DILocation(line: 10, column: 9, scope: !83)
!88 = !DILocation(line: 10, column: 7, scope: !83)
!89 = !DILocation(line: 10, column: 12, scope: !83)
!90 = !DILocation(line: 10, column: 15, scope: !83)
!91 = !DILocation(line: 11, column: 5, scope: !83)
!92 = !DILocation(line: 9, column: 29, scope: !78)
!93 = distinct !{!93, !80, !94}
!94 = !DILocation(line: 11, column: 5, scope: !66)
!95 = !DILocation(line: 12, column: 3, scope: !67)
!96 = !DILocation(line: 7, column: 1, scope: !46)
!97 = distinct !{!97, !96, !98}
!98 = !DILocation(line: 7, column: 25, scope: !46)
!99 = !DILocation(line: 12, column: 3, scope: !46)
!100 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 8, type: !47, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !100, type: !49, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !100, type: !49, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "N", arg: 3, scope: !100, type: !52, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "A", arg: 4, scope: !100, type: !53, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !100)
!107 = !DILocation(line: 8, column: 3, scope: !100)
!108 = !{!109}
!109 = !{i64 2, i64 -1, i64 -1, i1 true}
!110 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 16, type: !111, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !49, !49, !52, !53, !113}
!113 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!115 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !110, type: !49, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !110, type: !49, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "N", arg: 3, scope: !110, file: !1, line: 4, type: !52)
!118 = !DILocalVariable(name: "A", arg: 4, scope: !110, file: !1, line: 5, type: !53)
!119 = !DILocalVariable(name: "i", arg: 5, scope: !110, file: !1, line: 14, type: !113)
!120 = !DILocalVariable(name: ".omp.iv", scope: !110, type: !10, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.lb", scope: !110, type: !10, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.ub", scope: !110, type: !10, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".omp.stride", scope: !110, type: !10, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: ".omp.is_last", scope: !110, type: !10, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "j", scope: !110, type: !10, flags: DIFlagArtificial)
!126 = !DILocation(line: 0, scope: !110)
!127 = !DILocation(line: 4, column: 13, scope: !110)
!128 = !DILocation(line: 5, column: 7, scope: !110)
!129 = !DILocation(line: 14, column: 12, scope: !110)
!130 = !DILocation(line: 16, column: 5, scope: !110)
!131 = !DILocation(line: 16, column: 10, scope: !110)
!132 = !DILocation(line: 16, column: 28, scope: !110)
!133 = !DILocation(line: 17, column: 19, scope: !134)
!134 = distinct !DILexicalBlock(scope: !110, file: !1, line: 16, column: 33)
!135 = !DILocation(line: 17, column: 17, scope: !134)
!136 = !DILocation(line: 17, column: 22, scope: !134)
!137 = !DILocation(line: 17, column: 25, scope: !134)
!138 = !DILocation(line: 17, column: 9, scope: !134)
!139 = !DILocation(line: 17, column: 7, scope: !134)
!140 = !DILocation(line: 17, column: 12, scope: !134)
!141 = !DILocation(line: 17, column: 15, scope: !134)
!142 = !DILocation(line: 18, column: 5, scope: !134)
!143 = !DILocation(line: 15, column: 1, scope: !110)
!144 = distinct !{!144, !143, !145}
!145 = !DILocation(line: 15, column: 25, scope: !110)
!146 = !DILocation(line: 18, column: 5, scope: !110)
!147 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 16, type: !111, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!148 = !{!149, !150, !151, !152, !153}
!149 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !147, type: !49, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !147, type: !49, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "N", arg: 3, scope: !147, type: !52, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "A", arg: 4, scope: !147, type: !53, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: "i", arg: 5, scope: !147, type: !113, flags: DIFlagArtificial)
!154 = !DILocation(line: 0, scope: !147)
!155 = !DILocation(line: 16, column: 5, scope: !147)
