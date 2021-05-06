; ModuleID = 'DRB026-targetparallelfor-orig-yes.c'
source_filename = "DRB026-targetparallelfor-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [49 x i8] c";DRB026-targetparallelfor-orig-yes.c;main;62;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [50 x i8] c";DRB026-targetparallelfor-orig-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %len.casted = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !29
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !32
  %0 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !34
  %1 = bitcast i32* %len to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !36
  store i32 1000, i32* %len, align 4, !dbg !36, !tbaa !25
  %2 = bitcast [1000 x i32]* %a to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* %2) #4, !dbg !37
  call void @llvm.dbg.declare(metadata [1000 x i32]* %a, metadata !21, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %i, align 4, !dbg !39, !tbaa !25
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !42, !tbaa !25
  %4 = load i32, i32* %len, align 4, !dbg !44, !tbaa !25
  %cmp = icmp slt i32 %3, %4, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !47, !tbaa !25
  %6 = load i32, i32* %i, align 4, !dbg !48, !tbaa !25
  %idxprom = sext i32 %6 to i64, !dbg !49
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %a, i64 0, i64 %idxprom, !dbg !49
  store i32 %5, i32* %arrayidx, align 4, !dbg !50, !tbaa !25
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !51, !tbaa !25
  %inc = add nsw i32 %7, 1, !dbg !51
  store i32 %inc, i32* %i, align 4, !dbg !51, !tbaa !25
  br label %for.cond, !dbg !52, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %len, align 4, !dbg !56, !tbaa !25
  %conv = bitcast i64* %len.casted to i32*, !dbg !56
  store i32 %8, i32* %conv, align 4, !dbg !56, !tbaa !25
  %9 = load i64, i64* %len.casted, align 8, !dbg !56, !tbaa !57
  call void @__omp_offloading_10308_be0402_main_l61(i64 %9, [1000 x i32]* %a) #4, !dbg !59
  %10 = bitcast [1000 x i32]* %a to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* %10) #4, !dbg !61
  %11 = bitcast i32* %len to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !61
  %12 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !61
  ret i32 0, !dbg !62
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0402_main_l61_debug__(i32 %len, [1000 x i32]* nonnull align 4 dereferenceable(4000) %a) #3 !dbg !63 {
entry:
  %len.addr = alloca i32, align 4
  %a.addr = alloca [1000 x i32]*, align 8
  store i32 %len, i32* %len.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !68, metadata !DIExpression()), !dbg !70
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !69, metadata !DIExpression()), !dbg !71
  %0 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !72, !tbaa !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len.addr, [1000 x i32]* %0), !dbg !72
  ret void, !dbg !73
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [1000 x i32]* nonnull align 4 dereferenceable(4000) %a) #3 !dbg !74 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !94
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !84, metadata !DIExpression()), !dbg !94
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !85, metadata !DIExpression()), !dbg !95
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !86, metadata !DIExpression()), !dbg !96
  %0 = load i32*, i32** %len.addr, align 8, !dbg !97, !tbaa !30
  %1 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !97, !tbaa !30
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !87, metadata !DIExpression()), !dbg !94
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !88, metadata !DIExpression()), !dbg !94
  %4 = load i32, i32* %0, align 4, !dbg !98, !tbaa !25
  %sub = sub nsw i32 %4, 1, !dbg !99
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !98, !tbaa !25
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !88, metadata !DIExpression()), !dbg !94
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !99, !tbaa !25
  %sub2 = sub nsw i32 %6, 0, !dbg !97
  %div = sdiv i32 %sub2, 1, !dbg !97
  %sub3 = sub nsw i32 %div, 1, !dbg !97
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !25
  %7 = bitcast i32* %i to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !94
  store i32 0, i32* %i, align 4, !dbg !100, !tbaa !25
  %8 = bitcast i32* %i to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !97
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !99, !tbaa !25
  %cmp = icmp slt i32 0, %9, !dbg !97
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !97

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !90, metadata !DIExpression()), !dbg !94
  store i32 0, i32* %.omp.lb, align 4, !dbg !101, !tbaa !25
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !91, metadata !DIExpression()), !dbg !94
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !25
  store i32 %12, i32* %.omp.ub, align 4, !dbg !101, !tbaa !25
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !92, metadata !DIExpression()), !dbg !94
  store i32 1, i32* %.omp.stride, align 4, !dbg !101, !tbaa !25
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 0, i32* %.omp.is_last, align 4, !dbg !101, !tbaa !25
  %15 = bitcast i32* %i4 to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !89, metadata !DIExpression()), !dbg !94
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %17 = load i32, i32* %16, align 4, !dbg !97, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !102
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !101, !tbaa !25
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !25
  %cmp5 = icmp sgt i32 %18, %19, !dbg !101
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !101

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !25
  br label %cond.end, !dbg !101

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !101, !tbaa !25
  br label %cond.end, !dbg !101

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !101
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !101, !tbaa !25
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !101, !tbaa !25
  store i32 %22, i32* %.omp.iv, align 4, !dbg !101, !tbaa !25
  br label %omp.inner.for.cond, !dbg !97

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !25
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !101, !tbaa !25
  %cmp6 = icmp sle i32 %23, %24, !dbg !97
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !97

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !97

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !25
  %mul = mul nsw i32 %25, 1, !dbg !100
  %add = add nsw i32 0, %mul, !dbg !100
  store i32 %add, i32* %i4, align 4, !dbg !100, !tbaa !25
  %26 = load i32, i32* %i4, align 4, !dbg !103, !tbaa !25
  %add7 = add nsw i32 %26, 1, !dbg !104
  %idxprom = sext i32 %add7 to i64, !dbg !105
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %idxprom, !dbg !105
  %27 = load i32, i32* %arrayidx, align 4, !dbg !105, !tbaa !25
  %add8 = add nsw i32 %27, 1, !dbg !106
  %28 = load i32, i32* %i4, align 4, !dbg !107, !tbaa !25
  %idxprom9 = sext i32 %28 to i64, !dbg !108
  %arrayidx10 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %idxprom9, !dbg !108
  store i32 %add8, i32* %arrayidx10, align 4, !dbg !109, !tbaa !25
  br label %omp.body.continue, !dbg !108

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !102

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !25
  %add11 = add nsw i32 %29, 1, !dbg !97
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !97, !tbaa !25
  br label %omp.inner.for.cond, !dbg !102, !llvm.loop !110

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !102

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %31 = load i32, i32* %30, align 4, !dbg !102, !tbaa !25
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %31), !dbg !111
  %32 = bitcast i32* %i4 to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !102
  %33 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !102
  %34 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !102
  %35 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !102
  %36 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !102
  br label %omp.precond.end, !dbg !102

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %37 = bitcast i32* %.capture_expr.1 to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !102
  %38 = bitcast i32* %.capture_expr. to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !102
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !102
  ret void, !dbg !112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [1000 x i32]* nonnull align 4 dereferenceable(4000) %a) #3 !dbg !113 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !115, metadata !DIExpression()), !dbg !119
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !116, metadata !DIExpression()), !dbg !119
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !117, metadata !DIExpression()), !dbg !119
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = load i32*, i32** %len.addr, align 8, !dbg !120, !tbaa !30
  %1 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !120, !tbaa !30
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !120, !tbaa !30
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !120, !tbaa !30
  %4 = load i32*, i32** %len.addr, align 8, !dbg !120, !tbaa !30
  %5 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !120, !tbaa !30
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [1000 x i32]* %5) #4, !dbg !120
  ret void, !dbg !120
}

; Function Attrs: nounwind
declare !callback !121 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0402_main_l61(i64 %len, [1000 x i32]* nonnull align 4 dereferenceable(4000) %a) #3 !dbg !123 {
entry:
  %len.addr = alloca i64, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  store i64 %len, i64* %len.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !128, metadata !DIExpression()), !dbg !130
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %conv = bitcast i64* %len.addr to i32*, !dbg !131
  %0 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !131, !tbaa !30
  %1 = load i32, i32* %conv, align 8, !dbg !131, !tbaa !25
  %2 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !131, !tbaa !30
  call void @__omp_offloading_10308_be0402_main_l61_debug__(i32 %1, [1000 x i32]* %2) #4, !dbg !131
  ret void, !dbg !131
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB026-targetparallelfor-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !10, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 52, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 52, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 54, type: !12)
!20 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 55, type: !12)
!21 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 56, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32000, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 1000)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 52, column: 14, scope: !9)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 52, column: 26, scope: !9)
!33 = !DILocation(line: 54, column: 3, scope: !9)
!34 = !DILocation(line: 54, column: 7, scope: !9)
!35 = !DILocation(line: 55, column: 3, scope: !9)
!36 = !DILocation(line: 55, column: 7, scope: !9)
!37 = !DILocation(line: 56, column: 3, scope: !9)
!38 = !DILocation(line: 56, column: 7, scope: !9)
!39 = !DILocation(line: 58, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !9, file: !1, line: 58, column: 3)
!41 = !DILocation(line: 58, column: 8, scope: !40)
!42 = !DILocation(line: 58, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 58, column: 3)
!44 = !DILocation(line: 58, column: 15, scope: !43)
!45 = !DILocation(line: 58, column: 14, scope: !43)
!46 = !DILocation(line: 58, column: 3, scope: !40)
!47 = !DILocation(line: 59, column: 11, scope: !43)
!48 = !DILocation(line: 59, column: 7, scope: !43)
!49 = !DILocation(line: 59, column: 5, scope: !43)
!50 = !DILocation(line: 59, column: 9, scope: !43)
!51 = !DILocation(line: 58, column: 21, scope: !43)
!52 = !DILocation(line: 58, column: 3, scope: !43)
!53 = distinct !{!53, !46, !54, !55}
!54 = !DILocation(line: 59, column: 11, scope: !40)
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !DILocation(line: 61, column: 1, scope: !9)
!57 = !{!58, !58, i64 0}
!58 = !{!"long", !27, i64 0}
!59 = !DILocation(line: 61, column: 1, scope: !60)
!60 = distinct !DILexicalBlock(scope: !9, file: !1, line: 61, column: 1)
!61 = !DILocation(line: 67, column: 1, scope: !9)
!62 = !DILocation(line: 66, column: 3, scope: !9)
!63 = distinct !DISubprogram(name: "__omp_offloading_10308_be0402_main_l61_debug__", scope: !1, file: !1, line: 62, type: !64, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !12, !66}
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!67 = !{!68, !69}
!68 = !DILocalVariable(name: "len", arg: 1, scope: !63, file: !1, line: 55, type: !12)
!69 = !DILocalVariable(name: "a", arg: 2, scope: !63, file: !1, line: 56, type: !66)
!70 = !DILocation(line: 55, column: 7, scope: !63)
!71 = !DILocation(line: 56, column: 7, scope: !63)
!72 = !DILocation(line: 62, column: 1, scope: !63)
!73 = !DILocation(line: 62, column: 25, scope: !63)
!74 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !75, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !77, !81, !66}
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!81 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!82 = !{!83, !84, !85, !86, !87, !88, !88, !89, !90, !91, !92, !93, !89}
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !74, type: !77, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !74, type: !77, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "len", arg: 3, scope: !74, file: !1, line: 55, type: !81)
!86 = !DILocalVariable(name: "a", arg: 4, scope: !74, file: !1, line: 56, type: !66)
!87 = !DILocalVariable(name: ".omp.iv", scope: !74, type: !12, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".capture_expr.", scope: !74, type: !12, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "i", scope: !74, type: !12, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.lb", scope: !74, type: !12, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.ub", scope: !74, type: !12, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.stride", scope: !74, type: !12, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.is_last", scope: !74, type: !12, flags: DIFlagArtificial)
!94 = !DILocation(line: 0, scope: !74)
!95 = !DILocation(line: 55, column: 7, scope: !74)
!96 = !DILocation(line: 56, column: 7, scope: !74)
!97 = !DILocation(line: 63, column: 3, scope: !74)
!98 = !DILocation(line: 63, column: 15, scope: !74)
!99 = !DILocation(line: 63, column: 19, scope: !74)
!100 = !DILocation(line: 63, column: 23, scope: !74)
!101 = !DILocation(line: 63, column: 8, scope: !74)
!102 = !DILocation(line: 62, column: 1, scope: !74)
!103 = !DILocation(line: 64, column: 12, scope: !74)
!104 = !DILocation(line: 64, column: 13, scope: !74)
!105 = !DILocation(line: 64, column: 10, scope: !74)
!106 = !DILocation(line: 64, column: 16, scope: !74)
!107 = !DILocation(line: 64, column: 7, scope: !74)
!108 = !DILocation(line: 64, column: 5, scope: !74)
!109 = !DILocation(line: 64, column: 9, scope: !74)
!110 = distinct !{!110, !102, !111}
!111 = !DILocation(line: 62, column: 25, scope: !74)
!112 = !DILocation(line: 64, column: 17, scope: !74)
!113 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !75, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !113, type: !77, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !113, type: !77, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "len", arg: 3, scope: !113, type: !81, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "a", arg: 4, scope: !113, type: !66, flags: DIFlagArtificial)
!119 = !DILocation(line: 0, scope: !113)
!120 = !DILocation(line: 62, column: 1, scope: !113)
!121 = !{!122}
!122 = !{i64 2, i64 -1, i64 -1, i1 true}
!123 = distinct !DISubprogram(name: "__omp_offloading_10308_be0402_main_l61", scope: !1, file: !1, line: 61, type: !124, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !126, !66}
!126 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!127 = !{!128, !129}
!128 = !DILocalVariable(name: "len", arg: 1, scope: !123, type: !126, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "a", arg: 2, scope: !123, type: !66, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !123)
!131 = !DILocation(line: 61, column: 1, scope: !123)
