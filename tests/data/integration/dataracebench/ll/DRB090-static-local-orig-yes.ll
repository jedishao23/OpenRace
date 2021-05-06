; ModuleID = 'DRB090-static-local-orig-yes.c'
source_filename = "DRB090-static-local-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@main.tmp = internal global i32 0, align 4, !dbg !0
@0 = private unnamed_addr constant [44 x i8] c";DRB090-static-local-orig-yes.c;main;70;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [45 x i8] c";DRB090-static-local-orig-yes.c;main;70;16;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [44 x i8] c";DRB090-static-local-orig-yes.c;main;67;1;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @5, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [44 x i8] c";DRB090-static-local-orig-yes.c;main;82;1;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @7, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant [45 x i8] c";DRB090-static-local-orig-yes.c;main;82;16;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @9, i32 0, i32 0) }, align 8
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @7, i32 0, i32 0) }, align 8
@12 = private unnamed_addr constant [44 x i8] c";DRB090-static-local-orig-yes.c;main;79;1;;\00", align 1
@13 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @12, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [19 x i8] c"a[50]=%d b[50]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !37 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !58
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !44, metadata !DIExpression()), !dbg !62
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !45, metadata !DIExpression()), !dbg !65
  %0 = bitcast i32* %i to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !67
  %1 = bitcast i32* %len to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %len, metadata !47, metadata !DIExpression()), !dbg !69
  store i32 100, i32* %len, align 4, !dbg !69, !tbaa !58
  %2 = load i32, i32* %len, align 4, !dbg !70, !tbaa !58
  %3 = zext i32 %2 to i64, !dbg !71
  %4 = call i8* @llvm.stacksave(), !dbg !71
  store i8* %4, i8** %saved_stack, align 8, !dbg !71
  %vla = alloca i32, i64 %3, align 16, !dbg !71
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !48, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !49, metadata !DIExpression()), !dbg !73
  %5 = load i32, i32* %len, align 4, !dbg !74, !tbaa !58
  %6 = zext i32 %5 to i64, !dbg !71
  %vla1 = alloca i32, i64 %6, align 16, !dbg !71
  store i64 %6, i64* %__vla_expr1, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !53, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !54, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %i, align 4, !dbg !76, !tbaa !58
  br label %for.cond, !dbg !78

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !79, !tbaa !58
  %8 = load i32, i32* %len, align 4, !dbg !81, !tbaa !58
  %cmp = icmp slt i32 %7, %8, !dbg !82
  br i1 %cmp, label %for.body, label %for.end, !dbg !83

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !84, !tbaa !58
  %10 = load i32, i32* %i, align 4, !dbg !86, !tbaa !58
  %idxprom = sext i32 %10 to i64, !dbg !87
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !87
  store i32 %9, i32* %arrayidx, align 4, !dbg !88, !tbaa !58
  %11 = load i32, i32* %i, align 4, !dbg !89, !tbaa !58
  %12 = load i32, i32* %i, align 4, !dbg !90, !tbaa !58
  %idxprom2 = sext i32 %12 to i64, !dbg !91
  %arrayidx3 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom2, !dbg !91
  store i32 %11, i32* %arrayidx3, align 4, !dbg !92, !tbaa !58
  br label %for.inc, !dbg !93

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !94, !tbaa !58
  %inc = add nsw i32 %13, 1, !dbg !94
  store i32 %inc, i32* %i, align 4, !dbg !94, !tbaa !58
  br label %for.cond, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @6, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %3, i32* %vla), !dbg !99
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @13, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %len, i64 %6, i32* %vla1), !dbg !100
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 50, !dbg !101
  %14 = load i32, i32* %arrayidx4, align 8, !dbg !101, !tbaa !58
  %arrayidx5 = getelementptr inbounds i32, i32* %vla1, i64 50, !dbg !102
  %15 = load i32, i32* %arrayidx5, align 8, !dbg !102, !tbaa !58
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15), !dbg !103
  store i32 0, i32* %retval, align 4, !dbg !104
  %16 = load i8*, i8** %saved_stack, align 8, !dbg !105
  call void @llvm.stackrestore(i8* %16), !dbg !105
  %17 = bitcast i32* %len to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3, !dbg !105
  %18 = bitcast i32* %i to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !105
  %19 = load i32, i32* %retval, align 4, !dbg !105
  ret i32 %19, !dbg !105
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #4 !dbg !2 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !17, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !18, metadata !DIExpression()), !dbg !106
  store i32* %len, i32** %len.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !19, metadata !DIExpression()), !dbg !107
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !108
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !20, metadata !DIExpression()), !dbg !106
  store i32* %a, i32** %a.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !21, metadata !DIExpression()), !dbg !110
  %0 = load i32*, i32** %len.addr, align 8, !dbg !111, !tbaa !63
  %1 = load i64, i64* %vla.addr, align 8, !dbg !111, !tbaa !108
  %2 = load i32*, i32** %a.addr, align 8, !dbg !111, !tbaa !63
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !22, metadata !DIExpression()), !dbg !113
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !25, metadata !DIExpression()), !dbg !113
  %5 = load i32, i32* %0, align 4, !dbg !114, !tbaa !58
  store i32 %5, i32* %.capture_expr., align 4, !dbg !114, !tbaa !58
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !25, metadata !DIExpression()), !dbg !113
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !114, !tbaa !58
  %sub = sub nsw i32 %7, 0, !dbg !115
  %div = sdiv i32 %sub, 1, !dbg !115
  %sub2 = sub nsw i32 %div, 1, !dbg !115
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !115, !tbaa !58
  %8 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !113
  store i32 0, i32* %i, align 4, !dbg !116, !tbaa !58
  %9 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3, !dbg !112
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !114, !tbaa !58
  %cmp = icmp slt i32 0, %10, !dbg !115
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !112

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !27, metadata !DIExpression()), !dbg !113
  store i32 0, i32* %.omp.lb, align 4, !dbg !117, !tbaa !58
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !28, metadata !DIExpression()), !dbg !113
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !115, !tbaa !58
  store i32 %13, i32* %.omp.ub, align 4, !dbg !117, !tbaa !58
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !29, metadata !DIExpression()), !dbg !113
  store i32 1, i32* %.omp.stride, align 4, !dbg !117, !tbaa !58
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !30, metadata !DIExpression()), !dbg !113
  store i32 0, i32* %.omp.is_last, align 4, !dbg !117, !tbaa !58
  %16 = bitcast i32* %i3 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !26, metadata !DIExpression()), !dbg !113
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112
  %18 = load i32, i32* %17, align 4, !dbg !112, !tbaa !58
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !118
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !117, !tbaa !58
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !115, !tbaa !58
  %cmp4 = icmp sgt i32 %19, %20, !dbg !117
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !117

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !115, !tbaa !58
  br label %cond.end, !dbg !117

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !117, !tbaa !58
  br label %cond.end, !dbg !117

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !117
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !117, !tbaa !58
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !117, !tbaa !58
  store i32 %23, i32* %.omp.iv, align 4, !dbg !117, !tbaa !58
  br label %omp.inner.for.cond, !dbg !112

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !117, !tbaa !58
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !117, !tbaa !58
  %cmp5 = icmp sle i32 %24, %25, !dbg !115
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !112

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !112

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !117, !tbaa !58
  %mul = mul nsw i32 %26, 1, !dbg !116
  %add = add nsw i32 0, %mul, !dbg !116
  store i32 %add, i32* %i3, align 4, !dbg !116, !tbaa !58
  %27 = load i32, i32* %i3, align 4, !dbg !119, !tbaa !58
  %idxprom = sext i32 %27 to i64, !dbg !121
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !121
  %28 = load i32, i32* %arrayidx, align 4, !dbg !121, !tbaa !58
  %29 = load i32, i32* %i3, align 4, !dbg !122, !tbaa !58
  %add6 = add nsw i32 %28, %29, !dbg !123
  store i32 %add6, i32* @main.tmp, align 4, !dbg !124, !tbaa !58
  %30 = load i32, i32* @main.tmp, align 4, !dbg !125, !tbaa !58
  %31 = load i32, i32* %i3, align 4, !dbg !126, !tbaa !58
  %idxprom7 = sext i32 %31 to i64, !dbg !127
  %arrayidx8 = getelementptr inbounds i32, i32* %2, i64 %idxprom7, !dbg !127
  store i32 %30, i32* %arrayidx8, align 4, !dbg !128, !tbaa !58
  br label %omp.body.continue, !dbg !129

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !118

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !117, !tbaa !58
  %add9 = add nsw i32 %32, 1, !dbg !115
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !115, !tbaa !58
  br label %omp.inner.for.cond, !dbg !118, !llvm.loop !130

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !118

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !118
  %34 = load i32, i32* %33, align 4, !dbg !118, !tbaa !58
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %34), !dbg !131
  %35 = bitcast i32* %i3 to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3, !dbg !118
  %36 = bitcast i32* %.omp.is_last to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3, !dbg !118
  %37 = bitcast i32* %.omp.stride to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3, !dbg !118
  %38 = bitcast i32* %.omp.ub to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3, !dbg !118
  %39 = bitcast i32* %.omp.lb to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !118
  br label %omp.precond.end, !dbg !118

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %40 = bitcast i32* %.capture_expr.1 to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !118
  %41 = bitcast i32* %.capture_expr. to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !118
  %42 = bitcast i32* %.omp.iv to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3, !dbg !118
  %43 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %44 = load i32, i32* %43, align 4, !dbg !131, !tbaa !58
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %44), !dbg !131
  ret void, !dbg !132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #4 !dbg !133 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !135, metadata !DIExpression()), !dbg !140
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !136, metadata !DIExpression()), !dbg !140
  store i32* %len, i32** %len.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !137, metadata !DIExpression()), !dbg !140
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !108
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !138, metadata !DIExpression()), !dbg !140
  store i32* %a, i32** %a.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load i32*, i32** %len.addr, align 8, !dbg !141, !tbaa !63
  %1 = load i64, i64* %vla.addr, align 8, !dbg !141, !tbaa !108
  %2 = load i32*, i32** %a.addr, align 8, !dbg !141, !tbaa !63
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !141, !tbaa !63
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !141, !tbaa !63
  %5 = load i32*, i32** %len.addr, align 8, !dbg !141, !tbaa !63
  %6 = load i32*, i32** %a.addr, align 8, !dbg !141, !tbaa !63
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #3, !dbg !141
  ret void, !dbg !141
}

; Function Attrs: nounwind
declare !callback !142 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %b) #4 !dbg !144 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %b.addr = alloca i32*, align 8
  %tmp = alloca i32, align 4
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !146, metadata !DIExpression()), !dbg !161
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !147, metadata !DIExpression()), !dbg !161
  store i32* %len, i32** %len.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !148, metadata !DIExpression()), !dbg !162
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !108
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !149, metadata !DIExpression()), !dbg !161
  store i32* %b, i32** %b.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !150, metadata !DIExpression()), !dbg !163
  %0 = load i32*, i32** %len.addr, align 8, !dbg !164, !tbaa !63
  %1 = load i64, i64* %vla.addr, align 8, !dbg !164, !tbaa !108
  %2 = load i32*, i32** %b.addr, align 8, !dbg !164, !tbaa !63
  %3 = bitcast i32* %tmp to i8*, !dbg !165
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !165
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !151, metadata !DIExpression()), !dbg !166
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !153, metadata !DIExpression()), !dbg !168
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !155, metadata !DIExpression()), !dbg !168
  %6 = load i32, i32* %0, align 4, !dbg !169, !tbaa !58
  store i32 %6, i32* %.capture_expr., align 4, !dbg !169, !tbaa !58
  %7 = bitcast i32* %.capture_expr.2 to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !155, metadata !DIExpression()), !dbg !168
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !169, !tbaa !58
  %sub = sub nsw i32 %8, 0, !dbg !170
  %div = sdiv i32 %sub, 1, !dbg !170
  %sub3 = sub nsw i32 %div, 1, !dbg !170
  store i32 %sub3, i32* %.capture_expr.2, align 4, !dbg !170, !tbaa !58
  %9 = bitcast i32* %i to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %i, metadata !156, metadata !DIExpression()), !dbg !168
  store i32 0, i32* %i, align 4, !dbg !171, !tbaa !58
  %10 = bitcast i32* %i to i8*, !dbg !167
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #3, !dbg !167
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !169, !tbaa !58
  %cmp = icmp slt i32 0, %11, !dbg !170
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !167

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !157, metadata !DIExpression()), !dbg !168
  store i32 0, i32* %.omp.lb, align 4, !dbg !172, !tbaa !58
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !158, metadata !DIExpression()), !dbg !168
  %14 = load i32, i32* %.capture_expr.2, align 4, !dbg !170, !tbaa !58
  store i32 %14, i32* %.omp.ub, align 4, !dbg !172, !tbaa !58
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !159, metadata !DIExpression()), !dbg !168
  store i32 1, i32* %.omp.stride, align 4, !dbg !172, !tbaa !58
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !160, metadata !DIExpression()), !dbg !168
  store i32 0, i32* %.omp.is_last, align 4, !dbg !172, !tbaa !58
  %17 = bitcast i32* %i4 to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !156, metadata !DIExpression()), !dbg !168
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !167
  %19 = load i32, i32* %18, align 4, !dbg !167, !tbaa !58
  call void @__kmpc_for_static_init_4(%struct.ident_t* @8, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !173
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !172, !tbaa !58
  %21 = load i32, i32* %.capture_expr.2, align 4, !dbg !170, !tbaa !58
  %cmp5 = icmp sgt i32 %20, %21, !dbg !172
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !172

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.2, align 4, !dbg !170, !tbaa !58
  br label %cond.end, !dbg !172

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !172, !tbaa !58
  br label %cond.end, !dbg !172

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !172
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !172, !tbaa !58
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !172, !tbaa !58
  store i32 %24, i32* %.omp.iv, align 4, !dbg !172, !tbaa !58
  br label %omp.inner.for.cond, !dbg !167

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !172, !tbaa !58
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !172, !tbaa !58
  %cmp6 = icmp sle i32 %25, %26, !dbg !170
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !167

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !167

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !172, !tbaa !58
  %mul = mul nsw i32 %27, 1, !dbg !171
  %add = add nsw i32 0, %mul, !dbg !171
  store i32 %add, i32* %i4, align 4, !dbg !171, !tbaa !58
  %28 = load i32, i32* %i4, align 4, !dbg !174, !tbaa !58
  %idxprom = sext i32 %28 to i64, !dbg !176
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !176
  %29 = load i32, i32* %arrayidx, align 4, !dbg !176, !tbaa !58
  %30 = load i32, i32* %i4, align 4, !dbg !177, !tbaa !58
  %add7 = add nsw i32 %29, %30, !dbg !178
  store i32 %add7, i32* %tmp, align 4, !dbg !179, !tbaa !58
  %31 = load i32, i32* %tmp, align 4, !dbg !180, !tbaa !58
  %32 = load i32, i32* %i4, align 4, !dbg !181, !tbaa !58
  %idxprom8 = sext i32 %32 to i64, !dbg !182
  %arrayidx9 = getelementptr inbounds i32, i32* %2, i64 %idxprom8, !dbg !182
  store i32 %31, i32* %arrayidx9, align 4, !dbg !183, !tbaa !58
  br label %omp.body.continue, !dbg !184

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !173

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !172, !tbaa !58
  %add10 = add nsw i32 %33, 1, !dbg !170
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !170, !tbaa !58
  br label %omp.inner.for.cond, !dbg !173, !llvm.loop !185

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !173

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !173
  %35 = load i32, i32* %34, align 4, !dbg !173, !tbaa !58
  call void @__kmpc_for_static_fini(%struct.ident_t* @10, i32 %35), !dbg !186
  %36 = bitcast i32* %i4 to i8*, !dbg !173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3, !dbg !173
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3, !dbg !173
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3, !dbg !173
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !173
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !173
  br label %omp.precond.end, !dbg !173

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.2 to i8*, !dbg !173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !173
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3, !dbg !173
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !173
  %44 = load i32*, i32** %.global_tid..addr, align 8, !dbg !186
  %45 = load i32, i32* %44, align 4, !dbg !186, !tbaa !58
  call void @__kmpc_barrier(%struct.ident_t* @11, i32 %45), !dbg !186
  %46 = bitcast i32* %tmp to i8*, !dbg !187
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !187
  ret void, !dbg !187
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %b) #4 !dbg !188 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %b.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !190, metadata !DIExpression()), !dbg !195
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !191, metadata !DIExpression()), !dbg !195
  store i32* %len, i32** %len.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !192, metadata !DIExpression()), !dbg !195
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !108
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !193, metadata !DIExpression()), !dbg !195
  store i32* %b, i32** %b.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = load i32*, i32** %len.addr, align 8, !dbg !196, !tbaa !63
  %1 = load i64, i64* %vla.addr, align 8, !dbg !196, !tbaa !108
  %2 = load i32*, i32** %b.addr, align 8, !dbg !196, !tbaa !63
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !196, !tbaa !63
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !196, !tbaa !63
  %5 = load i32*, i32** %len.addr, align 8, !dbg !196, !tbaa !63
  %6 = load i32*, i32** %b.addr, align 8, !dbg !196, !tbaa !63
  call void @.omp_outlined._debug__.1(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #3, !dbg !196
  ret void, !dbg !196
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !3, line: 69, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 68, type: !4, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !16)
!3 = !DIFile(filename: "DRB090-static-local-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6, !11, !12, !11}
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, globals: !15, splitDebugInlining: false, nameTableKind: None)
!14 = !{}
!15 = !{!0}
!16 = !{!17, !18, !19, !20, !21, !22, !25, !25, !26, !27, !28, !29, !30, !26}
!17 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !2, type: !6, flags: DIFlagArtificial)
!18 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !2, type: !6, flags: DIFlagArtificial)
!19 = !DILocalVariable(name: "len", arg: 3, scope: !2, file: !3, line: 61, type: !11)
!20 = !DILocalVariable(name: "vla", arg: 4, scope: !2, type: !12, flags: DIFlagArtificial)
!21 = !DILocalVariable(name: "a", arg: 5, scope: !2, file: !3, line: 62, type: !11)
!22 = !DILocalVariable(name: ".omp.iv", scope: !23, type: !10, flags: DIFlagArtificial)
!23 = distinct !DILexicalBlock(scope: !24, file: !3, line: 70, column: 1)
!24 = distinct !DILexicalBlock(scope: !2, file: !3, line: 68, column: 3)
!25 = !DILocalVariable(name: ".capture_expr.", scope: !23, type: !10, flags: DIFlagArtificial)
!26 = !DILocalVariable(name: "i", scope: !23, type: !10, flags: DIFlagArtificial)
!27 = !DILocalVariable(name: ".omp.lb", scope: !23, type: !10, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: ".omp.ub", scope: !23, type: !10, flags: DIFlagArtificial)
!29 = !DILocalVariable(name: ".omp.stride", scope: !23, type: !10, flags: DIFlagArtificial)
!30 = !DILocalVariable(name: ".omp.is_last", scope: !23, type: !10, flags: DIFlagArtificial)
!31 = !{i32 7, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 7, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{!"clang version 11.1.0"}
!37 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !38, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !43)
!38 = !DISubroutineType(types: !39)
!39 = !{!10, !10, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !{!44, !45, !46, !47, !48, !49, !53, !54}
!44 = !DILocalVariable(name: "argc", arg: 1, scope: !37, file: !3, line: 58, type: !10)
!45 = !DILocalVariable(name: "argv", arg: 2, scope: !37, file: !3, line: 58, type: !40)
!46 = !DILocalVariable(name: "i", scope: !37, file: !3, line: 60, type: !10)
!47 = !DILocalVariable(name: "len", scope: !37, file: !3, line: 61, type: !10)
!48 = !DILocalVariable(name: "__vla_expr0", scope: !37, type: !12, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "a", scope: !37, file: !3, line: 62, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: !48)
!53 = !DILocalVariable(name: "__vla_expr1", scope: !37, type: !12, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: "b", scope: !37, file: !3, line: 62, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: !53)
!58 = !{!59, !59, i64 0}
!59 = !{!"int", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !DILocation(line: 58, column: 14, scope: !37)
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !60, i64 0}
!65 = !DILocation(line: 58, column: 26, scope: !37)
!66 = !DILocation(line: 60, column: 3, scope: !37)
!67 = !DILocation(line: 60, column: 7, scope: !37)
!68 = !DILocation(line: 61, column: 3, scope: !37)
!69 = !DILocation(line: 61, column: 7, scope: !37)
!70 = !DILocation(line: 62, column: 9, scope: !37)
!71 = !DILocation(line: 62, column: 3, scope: !37)
!72 = !DILocation(line: 0, scope: !37)
!73 = !DILocation(line: 62, column: 7, scope: !37)
!74 = !DILocation(line: 62, column: 17, scope: !37)
!75 = !DILocation(line: 62, column: 15, scope: !37)
!76 = !DILocation(line: 64, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !37, file: !3, line: 64, column: 3)
!78 = !DILocation(line: 64, column: 8, scope: !77)
!79 = !DILocation(line: 64, column: 12, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !3, line: 64, column: 3)
!81 = !DILocation(line: 64, column: 14, scope: !80)
!82 = !DILocation(line: 64, column: 13, scope: !80)
!83 = !DILocation(line: 64, column: 3, scope: !77)
!84 = !DILocation(line: 65, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !3, line: 65, column: 3)
!86 = !DILocation(line: 65, column: 8, scope: !85)
!87 = !DILocation(line: 65, column: 6, scope: !85)
!88 = !DILocation(line: 65, column: 10, scope: !85)
!89 = !DILocation(line: 65, column: 19, scope: !85)
!90 = !DILocation(line: 65, column: 16, scope: !85)
!91 = !DILocation(line: 65, column: 14, scope: !85)
!92 = !DILocation(line: 65, column: 18, scope: !85)
!93 = !DILocation(line: 65, column: 21, scope: !85)
!94 = !DILocation(line: 64, column: 19, scope: !80)
!95 = !DILocation(line: 64, column: 3, scope: !80)
!96 = distinct !{!96, !83, !97, !98}
!97 = !DILocation(line: 65, column: 21, scope: !77)
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !DILocation(line: 67, column: 1, scope: !37)
!100 = !DILocation(line: 79, column: 1, scope: !37)
!101 = !DILocation(line: 90, column: 33, scope: !37)
!102 = !DILocation(line: 90, column: 40, scope: !37)
!103 = !DILocation(line: 90, column: 3, scope: !37)
!104 = !DILocation(line: 92, column: 3, scope: !37)
!105 = !DILocation(line: 93, column: 1, scope: !37)
!106 = !DILocation(line: 0, scope: !2)
!107 = !DILocation(line: 61, column: 7, scope: !2)
!108 = !{!109, !109, i64 0}
!109 = !{!"long", !60, i64 0}
!110 = !DILocation(line: 62, column: 7, scope: !2)
!111 = !DILocation(line: 68, column: 3, scope: !2)
!112 = !DILocation(line: 70, column: 1, scope: !24)
!113 = !DILocation(line: 0, scope: !23)
!114 = !DILocation(line: 71, column: 16, scope: !23)
!115 = !DILocation(line: 71, column: 5, scope: !23)
!116 = !DILocation(line: 71, column: 20, scope: !23)
!117 = !DILocation(line: 71, column: 10, scope: !23)
!118 = !DILocation(line: 70, column: 1, scope: !23)
!119 = !DILocation(line: 73, column: 15, scope: !120)
!120 = distinct !DILexicalBlock(scope: !23, file: !3, line: 72, column: 5)
!121 = !DILocation(line: 73, column: 13, scope: !120)
!122 = !DILocation(line: 73, column: 18, scope: !120)
!123 = !DILocation(line: 73, column: 17, scope: !120)
!124 = !DILocation(line: 73, column: 11, scope: !120)
!125 = !DILocation(line: 74, column: 14, scope: !120)
!126 = !DILocation(line: 74, column: 9, scope: !120)
!127 = !DILocation(line: 74, column: 7, scope: !120)
!128 = !DILocation(line: 74, column: 12, scope: !120)
!129 = !DILocation(line: 75, column: 5, scope: !120)
!130 = distinct !{!130, !118, !131}
!131 = !DILocation(line: 70, column: 16, scope: !23)
!132 = !DILocation(line: 76, column: 3, scope: !2)
!133 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 67, type: !4, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !134)
!134 = !{!135, !136, !137, !138, !139}
!135 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !133, type: !6, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !133, type: !6, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "len", arg: 3, scope: !133, type: !11, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: "vla", arg: 4, scope: !133, type: !12, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: "a", arg: 5, scope: !133, type: !11, flags: DIFlagArtificial)
!140 = !DILocation(line: 0, scope: !133)
!141 = !DILocation(line: 67, column: 1, scope: !133)
!142 = !{!143}
!143 = !{i64 2, i64 -1, i64 -1, i1 true}
!144 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 80, type: !4, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !153, !155, !155, !156, !157, !158, !159, !160, !156}
!146 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !144, type: !6, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !144, type: !6, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "len", arg: 3, scope: !144, file: !3, line: 61, type: !11)
!149 = !DILocalVariable(name: "vla", arg: 4, scope: !144, type: !12, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "b", arg: 5, scope: !144, file: !3, line: 62, type: !11)
!151 = !DILocalVariable(name: "tmp", scope: !152, file: !3, line: 81, type: !10)
!152 = distinct !DILexicalBlock(scope: !144, file: !3, line: 80, column: 3)
!153 = !DILocalVariable(name: ".omp.iv", scope: !154, type: !10, flags: DIFlagArtificial)
!154 = distinct !DILexicalBlock(scope: !152, file: !3, line: 82, column: 1)
!155 = !DILocalVariable(name: ".capture_expr.", scope: !154, type: !10, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: "i", scope: !154, type: !10, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: ".omp.lb", scope: !154, type: !10, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: ".omp.ub", scope: !154, type: !10, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: ".omp.stride", scope: !154, type: !10, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: ".omp.is_last", scope: !154, type: !10, flags: DIFlagArtificial)
!161 = !DILocation(line: 0, scope: !144)
!162 = !DILocation(line: 61, column: 7, scope: !144)
!163 = !DILocation(line: 62, column: 15, scope: !144)
!164 = !DILocation(line: 80, column: 3, scope: !144)
!165 = !DILocation(line: 81, column: 5, scope: !152)
!166 = !DILocation(line: 81, column: 9, scope: !152)
!167 = !DILocation(line: 82, column: 1, scope: !152)
!168 = !DILocation(line: 0, scope: !154)
!169 = !DILocation(line: 83, column: 16, scope: !154)
!170 = !DILocation(line: 83, column: 5, scope: !154)
!171 = !DILocation(line: 83, column: 20, scope: !154)
!172 = !DILocation(line: 83, column: 10, scope: !154)
!173 = !DILocation(line: 82, column: 1, scope: !154)
!174 = !DILocation(line: 85, column: 15, scope: !175)
!175 = distinct !DILexicalBlock(scope: !154, file: !3, line: 84, column: 5)
!176 = !DILocation(line: 85, column: 13, scope: !175)
!177 = !DILocation(line: 85, column: 18, scope: !175)
!178 = !DILocation(line: 85, column: 17, scope: !175)
!179 = !DILocation(line: 85, column: 11, scope: !175)
!180 = !DILocation(line: 86, column: 14, scope: !175)
!181 = !DILocation(line: 86, column: 9, scope: !175)
!182 = !DILocation(line: 86, column: 7, scope: !175)
!183 = !DILocation(line: 86, column: 12, scope: !175)
!184 = !DILocation(line: 87, column: 5, scope: !175)
!185 = distinct !{!185, !173, !186}
!186 = !DILocation(line: 82, column: 16, scope: !154)
!187 = !DILocation(line: 88, column: 3, scope: !144)
!188 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 79, type: !4, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !189)
!189 = !{!190, !191, !192, !193, !194}
!190 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !188, type: !6, flags: DIFlagArtificial)
!191 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !188, type: !6, flags: DIFlagArtificial)
!192 = !DILocalVariable(name: "len", arg: 3, scope: !188, type: !11, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: "vla", arg: 4, scope: !188, type: !12, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "b", arg: 5, scope: !188, type: !11, flags: DIFlagArtificial)
!195 = !DILocation(line: 0, scope: !188)
!196 = !DILocation(line: 79, column: 1, scope: !188)
