; ModuleID = 'DRB115-forsimd-orig-yes.c'
source_filename = "DRB115-forsimd-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [39 x i8] c";DRB115-forsimd-orig-yes.c;main;64;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [40 x i8] c";DRB115-forsimd-orig-yes.c;main;64;31;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
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
  %b = alloca [100 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !26
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !30
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !33
  %0 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !35
  %1 = bitcast i32* %len to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !37
  store i32 100, i32* %len, align 4, !dbg !37, !tbaa !26
  %2 = bitcast [100 x i32]* %a to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %2) #4, !dbg !38
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !21, metadata !DIExpression()), !dbg !39
  %3 = bitcast [100 x i32]* %b to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %3) #4, !dbg !38
  call void @llvm.dbg.declare(metadata [100 x i32]* %b, metadata !25, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %i, align 4, !dbg !41, !tbaa !26
  br label %for.cond, !dbg !43

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !44, !tbaa !26
  %5 = load i32, i32* %len, align 4, !dbg !46, !tbaa !26
  %cmp = icmp slt i32 %4, %5, !dbg !47
  br i1 %cmp, label %for.body, label %for.end, !dbg !48

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !49, !tbaa !26
  %7 = load i32, i32* %i, align 4, !dbg !51, !tbaa !26
  %idxprom = sext i32 %7 to i64, !dbg !52
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !52
  store i32 %6, i32* %arrayidx, align 4, !dbg !53, !tbaa !26
  %8 = load i32, i32* %i, align 4, !dbg !54, !tbaa !26
  %add = add nsw i32 %8, 1, !dbg !55
  %9 = load i32, i32* %i, align 4, !dbg !56, !tbaa !26
  %idxprom1 = sext i32 %9 to i64, !dbg !57
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom1, !dbg !57
  store i32 %add, i32* %arrayidx2, align 4, !dbg !58, !tbaa !26
  br label %for.inc, !dbg !59

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !60, !tbaa !26
  %inc = add nsw i32 %10, 1, !dbg !60
  store i32 %inc, i32* %i, align 4, !dbg !60, !tbaa !26
  br label %for.cond, !dbg !61, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [100 x i32]*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i, i32* %len, [100 x i32]* %a, [100 x i32]* %b), !dbg !65
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !66
  %11 = load i32, i32* %arrayidx3, align 8, !dbg !66, !tbaa !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11), !dbg !67
  %12 = bitcast [100 x i32]* %b to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %12) #4, !dbg !68
  %13 = bitcast [100 x i32]* %a to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %13) #4, !dbg !68
  %14 = bitcast i32* %len to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !68
  %15 = bitcast i32* %i to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4, !dbg !68
  ret i32 0, !dbg !69
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i, i32* nonnull align 4 dereferenceable(4) %len, [100 x i32]* nonnull align 4 dereferenceable(400) %a, [100 x i32]* nonnull align 4 dereferenceable(400) %b) #3 !dbg !70 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %b.addr = alloca [100 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !93
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !93
  store i32* %i, i32** %i.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !82, metadata !DIExpression()), !dbg !94
  store i32* %len, i32** %len.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !83, metadata !DIExpression()), !dbg !95
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !84, metadata !DIExpression()), !dbg !96
  store [100 x i32]* %b, [100 x i32]** %b.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [100 x i32]** %b.addr, metadata !85, metadata !DIExpression()), !dbg !97
  %0 = load i32*, i32** %i.addr, align 8, !dbg !98, !tbaa !31
  %1 = load i32*, i32** %len.addr, align 8, !dbg !98, !tbaa !31
  %2 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !98, !tbaa !31
  %3 = load [100 x i32]*, [100 x i32]** %b.addr, align 8, !dbg !98, !tbaa !31
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !86, metadata !DIExpression()), !dbg !93
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !87, metadata !DIExpression()), !dbg !93
  %6 = load i32, i32* %1, align 4, !dbg !99, !tbaa !26
  %sub = sub nsw i32 %6, 1, !dbg !100
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !99, !tbaa !26
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !87, metadata !DIExpression()), !dbg !93
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !100, !tbaa !26
  %sub2 = sub nsw i32 %8, 0, !dbg !98
  %div = sdiv i32 %sub2, 1, !dbg !98
  %sub3 = sub nsw i32 %div, 1, !dbg !98
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !98, !tbaa !26
  %9 = bitcast i32* %i4 to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !88, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %i4, align 4, !dbg !101, !tbaa !26
  %10 = bitcast i32* %i4 to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !98
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !100, !tbaa !26
  %cmp = icmp slt i32 0, %11, !dbg !98
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !98

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !89, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %.omp.lb, align 4, !dbg !102, !tbaa !26
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !90, metadata !DIExpression()), !dbg !93
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !98, !tbaa !26
  store i32 %14, i32* %.omp.ub, align 4, !dbg !102, !tbaa !26
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !91, metadata !DIExpression()), !dbg !93
  store i32 1, i32* %.omp.stride, align 4, !dbg !102, !tbaa !26
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !92, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %.omp.is_last, align 4, !dbg !102, !tbaa !26
  %17 = bitcast i32* %i5 to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !88, metadata !DIExpression()), !dbg !93
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98
  %19 = load i32, i32* %18, align 4, !dbg !98, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !103
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !102, !tbaa !26
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !98, !tbaa !26
  %cmp6 = icmp sgt i32 %20, %21, !dbg !102
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !102

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !98, !tbaa !26
  br label %cond.end, !dbg !102

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !102, !tbaa !26
  br label %cond.end, !dbg !102

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !102
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !102, !tbaa !26
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !102, !tbaa !26
  store i32 %24, i32* %.omp.iv, align 4, !dbg !102, !tbaa !26
  br label %omp.inner.for.cond, !dbg !98

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !102, !tbaa !26
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !102, !tbaa !26
  %cmp7 = icmp sle i32 %25, %26, !dbg !98
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !98

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !98

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !102, !tbaa !26
  %mul = mul nsw i32 %27, 1, !dbg !101
  %add = add nsw i32 0, %mul, !dbg !101
  store i32 %add, i32* %i5, align 4, !dbg !101, !tbaa !26
  %28 = load i32, i32* %i5, align 4, !dbg !104, !tbaa !26
  %idxprom = sext i32 %28 to i64, !dbg !105
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom, !dbg !105
  %29 = load i32, i32* %arrayidx, align 4, !dbg !105, !tbaa !26
  %30 = load i32, i32* %i5, align 4, !dbg !106, !tbaa !26
  %idxprom8 = sext i32 %30 to i64, !dbg !107
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom8, !dbg !107
  %31 = load i32, i32* %arrayidx9, align 4, !dbg !107, !tbaa !26
  %add10 = add nsw i32 %29, %31, !dbg !108
  %32 = load i32, i32* %i5, align 4, !dbg !109, !tbaa !26
  %add11 = add nsw i32 %32, 1, !dbg !110
  %idxprom12 = sext i32 %add11 to i64, !dbg !111
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom12, !dbg !111
  store i32 %add10, i32* %arrayidx13, align 4, !dbg !112, !tbaa !26
  br label %omp.body.continue, !dbg !111

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !103

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !102, !tbaa !26
  %add14 = add nsw i32 %33, 1, !dbg !98
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !98, !tbaa !26
  br label %omp.inner.for.cond, !dbg !103, !llvm.loop !113

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !103

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %35 = load i32, i32* %34, align 4, !dbg !103, !tbaa !26
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %35), !dbg !114
  %36 = load i32, i32* %.omp.is_last, align 4, !dbg !103, !tbaa !26
  %37 = icmp ne i32 %36, 0, !dbg !103
  br i1 %37, label %.omp.final.then, label %.omp.final.done, !dbg !103

.omp.final.then:                                  ; preds = %omp.loop.exit
  %38 = load i32, i32* %.capture_expr., align 4, !dbg !100, !tbaa !26
  %sub15 = sub nsw i32 %38, 0, !dbg !98
  %div16 = sdiv i32 %sub15, 1, !dbg !98
  %mul17 = mul nsw i32 %div16, 1, !dbg !101
  %add18 = add nsw i32 0, %mul17, !dbg !101
  store i32 %add18, i32* %0, align 4, !dbg !101, !tbaa !26
  br label %.omp.final.done, !dbg !103

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  %39 = bitcast i32* %i5 to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !103
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !103
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !103
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !103
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !103
  br label %omp.precond.end, !dbg !103

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  %44 = bitcast i32* %.capture_expr.1 to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !103
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !103
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !103
  ret void, !dbg !116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i, i32* nonnull align 4 dereferenceable(4) %len, [100 x i32]* nonnull align 4 dereferenceable(400) %a, [100 x i32]* nonnull align 4 dereferenceable(400) %b) #3 !dbg !117 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %b.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !119, metadata !DIExpression()), !dbg !125
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !120, metadata !DIExpression()), !dbg !125
  store i32* %i, i32** %i.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !121, metadata !DIExpression()), !dbg !125
  store i32* %len, i32** %len.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !122, metadata !DIExpression()), !dbg !125
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !123, metadata !DIExpression()), !dbg !125
  store [100 x i32]* %b, [100 x i32]** %b.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [100 x i32]** %b.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load i32*, i32** %i.addr, align 8, !dbg !126, !tbaa !31
  %1 = load i32*, i32** %len.addr, align 8, !dbg !126, !tbaa !31
  %2 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !126, !tbaa !31
  %3 = load [100 x i32]*, [100 x i32]** %b.addr, align 8, !dbg !126, !tbaa !31
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !126, !tbaa !31
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !126, !tbaa !31
  %6 = load i32*, i32** %i.addr, align 8, !dbg !126, !tbaa !31
  %7 = load i32*, i32** %len.addr, align 8, !dbg !126, !tbaa !31
  %8 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !126, !tbaa !31
  %9 = load [100 x i32]*, [100 x i32]** %b.addr, align 8, !dbg !126, !tbaa !31
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32* %7, [100 x i32]* %8, [100 x i32]* %9) #4, !dbg !126
  ret void, !dbg !126
}

; Function Attrs: nounwind
declare !callback !127 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB115-forsimd-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = !{!17, !18, !19, !20, !21, !25}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 52, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 52, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 54, type: !12)
!20 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 55, type: !12)
!21 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 56, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 56, type: !22)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 52, column: 14, scope: !9)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !DILocation(line: 52, column: 26, scope: !9)
!34 = !DILocation(line: 54, column: 3, scope: !9)
!35 = !DILocation(line: 54, column: 7, scope: !9)
!36 = !DILocation(line: 55, column: 3, scope: !9)
!37 = !DILocation(line: 55, column: 7, scope: !9)
!38 = !DILocation(line: 56, column: 3, scope: !9)
!39 = !DILocation(line: 56, column: 7, scope: !9)
!40 = !DILocation(line: 56, column: 15, scope: !9)
!41 = !DILocation(line: 58, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !9, file: !1, line: 58, column: 3)
!43 = !DILocation(line: 58, column: 8, scope: !42)
!44 = !DILocation(line: 58, column: 12, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 58, column: 3)
!46 = !DILocation(line: 58, column: 14, scope: !45)
!47 = !DILocation(line: 58, column: 13, scope: !45)
!48 = !DILocation(line: 58, column: 3, scope: !42)
!49 = !DILocation(line: 60, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 59, column: 3)
!51 = !DILocation(line: 60, column: 7, scope: !50)
!52 = !DILocation(line: 60, column: 5, scope: !50)
!53 = !DILocation(line: 60, column: 9, scope: !50)
!54 = !DILocation(line: 61, column: 10, scope: !50)
!55 = !DILocation(line: 61, column: 11, scope: !50)
!56 = !DILocation(line: 61, column: 7, scope: !50)
!57 = !DILocation(line: 61, column: 5, scope: !50)
!58 = !DILocation(line: 61, column: 9, scope: !50)
!59 = !DILocation(line: 62, column: 3, scope: !50)
!60 = !DILocation(line: 58, column: 19, scope: !45)
!61 = !DILocation(line: 58, column: 3, scope: !45)
!62 = distinct !{!62, !48, !63, !64}
!63 = !DILocation(line: 62, column: 3, scope: !42)
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !DILocation(line: 64, column: 1, scope: !9)
!66 = !DILocation(line: 68, column: 23, scope: !9)
!67 = !DILocation(line: 68, column: 3, scope: !9)
!68 = !DILocation(line: 70, column: 1, scope: !9)
!69 = !DILocation(line: 69, column: 3, scope: !9)
!70 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !71, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !73, !77, !77, !78, !78}
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!77 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !87, !88, !89, !90, !91, !92, !88}
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !73, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !70, type: !73, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "i", arg: 3, scope: !70, file: !1, line: 54, type: !77)
!83 = !DILocalVariable(name: "len", arg: 4, scope: !70, file: !1, line: 55, type: !77)
!84 = !DILocalVariable(name: "a", arg: 5, scope: !70, file: !1, line: 56, type: !78)
!85 = !DILocalVariable(name: "b", arg: 6, scope: !70, file: !1, line: 56, type: !78)
!86 = !DILocalVariable(name: ".omp.iv", scope: !70, type: !12, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".capture_expr.", scope: !70, type: !12, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "i", scope: !70, type: !12, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.lb", scope: !70, type: !12, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.ub", scope: !70, type: !12, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.stride", scope: !70, type: !12, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.is_last", scope: !70, type: !12, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !70)
!94 = !DILocation(line: 54, column: 7, scope: !70)
!95 = !DILocation(line: 55, column: 7, scope: !70)
!96 = !DILocation(line: 56, column: 7, scope: !70)
!97 = !DILocation(line: 56, column: 15, scope: !70)
!98 = !DILocation(line: 65, column: 3, scope: !70)
!99 = !DILocation(line: 65, column: 14, scope: !70)
!100 = !DILocation(line: 65, column: 17, scope: !70)
!101 = !DILocation(line: 65, column: 20, scope: !70)
!102 = !DILocation(line: 65, column: 8, scope: !70)
!103 = !DILocation(line: 64, column: 1, scope: !70)
!104 = !DILocation(line: 66, column: 14, scope: !70)
!105 = !DILocation(line: 66, column: 12, scope: !70)
!106 = !DILocation(line: 66, column: 19, scope: !70)
!107 = !DILocation(line: 66, column: 17, scope: !70)
!108 = !DILocation(line: 66, column: 16, scope: !70)
!109 = !DILocation(line: 66, column: 7, scope: !70)
!110 = !DILocation(line: 66, column: 8, scope: !70)
!111 = !DILocation(line: 66, column: 5, scope: !70)
!112 = !DILocation(line: 66, column: 11, scope: !70)
!113 = distinct !{!113, !103, !114, !115}
!114 = !DILocation(line: 64, column: 31, scope: !70)
!115 = !{!"llvm.loop.vectorize.enable", i1 true}
!116 = !DILocation(line: 66, column: 20, scope: !70)
!117 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !71, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !117, type: !73, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !117, type: !73, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "i", arg: 3, scope: !117, type: !77, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "len", arg: 4, scope: !117, type: !77, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "a", arg: 5, scope: !117, type: !78, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "b", arg: 6, scope: !117, type: !78, flags: DIFlagArtificial)
!125 = !DILocation(line: 0, scope: !117)
!126 = !DILocation(line: 64, column: 1, scope: !117)
!127 = !{!128}
!128 = !{i64 2, i64 -1, i64 -1, i1 true}
