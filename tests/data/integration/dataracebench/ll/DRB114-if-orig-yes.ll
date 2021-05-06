; ModuleID = 'DRB114-if-orig-yes.c'
source_filename = "DRB114-if-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [34 x i8] c";DRB114-if-orig-yes.c;main;64;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [35 x i8] c";DRB114-if-orig-yes.c;main;64;39;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %.threadid_temp. = alloca i32, align 4
  %.bound.zero.addr = alloca i32, align 4
  store i32 0, i32* %.bound.zero.addr, align 4
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @4)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !29
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !32
  %1 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !34
  %2 = bitcast i32* %len to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !36
  store i32 100, i32* %len, align 4, !dbg !36, !tbaa !25
  %3 = bitcast [100 x i32]* %a to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %3) #5, !dbg !37
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !21, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %i, align 4, !dbg !39, !tbaa !25
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !42, !tbaa !25
  %5 = load i32, i32* %len, align 4, !dbg !44, !tbaa !25
  %cmp = icmp slt i32 %4, %5, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !47, !tbaa !25
  %7 = load i32, i32* %i, align 4, !dbg !48, !tbaa !25
  %idxprom = sext i32 %7 to i64, !dbg !49
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !49
  store i32 %6, i32* %arrayidx, align 4, !dbg !50, !tbaa !25
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !51, !tbaa !25
  %inc = add nsw i32 %8, 1, !dbg !51
  store i32 %inc, i32* %i, align 4, !dbg !51, !tbaa !25
  br label %for.cond, !dbg !52, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  %call = call i64 @time(i64* null) #5, !dbg !56
  %conv = trunc i64 %call to i32, !dbg !56
  call void @srand(i32 %conv) #5, !dbg !57
  %call1 = call i32 @rand() #5, !dbg !58
  %rem = srem i32 %call1, 2, !dbg !61
  %tobool = icmp ne i32 %rem, 0, !dbg !61
  br i1 %tobool, label %omp_if.then, label %omp_if.else, !dbg !62

omp_if.then:                                      ; preds = %for.end
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x i32]* %a), !dbg !62
  br label %omp_if.end, !dbg !62

omp_if.else:                                      ; preds = %for.end
  call void @__kmpc_serialized_parallel(%struct.ident_t* @4, i32 %0), !dbg !62
  store i32 %0, i32* %.threadid_temp., align 4, !dbg !62, !tbaa !25
  call void @.omp_outlined.(i32* %.threadid_temp., i32* %.bound.zero.addr, i32* %len, [100 x i32]* %a) #5, !dbg !63
  call void @__kmpc_end_serialized_parallel(%struct.ident_t* @4, i32 %0), !dbg !62
  br label %omp_if.end, !dbg !62

omp_if.end:                                       ; preds = %omp_if.else, %omp_if.then
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !64
  %9 = load i32, i32* %arrayidx2, align 8, !dbg !64, !tbaa !25
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9), !dbg !65
  %10 = bitcast [100 x i32]* %a to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %10) #5, !dbg !66
  %11 = bitcast i32* %len to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !66
  %12 = bitcast i32* %i to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !66
  ret i32 0, !dbg !67
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !68 void @srand(i32) #3

; Function Attrs: nounwind
declare !dbg !73 i64 @time(i64*) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [100 x i32]* nonnull align 4 dereferenceable(400) %a) #4 !dbg !79 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !89, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !90, metadata !DIExpression()), !dbg !100
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !91, metadata !DIExpression()), !dbg !101
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !92, metadata !DIExpression()), !dbg !102
  %0 = load i32*, i32** %len.addr, align 8, !dbg !103, !tbaa !30
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !103, !tbaa !30
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !93, metadata !DIExpression()), !dbg !100
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !94, metadata !DIExpression()), !dbg !100
  %4 = load i32, i32* %0, align 4, !dbg !104, !tbaa !25
  %sub = sub nsw i32 %4, 1, !dbg !105
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !104, !tbaa !25
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !94, metadata !DIExpression()), !dbg !100
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !105, !tbaa !25
  %sub2 = sub nsw i32 %6, 0, !dbg !103
  %div = sdiv i32 %sub2, 1, !dbg !103
  %sub3 = sub nsw i32 %div, 1, !dbg !103
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !25
  %7 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !95, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %i, align 4, !dbg !106, !tbaa !25
  %8 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !103
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !105, !tbaa !25
  %cmp = icmp slt i32 0, %9, !dbg !103
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !103

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !96, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.lb, align 4, !dbg !107, !tbaa !25
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !97, metadata !DIExpression()), !dbg !100
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !25
  store i32 %12, i32* %.omp.ub, align 4, !dbg !107, !tbaa !25
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !98, metadata !DIExpression()), !dbg !100
  store i32 1, i32* %.omp.stride, align 4, !dbg !107, !tbaa !25
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.is_last, align 4, !dbg !107, !tbaa !25
  %15 = bitcast i32* %i4 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !95, metadata !DIExpression()), !dbg !100
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %17 = load i32, i32* %16, align 4, !dbg !103, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !108
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !107, !tbaa !25
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !25
  %cmp5 = icmp sgt i32 %18, %19, !dbg !107
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !107

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !25
  br label %cond.end, !dbg !107

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !107, !tbaa !25
  br label %cond.end, !dbg !107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !107
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !107, !tbaa !25
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !107, !tbaa !25
  store i32 %22, i32* %.omp.iv, align 4, !dbg !107, !tbaa !25
  br label %omp.inner.for.cond, !dbg !103

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !107, !tbaa !25
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !107, !tbaa !25
  %cmp6 = icmp sle i32 %23, %24, !dbg !103
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !103

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !103

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !107, !tbaa !25
  %mul = mul nsw i32 %25, 1, !dbg !106
  %add = add nsw i32 0, %mul, !dbg !106
  store i32 %add, i32* %i4, align 4, !dbg !106, !tbaa !25
  %26 = load i32, i32* %i4, align 4, !dbg !109, !tbaa !25
  %idxprom = sext i32 %26 to i64, !dbg !110
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %idxprom, !dbg !110
  %27 = load i32, i32* %arrayidx, align 4, !dbg !110, !tbaa !25
  %add7 = add nsw i32 %27, 1, !dbg !111
  %28 = load i32, i32* %i4, align 4, !dbg !112, !tbaa !25
  %add8 = add nsw i32 %28, 1, !dbg !113
  %idxprom9 = sext i32 %add8 to i64, !dbg !114
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %idxprom9, !dbg !114
  store i32 %add7, i32* %arrayidx10, align 4, !dbg !115, !tbaa !25
  br label %omp.body.continue, !dbg !114

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !108

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !107, !tbaa !25
  %add11 = add nsw i32 %29, 1, !dbg !103
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !103, !tbaa !25
  br label %omp.inner.for.cond, !dbg !108, !llvm.loop !116

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !108

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %31 = load i32, i32* %30, align 4, !dbg !108, !tbaa !25
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %31), !dbg !117
  %32 = bitcast i32* %i4 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !108
  %33 = bitcast i32* %.omp.is_last to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !108
  %34 = bitcast i32* %.omp.stride to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !108
  %35 = bitcast i32* %.omp.ub to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !108
  %36 = bitcast i32* %.omp.lb to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !108
  br label %omp.precond.end, !dbg !108

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %37 = bitcast i32* %.capture_expr.1 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !108
  %38 = bitcast i32* %.capture_expr. to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !108
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !108
  ret void, !dbg !118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [100 x i32]* nonnull align 4 dereferenceable(400) %a) #4 !dbg !119 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !121, metadata !DIExpression()), !dbg !125
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !122, metadata !DIExpression()), !dbg !125
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !123, metadata !DIExpression()), !dbg !125
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load i32*, i32** %len.addr, align 8, !dbg !126, !tbaa !30
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !126, !tbaa !30
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !126, !tbaa !30
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !126, !tbaa !30
  %4 = load i32*, i32** %len.addr, align 8, !dbg !126, !tbaa !30
  %5 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !126, !tbaa !30
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [100 x i32]* %5) #5, !dbg !126
  ret void, !dbg !126
}

; Function Attrs: nounwind
declare !dbg !127 i32 @rand() #3

; Function Attrs: nounwind
declare !callback !130 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #5

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_serialized_parallel(%struct.ident_t*, i32) #6

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_serialized_parallel(%struct.ident_t*, i32) #6

declare i32 @printf(i8*, ...) #7

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inaccessiblemem_or_argmemonly }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB114-if-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !10, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 54, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 54, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 56, type: !12)
!20 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 57, type: !12)
!21 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 58, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 54, column: 14, scope: !9)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 54, column: 26, scope: !9)
!33 = !DILocation(line: 56, column: 3, scope: !9)
!34 = !DILocation(line: 56, column: 7, scope: !9)
!35 = !DILocation(line: 57, column: 3, scope: !9)
!36 = !DILocation(line: 57, column: 7, scope: !9)
!37 = !DILocation(line: 58, column: 3, scope: !9)
!38 = !DILocation(line: 58, column: 7, scope: !9)
!39 = !DILocation(line: 60, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !9, file: !1, line: 60, column: 3)
!41 = !DILocation(line: 60, column: 8, scope: !40)
!42 = !DILocation(line: 60, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 60, column: 3)
!44 = !DILocation(line: 60, column: 14, scope: !43)
!45 = !DILocation(line: 60, column: 13, scope: !43)
!46 = !DILocation(line: 60, column: 3, scope: !40)
!47 = !DILocation(line: 61, column: 10, scope: !43)
!48 = !DILocation(line: 61, column: 7, scope: !43)
!49 = !DILocation(line: 61, column: 5, scope: !43)
!50 = !DILocation(line: 61, column: 9, scope: !43)
!51 = !DILocation(line: 60, column: 19, scope: !43)
!52 = !DILocation(line: 60, column: 3, scope: !43)
!53 = distinct !{!53, !46, !54, !55}
!54 = !DILocation(line: 61, column: 10, scope: !40)
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !DILocation(line: 63, column: 9, scope: !9)
!57 = !DILocation(line: 63, column: 3, scope: !9)
!58 = !DILocation(line: 64, column: 30, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 64, column: 30)
!60 = distinct !DILexicalBlock(scope: !9, file: !1, line: 64, column: 1)
!61 = !DILocation(line: 64, column: 36, scope: !59)
!62 = !DILocation(line: 64, column: 30, scope: !60)
!63 = !DILocation(line: 64, column: 1, scope: !59)
!64 = !DILocation(line: 68, column: 24, scope: !9)
!65 = !DILocation(line: 68, column: 3, scope: !9)
!66 = !DILocation(line: 70, column: 1, scope: !9)
!67 = !DILocation(line: 69, column: 3, scope: !9)
!68 = !DISubprogram(name: "srand", scope: !69, file: !69, line: 455, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!69 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72}
!72 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!73 = !DISubprogram(name: "time", scope: !74, file: !74, line: 75, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!74 = !DIFile(filename: "/usr/include/time.h", directory: "")
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !78}
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!79 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !80, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !82, !86, !87}
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!86 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!88 = !{!89, !90, !91, !92, !93, !94, !94, !95, !96, !97, !98, !99, !95}
!89 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !79, type: !82, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !79, type: !82, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "len", arg: 3, scope: !79, file: !1, line: 57, type: !86)
!92 = !DILocalVariable(name: "a", arg: 4, scope: !79, file: !1, line: 58, type: !87)
!93 = !DILocalVariable(name: ".omp.iv", scope: !79, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".capture_expr.", scope: !79, type: !12, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "i", scope: !79, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.lb", scope: !79, type: !12, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.ub", scope: !79, type: !12, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.stride", scope: !79, type: !12, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".omp.is_last", scope: !79, type: !12, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !79)
!101 = !DILocation(line: 57, column: 7, scope: !79)
!102 = !DILocation(line: 58, column: 7, scope: !79)
!103 = !DILocation(line: 65, column: 3, scope: !79)
!104 = !DILocation(line: 65, column: 14, scope: !79)
!105 = !DILocation(line: 65, column: 17, scope: !79)
!106 = !DILocation(line: 65, column: 20, scope: !79)
!107 = !DILocation(line: 65, column: 8, scope: !79)
!108 = !DILocation(line: 64, column: 1, scope: !79)
!109 = !DILocation(line: 66, column: 14, scope: !79)
!110 = !DILocation(line: 66, column: 12, scope: !79)
!111 = !DILocation(line: 66, column: 16, scope: !79)
!112 = !DILocation(line: 66, column: 7, scope: !79)
!113 = !DILocation(line: 66, column: 8, scope: !79)
!114 = !DILocation(line: 66, column: 5, scope: !79)
!115 = !DILocation(line: 66, column: 11, scope: !79)
!116 = distinct !{!116, !108, !117}
!117 = !DILocation(line: 64, column: 39, scope: !79)
!118 = !DILocation(line: 66, column: 17, scope: !79)
!119 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !80, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!120 = !{!121, !122, !123, !124}
!121 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !119, type: !82, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !119, type: !82, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "len", arg: 3, scope: !119, type: !86, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "a", arg: 4, scope: !119, type: !87, flags: DIFlagArtificial)
!125 = !DILocation(line: 0, scope: !119)
!126 = !DILocation(line: 64, column: 1, scope: !119)
!127 = !DISubprogram(name: "rand", scope: !69, file: !69, line: 453, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!128 = !DISubroutineType(types: !129)
!129 = !{!12}
!130 = !{!131}
!131 = !{i64 2, i64 -1, i64 -1, i1 true}
