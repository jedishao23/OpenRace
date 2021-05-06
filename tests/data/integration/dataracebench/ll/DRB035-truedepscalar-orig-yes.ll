; ModuleID = 'DRB035-truedepscalar-orig-yes.c'
source_filename = "DRB035-truedepscalar-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [45 x i8] c";DRB035-truedepscalar-orig-yes.c;main;63;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [46 x i8] c";DRB035-truedepscalar-orig-yes.c;main;63;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
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
  store i32 10, i32* %tmp, align 4, !dbg !38, !tbaa !26
  %2 = bitcast i32* %len to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %len, metadata !21, metadata !DIExpression()), !dbg !40
  store i32 100, i32* %len, align 4, !dbg !40, !tbaa !26
  %3 = bitcast [100 x i32]* %a to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %3) #4, !dbg !41
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !22, metadata !DIExpression()), !dbg !42
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x i32]* %a, i32* %tmp), !dbg !43
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !44
  %4 = load i32, i32* %arrayidx, align 8, !dbg !44, !tbaa !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4), !dbg !45
  %5 = bitcast [100 x i32]* %a to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %5) #4, !dbg !46
  %6 = bitcast i32* %len to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !46
  %7 = bitcast i32* %tmp to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #4, !dbg !46
  %8 = bitcast i32* %i to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !46
  ret i32 0, !dbg !47
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [100 x i32]* nonnull align 4 dereferenceable(400) %a, i32* nonnull align 4 dereferenceable(4) %tmp) #3 !dbg !48 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !70
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !70
  store i32* %len, i32** %len.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !60, metadata !DIExpression()), !dbg !71
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !61, metadata !DIExpression()), !dbg !72
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !62, metadata !DIExpression()), !dbg !73
  %0 = load i32*, i32** %len.addr, align 8, !dbg !74, !tbaa !31
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !74, !tbaa !31
  %2 = load i32*, i32** %tmp.addr, align 8, !dbg !74, !tbaa !31
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !63, metadata !DIExpression()), !dbg !70
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !64, metadata !DIExpression()), !dbg !70
  %5 = load i32, i32* %0, align 4, !dbg !75, !tbaa !26
  store i32 %5, i32* %.capture_expr., align 4, !dbg !75, !tbaa !26
  %6 = bitcast i32* %.capture_expr.2 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !64, metadata !DIExpression()), !dbg !70
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !75, !tbaa !26
  %sub = sub nsw i32 %7, 0, !dbg !74
  %div = sdiv i32 %sub, 1, !dbg !74
  %sub3 = sub nsw i32 %div, 1, !dbg !74
  store i32 %sub3, i32* %.capture_expr.2, align 4, !dbg !74, !tbaa !26
  %8 = bitcast i32* %i to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %i, align 4, !dbg !76, !tbaa !26
  %9 = bitcast i32* %i to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !74
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !75, !tbaa !26
  %cmp = icmp slt i32 0, %10, !dbg !74
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !74

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !66, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %.omp.lb, align 4, !dbg !77, !tbaa !26
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !67, metadata !DIExpression()), !dbg !70
  %13 = load i32, i32* %.capture_expr.2, align 4, !dbg !74, !tbaa !26
  store i32 %13, i32* %.omp.ub, align 4, !dbg !77, !tbaa !26
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !68, metadata !DIExpression()), !dbg !70
  store i32 1, i32* %.omp.stride, align 4, !dbg !77, !tbaa !26
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %.omp.is_last, align 4, !dbg !77, !tbaa !26
  %16 = bitcast i32* %i4 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !65, metadata !DIExpression()), !dbg !70
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74
  %18 = load i32, i32* %17, align 4, !dbg !74, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !78
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !77, !tbaa !26
  %20 = load i32, i32* %.capture_expr.2, align 4, !dbg !74, !tbaa !26
  %cmp5 = icmp sgt i32 %19, %20, !dbg !77
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !77

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.2, align 4, !dbg !74, !tbaa !26
  br label %cond.end, !dbg !77

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !77, !tbaa !26
  br label %cond.end, !dbg !77

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !77
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !77, !tbaa !26
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !77, !tbaa !26
  store i32 %23, i32* %.omp.iv, align 4, !dbg !77, !tbaa !26
  br label %omp.inner.for.cond, !dbg !74

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !77, !tbaa !26
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !77, !tbaa !26
  %cmp6 = icmp sle i32 %24, %25, !dbg !74
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !74

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !74

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !77, !tbaa !26
  %mul = mul nsw i32 %26, 1, !dbg !76
  %add = add nsw i32 0, %mul, !dbg !76
  store i32 %add, i32* %i4, align 4, !dbg !76, !tbaa !26
  %27 = load i32, i32* %2, align 4, !dbg !79, !tbaa !26
  %28 = load i32, i32* %i4, align 4, !dbg !81, !tbaa !26
  %idxprom = sext i32 %28 to i64, !dbg !82
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %idxprom, !dbg !82
  store i32 %27, i32* %arrayidx, align 4, !dbg !83, !tbaa !26
  %29 = load i32, i32* %i4, align 4, !dbg !84, !tbaa !26
  %idxprom7 = sext i32 %29 to i64, !dbg !85
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %idxprom7, !dbg !85
  %30 = load i32, i32* %arrayidx8, align 4, !dbg !85, !tbaa !26
  %31 = load i32, i32* %i4, align 4, !dbg !86, !tbaa !26
  %add9 = add nsw i32 %30, %31, !dbg !87
  store i32 %add9, i32* %2, align 4, !dbg !88, !tbaa !26
  br label %omp.body.continue, !dbg !89

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !78

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !77, !tbaa !26
  %add10 = add nsw i32 %32, 1, !dbg !74
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !74, !tbaa !26
  br label %omp.inner.for.cond, !dbg !78, !llvm.loop !90

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !78

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %34 = load i32, i32* %33, align 4, !dbg !78, !tbaa !26
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %34), !dbg !91
  %35 = bitcast i32* %i4 to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !78
  %36 = bitcast i32* %.omp.is_last to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !78
  %37 = bitcast i32* %.omp.stride to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !78
  %38 = bitcast i32* %.omp.ub to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !78
  %39 = bitcast i32* %.omp.lb to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !78
  br label %omp.precond.end, !dbg !78

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %40 = bitcast i32* %.capture_expr.2 to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !78
  %41 = bitcast i32* %.capture_expr. to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !78
  %42 = bitcast i32* %.omp.iv to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !78
  ret void, !dbg !92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [100 x i32]* nonnull align 4 dereferenceable(400) %a, i32* nonnull align 4 dereferenceable(4) %tmp) #3 !dbg !93 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %tmp.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !95, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !96, metadata !DIExpression()), !dbg !100
  store i32* %len, i32** %len.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !97, metadata !DIExpression()), !dbg !100
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !98, metadata !DIExpression()), !dbg !100
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i32*, i32** %len.addr, align 8, !dbg !101, !tbaa !31
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !101, !tbaa !31
  %2 = load i32*, i32** %tmp.addr, align 8, !dbg !101, !tbaa !31
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101, !tbaa !31
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !101, !tbaa !31
  %5 = load i32*, i32** %len.addr, align 8, !dbg !101, !tbaa !31
  %6 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !101, !tbaa !31
  %7 = load i32*, i32** %tmp.addr, align 8, !dbg !101, !tbaa !31
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x i32]* %6, i32* %7) #4, !dbg !101
  ret void, !dbg !101
}

; Function Attrs: nounwind
declare !callback !102 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB035-truedepscalar-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = !{!17, !18, !19, !20, !21, !22}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 54, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 54, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 56, type: !12)
!20 = !DILocalVariable(name: "tmp", scope: !9, file: !1, line: 57, type: !12)
!21 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 59, type: !12)
!22 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 61, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 54, column: 14, scope: !9)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !DILocation(line: 54, column: 26, scope: !9)
!34 = !DILocation(line: 56, column: 3, scope: !9)
!35 = !DILocation(line: 56, column: 7, scope: !9)
!36 = !DILocation(line: 57, column: 3, scope: !9)
!37 = !DILocation(line: 57, column: 7, scope: !9)
!38 = !DILocation(line: 58, column: 7, scope: !9)
!39 = !DILocation(line: 59, column: 3, scope: !9)
!40 = !DILocation(line: 59, column: 7, scope: !9)
!41 = !DILocation(line: 61, column: 3, scope: !9)
!42 = !DILocation(line: 61, column: 7, scope: !9)
!43 = !DILocation(line: 63, column: 1, scope: !9)
!44 = !DILocation(line: 70, column: 24, scope: !9)
!45 = !DILocation(line: 70, column: 3, scope: !9)
!46 = !DILocation(line: 72, column: 1, scope: !9)
!47 = !DILocation(line: 71, column: 3, scope: !9)
!48 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !49, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !51, !55, !56, !55}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!55 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !64, !65, !66, !67, !68, !69, !65}
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !51, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !48, type: !51, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "len", arg: 3, scope: !48, file: !1, line: 59, type: !55)
!61 = !DILocalVariable(name: "a", arg: 4, scope: !48, file: !1, line: 61, type: !56)
!62 = !DILocalVariable(name: "tmp", arg: 5, scope: !48, file: !1, line: 57, type: !55)
!63 = !DILocalVariable(name: ".omp.iv", scope: !48, type: !12, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".capture_expr.", scope: !48, type: !12, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "i", scope: !48, type: !12, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".omp.lb", scope: !48, type: !12, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".omp.ub", scope: !48, type: !12, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.stride", scope: !48, type: !12, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.is_last", scope: !48, type: !12, flags: DIFlagArtificial)
!70 = !DILocation(line: 0, scope: !48)
!71 = !DILocation(line: 59, column: 7, scope: !48)
!72 = !DILocation(line: 61, column: 7, scope: !48)
!73 = !DILocation(line: 57, column: 7, scope: !48)
!74 = !DILocation(line: 64, column: 3, scope: !48)
!75 = !DILocation(line: 64, column: 14, scope: !48)
!76 = !DILocation(line: 64, column: 18, scope: !48)
!77 = !DILocation(line: 64, column: 8, scope: !48)
!78 = !DILocation(line: 63, column: 1, scope: !48)
!79 = !DILocation(line: 66, column: 12, scope: !80)
!80 = distinct !DILexicalBlock(scope: !48, file: !1, line: 65, column: 3)
!81 = !DILocation(line: 66, column: 7, scope: !80)
!82 = !DILocation(line: 66, column: 5, scope: !80)
!83 = !DILocation(line: 66, column: 10, scope: !80)
!84 = !DILocation(line: 67, column: 12, scope: !80)
!85 = !DILocation(line: 67, column: 10, scope: !80)
!86 = !DILocation(line: 67, column: 15, scope: !80)
!87 = !DILocation(line: 67, column: 14, scope: !80)
!88 = !DILocation(line: 67, column: 9, scope: !80)
!89 = !DILocation(line: 68, column: 3, scope: !80)
!90 = distinct !{!90, !78, !91}
!91 = !DILocation(line: 63, column: 25, scope: !48)
!92 = !DILocation(line: 68, column: 3, scope: !48)
!93 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !49, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !93, type: !51, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !93, type: !51, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "len", arg: 3, scope: !93, type: !55, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "a", arg: 4, scope: !93, type: !56, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "tmp", arg: 5, scope: !93, type: !55, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !93)
!101 = !DILocation(line: 63, column: 1, scope: !93)
!102 = !{!103}
!103 = !{i64 2, i64 -1, i64 -1, i1 true}
