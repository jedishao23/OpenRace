; ModuleID = 'DRB113-default-orig-no.c'
source_filename = "DRB113-default-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@b = dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !6
@0 = private unnamed_addr constant [38 x i8] c";DRB113-default-orig-no.c;main;58;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [39 x i8] c";DRB113-default-orig-no.c;main;58;62;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [38 x i8] c";DRB113-default-orig-no.c;main;63;1;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @5, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [39 x i8] c";DRB113-default-orig-no.c;main;63;54;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @7, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @5, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !25
  %1 = bitcast i32* %j to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %j, metadata !23, metadata !DIExpression()), !dbg !26
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !27
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @9, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*)), !dbg !28
  %2 = bitcast i32* %j to i8*, !dbg !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !29
  %3 = bitcast i32* %i to i8*, !dbg !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !29
  ret i32 0, !dbg !30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !31 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !39, metadata !DIExpression()), !dbg !52
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !40, metadata !DIExpression()), !dbg !52
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !41, metadata !DIExpression()), !dbg !52
  %1 = bitcast i32* %.omp.lb to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !42, metadata !DIExpression()), !dbg !52
  store i32 0, i32* %.omp.lb, align 4, !dbg !54, !tbaa !55
  %2 = bitcast i32* %.omp.ub to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !43, metadata !DIExpression()), !dbg !52
  store i32 99, i32* %.omp.ub, align 4, !dbg !54, !tbaa !55
  %3 = bitcast i32* %.omp.stride to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !44, metadata !DIExpression()), !dbg !52
  store i32 1, i32* %.omp.stride, align 4, !dbg !54, !tbaa !55
  %4 = bitcast i32* %.omp.is_last to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !45, metadata !DIExpression()), !dbg !52
  store i32 0, i32* %.omp.is_last, align 4, !dbg !54, !tbaa !55
  %5 = bitcast i32* %i to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !52
  %6 = bitcast i32* %j to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %j, metadata !47, metadata !DIExpression()), !dbg !52
  %7 = bitcast i32* %i1 to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !46, metadata !DIExpression()), !dbg !52
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !53
  %9 = load i32, i32* %8, align 4, !dbg !53, !tbaa !55
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %9, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !57
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !54, !tbaa !55
  %cmp = icmp sgt i32 %10, 99, !dbg !54
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !54

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !54

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !54, !tbaa !55
  br label %cond.end, !dbg !54

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %11, %cond.false ], !dbg !54
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !54, !tbaa !55
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !54, !tbaa !55
  store i32 %12, i32* %.omp.iv, align 4, !dbg !54, !tbaa !55
  br label %omp.inner.for.cond, !dbg !53

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !54, !tbaa !55
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !54, !tbaa !55
  %cmp2 = icmp sle i32 %13, %14, !dbg !53
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !53

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !53

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !54, !tbaa !55
  %mul = mul nsw i32 %15, 1, !dbg !58
  %add = add nsw i32 0, %mul, !dbg !58
  store i32 %add, i32* %i, align 4, !dbg !58, !tbaa !55
  store i32 0, i32* %j, align 4, !dbg !59, !tbaa !55
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %16 = load i32, i32* %j, align 4, !dbg !62, !tbaa !55
  %cmp3 = icmp slt i32 %16, 100, !dbg !64
  br i1 %cmp3, label %for.body, label %for.end, !dbg !65

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !66, !tbaa !55
  %idxprom = sext i32 %17 to i64, !dbg !67
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !67
  %18 = load i32, i32* %j, align 4, !dbg !68, !tbaa !55
  %idxprom4 = sext i32 %18 to i64, !dbg !67
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !67
  %19 = load i32, i32* %arrayidx5, align 4, !dbg !67, !tbaa !55
  %add6 = add nsw i32 %19, 1, !dbg !69
  %20 = load i32, i32* %i, align 4, !dbg !70, !tbaa !55
  %idxprom7 = sext i32 %20 to i64, !dbg !71
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom7, !dbg !71
  %21 = load i32, i32* %j, align 4, !dbg !72, !tbaa !55
  %idxprom9 = sext i32 %21 to i64, !dbg !71
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !71
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !73, !tbaa !55
  br label %for.inc, !dbg !71

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %j, align 4, !dbg !74, !tbaa !55
  %inc = add nsw i32 %22, 1, !dbg !74
  store i32 %inc, i32* %j, align 4, !dbg !74, !tbaa !55
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !77

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !57

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !54, !tbaa !55
  %add11 = add nsw i32 %23, 1, !dbg !53
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !53, !tbaa !55
  br label %omp.inner.for.cond, !dbg !57, !llvm.loop !79

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !57

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %9), !dbg !80
  %24 = bitcast i32* %i1 to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !57
  %25 = bitcast i32* %j to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !57
  %26 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !57
  %27 = bitcast i32* %.omp.is_last to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !57
  %28 = bitcast i32* %.omp.stride to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !57
  %29 = bitcast i32* %.omp.ub to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !57
  %30 = bitcast i32* %.omp.lb to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !57
  %31 = bitcast i32* %.omp.iv to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !57
  ret void, !dbg !81
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !82 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !84, metadata !DIExpression()), !dbg !86
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !87, !tbaa !48
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !87, !tbaa !48
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !87
  ret void, !dbg !87
}

; Function Attrs: nounwind
declare !callback !88 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !90 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !101
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !93, metadata !DIExpression()), !dbg !101
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !94, metadata !DIExpression()), !dbg !101
  %1 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !95, metadata !DIExpression()), !dbg !101
  store i32 0, i32* %.omp.lb, align 4, !dbg !103, !tbaa !55
  %2 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !96, metadata !DIExpression()), !dbg !101
  store i32 99, i32* %.omp.ub, align 4, !dbg !103, !tbaa !55
  %3 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !97, metadata !DIExpression()), !dbg !101
  store i32 1, i32* %.omp.stride, align 4, !dbg !103, !tbaa !55
  %4 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !98, metadata !DIExpression()), !dbg !101
  store i32 0, i32* %.omp.is_last, align 4, !dbg !103, !tbaa !55
  %5 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !99, metadata !DIExpression()), !dbg !101
  %6 = bitcast i32* %j to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %j, metadata !100, metadata !DIExpression()), !dbg !101
  %7 = bitcast i32* %i1 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !99, metadata !DIExpression()), !dbg !101
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %9 = load i32, i32* %8, align 4, !dbg !102, !tbaa !55
  call void @__kmpc_for_static_init_4(%struct.ident_t* @6, i32 %9, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !104
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !103, !tbaa !55
  %cmp = icmp sgt i32 %10, 99, !dbg !103
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !103

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !103

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !103, !tbaa !55
  br label %cond.end, !dbg !103

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %11, %cond.false ], !dbg !103
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !103, !tbaa !55
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !103, !tbaa !55
  store i32 %12, i32* %.omp.iv, align 4, !dbg !103, !tbaa !55
  br label %omp.inner.for.cond, !dbg !102

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !103, !tbaa !55
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !103, !tbaa !55
  %cmp2 = icmp sle i32 %13, %14, !dbg !102
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !102

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !102

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !103, !tbaa !55
  %mul = mul nsw i32 %15, 1, !dbg !105
  %add = add nsw i32 0, %mul, !dbg !105
  store i32 %add, i32* %i, align 4, !dbg !105, !tbaa !55
  store i32 0, i32* %j, align 4, !dbg !106, !tbaa !55
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %16 = load i32, i32* %j, align 4, !dbg !109, !tbaa !55
  %cmp3 = icmp slt i32 %16, 100, !dbg !111
  br i1 %cmp3, label %for.body, label %for.end, !dbg !112

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !113, !tbaa !55
  %idxprom = sext i32 %17 to i64, !dbg !114
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %idxprom, !dbg !114
  %18 = load i32, i32* %j, align 4, !dbg !115, !tbaa !55
  %idxprom4 = sext i32 %18 to i64, !dbg !114
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !114
  %19 = load i32, i32* %arrayidx5, align 4, !dbg !114, !tbaa !55
  %add6 = add nsw i32 %19, 1, !dbg !116
  %20 = load i32, i32* %i, align 4, !dbg !117, !tbaa !55
  %idxprom7 = sext i32 %20 to i64, !dbg !118
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %idxprom7, !dbg !118
  %21 = load i32, i32* %j, align 4, !dbg !119, !tbaa !55
  %idxprom9 = sext i32 %21 to i64, !dbg !118
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !118
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !120, !tbaa !55
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %j, align 4, !dbg !121, !tbaa !55
  %inc = add nsw i32 %22, 1, !dbg !121
  store i32 %inc, i32* %j, align 4, !dbg !121, !tbaa !55
  br label %for.cond, !dbg !122, !llvm.loop !123

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !124

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !104

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !103, !tbaa !55
  %add11 = add nsw i32 %23, 1, !dbg !102
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !102, !tbaa !55
  br label %omp.inner.for.cond, !dbg !104, !llvm.loop !125

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !104

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @8, i32 %9), !dbg !126
  %24 = bitcast i32* %i1 to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !104
  %25 = bitcast i32* %j to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !104
  %26 = bitcast i32* %i to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !104
  %27 = bitcast i32* %.omp.is_last to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !104
  %28 = bitcast i32* %.omp.stride to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !104
  %29 = bitcast i32* %.omp.ub to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !104
  %30 = bitcast i32* %.omp.lb to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !104
  %31 = bitcast i32* %.omp.iv to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !104
  ret void, !dbg !127
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !128 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !130, metadata !DIExpression()), !dbg !132
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !133, !tbaa !48
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !133, !tbaa !48
  call void @.omp_outlined._debug__.1(i32* %0, i32* %1) #4, !dbg !133
  ret void, !dbg !133
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 53, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB113-default-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 320000, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11, !11}
!11 = !DISubrange(count: 100)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{!"clang version 11.1.0"}
!18 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 55, type: !19, scopeLine: 56, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!9}
!21 = !{!22, !23}
!22 = !DILocalVariable(name: "i", scope: !18, file: !3, line: 57, type: !9)
!23 = !DILocalVariable(name: "j", scope: !18, file: !3, line: 57, type: !9)
!24 = !DILocation(line: 57, column: 3, scope: !18)
!25 = !DILocation(line: 57, column: 7, scope: !18)
!26 = !DILocation(line: 57, column: 9, scope: !18)
!27 = !DILocation(line: 58, column: 1, scope: !18)
!28 = !DILocation(line: 63, column: 1, scope: !18)
!29 = !DILocation(line: 69, column: 1, scope: !18)
!30 = !DILocation(line: 68, column: 3, scope: !18)
!31 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 59, type: !32, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !46}
!39 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !31, type: !34, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !31, type: !34, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.iv", scope: !31, type: !9, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.lb", scope: !31, type: !9, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.ub", scope: !31, type: !9, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !31, type: !9, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !31, type: !9, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "i", scope: !31, type: !9, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "j", scope: !31, type: !9, flags: DIFlagArtificial)
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 0, scope: !31)
!53 = !DILocation(line: 59, column: 3, scope: !31)
!54 = !DILocation(line: 59, column: 8, scope: !31)
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !50, i64 0}
!57 = !DILocation(line: 58, column: 1, scope: !31)
!58 = !DILocation(line: 59, column: 18, scope: !31)
!59 = !DILocation(line: 60, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !31, file: !3, line: 60, column: 5)
!61 = !DILocation(line: 60, column: 10, scope: !60)
!62 = !DILocation(line: 60, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !3, line: 60, column: 5)
!64 = !DILocation(line: 60, column: 15, scope: !63)
!65 = !DILocation(line: 60, column: 5, scope: !60)
!66 = !DILocation(line: 61, column: 17, scope: !63)
!67 = !DILocation(line: 61, column: 15, scope: !63)
!68 = !DILocation(line: 61, column: 20, scope: !63)
!69 = !DILocation(line: 61, column: 22, scope: !63)
!70 = !DILocation(line: 61, column: 9, scope: !63)
!71 = !DILocation(line: 61, column: 7, scope: !63)
!72 = !DILocation(line: 61, column: 12, scope: !63)
!73 = !DILocation(line: 61, column: 14, scope: !63)
!74 = !DILocation(line: 60, column: 21, scope: !63)
!75 = !DILocation(line: 60, column: 5, scope: !63)
!76 = distinct !{!76, !65, !77, !78}
!77 = !DILocation(line: 61, column: 23, scope: !60)
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !57, !80}
!80 = !DILocation(line: 58, column: 62, scope: !31)
!81 = !DILocation(line: 61, column: 23, scope: !31)
!82 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 58, type: !32, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!83 = !{!84, !85}
!84 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !34, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !82, type: !34, flags: DIFlagArtificial)
!86 = !DILocation(line: 0, scope: !82)
!87 = !DILocation(line: 58, column: 1, scope: !82)
!88 = !{!89}
!89 = !{i64 2, i64 -1, i64 -1, i1 true}
!90 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 64, type: !32, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !99}
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !90, type: !34, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !90, type: !34, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.iv", scope: !90, type: !9, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.lb", scope: !90, type: !9, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.ub", scope: !90, type: !9, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.stride", scope: !90, type: !9, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.is_last", scope: !90, type: !9, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "i", scope: !90, type: !9, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "j", scope: !90, type: !9, flags: DIFlagArtificial)
!101 = !DILocation(line: 0, scope: !90)
!102 = !DILocation(line: 64, column: 3, scope: !90)
!103 = !DILocation(line: 64, column: 8, scope: !90)
!104 = !DILocation(line: 63, column: 1, scope: !90)
!105 = !DILocation(line: 64, column: 18, scope: !90)
!106 = !DILocation(line: 65, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !90, file: !3, line: 65, column: 5)
!108 = !DILocation(line: 65, column: 10, scope: !107)
!109 = !DILocation(line: 65, column: 14, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 65, column: 5)
!111 = !DILocation(line: 65, column: 15, scope: !110)
!112 = !DILocation(line: 65, column: 5, scope: !107)
!113 = !DILocation(line: 66, column: 17, scope: !110)
!114 = !DILocation(line: 66, column: 15, scope: !110)
!115 = !DILocation(line: 66, column: 20, scope: !110)
!116 = !DILocation(line: 66, column: 22, scope: !110)
!117 = !DILocation(line: 66, column: 9, scope: !110)
!118 = !DILocation(line: 66, column: 7, scope: !110)
!119 = !DILocation(line: 66, column: 12, scope: !110)
!120 = !DILocation(line: 66, column: 14, scope: !110)
!121 = !DILocation(line: 65, column: 21, scope: !110)
!122 = !DILocation(line: 65, column: 5, scope: !110)
!123 = distinct !{!123, !112, !124, !78}
!124 = !DILocation(line: 66, column: 23, scope: !107)
!125 = distinct !{!125, !104, !126}
!126 = !DILocation(line: 63, column: 54, scope: !90)
!127 = !DILocation(line: 66, column: 23, scope: !90)
!128 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 63, type: !32, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!129 = !{!130, !131}
!130 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !128, type: !34, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !128, type: !34, flags: DIFlagArtificial)
!132 = !DILocation(line: 0, scope: !128)
!133 = !DILocation(line: 63, column: 1, scope: !128)
