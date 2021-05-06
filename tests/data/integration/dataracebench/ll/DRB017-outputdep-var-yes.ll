; ModuleID = 'DRB017-outputdep-var-yes.c'
source_filename = "DRB017-outputdep-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [40 x i8] c";DRB017-outputdep-var-yes.c;main;68;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [41 x i8] c";DRB017-outputdep-var-yes.c;main;68;26;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"x=%d, a[0]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !34
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !37
  %0 = bitcast i32* %len to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %len, metadata !21, metadata !DIExpression()), !dbg !39
  store i32 100, i32* %len, align 4, !dbg !39, !tbaa !30
  %1 = load i32, i32* %argc.addr, align 4, !dbg !40, !tbaa !30
  %cmp = icmp sgt i32 %1, 1, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8, !dbg !44, !tbaa !35
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1, !dbg !44
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !44, !tbaa !35
  %call = call i32 @atoi(i8* %3) #8, !dbg !45
  store i32 %call, i32* %len, align 4, !dbg !46, !tbaa !30
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %len, align 4, !dbg !48, !tbaa !30
  %5 = zext i32 %4 to i64, !dbg !49
  %6 = call i8* @llvm.stacksave(), !dbg !49
  store i8* %6, i8** %saved_stack, align 8, !dbg !49
  %vla = alloca i32, i64 %5, align 16, !dbg !49
  store i64 %5, i64* %__vla_expr0, align 8, !dbg !49
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !22, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !24, metadata !DIExpression()), !dbg !51
  %7 = bitcast i32* %i to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !DIExpression()), !dbg !53
  %8 = bitcast i32* %x to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %x, metadata !29, metadata !DIExpression()), !dbg !54
  store i32 10, i32* %x, align 4, !dbg !54, !tbaa !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %5, i32* %vla, i32* %x), !dbg !55
  %9 = load i32, i32* %x, align 4, !dbg !56, !tbaa !30
  %arrayidx1 = getelementptr inbounds i32, i32* %vla, i64 0, !dbg !57
  %10 = load i32, i32* %arrayidx1, align 16, !dbg !57, !tbaa !30
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10), !dbg !58
  store i32 0, i32* %retval, align 4, !dbg !59
  %11 = bitcast i32* %x to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !60
  %12 = bitcast i32* %i to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !60
  %13 = load i8*, i8** %saved_stack, align 8, !dbg !60
  call void @llvm.stackrestore(i8* %13), !dbg !60
  %14 = bitcast i32* %len to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !60
  %15 = load i32, i32* %retval, align 4, !dbg !60
  ret i32 %15, !dbg !60
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !61 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !70, !tbaa !35
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !71
  %conv = trunc i64 %call to i32, !dbg !72
  ret i32 %conv, !dbg !73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a, i32* nonnull align 4 dereferenceable(4) %x) #5 !dbg !74 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !84, metadata !DIExpression()), !dbg !96
  store i32* %len, i32** %len.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !85, metadata !DIExpression()), !dbg !97
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !98
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !86, metadata !DIExpression()), !dbg !96
  store i32* %a, i32** %a.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !87, metadata !DIExpression()), !dbg !100
  store i32* %x, i32** %x.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !88, metadata !DIExpression()), !dbg !101
  %0 = load i32*, i32** %len.addr, align 8, !dbg !102, !tbaa !35
  %1 = load i64, i64* %vla.addr, align 8, !dbg !102, !tbaa !98
  %2 = load i32*, i32** %a.addr, align 8, !dbg !102, !tbaa !35
  %3 = load i32*, i32** %x.addr, align 8, !dbg !102, !tbaa !35
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !89, metadata !DIExpression()), !dbg !96
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !90, metadata !DIExpression()), !dbg !96
  %6 = load i32, i32* %0, align 4, !dbg !103, !tbaa !30
  store i32 %6, i32* %.capture_expr., align 4, !dbg !103, !tbaa !30
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !90, metadata !DIExpression()), !dbg !96
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !30
  %sub = sub nsw i32 %8, 0, !dbg !102
  %div = sdiv i32 %sub, 1, !dbg !102
  %sub2 = sub nsw i32 %div, 1, !dbg !102
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !30
  %9 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %i, align 4, !dbg !104, !tbaa !30
  %10 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !102
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !30
  %cmp = icmp slt i32 0, %11, !dbg !102
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !102

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !92, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %.omp.lb, align 4, !dbg !105, !tbaa !30
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !93, metadata !DIExpression()), !dbg !96
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !30
  store i32 %14, i32* %.omp.ub, align 4, !dbg !105, !tbaa !30
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !94, metadata !DIExpression()), !dbg !96
  store i32 1, i32* %.omp.stride, align 4, !dbg !105, !tbaa !30
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !95, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %.omp.is_last, align 4, !dbg !105, !tbaa !30
  %17 = bitcast i32* %i3 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !91, metadata !DIExpression()), !dbg !96
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %19 = load i32, i32* %18, align 4, !dbg !102, !tbaa !30
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !106
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !30
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !30
  %cmp4 = icmp sgt i32 %20, %21, !dbg !105
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !105

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !30
  br label %cond.end, !dbg !105

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !30
  br label %cond.end, !dbg !105

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !105
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !105, !tbaa !30
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !105, !tbaa !30
  store i32 %24, i32* %.omp.iv, align 4, !dbg !105, !tbaa !30
  br label %omp.inner.for.cond, !dbg !102

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !30
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !30
  %cmp5 = icmp sle i32 %25, %26, !dbg !102
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !102

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !102

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !30
  %mul = mul nsw i32 %27, 1, !dbg !104
  %add = add nsw i32 0, %mul, !dbg !104
  store i32 %add, i32* %i3, align 4, !dbg !104, !tbaa !30
  %28 = load i32, i32* %3, align 4, !dbg !107, !tbaa !30
  %29 = load i32, i32* %i3, align 4, !dbg !109, !tbaa !30
  %idxprom = sext i32 %29 to i64, !dbg !110
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !110
  store i32 %28, i32* %arrayidx, align 4, !dbg !111, !tbaa !30
  %30 = load i32, i32* %i3, align 4, !dbg !112, !tbaa !30
  store i32 %30, i32* %3, align 4, !dbg !113, !tbaa !30
  br label %omp.body.continue, !dbg !114

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !106

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !30
  %add6 = add nsw i32 %31, 1, !dbg !102
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !102, !tbaa !30
  br label %omp.inner.for.cond, !dbg !106, !llvm.loop !115

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !106

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %32 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106
  %33 = load i32, i32* %32, align 4, !dbg !106, !tbaa !30
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %33), !dbg !116
  %34 = bitcast i32* %i3 to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !106
  %35 = bitcast i32* %.omp.is_last to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !106
  %36 = bitcast i32* %.omp.stride to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !106
  %37 = bitcast i32* %.omp.ub to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !106
  %38 = bitcast i32* %.omp.lb to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !106
  br label %omp.precond.end, !dbg !106

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %39 = bitcast i32* %.capture_expr.1 to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !106
  %40 = bitcast i32* %.capture_expr. to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !106
  %41 = bitcast i32* %.omp.iv to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !106
  ret void, !dbg !117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a, i32* nonnull align 4 dereferenceable(4) %x) #5 !dbg !118 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !126
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !121, metadata !DIExpression()), !dbg !126
  store i32* %len, i32** %len.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !122, metadata !DIExpression()), !dbg !126
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !98
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !123, metadata !DIExpression()), !dbg !126
  store i32* %a, i32** %a.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !124, metadata !DIExpression()), !dbg !126
  store i32* %x, i32** %x.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = load i32*, i32** %len.addr, align 8, !dbg !127, !tbaa !35
  %1 = load i64, i64* %vla.addr, align 8, !dbg !127, !tbaa !98
  %2 = load i32*, i32** %a.addr, align 8, !dbg !127, !tbaa !35
  %3 = load i32*, i32** %x.addr, align 8, !dbg !127, !tbaa !35
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !127, !tbaa !35
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !127, !tbaa !35
  %6 = load i32*, i32** %len.addr, align 8, !dbg !127, !tbaa !35
  %7 = load i32*, i32** %a.addr, align 8, !dbg !127, !tbaa !35
  %8 = load i32*, i32** %x.addr, align 8, !dbg !127, !tbaa !35
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i32* %7, i32* %8) #4, !dbg !127
  ret void, !dbg !127
}

; Function Attrs: nounwind
declare !callback !128 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #7

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB017-outputdep-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !16, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !24, !28, !29}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 58, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 58, type: !5)
!21 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 60, type: !4)
!22 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !23, flags: DIFlagArtificial)
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DILocalVariable(name: "a", scope: !15, file: !1, line: 65, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: !22)
!28 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 66, type: !4)
!29 = !DILocalVariable(name: "x", scope: !15, file: !1, line: 66, type: !4)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 58, column: 14, scope: !15)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !32, i64 0}
!37 = !DILocation(line: 58, column: 26, scope: !15)
!38 = !DILocation(line: 60, column: 3, scope: !15)
!39 = !DILocation(line: 60, column: 7, scope: !15)
!40 = !DILocation(line: 62, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !15, file: !1, line: 62, column: 7)
!42 = !DILocation(line: 62, column: 11, scope: !41)
!43 = !DILocation(line: 62, column: 7, scope: !15)
!44 = !DILocation(line: 63, column: 16, scope: !41)
!45 = !DILocation(line: 63, column: 11, scope: !41)
!46 = !DILocation(line: 63, column: 9, scope: !41)
!47 = !DILocation(line: 63, column: 5, scope: !41)
!48 = !DILocation(line: 65, column: 9, scope: !15)
!49 = !DILocation(line: 65, column: 3, scope: !15)
!50 = !DILocation(line: 0, scope: !15)
!51 = !DILocation(line: 65, column: 7, scope: !15)
!52 = !DILocation(line: 66, column: 3, scope: !15)
!53 = !DILocation(line: 66, column: 7, scope: !15)
!54 = !DILocation(line: 66, column: 9, scope: !15)
!55 = !DILocation(line: 68, column: 1, scope: !15)
!56 = !DILocation(line: 74, column: 28, scope: !15)
!57 = !DILocation(line: 74, column: 30, scope: !15)
!58 = !DILocation(line: 74, column: 3, scope: !15)
!59 = !DILocation(line: 75, column: 3, scope: !15)
!60 = !DILocation(line: 76, column: 1, scope: !15)
!61 = distinct !DISubprogram(name: "atoi", scope: !62, file: !62, line: 361, type: !63, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!62 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!63 = !DISubroutineType(types: !64)
!64 = !{!4, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!67 = !{!68}
!68 = !DILocalVariable(name: "__nptr", arg: 1, scope: !61, file: !62, line: 361, type: !65)
!69 = !DILocation(line: 361, column: 1, scope: !61)
!70 = !DILocation(line: 363, column: 24, scope: !61)
!71 = !DILocation(line: 363, column: 16, scope: !61)
!72 = !DILocation(line: 363, column: 10, scope: !61)
!73 = !DILocation(line: 363, column: 3, scope: !61)
!74 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 69, type: !75, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !77, !81, !23, !81, !81}
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!81 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !90, !91, !92, !93, !94, !95, !91}
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !74, type: !77, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !74, type: !77, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "len", arg: 3, scope: !74, file: !1, line: 60, type: !81)
!86 = !DILocalVariable(name: "vla", arg: 4, scope: !74, type: !23, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "a", arg: 5, scope: !74, file: !1, line: 65, type: !81)
!88 = !DILocalVariable(name: "x", arg: 6, scope: !74, file: !1, line: 66, type: !81)
!89 = !DILocalVariable(name: ".omp.iv", scope: !74, type: !4, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".capture_expr.", scope: !74, type: !4, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "i", scope: !74, type: !4, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.lb", scope: !74, type: !4, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.ub", scope: !74, type: !4, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.stride", scope: !74, type: !4, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.is_last", scope: !74, type: !4, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !74)
!97 = !DILocation(line: 60, column: 7, scope: !74)
!98 = !{!99, !99, i64 0}
!99 = !{!"long", !32, i64 0}
!100 = !DILocation(line: 65, column: 7, scope: !74)
!101 = !DILocation(line: 66, column: 9, scope: !74)
!102 = !DILocation(line: 69, column: 3, scope: !74)
!103 = !DILocation(line: 69, column: 14, scope: !74)
!104 = !DILocation(line: 69, column: 18, scope: !74)
!105 = !DILocation(line: 69, column: 8, scope: !74)
!106 = !DILocation(line: 68, column: 1, scope: !74)
!107 = !DILocation(line: 71, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !74, file: !1, line: 70, column: 3)
!109 = !DILocation(line: 71, column: 7, scope: !108)
!110 = !DILocation(line: 71, column: 5, scope: !108)
!111 = !DILocation(line: 71, column: 10, scope: !108)
!112 = !DILocation(line: 72, column: 7, scope: !108)
!113 = !DILocation(line: 72, column: 6, scope: !108)
!114 = !DILocation(line: 73, column: 3, scope: !108)
!115 = distinct !{!115, !106, !116}
!116 = !DILocation(line: 68, column: 26, scope: !74)
!117 = !DILocation(line: 73, column: 3, scope: !74)
!118 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 68, type: !75, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !118, type: !77, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !118, type: !77, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "len", arg: 3, scope: !118, type: !81, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "vla", arg: 4, scope: !118, type: !23, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "a", arg: 5, scope: !118, type: !81, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "x", arg: 6, scope: !118, type: !81, flags: DIFlagArtificial)
!126 = !DILocation(line: 0, scope: !118)
!127 = !DILocation(line: 68, column: 1, scope: !118)
!128 = !{!129}
!129 = !{i64 2, i64 -1, i64 -1, i1 true}
