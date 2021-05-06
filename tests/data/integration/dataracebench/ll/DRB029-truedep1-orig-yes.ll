; ModuleID = 'DRB029-truedep1-orig-yes.c'
source_filename = "DRB029-truedep1-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [40 x i8] c";DRB029-truedep1-orig-yes.c;main;62;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [41 x i8] c";DRB029-truedep1-orig-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
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
  store i32 100, i32* %len, align 4, !dbg !36, !tbaa !25
  %2 = bitcast [100 x i32]* %a to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %2) #4, !dbg !37
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !21, metadata !DIExpression()), !dbg !38
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
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !49
  store i32 %5, i32* %arrayidx, align 4, !dbg !50, !tbaa !25
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !51, !tbaa !25
  %inc = add nsw i32 %7, 1, !dbg !51
  store i32 %inc, i32* %i, align 4, !dbg !51, !tbaa !25
  br label %for.cond, !dbg !52, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x i32]* %a), !dbg !56
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !57
  %8 = load i32, i32* %arrayidx1, align 8, !dbg !57, !tbaa !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8), !dbg !58
  %9 = bitcast [100 x i32]* %a to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %9) #4, !dbg !59
  %10 = bitcast i32* %len to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !59
  %11 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !59
  ret i32 0, !dbg !60
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [100 x i32]* nonnull align 4 dereferenceable(400) %a) #3 !dbg !61 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !71, metadata !DIExpression()), !dbg !82
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !72, metadata !DIExpression()), !dbg !82
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !73, metadata !DIExpression()), !dbg !83
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !74, metadata !DIExpression()), !dbg !84
  %0 = load i32*, i32** %len.addr, align 8, !dbg !85, !tbaa !30
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !85, !tbaa !30
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !75, metadata !DIExpression()), !dbg !82
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !76, metadata !DIExpression()), !dbg !82
  %4 = load i32, i32* %0, align 4, !dbg !86, !tbaa !25
  %sub = sub nsw i32 %4, 1, !dbg !87
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !86, !tbaa !25
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !76, metadata !DIExpression()), !dbg !82
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !87, !tbaa !25
  %sub2 = sub nsw i32 %6, 0, !dbg !85
  %div = sdiv i32 %sub2, 1, !dbg !85
  %sub3 = sub nsw i32 %div, 1, !dbg !85
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !85, !tbaa !25
  %7 = bitcast i32* %i to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %i, metadata !77, metadata !DIExpression()), !dbg !82
  store i32 0, i32* %i, align 4, !dbg !88, !tbaa !25
  %8 = bitcast i32* %i to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !85
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !87, !tbaa !25
  %cmp = icmp slt i32 0, %9, !dbg !85
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !85

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !78, metadata !DIExpression()), !dbg !82
  store i32 0, i32* %.omp.lb, align 4, !dbg !89, !tbaa !25
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !79, metadata !DIExpression()), !dbg !82
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !85, !tbaa !25
  store i32 %12, i32* %.omp.ub, align 4, !dbg !89, !tbaa !25
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !80, metadata !DIExpression()), !dbg !82
  store i32 1, i32* %.omp.stride, align 4, !dbg !89, !tbaa !25
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89, !tbaa !25
  %15 = bitcast i32* %i4 to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !77, metadata !DIExpression()), !dbg !82
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !85
  %17 = load i32, i32* %16, align 4, !dbg !85, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !90
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !25
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !85, !tbaa !25
  %cmp5 = icmp sgt i32 %18, %19, !dbg !89
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !85, !tbaa !25
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !25
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89, !tbaa !25
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !89, !tbaa !25
  store i32 %22, i32* %.omp.iv, align 4, !dbg !89, !tbaa !25
  br label %omp.inner.for.cond, !dbg !85

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !25
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !25
  %cmp6 = icmp sle i32 %23, %24, !dbg !85
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !85

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !85

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !25
  %mul = mul nsw i32 %25, 1, !dbg !88
  %add = add nsw i32 0, %mul, !dbg !88
  store i32 %add, i32* %i4, align 4, !dbg !88, !tbaa !25
  %26 = load i32, i32* %i4, align 4, !dbg !91, !tbaa !25
  %idxprom = sext i32 %26 to i64, !dbg !92
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %idxprom, !dbg !92
  %27 = load i32, i32* %arrayidx, align 4, !dbg !92, !tbaa !25
  %add7 = add nsw i32 %27, 1, !dbg !93
  %28 = load i32, i32* %i4, align 4, !dbg !94, !tbaa !25
  %add8 = add nsw i32 %28, 1, !dbg !95
  %idxprom9 = sext i32 %add8 to i64, !dbg !96
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %idxprom9, !dbg !96
  store i32 %add7, i32* %arrayidx10, align 4, !dbg !97, !tbaa !25
  br label %omp.body.continue, !dbg !96

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !90

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !25
  %add11 = add nsw i32 %29, 1, !dbg !85
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !85, !tbaa !25
  br label %omp.inner.for.cond, !dbg !90, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !90

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %31 = load i32, i32* %30, align 4, !dbg !90, !tbaa !25
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %31), !dbg !99
  %32 = bitcast i32* %i4 to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !90
  %33 = bitcast i32* %.omp.is_last to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !90
  %34 = bitcast i32* %.omp.stride to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !90
  %35 = bitcast i32* %.omp.ub to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !90
  %36 = bitcast i32* %.omp.lb to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !90
  br label %omp.precond.end, !dbg !90

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %37 = bitcast i32* %.capture_expr.1 to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !90
  %38 = bitcast i32* %.capture_expr. to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !90
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !90
  ret void, !dbg !100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [100 x i32]* nonnull align 4 dereferenceable(400) %a) #3 !dbg !101 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !103, metadata !DIExpression()), !dbg !107
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !104, metadata !DIExpression()), !dbg !107
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !105, metadata !DIExpression()), !dbg !107
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !106, metadata !DIExpression()), !dbg !107
  %0 = load i32*, i32** %len.addr, align 8, !dbg !108, !tbaa !30
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !108, !tbaa !30
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108, !tbaa !30
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !108, !tbaa !30
  %4 = load i32*, i32** %len.addr, align 8, !dbg !108, !tbaa !30
  %5 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !108, !tbaa !30
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [100 x i32]* %5) #4, !dbg !108
  ret void, !dbg !108
}

; Function Attrs: nounwind
declare !callback !109 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB029-truedep1-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 53, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 53, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!20 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 56, type: !12)
!21 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 57, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 53, column: 14, scope: !9)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 53, column: 26, scope: !9)
!33 = !DILocation(line: 55, column: 3, scope: !9)
!34 = !DILocation(line: 55, column: 7, scope: !9)
!35 = !DILocation(line: 56, column: 3, scope: !9)
!36 = !DILocation(line: 56, column: 7, scope: !9)
!37 = !DILocation(line: 57, column: 3, scope: !9)
!38 = !DILocation(line: 57, column: 7, scope: !9)
!39 = !DILocation(line: 59, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!41 = !DILocation(line: 59, column: 8, scope: !40)
!42 = !DILocation(line: 59, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 59, column: 3)
!44 = !DILocation(line: 59, column: 14, scope: !43)
!45 = !DILocation(line: 59, column: 13, scope: !43)
!46 = !DILocation(line: 59, column: 3, scope: !40)
!47 = !DILocation(line: 60, column: 10, scope: !43)
!48 = !DILocation(line: 60, column: 7, scope: !43)
!49 = !DILocation(line: 60, column: 5, scope: !43)
!50 = !DILocation(line: 60, column: 9, scope: !43)
!51 = !DILocation(line: 59, column: 19, scope: !43)
!52 = !DILocation(line: 59, column: 3, scope: !43)
!53 = distinct !{!53, !46, !54, !55}
!54 = !DILocation(line: 60, column: 10, scope: !40)
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !DILocation(line: 62, column: 1, scope: !9)
!57 = !DILocation(line: 66, column: 24, scope: !9)
!58 = !DILocation(line: 66, column: 3, scope: !9)
!59 = !DILocation(line: 68, column: 1, scope: !9)
!60 = !DILocation(line: 67, column: 3, scope: !9)
!61 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !62, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !70)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !64, !68, !69}
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!68 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!70 = !{!71, !72, !73, !74, !75, !76, !76, !77, !78, !79, !80, !81, !77}
!71 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !61, type: !64, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !61, type: !64, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "len", arg: 3, scope: !61, file: !1, line: 56, type: !68)
!74 = !DILocalVariable(name: "a", arg: 4, scope: !61, file: !1, line: 57, type: !69)
!75 = !DILocalVariable(name: ".omp.iv", scope: !61, type: !12, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".capture_expr.", scope: !61, type: !12, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "i", scope: !61, type: !12, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.lb", scope: !61, type: !12, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.ub", scope: !61, type: !12, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.stride", scope: !61, type: !12, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.is_last", scope: !61, type: !12, flags: DIFlagArtificial)
!82 = !DILocation(line: 0, scope: !61)
!83 = !DILocation(line: 56, column: 7, scope: !61)
!84 = !DILocation(line: 57, column: 7, scope: !61)
!85 = !DILocation(line: 63, column: 3, scope: !61)
!86 = !DILocation(line: 63, column: 14, scope: !61)
!87 = !DILocation(line: 63, column: 17, scope: !61)
!88 = !DILocation(line: 63, column: 20, scope: !61)
!89 = !DILocation(line: 63, column: 8, scope: !61)
!90 = !DILocation(line: 62, column: 1, scope: !61)
!91 = !DILocation(line: 64, column: 14, scope: !61)
!92 = !DILocation(line: 64, column: 12, scope: !61)
!93 = !DILocation(line: 64, column: 16, scope: !61)
!94 = !DILocation(line: 64, column: 7, scope: !61)
!95 = !DILocation(line: 64, column: 8, scope: !61)
!96 = !DILocation(line: 64, column: 5, scope: !61)
!97 = !DILocation(line: 64, column: 11, scope: !61)
!98 = distinct !{!98, !90, !99}
!99 = !DILocation(line: 62, column: 25, scope: !61)
!100 = !DILocation(line: 64, column: 17, scope: !61)
!101 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !62, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !102)
!102 = !{!103, !104, !105, !106}
!103 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !64, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !101, type: !64, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "len", arg: 3, scope: !101, type: !68, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "a", arg: 4, scope: !101, type: !69, flags: DIFlagArtificial)
!107 = !DILocation(line: 0, scope: !101)
!108 = !DILocation(line: 62, column: 1, scope: !101)
!109 = !{!110}
!110 = !{i64 2, i64 -1, i64 -1, i1 true}
