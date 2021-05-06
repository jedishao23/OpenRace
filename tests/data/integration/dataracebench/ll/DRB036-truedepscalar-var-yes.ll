; ModuleID = 'DRB036-truedepscalar-var-yes.c'
source_filename = "DRB036-truedepscalar-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [44 x i8] c";DRB036-truedepscalar-var-yes.c;main;63;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [45 x i8] c";DRB036-truedepscalar-var-yes.c;main;63;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8

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
  store i32 10, i32* %tmp, align 4, !dbg !42, !tbaa !30
  %2 = bitcast i32* %len to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %len, metadata !23, metadata !DIExpression()), !dbg !44
  store i32 100, i32* %len, align 4, !dbg !44, !tbaa !30
  %3 = load i32, i32* %argc.addr, align 4, !dbg !45, !tbaa !30
  %cmp = icmp sgt i32 %3, 1, !dbg !47
  br i1 %cmp, label %if.then, label %if.end, !dbg !48

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !49, !tbaa !35
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !49
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !49, !tbaa !35
  %call = call i32 @atoi(i8* %5) #7, !dbg !50
  store i32 %call, i32* %len, align 4, !dbg !51, !tbaa !30
  br label %if.end, !dbg !52

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %len, align 4, !dbg !53, !tbaa !30
  %7 = zext i32 %6 to i64, !dbg !54
  %8 = call i8* @llvm.stacksave(), !dbg !54
  store i8* %8, i8** %saved_stack, align 8, !dbg !54
  %vla = alloca i32, i64 %7, align 16, !dbg !54
  store i64 %7, i64* %__vla_expr0, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !24, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !26, metadata !DIExpression()), !dbg !56
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %7, i32* %vla, i32* %tmp), !dbg !57
  store i32 0, i32* %retval, align 4, !dbg !58
  %9 = load i8*, i8** %saved_stack, align 8, !dbg !59
  call void @llvm.stackrestore(i8* %9), !dbg !59
  %10 = bitcast i32* %len to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !59
  %11 = bitcast i32* %tmp to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !59
  %12 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !59
  %13 = load i32, i32* %retval, align 4, !dbg !59
  ret i32 %13, !dbg !59
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !60 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !69, !tbaa !35
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !70
  %conv = trunc i64 %call to i32, !dbg !71
  ret i32 %conv, !dbg !72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a, i32* nonnull align 4 dereferenceable(4) %tmp) #5 !dbg !73 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !82, metadata !DIExpression()), !dbg !95
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !83, metadata !DIExpression()), !dbg !95
  store i32* %len, i32** %len.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !84, metadata !DIExpression()), !dbg !96
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !97
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !85, metadata !DIExpression()), !dbg !95
  store i32* %a, i32** %a.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !86, metadata !DIExpression()), !dbg !99
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !87, metadata !DIExpression()), !dbg !100
  %0 = load i32*, i32** %len.addr, align 8, !dbg !101, !tbaa !35
  %1 = load i64, i64* %vla.addr, align 8, !dbg !101, !tbaa !97
  %2 = load i32*, i32** %a.addr, align 8, !dbg !101, !tbaa !35
  %3 = load i32*, i32** %tmp.addr, align 8, !dbg !101, !tbaa !35
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !88, metadata !DIExpression()), !dbg !95
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !89, metadata !DIExpression()), !dbg !95
  %6 = load i32, i32* %0, align 4, !dbg !102, !tbaa !30
  store i32 %6, i32* %.capture_expr., align 4, !dbg !102, !tbaa !30
  %7 = bitcast i32* %.capture_expr.2 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !89, metadata !DIExpression()), !dbg !95
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !102, !tbaa !30
  %sub = sub nsw i32 %8, 0, !dbg !101
  %div = sdiv i32 %sub, 1, !dbg !101
  %sub3 = sub nsw i32 %div, 1, !dbg !101
  store i32 %sub3, i32* %.capture_expr.2, align 4, !dbg !101, !tbaa !30
  %9 = bitcast i32* %i to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %i, metadata !90, metadata !DIExpression()), !dbg !95
  store i32 0, i32* %i, align 4, !dbg !103, !tbaa !30
  %10 = bitcast i32* %i to i8*, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !101
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !102, !tbaa !30
  %cmp = icmp slt i32 0, %11, !dbg !101
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !101

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !91, metadata !DIExpression()), !dbg !95
  store i32 0, i32* %.omp.lb, align 4, !dbg !104, !tbaa !30
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !92, metadata !DIExpression()), !dbg !95
  %14 = load i32, i32* %.capture_expr.2, align 4, !dbg !101, !tbaa !30
  store i32 %14, i32* %.omp.ub, align 4, !dbg !104, !tbaa !30
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !93, metadata !DIExpression()), !dbg !95
  store i32 1, i32* %.omp.stride, align 4, !dbg !104, !tbaa !30
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !94, metadata !DIExpression()), !dbg !95
  store i32 0, i32* %.omp.is_last, align 4, !dbg !104, !tbaa !30
  %17 = bitcast i32* %i4 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !90, metadata !DIExpression()), !dbg !95
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101
  %19 = load i32, i32* %18, align 4, !dbg !101, !tbaa !30
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !105
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !104, !tbaa !30
  %21 = load i32, i32* %.capture_expr.2, align 4, !dbg !101, !tbaa !30
  %cmp5 = icmp sgt i32 %20, %21, !dbg !104
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !104

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.2, align 4, !dbg !101, !tbaa !30
  br label %cond.end, !dbg !104

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !104, !tbaa !30
  br label %cond.end, !dbg !104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !104
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !104, !tbaa !30
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !104, !tbaa !30
  store i32 %24, i32* %.omp.iv, align 4, !dbg !104, !tbaa !30
  br label %omp.inner.for.cond, !dbg !101

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !104, !tbaa !30
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !104, !tbaa !30
  %cmp6 = icmp sle i32 %25, %26, !dbg !101
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !101

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !101

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !104, !tbaa !30
  %mul = mul nsw i32 %27, 1, !dbg !103
  %add = add nsw i32 0, %mul, !dbg !103
  store i32 %add, i32* %i4, align 4, !dbg !103, !tbaa !30
  %28 = load i32, i32* %3, align 4, !dbg !106, !tbaa !30
  %29 = load i32, i32* %i4, align 4, !dbg !108, !tbaa !30
  %idxprom = sext i32 %29 to i64, !dbg !109
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !109
  store i32 %28, i32* %arrayidx, align 4, !dbg !110, !tbaa !30
  %30 = load i32, i32* %i4, align 4, !dbg !111, !tbaa !30
  %idxprom7 = sext i32 %30 to i64, !dbg !112
  %arrayidx8 = getelementptr inbounds i32, i32* %2, i64 %idxprom7, !dbg !112
  %31 = load i32, i32* %arrayidx8, align 4, !dbg !112, !tbaa !30
  %32 = load i32, i32* %i4, align 4, !dbg !113, !tbaa !30
  %add9 = add nsw i32 %31, %32, !dbg !114
  store i32 %add9, i32* %3, align 4, !dbg !115, !tbaa !30
  br label %omp.body.continue, !dbg !116

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !105

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !104, !tbaa !30
  %add10 = add nsw i32 %33, 1, !dbg !101
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !101, !tbaa !30
  br label %omp.inner.for.cond, !dbg !105, !llvm.loop !117

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !105

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !105
  %35 = load i32, i32* %34, align 4, !dbg !105, !tbaa !30
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %35), !dbg !118
  %36 = bitcast i32* %i4 to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !105
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !105
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !105
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !105
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !105
  br label %omp.precond.end, !dbg !105

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.2 to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !105
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !105
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !105
  ret void, !dbg !119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a, i32* nonnull align 4 dereferenceable(4) %tmp) #5 !dbg !120 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !122, metadata !DIExpression()), !dbg !128
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !123, metadata !DIExpression()), !dbg !128
  store i32* %len, i32** %len.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !124, metadata !DIExpression()), !dbg !128
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !97
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !125, metadata !DIExpression()), !dbg !128
  store i32* %a, i32** %a.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !126, metadata !DIExpression()), !dbg !128
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = load i32*, i32** %len.addr, align 8, !dbg !129, !tbaa !35
  %1 = load i64, i64* %vla.addr, align 8, !dbg !129, !tbaa !97
  %2 = load i32*, i32** %a.addr, align 8, !dbg !129, !tbaa !35
  %3 = load i32*, i32** %tmp.addr, align 8, !dbg !129, !tbaa !35
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !129, !tbaa !35
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !129, !tbaa !35
  %6 = load i32*, i32** %len.addr, align 8, !dbg !129, !tbaa !35
  %7 = load i32*, i32** %a.addr, align 8, !dbg !129, !tbaa !35
  %8 = load i32*, i32** %tmp.addr, align 8, !dbg !129, !tbaa !35
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i32* %7, i32* %8) #4, !dbg !129
  ret void, !dbg !129
}

; Function Attrs: nounwind
declare !callback !130 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB036-truedepscalar-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !16, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !24, !26}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 52, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 52, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 54, type: !4)
!22 = !DILocalVariable(name: "tmp", scope: !15, file: !1, line: 55, type: !4)
!23 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 57, type: !4)
!24 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !25, flags: DIFlagArtificial)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "a", scope: !15, file: !1, line: 62, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: !24)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 52, column: 14, scope: !15)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !32, i64 0}
!37 = !DILocation(line: 52, column: 26, scope: !15)
!38 = !DILocation(line: 54, column: 3, scope: !15)
!39 = !DILocation(line: 54, column: 7, scope: !15)
!40 = !DILocation(line: 55, column: 3, scope: !15)
!41 = !DILocation(line: 55, column: 7, scope: !15)
!42 = !DILocation(line: 56, column: 7, scope: !15)
!43 = !DILocation(line: 57, column: 3, scope: !15)
!44 = !DILocation(line: 57, column: 7, scope: !15)
!45 = !DILocation(line: 59, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !15, file: !1, line: 59, column: 7)
!47 = !DILocation(line: 59, column: 11, scope: !46)
!48 = !DILocation(line: 59, column: 7, scope: !15)
!49 = !DILocation(line: 60, column: 16, scope: !46)
!50 = !DILocation(line: 60, column: 11, scope: !46)
!51 = !DILocation(line: 60, column: 9, scope: !46)
!52 = !DILocation(line: 60, column: 5, scope: !46)
!53 = !DILocation(line: 62, column: 9, scope: !15)
!54 = !DILocation(line: 62, column: 3, scope: !15)
!55 = !DILocation(line: 0, scope: !15)
!56 = !DILocation(line: 62, column: 7, scope: !15)
!57 = !DILocation(line: 63, column: 1, scope: !15)
!58 = !DILocation(line: 69, column: 3, scope: !15)
!59 = !DILocation(line: 70, column: 1, scope: !15)
!60 = distinct !DISubprogram(name: "atoi", scope: !61, file: !61, line: 361, type: !62, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!61 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!62 = !DISubroutineType(types: !63)
!63 = !{!4, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!66 = !{!67}
!67 = !DILocalVariable(name: "__nptr", arg: 1, scope: !60, file: !61, line: 361, type: !64)
!68 = !DILocation(line: 361, column: 1, scope: !60)
!69 = !DILocation(line: 363, column: 24, scope: !60)
!70 = !DILocation(line: 363, column: 16, scope: !60)
!71 = !DILocation(line: 363, column: 10, scope: !60)
!72 = !DILocation(line: 363, column: 3, scope: !60)
!73 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !74, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !76, !76, !80, !25, !80, !80}
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!80 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !89, !90, !91, !92, !93, !94, !90}
!82 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !73, type: !76, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !76, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "len", arg: 3, scope: !73, file: !1, line: 57, type: !80)
!85 = !DILocalVariable(name: "vla", arg: 4, scope: !73, type: !25, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "a", arg: 5, scope: !73, file: !1, line: 62, type: !80)
!87 = !DILocalVariable(name: "tmp", arg: 6, scope: !73, file: !1, line: 55, type: !80)
!88 = !DILocalVariable(name: ".omp.iv", scope: !73, type: !4, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".capture_expr.", scope: !73, type: !4, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "i", scope: !73, type: !4, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.lb", scope: !73, type: !4, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.ub", scope: !73, type: !4, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.stride", scope: !73, type: !4, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.is_last", scope: !73, type: !4, flags: DIFlagArtificial)
!95 = !DILocation(line: 0, scope: !73)
!96 = !DILocation(line: 57, column: 7, scope: !73)
!97 = !{!98, !98, i64 0}
!98 = !{!"long", !32, i64 0}
!99 = !DILocation(line: 62, column: 7, scope: !73)
!100 = !DILocation(line: 55, column: 7, scope: !73)
!101 = !DILocation(line: 64, column: 3, scope: !73)
!102 = !DILocation(line: 64, column: 14, scope: !73)
!103 = !DILocation(line: 64, column: 18, scope: !73)
!104 = !DILocation(line: 64, column: 8, scope: !73)
!105 = !DILocation(line: 63, column: 1, scope: !73)
!106 = !DILocation(line: 66, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !73, file: !1, line: 65, column: 3)
!108 = !DILocation(line: 66, column: 7, scope: !107)
!109 = !DILocation(line: 66, column: 5, scope: !107)
!110 = !DILocation(line: 66, column: 10, scope: !107)
!111 = !DILocation(line: 67, column: 12, scope: !107)
!112 = !DILocation(line: 67, column: 10, scope: !107)
!113 = !DILocation(line: 67, column: 15, scope: !107)
!114 = !DILocation(line: 67, column: 14, scope: !107)
!115 = !DILocation(line: 67, column: 9, scope: !107)
!116 = !DILocation(line: 68, column: 3, scope: !107)
!117 = distinct !{!117, !105, !118}
!118 = !DILocation(line: 63, column: 25, scope: !73)
!119 = !DILocation(line: 68, column: 3, scope: !73)
!120 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !74, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !120, type: !76, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !120, type: !76, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "len", arg: 3, scope: !120, type: !80, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "vla", arg: 4, scope: !120, type: !25, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: "a", arg: 5, scope: !120, type: !80, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "tmp", arg: 6, scope: !120, type: !80, flags: DIFlagArtificial)
!128 = !DILocation(line: 0, scope: !120)
!129 = !DILocation(line: 63, column: 1, scope: !120)
!130 = !{!131}
!131 = !{i64 2, i64 -1, i64 -1, i1 true}
