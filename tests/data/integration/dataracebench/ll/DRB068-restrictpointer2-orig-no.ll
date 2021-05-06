; ModuleID = 'DRB068-restrictpointer2-orig-no.c'
source_filename = "DRB068-restrictpointer2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@0 = private unnamed_addr constant [46 x i8] c";DRB068-restrictpointer2-orig-no.c;foo;61;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [47 x i8] c";DRB068-restrictpointer2-orig-no.c;foo;61;26;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"skip the execution due to malloc failures.\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo(i32 %n, i32* noalias %a, i32* noalias %b, i32* noalias %c) #0 !dbg !12 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !17, metadata !DIExpression()), !dbg !26
  store i32* %a, i32** %a.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !18, metadata !DIExpression()), !dbg !29
  store i32* %b, i32** %b.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !19, metadata !DIExpression()), !dbg !30
  store i32* %c, i32** %c.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !20, metadata !DIExpression()), !dbg !31
  %0 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !33
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n.addr, i32** %a.addr, i32** %b.addr, i32** %c.addr), !dbg !34
  %1 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #4, !dbg !35
  ret void, !dbg !35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32** nonnull align 8 dereferenceable(8) %a, i32** nonnull align 8 dereferenceable(8) %b, i32** nonnull align 8 dereferenceable(8) %c) #3 !dbg !36 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %c.addr = alloca i32**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i3 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !46, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !47, metadata !DIExpression()), !dbg !59
  store i32* %n, i32** %n.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !48, metadata !DIExpression()), !dbg !60
  store i32** %a, i32*** %a.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !49, metadata !DIExpression()), !dbg !61
  store i32** %b, i32*** %b.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !50, metadata !DIExpression()), !dbg !62
  store i32** %c, i32*** %c.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !51, metadata !DIExpression()), !dbg !63
  %0 = load i32*, i32** %n.addr, align 8, !dbg !64, !tbaa !27
  %1 = load i32**, i32*** %a.addr, align 8, !dbg !64, !tbaa !27
  %2 = load i32**, i32*** %b.addr, align 8, !dbg !64, !tbaa !27
  %3 = load i32**, i32*** %c.addr, align 8, !dbg !64, !tbaa !27
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !52, metadata !DIExpression()), !dbg !59
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !53, metadata !DIExpression()), !dbg !59
  %6 = load i32, i32* %0, align 4, !dbg !65, !tbaa !22
  store i32 %6, i32* %.capture_expr., align 4, !dbg !65, !tbaa !22
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !53, metadata !DIExpression()), !dbg !59
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !65, !tbaa !22
  %sub = sub nsw i32 %8, 0, !dbg !64
  %div = sdiv i32 %sub, 1, !dbg !64
  %sub2 = sub nsw i32 %div, 1, !dbg !64
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !64, !tbaa !22
  %9 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !54, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %i, align 4, !dbg !66, !tbaa !22
  %10 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !64
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !65, !tbaa !22
  %cmp = icmp slt i32 0, %11, !dbg !64
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !64

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !55, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.lb, align 4, !dbg !67, !tbaa !22
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !56, metadata !DIExpression()), !dbg !59
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !64, !tbaa !22
  store i32 %14, i32* %.omp.ub, align 4, !dbg !67, !tbaa !22
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !57, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !67, !tbaa !22
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !67, !tbaa !22
  %17 = bitcast i32* %i3 to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !54, metadata !DIExpression()), !dbg !59
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !64
  %19 = load i32, i32* %18, align 4, !dbg !64, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !68
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !67, !tbaa !22
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !64, !tbaa !22
  %cmp4 = icmp sgt i32 %20, %21, !dbg !67
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !67

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !64, !tbaa !22
  br label %cond.end, !dbg !67

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !67, !tbaa !22
  br label %cond.end, !dbg !67

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !67
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !67, !tbaa !22
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !67, !tbaa !22
  store i32 %24, i32* %.omp.iv, align 4, !dbg !67, !tbaa !22
  br label %omp.inner.for.cond, !dbg !64

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !67, !tbaa !22
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !67, !tbaa !22
  %cmp5 = icmp sle i32 %25, %26, !dbg !64
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !64

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !64

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !67, !tbaa !22
  %mul = mul nsw i32 %27, 1, !dbg !66
  %add = add nsw i32 0, %mul, !dbg !66
  store i32 %add, i32* %i3, align 4, !dbg !66, !tbaa !22
  %28 = load i32*, i32** %2, align 8, !dbg !69, !tbaa !27
  %29 = load i32, i32* %i3, align 4, !dbg !70, !tbaa !22
  %idxprom = sext i32 %29 to i64, !dbg !69
  %arrayidx = getelementptr inbounds i32, i32* %28, i64 %idxprom, !dbg !69
  %30 = load i32, i32* %arrayidx, align 4, !dbg !69, !tbaa !22
  %31 = load i32*, i32** %3, align 8, !dbg !71, !tbaa !27
  %32 = load i32, i32* %i3, align 4, !dbg !72, !tbaa !22
  %idxprom6 = sext i32 %32 to i64, !dbg !71
  %arrayidx7 = getelementptr inbounds i32, i32* %31, i64 %idxprom6, !dbg !71
  %33 = load i32, i32* %arrayidx7, align 4, !dbg !71, !tbaa !22
  %add8 = add nsw i32 %30, %33, !dbg !73
  %34 = load i32*, i32** %1, align 8, !dbg !74, !tbaa !27
  %35 = load i32, i32* %i3, align 4, !dbg !75, !tbaa !22
  %idxprom9 = sext i32 %35 to i64, !dbg !74
  %arrayidx10 = getelementptr inbounds i32, i32* %34, i64 %idxprom9, !dbg !74
  store i32 %add8, i32* %arrayidx10, align 4, !dbg !76, !tbaa !22
  br label %omp.body.continue, !dbg !74

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !68

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !67, !tbaa !22
  %add11 = add nsw i32 %36, 1, !dbg !64
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !64, !tbaa !22
  br label %omp.inner.for.cond, !dbg !68, !llvm.loop !77

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !68

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !68
  %38 = load i32, i32* %37, align 4, !dbg !68, !tbaa !22
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %38), !dbg !78
  %39 = bitcast i32* %i3 to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !68
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !68
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !68
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !68
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !68
  br label %omp.precond.end, !dbg !68

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = bitcast i32* %.capture_expr.1 to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !68
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !68
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !68
  ret void, !dbg !79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32** nonnull align 8 dereferenceable(8) %a, i32** nonnull align 8 dereferenceable(8) %b, i32** nonnull align 8 dereferenceable(8) %c) #3 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %c.addr = alloca i32**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !82, metadata !DIExpression()), !dbg !88
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !83, metadata !DIExpression()), !dbg !88
  store i32* %n, i32** %n.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !84, metadata !DIExpression()), !dbg !88
  store i32** %a, i32*** %a.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !85, metadata !DIExpression()), !dbg !88
  store i32** %b, i32*** %b.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !86, metadata !DIExpression()), !dbg !88
  store i32** %c, i32*** %c.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !87, metadata !DIExpression()), !dbg !88
  %0 = load i32*, i32** %n.addr, align 8, !dbg !89, !tbaa !27
  %1 = load i32**, i32*** %a.addr, align 8, !dbg !89, !tbaa !27
  %2 = load i32**, i32*** %b.addr, align 8, !dbg !89, !tbaa !27
  %3 = load i32**, i32*** %c.addr, align 8, !dbg !89, !tbaa !27
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89, !tbaa !27
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !89, !tbaa !27
  %6 = load i32*, i32** %n.addr, align 8, !dbg !89, !tbaa !27
  %7 = load i32**, i32*** %a.addr, align 8, !dbg !89, !tbaa !27
  %8 = load i32**, i32*** %b.addr, align 8, !dbg !89, !tbaa !27
  %9 = load i32**, i32*** %c.addr, align 8, !dbg !89, !tbaa !27
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32** %7, i32** %8, i32** %9) #4, !dbg !89
  ret void, !dbg !89
}

; Function Attrs: nounwind
declare !callback !90 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !92 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %c = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %n to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %n, metadata !96, metadata !DIExpression()), !dbg !101
  store i32 1000, i32* %n, align 4, !dbg !101, !tbaa !22
  %1 = bitcast i32** %a to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32** %a, metadata !97, metadata !DIExpression()), !dbg !103
  %2 = bitcast i32** %b to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32** %b, metadata !98, metadata !DIExpression()), !dbg !104
  %3 = bitcast i32** %c to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32** %c, metadata !99, metadata !DIExpression()), !dbg !105
  %4 = load i32, i32* %n, align 4, !dbg !106, !tbaa !22
  %conv = sext i32 %4 to i64, !dbg !106
  %mul = mul i64 %conv, 4, !dbg !107
  %call = call noalias i8* @malloc(i64 %mul) #4, !dbg !108
  %5 = bitcast i8* %call to i32*, !dbg !109
  store i32* %5, i32** %a, align 8, !dbg !110, !tbaa !27
  %6 = load i32*, i32** %a, align 8, !dbg !111, !tbaa !27
  %cmp = icmp eq i32* %6, null, !dbg !113
  br i1 %cmp, label %if.then, label %if.end, !dbg !114

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !115, !tbaa !27
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)), !dbg !117
  store i32 1, i32* %retval, align 4, !dbg !118
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !118

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %n, align 4, !dbg !119, !tbaa !22
  %conv3 = sext i32 %8 to i64, !dbg !119
  %mul4 = mul i64 %conv3, 4, !dbg !120
  %call5 = call noalias i8* @malloc(i64 %mul4) #4, !dbg !121
  %9 = bitcast i8* %call5 to i32*, !dbg !122
  store i32* %9, i32** %b, align 8, !dbg !123, !tbaa !27
  %10 = load i32*, i32** %b, align 8, !dbg !124, !tbaa !27
  %cmp6 = icmp eq i32* %10, null, !dbg !126
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !127

if.then8:                                         ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !128, !tbaa !27
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)), !dbg !130
  store i32 1, i32* %retval, align 4, !dbg !131
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !131

if.end10:                                         ; preds = %if.end
  %12 = load i32, i32* %n, align 4, !dbg !132, !tbaa !22
  %conv11 = sext i32 %12 to i64, !dbg !132
  %mul12 = mul i64 %conv11, 4, !dbg !133
  %call13 = call noalias i8* @malloc(i64 %mul12) #4, !dbg !134
  %13 = bitcast i8* %call13 to i32*, !dbg !135
  store i32* %13, i32** %c, align 8, !dbg !136, !tbaa !27
  %14 = load i32*, i32** %c, align 8, !dbg !137, !tbaa !27
  %cmp14 = icmp eq i32* %14, null, !dbg !139
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !140

if.then16:                                        ; preds = %if.end10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !141, !tbaa !27
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)), !dbg !143
  store i32 1, i32* %retval, align 4, !dbg !144
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !144

if.end18:                                         ; preds = %if.end10
  %16 = load i32, i32* %n, align 4, !dbg !145, !tbaa !22
  %17 = load i32*, i32** %a, align 8, !dbg !146, !tbaa !27
  %18 = load i32*, i32** %b, align 8, !dbg !147, !tbaa !27
  %19 = load i32*, i32** %c, align 8, !dbg !148, !tbaa !27
  call void @foo(i32 %16, i32* %17, i32* %18, i32* %19), !dbg !149
  %20 = load i32*, i32** %a, align 8, !dbg !150, !tbaa !27
  %21 = bitcast i32* %20 to i8*, !dbg !150
  call void @free(i8* %21) #4, !dbg !151
  %22 = load i32*, i32** %b, align 8, !dbg !152, !tbaa !27
  %23 = bitcast i32* %22 to i8*, !dbg !152
  call void @free(i8* %23) #4, !dbg !153
  %24 = load i32*, i32** %c, align 8, !dbg !154, !tbaa !27
  %25 = bitcast i32* %24 to i8*, !dbg !154
  call void @free(i8* %25) #4, !dbg !155
  store i32 0, i32* %retval, align 4, !dbg !156
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !156

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then8, %if.then
  %26 = bitcast i32** %c to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26) #4, !dbg !157
  %27 = bitcast i32** %b to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #4, !dbg !157
  %28 = bitcast i32** %a to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #4, !dbg !157
  %29 = bitcast i32* %n to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !157
  %30 = load i32, i32* %retval, align 4, !dbg !157
  ret i32 %30, !dbg !157
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #6

; Function Attrs: nounwind
declare !dbg !158 void @free(i8*) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB068-restrictpointer2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{!"clang version 11.1.0"}
!12 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 58, type: !13, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !5, !15, !15, !15}
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(name: "n", arg: 1, scope: !12, file: !1, line: 58, type: !5)
!18 = !DILocalVariable(name: "a", arg: 2, scope: !12, file: !1, line: 58, type: !15)
!19 = !DILocalVariable(name: "b", arg: 3, scope: !12, file: !1, line: 58, type: !15)
!20 = !DILocalVariable(name: "c", arg: 4, scope: !12, file: !1, line: 58, type: !15)
!21 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 60, type: !5)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 58, column: 14, scope: !12)
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !DILocation(line: 58, column: 33, scope: !12)
!30 = !DILocation(line: 58, column: 51, scope: !12)
!31 = !DILocation(line: 58, column: 70, scope: !12)
!32 = !DILocation(line: 60, column: 3, scope: !12)
!33 = !DILocation(line: 60, column: 7, scope: !12)
!34 = !DILocation(line: 61, column: 1, scope: !12)
!35 = !DILocation(line: 64, column: 1, scope: !12)
!36 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !37, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39, !43, !44, !44, !44}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!43 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !53, !54, !55, !56, !57, !58, !54}
!46 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !36, type: !39, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "n", arg: 3, scope: !36, file: !1, line: 58, type: !43)
!49 = !DILocalVariable(name: "a", arg: 4, scope: !36, file: !1, line: 58, type: !44)
!50 = !DILocalVariable(name: "b", arg: 5, scope: !36, file: !1, line: 58, type: !44)
!51 = !DILocalVariable(name: "c", arg: 6, scope: !36, file: !1, line: 58, type: !44)
!52 = !DILocalVariable(name: ".omp.iv", scope: !36, type: !5, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".capture_expr.", scope: !36, type: !5, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: "i", scope: !36, type: !5, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.lb", scope: !36, type: !5, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.ub", scope: !36, type: !5, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".omp.stride", scope: !36, type: !5, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.is_last", scope: !36, type: !5, flags: DIFlagArtificial)
!59 = !DILocation(line: 0, scope: !36)
!60 = !DILocation(line: 58, column: 14, scope: !36)
!61 = !DILocation(line: 58, column: 33, scope: !36)
!62 = !DILocation(line: 58, column: 51, scope: !36)
!63 = !DILocation(line: 58, column: 70, scope: !36)
!64 = !DILocation(line: 62, column: 3, scope: !36)
!65 = !DILocation(line: 62, column: 19, scope: !36)
!66 = !DILocation(line: 62, column: 22, scope: !36)
!67 = !DILocation(line: 62, column: 8, scope: !36)
!68 = !DILocation(line: 61, column: 1, scope: !36)
!69 = !DILocation(line: 63, column: 12, scope: !36)
!70 = !DILocation(line: 63, column: 14, scope: !36)
!71 = !DILocation(line: 63, column: 19, scope: !36)
!72 = !DILocation(line: 63, column: 21, scope: !36)
!73 = !DILocation(line: 63, column: 17, scope: !36)
!74 = !DILocation(line: 63, column: 5, scope: !36)
!75 = !DILocation(line: 63, column: 7, scope: !36)
!76 = !DILocation(line: 63, column: 10, scope: !36)
!77 = distinct !{!77, !68, !78}
!78 = !DILocation(line: 61, column: 26, scope: !36)
!79 = !DILocation(line: 63, column: 22, scope: !36)
!80 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !37, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!81 = !{!82, !83, !84, !85, !86, !87}
!82 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !39, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !39, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "n", arg: 3, scope: !80, type: !43, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "a", arg: 4, scope: !80, type: !44, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "b", arg: 5, scope: !80, type: !44, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "c", arg: 6, scope: !80, type: !44, flags: DIFlagArtificial)
!88 = !DILocation(line: 0, scope: !80)
!89 = !DILocation(line: 61, column: 1, scope: !80)
!90 = !{!91}
!91 = !{i64 2, i64 -1, i64 -1, i1 true}
!92 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !93, scopeLine: 67, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!5}
!95 = !{!96, !97, !98, !99}
!96 = !DILocalVariable(name: "n", scope: !92, file: !1, line: 68, type: !5)
!97 = !DILocalVariable(name: "a", scope: !92, file: !1, line: 69, type: !4)
!98 = !DILocalVariable(name: "b", scope: !92, file: !1, line: 69, type: !4)
!99 = !DILocalVariable(name: "c", scope: !92, file: !1, line: 69, type: !4)
!100 = !DILocation(line: 68, column: 3, scope: !92)
!101 = !DILocation(line: 68, column: 7, scope: !92)
!102 = !DILocation(line: 69, column: 3, scope: !92)
!103 = !DILocation(line: 69, column: 9, scope: !92)
!104 = !DILocation(line: 69, column: 14, scope: !92)
!105 = !DILocation(line: 69, column: 18, scope: !92)
!106 = !DILocation(line: 71, column: 22, scope: !92)
!107 = !DILocation(line: 71, column: 23, scope: !92)
!108 = !DILocation(line: 71, column: 14, scope: !92)
!109 = !DILocation(line: 71, column: 7, scope: !92)
!110 = !DILocation(line: 71, column: 5, scope: !92)
!111 = !DILocation(line: 72, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !92, file: !1, line: 72, column: 7)
!113 = !DILocation(line: 72, column: 9, scope: !112)
!114 = !DILocation(line: 72, column: 7, scope: !92)
!115 = !DILocation(line: 74, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 73, column: 3)
!117 = !DILocation(line: 74, column: 5, scope: !116)
!118 = !DILocation(line: 75, column: 5, scope: !116)
!119 = !DILocation(line: 78, column: 22, scope: !92)
!120 = !DILocation(line: 78, column: 23, scope: !92)
!121 = !DILocation(line: 78, column: 14, scope: !92)
!122 = !DILocation(line: 78, column: 7, scope: !92)
!123 = !DILocation(line: 78, column: 5, scope: !92)
!124 = !DILocation(line: 79, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !92, file: !1, line: 79, column: 7)
!126 = !DILocation(line: 79, column: 9, scope: !125)
!127 = !DILocation(line: 79, column: 7, scope: !92)
!128 = !DILocation(line: 81, column: 14, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 80, column: 3)
!130 = !DILocation(line: 81, column: 5, scope: !129)
!131 = !DILocation(line: 82, column: 5, scope: !129)
!132 = !DILocation(line: 85, column: 22, scope: !92)
!133 = !DILocation(line: 85, column: 23, scope: !92)
!134 = !DILocation(line: 85, column: 14, scope: !92)
!135 = !DILocation(line: 85, column: 7, scope: !92)
!136 = !DILocation(line: 85, column: 5, scope: !92)
!137 = !DILocation(line: 86, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !92, file: !1, line: 86, column: 7)
!139 = !DILocation(line: 86, column: 9, scope: !138)
!140 = !DILocation(line: 86, column: 7, scope: !92)
!141 = !DILocation(line: 88, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 87, column: 3)
!143 = !DILocation(line: 88, column: 5, scope: !142)
!144 = !DILocation(line: 89, column: 5, scope: !142)
!145 = !DILocation(line: 92, column: 8, scope: !92)
!146 = !DILocation(line: 92, column: 11, scope: !92)
!147 = !DILocation(line: 92, column: 14, scope: !92)
!148 = !DILocation(line: 92, column: 16, scope: !92)
!149 = !DILocation(line: 92, column: 3, scope: !92)
!150 = !DILocation(line: 94, column: 9, scope: !92)
!151 = !DILocation(line: 94, column: 3, scope: !92)
!152 = !DILocation(line: 95, column: 9, scope: !92)
!153 = !DILocation(line: 95, column: 3, scope: !92)
!154 = !DILocation(line: 96, column: 9, scope: !92)
!155 = !DILocation(line: 96, column: 3, scope: !92)
!156 = !DILocation(line: 97, column: 3, scope: !92)
!157 = !DILocation(line: 98, column: 1, scope: !92)
!158 = !DISubprogram(name: "free", scope: !159, file: !159, line: 565, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!159 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
