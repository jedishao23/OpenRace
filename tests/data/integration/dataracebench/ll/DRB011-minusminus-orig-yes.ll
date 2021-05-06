; ModuleID = 'DRB011-minusminus-orig-yes.c'
source_filename = "DRB011-minusminus-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [42 x i8] c";DRB011-minusminus-orig-yes.c;main;71;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [43 x i8] c";DRB011-minusminus-orig-yes.c;main;71;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"numNodes2 = %d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %numNodes = alloca i32, align 4
  %numNodes2 = alloca i32, align 4
  %x = alloca [100 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !31
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !34
  %0 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !36
  %1 = bitcast i32* %len to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !38
  store i32 100, i32* %len, align 4, !dbg !38, !tbaa !27
  %2 = bitcast i32* %numNodes to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %numNodes, metadata !21, metadata !DIExpression()), !dbg !40
  %3 = load i32, i32* %len, align 4, !dbg !41, !tbaa !27
  store i32 %3, i32* %numNodes, align 4, !dbg !40, !tbaa !27
  %4 = bitcast i32* %numNodes2 to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %numNodes2, metadata !22, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %numNodes2, align 4, !dbg !42, !tbaa !27
  %5 = bitcast [100 x i32]* %x to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %5) #4, !dbg !43
  call void @llvm.dbg.declare(metadata [100 x i32]* %x, metadata !23, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i, align 4, !dbg !45, !tbaa !27
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !48, !tbaa !27
  %7 = load i32, i32* %len, align 4, !dbg !50, !tbaa !27
  %cmp = icmp slt i32 %6, %7, !dbg !51
  br i1 %cmp, label %for.body, label %for.end, !dbg !52

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !53, !tbaa !27
  %rem = srem i32 %8, 2, !dbg !56
  %cmp1 = icmp eq i32 %rem, 0, !dbg !57
  br i1 %cmp1, label %if.then, label %if.else, !dbg !58

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !59, !tbaa !27
  %idxprom = sext i32 %9 to i64, !dbg !60
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %x, i64 0, i64 %idxprom, !dbg !60
  store i32 5, i32* %arrayidx, align 4, !dbg !61, !tbaa !27
  br label %if.end, !dbg !60

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !62, !tbaa !27
  %idxprom2 = sext i32 %10 to i64, !dbg !63
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %x, i64 0, i64 %idxprom2, !dbg !63
  store i32 -5, i32* %arrayidx3, align 4, !dbg !64, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !65

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !dbg !66, !tbaa !27
  %inc = add nsw i32 %11, 1, !dbg !66
  store i32 %inc, i32* %i, align 4, !dbg !66, !tbaa !27
  br label %for.cond, !dbg !67, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numNodes, [100 x i32]* %x, i32* %numNodes2), !dbg !71
  %12 = load i32, i32* %numNodes2, align 4, !dbg !72, !tbaa !27
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12), !dbg !73
  %13 = bitcast [100 x i32]* %x to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %13) #4, !dbg !74
  %14 = bitcast i32* %numNodes2 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !74
  %15 = bitcast i32* %numNodes to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4, !dbg !74
  %16 = bitcast i32* %len to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !74
  %17 = bitcast i32* %i to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !74
  ret i32 0, !dbg !75
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %numNodes, [100 x i32]* nonnull align 4 dereferenceable(400) %x, i32* nonnull align 4 dereferenceable(4) %numNodes2) #3 !dbg !76 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %x.addr = alloca [100 x i32]*, align 8
  %numNodes2.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !86, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !87, metadata !DIExpression()), !dbg !100
  store i32* %numNodes, i32** %numNodes.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !88, metadata !DIExpression()), !dbg !101
  store [100 x i32]* %x, [100 x i32]** %x.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata [100 x i32]** %x.addr, metadata !89, metadata !DIExpression()), !dbg !102
  store i32* %numNodes2, i32** %numNodes2.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !90, metadata !DIExpression()), !dbg !103
  %0 = load i32*, i32** %numNodes.addr, align 8, !dbg !104, !tbaa !32
  %1 = load [100 x i32]*, [100 x i32]** %x.addr, align 8, !dbg !104, !tbaa !32
  %2 = load i32*, i32** %numNodes2.addr, align 8, !dbg !104, !tbaa !32
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !91, metadata !DIExpression()), !dbg !100
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !93, metadata !DIExpression()), !dbg !100
  %5 = load i32, i32* %0, align 4, !dbg !105, !tbaa !27
  %sub = sub nsw i32 %5, 1, !dbg !106
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !105, !tbaa !27
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !94, metadata !DIExpression()), !dbg !100
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !106, !tbaa !27
  %sub2 = sub i32 %7, -1, !dbg !104
  %div = udiv i32 %sub2, 1, !dbg !104
  %sub3 = sub i32 %div, 1, !dbg !104
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !27
  %8 = bitcast i32* %i to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %i, metadata !95, metadata !DIExpression()), !dbg !100
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !106, !tbaa !27
  store i32 %9, i32* %i, align 4, !dbg !107, !tbaa !27
  %10 = bitcast i32* %i to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !104
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !106, !tbaa !27
  %cmp = icmp sgt i32 %11, -1, !dbg !104
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !104

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !96, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.lb, align 4, !dbg !108, !tbaa !27
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !97, metadata !DIExpression()), !dbg !100
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !27
  store i32 %14, i32* %.omp.ub, align 4, !dbg !108, !tbaa !27
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !98, metadata !DIExpression()), !dbg !100
  store i32 1, i32* %.omp.stride, align 4, !dbg !108, !tbaa !27
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.is_last, align 4, !dbg !108, !tbaa !27
  %17 = bitcast i32* %i4 to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !95, metadata !DIExpression()), !dbg !100
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !104
  %19 = load i32, i32* %18, align 4, !dbg !104, !tbaa !27
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @1, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !109
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !108, !tbaa !27
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !27
  %cmp5 = icmp ugt i32 %20, %21, !dbg !108
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !108

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !27
  br label %cond.end, !dbg !108

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !108, !tbaa !27
  br label %cond.end, !dbg !108

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !108
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !108, !tbaa !27
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !108, !tbaa !27
  store i32 %24, i32* %.omp.iv, align 4, !dbg !108, !tbaa !27
  br label %omp.inner.for.cond, !dbg !104

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !108, !tbaa !27
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !108, !tbaa !27
  %add = add i32 %26, 1, !dbg !104
  %cmp6 = icmp ult i32 %25, %add, !dbg !104
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !104

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !104

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.capture_expr., align 4, !dbg !106, !tbaa !27
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !108, !tbaa !27
  %mul = mul i32 %28, 1, !dbg !107
  %sub7 = sub i32 %27, %mul, !dbg !107
  store i32 %sub7, i32* %i4, align 4, !dbg !107, !tbaa !27
  %29 = load i32, i32* %i4, align 4, !dbg !110, !tbaa !27
  %idxprom = sext i32 %29 to i64, !dbg !113
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %idxprom, !dbg !113
  %30 = load i32, i32* %arrayidx, align 4, !dbg !113, !tbaa !27
  %cmp8 = icmp sle i32 %30, 0, !dbg !114
  br i1 %cmp8, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %omp.inner.for.body
  %31 = load i32, i32* %2, align 4, !dbg !116, !tbaa !27
  %dec = add nsw i32 %31, -1, !dbg !116
  store i32 %dec, i32* %2, align 4, !dbg !116, !tbaa !27
  br label %if.end, !dbg !118

if.end:                                           ; preds = %if.then, %omp.inner.for.body
  br label %omp.body.continue, !dbg !119

omp.body.continue:                                ; preds = %if.end
  br label %omp.inner.for.inc, !dbg !109

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !108, !tbaa !27
  %add9 = add i32 %32, 1, !dbg !104
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !104, !tbaa !27
  br label %omp.inner.for.cond, !dbg !109, !llvm.loop !120

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !109

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !109
  %34 = load i32, i32* %33, align 4, !dbg !109, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %34), !dbg !121
  %35 = bitcast i32* %i4 to i8*, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !109
  %36 = bitcast i32* %.omp.is_last to i8*, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !109
  %37 = bitcast i32* %.omp.stride to i8*, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !109
  %38 = bitcast i32* %.omp.ub to i8*, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !109
  %39 = bitcast i32* %.omp.lb to i8*, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !109
  br label %omp.precond.end, !dbg !109

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %40 = bitcast i32* %.capture_expr.1 to i8*, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !109
  %41 = bitcast i32* %.capture_expr. to i8*, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !109
  %42 = bitcast i32* %.omp.iv to i8*, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !109
  ret void, !dbg !122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %numNodes, [100 x i32]* nonnull align 4 dereferenceable(400) %x, i32* nonnull align 4 dereferenceable(4) %numNodes2) #3 !dbg !123 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %x.addr = alloca [100 x i32]*, align 8
  %numNodes2.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !125, metadata !DIExpression()), !dbg !130
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !126, metadata !DIExpression()), !dbg !130
  store i32* %numNodes, i32** %numNodes.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !127, metadata !DIExpression()), !dbg !130
  store [100 x i32]* %x, [100 x i32]** %x.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata [100 x i32]** %x.addr, metadata !128, metadata !DIExpression()), !dbg !130
  store i32* %numNodes2, i32** %numNodes2.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load i32*, i32** %numNodes.addr, align 8, !dbg !131, !tbaa !32
  %1 = load [100 x i32]*, [100 x i32]** %x.addr, align 8, !dbg !131, !tbaa !32
  %2 = load i32*, i32** %numNodes2.addr, align 8, !dbg !131, !tbaa !32
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131, !tbaa !32
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !131, !tbaa !32
  %5 = load i32*, i32** %numNodes.addr, align 8, !dbg !131, !tbaa !32
  %6 = load [100 x i32]*, [100 x i32]** %x.addr, align 8, !dbg !131, !tbaa !32
  %7 = load i32*, i32** %numNodes2.addr, align 8, !dbg !131, !tbaa !32
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x i32]* %6, i32* %7) #4, !dbg !131
  ret void, !dbg !131
}

; Function Attrs: nounwind
declare !callback !132 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB011-minusminus-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = !{!17, !18, !19, !20, !21, !22, !23}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 54, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 54, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 56, type: !12)
!20 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 57, type: !12)
!21 = !DILocalVariable(name: "numNodes", scope: !9, file: !1, line: 59, type: !12)
!22 = !DILocalVariable(name: "numNodes2", scope: !9, file: !1, line: 59, type: !12)
!23 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 60, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 54, column: 14, scope: !9)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !DILocation(line: 54, column: 26, scope: !9)
!35 = !DILocation(line: 56, column: 3, scope: !9)
!36 = !DILocation(line: 56, column: 7, scope: !9)
!37 = !DILocation(line: 57, column: 3, scope: !9)
!38 = !DILocation(line: 57, column: 7, scope: !9)
!39 = !DILocation(line: 59, column: 3, scope: !9)
!40 = !DILocation(line: 59, column: 7, scope: !9)
!41 = !DILocation(line: 59, column: 16, scope: !9)
!42 = !DILocation(line: 59, column: 21, scope: !9)
!43 = !DILocation(line: 60, column: 3, scope: !9)
!44 = !DILocation(line: 60, column: 7, scope: !9)
!45 = !DILocation(line: 63, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !9, file: !1, line: 63, column: 3)
!47 = !DILocation(line: 63, column: 8, scope: !46)
!48 = !DILocation(line: 63, column: 13, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 63, column: 3)
!50 = !DILocation(line: 63, column: 16, scope: !49)
!51 = !DILocation(line: 63, column: 14, scope: !49)
!52 = !DILocation(line: 63, column: 3, scope: !46)
!53 = !DILocation(line: 65, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 65, column: 9)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 64, column: 3)
!56 = !DILocation(line: 65, column: 10, scope: !54)
!57 = !DILocation(line: 65, column: 12, scope: !54)
!58 = !DILocation(line: 65, column: 9, scope: !55)
!59 = !DILocation(line: 66, column: 9, scope: !54)
!60 = !DILocation(line: 66, column: 7, scope: !54)
!61 = !DILocation(line: 66, column: 11, scope: !54)
!62 = !DILocation(line: 68, column: 9, scope: !54)
!63 = !DILocation(line: 68, column: 7, scope: !54)
!64 = !DILocation(line: 68, column: 11, scope: !54)
!65 = !DILocation(line: 69, column: 3, scope: !55)
!66 = !DILocation(line: 63, column: 22, scope: !49)
!67 = !DILocation(line: 63, column: 3, scope: !49)
!68 = distinct !{!68, !52, !69, !70}
!69 = !DILocation(line: 69, column: 3, scope: !46)
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !DILocation(line: 71, column: 1, scope: !9)
!72 = !DILocation(line: 77, column: 31, scope: !9)
!73 = !DILocation(line: 77, column: 3, scope: !9)
!74 = !DILocation(line: 79, column: 1, scope: !9)
!75 = !DILocation(line: 78, column: 3, scope: !9)
!76 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 72, type: !77, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !79, !79, !83, !84, !83}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!83 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!85 = !{!86, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !98, !99, !95}
!86 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !76, type: !79, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !76, type: !79, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "numNodes", arg: 3, scope: !76, file: !1, line: 59, type: !83)
!89 = !DILocalVariable(name: "x", arg: 4, scope: !76, file: !1, line: 60, type: !84)
!90 = !DILocalVariable(name: "numNodes2", arg: 5, scope: !76, file: !1, line: 59, type: !83)
!91 = !DILocalVariable(name: ".omp.iv", scope: !76, type: !92, flags: DIFlagArtificial)
!92 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!93 = !DILocalVariable(name: ".capture_expr.", scope: !76, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".capture_expr.", scope: !76, type: !92, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "i", scope: !76, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.lb", scope: !76, type: !92, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.ub", scope: !76, type: !92, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.stride", scope: !76, type: !92, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".omp.is_last", scope: !76, type: !12, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !76)
!101 = !DILocation(line: 59, column: 7, scope: !76)
!102 = !DILocation(line: 60, column: 7, scope: !76)
!103 = !DILocation(line: 59, column: 21, scope: !76)
!104 = !DILocation(line: 72, column: 3, scope: !76)
!105 = !DILocation(line: 72, column: 10, scope: !76)
!106 = !DILocation(line: 72, column: 18, scope: !76)
!107 = !DILocation(line: 72, column: 30, scope: !76)
!108 = !DILocation(line: 72, column: 8, scope: !76)
!109 = !DILocation(line: 71, column: 1, scope: !76)
!110 = !DILocation(line: 73, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 73, column: 9)
!112 = distinct !DILexicalBlock(scope: !76, file: !1, line: 72, column: 35)
!113 = !DILocation(line: 73, column: 9, scope: !111)
!114 = !DILocation(line: 73, column: 13, scope: !111)
!115 = !DILocation(line: 73, column: 9, scope: !112)
!116 = !DILocation(line: 74, column: 16, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 73, column: 18)
!118 = !DILocation(line: 75, column: 5, scope: !117)
!119 = !DILocation(line: 76, column: 3, scope: !112)
!120 = distinct !{!120, !109, !121}
!121 = !DILocation(line: 71, column: 25, scope: !76)
!122 = !DILocation(line: 76, column: 3, scope: !76)
!123 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 71, type: !77, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !124)
!124 = !{!125, !126, !127, !128, !129}
!125 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !123, type: !79, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !123, type: !79, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "numNodes", arg: 3, scope: !123, type: !83, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "x", arg: 4, scope: !123, type: !84, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "numNodes2", arg: 5, scope: !123, type: !83, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !123)
!131 = !DILocation(line: 71, column: 1, scope: !123)
!132 = !{!133}
!133 = !{i64 2, i64 -1, i64 -1, i1 true}
