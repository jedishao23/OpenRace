; ModuleID = 'DRB020-privatemissing-var-yes.c'
source_filename = "DRB020-privatemissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [45 x i8] c";DRB020-privatemissing-var-yes.c;main;62;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [46 x i8] c";DRB020-privatemissing-var-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !34
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !37
  %0 = bitcast i32* %i to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !39
  %1 = bitcast i32* %tmp to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !22, metadata !DIExpression()), !dbg !41
  %2 = bitcast i32* %len to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %len, metadata !23, metadata !DIExpression()), !dbg !43
  store i32 100, i32* %len, align 4, !dbg !43, !tbaa !30
  %3 = load i32, i32* %argc.addr, align 4, !dbg !44, !tbaa !30
  %cmp = icmp sgt i32 %3, 1, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !48, !tbaa !35
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !48
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !48, !tbaa !35
  %call = call i32 @atoi(i8* %5) #7, !dbg !49
  store i32 %call, i32* %len, align 4, !dbg !50, !tbaa !30
  br label %if.end, !dbg !51

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %len, align 4, !dbg !52, !tbaa !30
  %7 = zext i32 %6 to i64, !dbg !53
  %8 = call i8* @llvm.stacksave(), !dbg !53
  store i8* %8, i8** %saved_stack, align 8, !dbg !53
  %vla = alloca i32, i64 %7, align 16, !dbg !53
  store i64 %7, i64* %__vla_expr0, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !24, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !26, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %i, align 4, !dbg !56, !tbaa !30
  br label %for.cond, !dbg !58

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !59, !tbaa !30
  %10 = load i32, i32* %len, align 4, !dbg !61, !tbaa !30
  %cmp1 = icmp slt i32 %9, %10, !dbg !62
  br i1 %cmp1, label %for.body, label %for.end, !dbg !63

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !64, !tbaa !30
  %12 = load i32, i32* %i, align 4, !dbg !65, !tbaa !30
  %idxprom = sext i32 %12 to i64, !dbg !66
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !66
  store i32 %11, i32* %arrayidx2, align 4, !dbg !67, !tbaa !30
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !68, !tbaa !30
  %inc = add nsw i32 %13, 1, !dbg !68
  store i32 %inc, i32* %i, align 4, !dbg !68, !tbaa !30
  br label %for.cond, !dbg !69, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %tmp, i64 %7, i32* %vla), !dbg !73
  store i32 0, i32* %retval, align 4, !dbg !74
  %14 = load i8*, i8** %saved_stack, align 8, !dbg !75
  call void @llvm.stackrestore(i8* %14), !dbg !75
  %15 = bitcast i32* %len to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4, !dbg !75
  %16 = bitcast i32* %tmp to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !75
  %17 = bitcast i32* %i to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !75
  %18 = load i32, i32* %retval, align 4, !dbg !75
  ret i32 %18, !dbg !75
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !76 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !85, !tbaa !35
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !86
  %conv = trunc i64 %call to i32, !dbg !87
  ret i32 %conv, !dbg !88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %tmp, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #5 !dbg !89 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.2 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !111
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !111
  store i32* %len, i32** %len.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !100, metadata !DIExpression()), !dbg !112
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !101, metadata !DIExpression()), !dbg !113
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !114
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !102, metadata !DIExpression()), !dbg !111
  store i32* %a, i32** %a.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !103, metadata !DIExpression()), !dbg !116
  %0 = load i32*, i32** %len.addr, align 8, !dbg !117, !tbaa !35
  %1 = load i32*, i32** %tmp.addr, align 8, !dbg !117, !tbaa !35
  %2 = load i64, i64* %vla.addr, align 8, !dbg !117, !tbaa !114
  %3 = load i32*, i32** %a.addr, align 8, !dbg !117, !tbaa !35
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !104, metadata !DIExpression()), !dbg !111
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !105, metadata !DIExpression()), !dbg !111
  %6 = load i32, i32* %0, align 4, !dbg !118, !tbaa !30
  store i32 %6, i32* %.capture_expr., align 4, !dbg !118, !tbaa !30
  %7 = bitcast i32* %.capture_expr.2 to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !105, metadata !DIExpression()), !dbg !111
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !118, !tbaa !30
  %sub = sub nsw i32 %8, 0, !dbg !117
  %div = sdiv i32 %sub, 1, !dbg !117
  %sub3 = sub nsw i32 %div, 1, !dbg !117
  store i32 %sub3, i32* %.capture_expr.2, align 4, !dbg !117, !tbaa !30
  %9 = bitcast i32* %i to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %i, metadata !106, metadata !DIExpression()), !dbg !111
  store i32 0, i32* %i, align 4, !dbg !119, !tbaa !30
  %10 = bitcast i32* %i to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !117
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !118, !tbaa !30
  %cmp = icmp slt i32 0, %11, !dbg !117
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !117

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !107, metadata !DIExpression()), !dbg !111
  store i32 0, i32* %.omp.lb, align 4, !dbg !120, !tbaa !30
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !108, metadata !DIExpression()), !dbg !111
  %14 = load i32, i32* %.capture_expr.2, align 4, !dbg !117, !tbaa !30
  store i32 %14, i32* %.omp.ub, align 4, !dbg !120, !tbaa !30
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !109, metadata !DIExpression()), !dbg !111
  store i32 1, i32* %.omp.stride, align 4, !dbg !120, !tbaa !30
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 0, i32* %.omp.is_last, align 4, !dbg !120, !tbaa !30
  %17 = bitcast i32* %i4 to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !106, metadata !DIExpression()), !dbg !111
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !117
  %19 = load i32, i32* %18, align 4, !dbg !117, !tbaa !30
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !121
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !120, !tbaa !30
  %21 = load i32, i32* %.capture_expr.2, align 4, !dbg !117, !tbaa !30
  %cmp5 = icmp sgt i32 %20, %21, !dbg !120
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !120

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.2, align 4, !dbg !117, !tbaa !30
  br label %cond.end, !dbg !120

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !120, !tbaa !30
  br label %cond.end, !dbg !120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !120
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !120, !tbaa !30
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !120, !tbaa !30
  store i32 %24, i32* %.omp.iv, align 4, !dbg !120, !tbaa !30
  br label %omp.inner.for.cond, !dbg !117

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !120, !tbaa !30
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !120, !tbaa !30
  %cmp6 = icmp sle i32 %25, %26, !dbg !117
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !117

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !117

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !120, !tbaa !30
  %mul = mul nsw i32 %27, 1, !dbg !119
  %add = add nsw i32 0, %mul, !dbg !119
  store i32 %add, i32* %i4, align 4, !dbg !119, !tbaa !30
  %28 = load i32, i32* %i4, align 4, !dbg !122, !tbaa !30
  %idxprom = sext i32 %28 to i64, !dbg !124
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !124
  %29 = load i32, i32* %arrayidx, align 4, !dbg !124, !tbaa !30
  %30 = load i32, i32* %i4, align 4, !dbg !125, !tbaa !30
  %add7 = add nsw i32 %29, %30, !dbg !126
  store i32 %add7, i32* %1, align 4, !dbg !127, !tbaa !30
  %31 = load i32, i32* %1, align 4, !dbg !128, !tbaa !30
  %32 = load i32, i32* %i4, align 4, !dbg !129, !tbaa !30
  %idxprom8 = sext i32 %32 to i64, !dbg !130
  %arrayidx9 = getelementptr inbounds i32, i32* %3, i64 %idxprom8, !dbg !130
  store i32 %31, i32* %arrayidx9, align 4, !dbg !131, !tbaa !30
  br label %omp.body.continue, !dbg !132

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !121

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !120, !tbaa !30
  %add10 = add nsw i32 %33, 1, !dbg !117
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !117, !tbaa !30
  br label %omp.inner.for.cond, !dbg !121, !llvm.loop !133

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !121

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !121
  %35 = load i32, i32* %34, align 4, !dbg !121, !tbaa !30
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %35), !dbg !134
  %36 = bitcast i32* %i4 to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !121
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !121
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !121
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !121
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !121
  br label %omp.precond.end, !dbg !121

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.2 to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !121
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !121
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !121
  ret void, !dbg !135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %tmp, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #5 !dbg !136 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !138, metadata !DIExpression()), !dbg !144
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !139, metadata !DIExpression()), !dbg !144
  store i32* %len, i32** %len.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !140, metadata !DIExpression()), !dbg !144
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !141, metadata !DIExpression()), !dbg !144
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !114
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !142, metadata !DIExpression()), !dbg !144
  store i32* %a, i32** %a.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !143, metadata !DIExpression()), !dbg !144
  %0 = load i32*, i32** %len.addr, align 8, !dbg !145, !tbaa !35
  %1 = load i32*, i32** %tmp.addr, align 8, !dbg !145, !tbaa !35
  %2 = load i64, i64* %vla.addr, align 8, !dbg !145, !tbaa !114
  %3 = load i32*, i32** %a.addr, align 8, !dbg !145, !tbaa !35
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !145, !tbaa !35
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !145, !tbaa !35
  %6 = load i32*, i32** %len.addr, align 8, !dbg !145, !tbaa !35
  %7 = load i32*, i32** %tmp.addr, align 8, !dbg !145, !tbaa !35
  %8 = load i32*, i32** %a.addr, align 8, !dbg !145, !tbaa !35
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32* %7, i64 %2, i32* %8) #4, !dbg !145
  ret void, !dbg !145
}

; Function Attrs: nounwind
declare !callback !146 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB020-privatemissing-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !16, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !24, !26}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 51, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 51, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 53, type: !4)
!22 = !DILocalVariable(name: "tmp", scope: !15, file: !1, line: 54, type: !4)
!23 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 55, type: !4)
!24 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !25, flags: DIFlagArtificial)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "a", scope: !15, file: !1, line: 58, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: !24)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 51, column: 14, scope: !15)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !32, i64 0}
!37 = !DILocation(line: 51, column: 26, scope: !15)
!38 = !DILocation(line: 53, column: 3, scope: !15)
!39 = !DILocation(line: 53, column: 7, scope: !15)
!40 = !DILocation(line: 54, column: 3, scope: !15)
!41 = !DILocation(line: 54, column: 7, scope: !15)
!42 = !DILocation(line: 55, column: 3, scope: !15)
!43 = !DILocation(line: 55, column: 7, scope: !15)
!44 = !DILocation(line: 56, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !15, file: !1, line: 56, column: 7)
!46 = !DILocation(line: 56, column: 11, scope: !45)
!47 = !DILocation(line: 56, column: 7, scope: !15)
!48 = !DILocation(line: 57, column: 16, scope: !45)
!49 = !DILocation(line: 57, column: 11, scope: !45)
!50 = !DILocation(line: 57, column: 9, scope: !45)
!51 = !DILocation(line: 57, column: 5, scope: !45)
!52 = !DILocation(line: 58, column: 9, scope: !15)
!53 = !DILocation(line: 58, column: 3, scope: !15)
!54 = !DILocation(line: 0, scope: !15)
!55 = !DILocation(line: 58, column: 7, scope: !15)
!56 = !DILocation(line: 59, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !15, file: !1, line: 59, column: 3)
!58 = !DILocation(line: 59, column: 8, scope: !57)
!59 = !DILocation(line: 59, column: 12, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 59, column: 3)
!61 = !DILocation(line: 59, column: 14, scope: !60)
!62 = !DILocation(line: 59, column: 13, scope: !60)
!63 = !DILocation(line: 59, column: 3, scope: !57)
!64 = !DILocation(line: 60, column: 10, scope: !60)
!65 = !DILocation(line: 60, column: 7, scope: !60)
!66 = !DILocation(line: 60, column: 5, scope: !60)
!67 = !DILocation(line: 60, column: 9, scope: !60)
!68 = !DILocation(line: 59, column: 19, scope: !60)
!69 = !DILocation(line: 59, column: 3, scope: !60)
!70 = distinct !{!70, !63, !71, !72}
!71 = !DILocation(line: 60, column: 10, scope: !57)
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !DILocation(line: 62, column: 1, scope: !15)
!74 = !DILocation(line: 68, column: 3, scope: !15)
!75 = !DILocation(line: 69, column: 1, scope: !15)
!76 = distinct !DISubprogram(name: "atoi", scope: !77, file: !77, line: 361, type: !78, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!77 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!78 = !DISubroutineType(types: !79)
!79 = !{!4, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!82 = !{!83}
!83 = !DILocalVariable(name: "__nptr", arg: 1, scope: !76, file: !77, line: 361, type: !80)
!84 = !DILocation(line: 361, column: 1, scope: !76)
!85 = !DILocation(line: 363, column: 24, scope: !76)
!86 = !DILocation(line: 363, column: 16, scope: !76)
!87 = !DILocation(line: 363, column: 10, scope: !76)
!88 = !DILocation(line: 363, column: 3, scope: !76)
!89 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !90, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !92, !92, !96, !96, !25, !96}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !105, !106, !107, !108, !109, !110, !106}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !92, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !92, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "len", arg: 3, scope: !89, file: !1, line: 55, type: !96)
!101 = !DILocalVariable(name: "tmp", arg: 4, scope: !89, file: !1, line: 54, type: !96)
!102 = !DILocalVariable(name: "vla", arg: 5, scope: !89, type: !25, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: "a", arg: 6, scope: !89, file: !1, line: 58, type: !96)
!104 = !DILocalVariable(name: ".omp.iv", scope: !89, type: !4, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".capture_expr.", scope: !89, type: !4, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "i", scope: !89, type: !4, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".omp.lb", scope: !89, type: !4, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".omp.ub", scope: !89, type: !4, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".omp.stride", scope: !89, type: !4, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: ".omp.is_last", scope: !89, type: !4, flags: DIFlagArtificial)
!111 = !DILocation(line: 0, scope: !89)
!112 = !DILocation(line: 55, column: 7, scope: !89)
!113 = !DILocation(line: 54, column: 7, scope: !89)
!114 = !{!115, !115, i64 0}
!115 = !{!"long", !32, i64 0}
!116 = !DILocation(line: 58, column: 7, scope: !89)
!117 = !DILocation(line: 63, column: 3, scope: !89)
!118 = !DILocation(line: 63, column: 14, scope: !89)
!119 = !DILocation(line: 63, column: 18, scope: !89)
!120 = !DILocation(line: 63, column: 8, scope: !89)
!121 = !DILocation(line: 62, column: 1, scope: !89)
!122 = !DILocation(line: 65, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !89, file: !1, line: 64, column: 3)
!124 = !DILocation(line: 65, column: 10, scope: !123)
!125 = !DILocation(line: 65, column: 15, scope: !123)
!126 = !DILocation(line: 65, column: 14, scope: !123)
!127 = !DILocation(line: 65, column: 9, scope: !123)
!128 = !DILocation(line: 66, column: 12, scope: !123)
!129 = !DILocation(line: 66, column: 7, scope: !123)
!130 = !DILocation(line: 66, column: 5, scope: !123)
!131 = !DILocation(line: 66, column: 10, scope: !123)
!132 = !DILocation(line: 67, column: 3, scope: !123)
!133 = distinct !{!133, !121, !134}
!134 = !DILocation(line: 62, column: 25, scope: !89)
!135 = !DILocation(line: 67, column: 3, scope: !89)
!136 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !90, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !136, type: !92, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !136, type: !92, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "len", arg: 3, scope: !136, type: !96, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "tmp", arg: 4, scope: !136, type: !96, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "vla", arg: 5, scope: !136, type: !25, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: "a", arg: 6, scope: !136, type: !96, flags: DIFlagArtificial)
!144 = !DILocation(line: 0, scope: !136)
!145 = !DILocation(line: 62, column: 1, scope: !136)
!146 = !{!147}
!147 = !{i64 2, i64 -1, i64 -1, i1 true}
