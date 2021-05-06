; ModuleID = 'DRB028-privatemissing-orig-yes.c'
source_filename = "DRB028-privatemissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [46 x i8] c";DRB028-privatemissing-orig-yes.c;main;62;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [47 x i8] c";DRB028-privatemissing-orig-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !26
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !30
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !33
  %0 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !35
  %1 = bitcast i32* %tmp to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !20, metadata !DIExpression()), !dbg !37
  %2 = bitcast i32* %len to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %len, metadata !21, metadata !DIExpression()), !dbg !39
  store i32 100, i32* %len, align 4, !dbg !39, !tbaa !26
  %3 = bitcast [100 x i32]* %a to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %3) #4, !dbg !40
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !22, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %i, align 4, !dbg !42, !tbaa !26
  br label %for.cond, !dbg !44

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !45, !tbaa !26
  %5 = load i32, i32* %len, align 4, !dbg !47, !tbaa !26
  %cmp = icmp slt i32 %4, %5, !dbg !48
  br i1 %cmp, label %for.body, label %for.end, !dbg !49

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !50, !tbaa !26
  %7 = load i32, i32* %i, align 4, !dbg !51, !tbaa !26
  %idxprom = sext i32 %7 to i64, !dbg !52
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !52
  store i32 %6, i32* %arrayidx, align 4, !dbg !53, !tbaa !26
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !54, !tbaa !26
  %inc = add nsw i32 %8, 1, !dbg !54
  store i32 %inc, i32* %i, align 4, !dbg !54, !tbaa !26
  br label %for.cond, !dbg !55, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %tmp, [100 x i32]* %a), !dbg !59
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !60
  %9 = load i32, i32* %arrayidx1, align 8, !dbg !60, !tbaa !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9), !dbg !61
  %10 = bitcast [100 x i32]* %a to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %10) #4, !dbg !62
  %11 = bitcast i32* %len to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !62
  %12 = bitcast i32* %tmp to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !62
  %13 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !62
  ret i32 0, !dbg !63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %tmp, [100 x i32]* nonnull align 4 dereferenceable(400) %a) #3 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !86
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !86
  store i32* %len, i32** %len.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !76, metadata !DIExpression()), !dbg !87
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !77, metadata !DIExpression()), !dbg !88
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !78, metadata !DIExpression()), !dbg !89
  %0 = load i32*, i32** %len.addr, align 8, !dbg !90, !tbaa !31
  %1 = load i32*, i32** %tmp.addr, align 8, !dbg !90, !tbaa !31
  %2 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !90, !tbaa !31
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !79, metadata !DIExpression()), !dbg !86
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !80, metadata !DIExpression()), !dbg !86
  %5 = load i32, i32* %0, align 4, !dbg !91, !tbaa !26
  store i32 %5, i32* %.capture_expr., align 4, !dbg !91, !tbaa !26
  %6 = bitcast i32* %.capture_expr.2 to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !80, metadata !DIExpression()), !dbg !86
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !91, !tbaa !26
  %sub = sub nsw i32 %7, 0, !dbg !90
  %div = sdiv i32 %sub, 1, !dbg !90
  %sub3 = sub nsw i32 %div, 1, !dbg !90
  store i32 %sub3, i32* %.capture_expr.2, align 4, !dbg !90, !tbaa !26
  %8 = bitcast i32* %i to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i, metadata !81, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %i, align 4, !dbg !92, !tbaa !26
  %9 = bitcast i32* %i to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !90
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !91, !tbaa !26
  %cmp = icmp slt i32 0, %10, !dbg !90
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !90

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !82, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %.omp.lb, align 4, !dbg !93, !tbaa !26
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !83, metadata !DIExpression()), !dbg !86
  %13 = load i32, i32* %.capture_expr.2, align 4, !dbg !90, !tbaa !26
  store i32 %13, i32* %.omp.ub, align 4, !dbg !93, !tbaa !26
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !84, metadata !DIExpression()), !dbg !86
  store i32 1, i32* %.omp.stride, align 4, !dbg !93, !tbaa !26
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %.omp.is_last, align 4, !dbg !93, !tbaa !26
  %16 = bitcast i32* %i4 to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !81, metadata !DIExpression()), !dbg !86
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %18 = load i32, i32* %17, align 4, !dbg !90, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !94
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !93, !tbaa !26
  %20 = load i32, i32* %.capture_expr.2, align 4, !dbg !90, !tbaa !26
  %cmp5 = icmp sgt i32 %19, %20, !dbg !93
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !93

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.2, align 4, !dbg !90, !tbaa !26
  br label %cond.end, !dbg !93

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !93, !tbaa !26
  br label %cond.end, !dbg !93

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !93
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !93, !tbaa !26
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !93, !tbaa !26
  store i32 %23, i32* %.omp.iv, align 4, !dbg !93, !tbaa !26
  br label %omp.inner.for.cond, !dbg !90

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !93, !tbaa !26
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !93, !tbaa !26
  %cmp6 = icmp sle i32 %24, %25, !dbg !90
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !90

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !90

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !93, !tbaa !26
  %mul = mul nsw i32 %26, 1, !dbg !92
  %add = add nsw i32 0, %mul, !dbg !92
  store i32 %add, i32* %i4, align 4, !dbg !92, !tbaa !26
  %27 = load i32, i32* %i4, align 4, !dbg !95, !tbaa !26
  %idxprom = sext i32 %27 to i64, !dbg !97
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom, !dbg !97
  %28 = load i32, i32* %arrayidx, align 4, !dbg !97, !tbaa !26
  %29 = load i32, i32* %i4, align 4, !dbg !98, !tbaa !26
  %add7 = add nsw i32 %28, %29, !dbg !99
  store i32 %add7, i32* %1, align 4, !dbg !100, !tbaa !26
  %30 = load i32, i32* %1, align 4, !dbg !101, !tbaa !26
  %31 = load i32, i32* %i4, align 4, !dbg !102, !tbaa !26
  %idxprom8 = sext i32 %31 to i64, !dbg !103
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom8, !dbg !103
  store i32 %30, i32* %arrayidx9, align 4, !dbg !104, !tbaa !26
  br label %omp.body.continue, !dbg !105

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !94

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !93, !tbaa !26
  %add10 = add nsw i32 %32, 1, !dbg !90
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !90, !tbaa !26
  br label %omp.inner.for.cond, !dbg !94, !llvm.loop !106

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !94

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !94
  %34 = load i32, i32* %33, align 4, !dbg !94, !tbaa !26
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %34), !dbg !107
  %35 = bitcast i32* %i4 to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !94
  %36 = bitcast i32* %.omp.is_last to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !94
  %37 = bitcast i32* %.omp.stride to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !94
  %38 = bitcast i32* %.omp.ub to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !94
  %39 = bitcast i32* %.omp.lb to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !94
  br label %omp.precond.end, !dbg !94

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %40 = bitcast i32* %.capture_expr.2 to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !94
  %41 = bitcast i32* %.capture_expr. to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !94
  %42 = bitcast i32* %.omp.iv to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !94
  ret void, !dbg !108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %tmp, [100 x i32]* nonnull align 4 dereferenceable(400) %a) #3 !dbg !109 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !111, metadata !DIExpression()), !dbg !116
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !112, metadata !DIExpression()), !dbg !116
  store i32* %len, i32** %len.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !113, metadata !DIExpression()), !dbg !116
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !114, metadata !DIExpression()), !dbg !116
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !115, metadata !DIExpression()), !dbg !116
  %0 = load i32*, i32** %len.addr, align 8, !dbg !117, !tbaa !31
  %1 = load i32*, i32** %tmp.addr, align 8, !dbg !117, !tbaa !31
  %2 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !117, !tbaa !31
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !117, !tbaa !31
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !117, !tbaa !31
  %5 = load i32*, i32** %len.addr, align 8, !dbg !117, !tbaa !31
  %6 = load i32*, i32** %tmp.addr, align 8, !dbg !117, !tbaa !31
  %7 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !117, !tbaa !31
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, [100 x i32]* %7) #4, !dbg !117
  ret void, !dbg !117
}

; Function Attrs: nounwind
declare !callback !118 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB028-privatemissing-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !22}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 53, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 53, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!20 = !DILocalVariable(name: "tmp", scope: !9, file: !1, line: 56, type: !12)
!21 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 57, type: !12)
!22 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 58, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 53, column: 14, scope: !9)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !DILocation(line: 53, column: 26, scope: !9)
!34 = !DILocation(line: 55, column: 3, scope: !9)
!35 = !DILocation(line: 55, column: 7, scope: !9)
!36 = !DILocation(line: 56, column: 3, scope: !9)
!37 = !DILocation(line: 56, column: 7, scope: !9)
!38 = !DILocation(line: 57, column: 3, scope: !9)
!39 = !DILocation(line: 57, column: 7, scope: !9)
!40 = !DILocation(line: 58, column: 3, scope: !9)
!41 = !DILocation(line: 58, column: 7, scope: !9)
!42 = !DILocation(line: 59, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!44 = !DILocation(line: 59, column: 8, scope: !43)
!45 = !DILocation(line: 59, column: 12, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 59, column: 3)
!47 = !DILocation(line: 59, column: 14, scope: !46)
!48 = !DILocation(line: 59, column: 13, scope: !46)
!49 = !DILocation(line: 59, column: 3, scope: !43)
!50 = !DILocation(line: 60, column: 10, scope: !46)
!51 = !DILocation(line: 60, column: 7, scope: !46)
!52 = !DILocation(line: 60, column: 5, scope: !46)
!53 = !DILocation(line: 60, column: 9, scope: !46)
!54 = !DILocation(line: 59, column: 19, scope: !46)
!55 = !DILocation(line: 59, column: 3, scope: !46)
!56 = distinct !{!56, !49, !57, !58}
!57 = !DILocation(line: 60, column: 10, scope: !43)
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !DILocation(line: 62, column: 1, scope: !9)
!60 = !DILocation(line: 69, column: 24, scope: !9)
!61 = !DILocation(line: 69, column: 3, scope: !9)
!62 = !DILocation(line: 71, column: 1, scope: !9)
!63 = !DILocation(line: 70, column: 3, scope: !9)
!64 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !65, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !67, !71, !71, !72}
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!73 = !{!74, !75, !76, !77, !78, !79, !80, !80, !81, !82, !83, !84, !85, !81}
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !67, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !67, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "len", arg: 3, scope: !64, file: !1, line: 57, type: !71)
!77 = !DILocalVariable(name: "tmp", arg: 4, scope: !64, file: !1, line: 56, type: !71)
!78 = !DILocalVariable(name: "a", arg: 5, scope: !64, file: !1, line: 58, type: !72)
!79 = !DILocalVariable(name: ".omp.iv", scope: !64, type: !12, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".capture_expr.", scope: !64, type: !12, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "i", scope: !64, type: !12, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.lb", scope: !64, type: !12, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.ub", scope: !64, type: !12, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.stride", scope: !64, type: !12, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.is_last", scope: !64, type: !12, flags: DIFlagArtificial)
!86 = !DILocation(line: 0, scope: !64)
!87 = !DILocation(line: 57, column: 7, scope: !64)
!88 = !DILocation(line: 56, column: 7, scope: !64)
!89 = !DILocation(line: 58, column: 7, scope: !64)
!90 = !DILocation(line: 63, column: 3, scope: !64)
!91 = !DILocation(line: 63, column: 14, scope: !64)
!92 = !DILocation(line: 63, column: 18, scope: !64)
!93 = !DILocation(line: 63, column: 8, scope: !64)
!94 = !DILocation(line: 62, column: 1, scope: !64)
!95 = !DILocation(line: 65, column: 12, scope: !96)
!96 = distinct !DILexicalBlock(scope: !64, file: !1, line: 64, column: 3)
!97 = !DILocation(line: 65, column: 10, scope: !96)
!98 = !DILocation(line: 65, column: 15, scope: !96)
!99 = !DILocation(line: 65, column: 14, scope: !96)
!100 = !DILocation(line: 65, column: 9, scope: !96)
!101 = !DILocation(line: 66, column: 12, scope: !96)
!102 = !DILocation(line: 66, column: 7, scope: !96)
!103 = !DILocation(line: 66, column: 5, scope: !96)
!104 = !DILocation(line: 66, column: 10, scope: !96)
!105 = !DILocation(line: 67, column: 3, scope: !96)
!106 = distinct !{!106, !94, !107}
!107 = !DILocation(line: 62, column: 25, scope: !64)
!108 = !DILocation(line: 67, column: 3, scope: !64)
!109 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !65, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !109, type: !67, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !109, type: !67, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "len", arg: 3, scope: !109, type: !71, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "tmp", arg: 4, scope: !109, type: !71, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "a", arg: 5, scope: !109, type: !72, flags: DIFlagArtificial)
!116 = !DILocation(line: 0, scope: !109)
!117 = !DILocation(line: 62, column: 1, scope: !109)
!118 = !{!119}
!119 = !{i64 2, i64 -1, i64 -1, i1 true}
