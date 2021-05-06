; ModuleID = 'DRB010-lastprivatemissing-var-yes.c'
source_filename = "DRB010-lastprivatemissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [49 x i8] c";DRB010-lastprivatemissing-var-yes.c;main;61;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [50 x i8] c";DRB010-lastprivatemissing-var-yes.c;main;61;38;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"x=%d\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %len = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !24
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !28
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !31
  %0 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !33
  %1 = bitcast i32* %x to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %x, metadata !22, metadata !DIExpression()), !dbg !34
  %2 = bitcast i32* %len to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %len, metadata !23, metadata !DIExpression()), !dbg !36
  store i32 10000, i32* %len, align 4, !dbg !36, !tbaa !24
  %3 = load i32, i32* %argc.addr, align 4, !dbg !37, !tbaa !24
  %cmp = icmp sgt i32 %3, 1, !dbg !39
  br i1 %cmp, label %if.then, label %if.end, !dbg !40

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !41, !tbaa !29
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !41
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !41, !tbaa !29
  %call = call i32 @atoi(i8* %5) #8, !dbg !42
  store i32 %call, i32* %len, align 4, !dbg !43, !tbaa !24
  br label %if.end, !dbg !44

if.end:                                           ; preds = %if.then, %entry
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %x), !dbg !45
  %6 = load i32, i32* %x, align 4, !dbg !46, !tbaa !24
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %6), !dbg !47
  %7 = bitcast i32* %len to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !48
  %8 = bitcast i32* %x to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !48
  %9 = bitcast i32* %i to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !48
  ret i32 0, !dbg !49
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !50 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !59, !tbaa !29
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #5, !dbg !60
  %conv = trunc i64 %call to i32, !dbg !61
  ret i32 %conv, !dbg !62
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %x) #4 !dbg !63 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
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
  %i4 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !83
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !83
  store i32* %len, i32** %len.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !74, metadata !DIExpression()), !dbg !84
  store i32* %x, i32** %x.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !75, metadata !DIExpression()), !dbg !85
  %0 = load i32*, i32** %len.addr, align 8, !dbg !86, !tbaa !29
  %1 = load i32*, i32** %x.addr, align 8, !dbg !86, !tbaa !29
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !76, metadata !DIExpression()), !dbg !83
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !77, metadata !DIExpression()), !dbg !83
  %4 = load i32, i32* %0, align 4, !dbg !87, !tbaa !24
  store i32 %4, i32* %.capture_expr., align 4, !dbg !87, !tbaa !24
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !77, metadata !DIExpression()), !dbg !83
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !87, !tbaa !24
  %sub = sub nsw i32 %6, 0, !dbg !86
  %div = sdiv i32 %sub, 1, !dbg !86
  %sub2 = sub nsw i32 %div, 1, !dbg !86
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !24
  %7 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i, metadata !78, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %i, align 4, !dbg !88, !tbaa !24
  %8 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !86
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !87, !tbaa !24
  %cmp = icmp slt i32 0, %9, !dbg !86
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !86

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !79, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %.omp.lb, align 4, !dbg !89, !tbaa !24
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !80, metadata !DIExpression()), !dbg !83
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !24
  store i32 %12, i32* %.omp.ub, align 4, !dbg !89, !tbaa !24
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !81, metadata !DIExpression()), !dbg !83
  store i32 1, i32* %.omp.stride, align 4, !dbg !89, !tbaa !24
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89, !tbaa !24
  %15 = bitcast i32* %i3 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !78, metadata !DIExpression()), !dbg !83
  %16 = bitcast i32* %i4 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !78, metadata !DIExpression()), !dbg !83
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !86
  %18 = load i32, i32* %17, align 4, !dbg !86, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !90
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !24
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !24
  %cmp5 = icmp sgt i32 %19, %20, !dbg !89
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !24
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !24
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89, !tbaa !24
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !89, !tbaa !24
  store i32 %23, i32* %.omp.iv, align 4, !dbg !89, !tbaa !24
  br label %omp.inner.for.cond, !dbg !86

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !24
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !24
  %cmp6 = icmp sle i32 %24, %25, !dbg !86
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !86

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !86

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !24
  %mul = mul nsw i32 %26, 1, !dbg !88
  %add = add nsw i32 0, %mul, !dbg !88
  store i32 %add, i32* %i3, align 4, !dbg !88, !tbaa !24
  %27 = load i32, i32* %i3, align 4, !dbg !91, !tbaa !24
  store i32 %27, i32* %1, align 4, !dbg !92, !tbaa !24
  br label %omp.body.continue, !dbg !93

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !90

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !24
  %add7 = add nsw i32 %28, 1, !dbg !86
  store i32 %add7, i32* %.omp.iv, align 4, !dbg !86, !tbaa !24
  br label %omp.inner.for.cond, !dbg !90, !llvm.loop !94

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !90

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %29 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %30 = load i32, i32* %29, align 4, !dbg !90, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %30), !dbg !95
  %31 = bitcast i32* %i4 to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !90
  %32 = bitcast i32* %i3 to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !90
  %33 = bitcast i32* %.omp.is_last to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !90
  %34 = bitcast i32* %.omp.stride to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !90
  %35 = bitcast i32* %.omp.ub to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !90
  %36 = bitcast i32* %.omp.lb to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !90
  br label %omp.precond.end, !dbg !90

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %37 = bitcast i32* %.capture_expr.1 to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !90
  %38 = bitcast i32* %.capture_expr. to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !90
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !90
  ret void, !dbg !91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %x) #4 !dbg !96 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !102
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !102
  store i32* %len, i32** %len.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !100, metadata !DIExpression()), !dbg !102
  store i32* %x, i32** %x.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = load i32*, i32** %len.addr, align 8, !dbg !103, !tbaa !29
  %1 = load i32*, i32** %x.addr, align 8, !dbg !103, !tbaa !29
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103, !tbaa !29
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !103, !tbaa !29
  %4 = load i32*, i32** %len.addr, align 8, !dbg !103, !tbaa !29
  %5 = load i32*, i32** %x.addr, align 8, !dbg !103, !tbaa !29
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !103
  ret void, !dbg !103
}

; Function Attrs: nounwind
declare !callback !104 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #7

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB010-lastprivatemissing-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !16, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 54, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 54, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 56, type: !4)
!22 = !DILocalVariable(name: "x", scope: !15, file: !1, line: 56, type: !4)
!23 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 57, type: !4)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 54, column: 14, scope: !15)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !DILocation(line: 54, column: 26, scope: !15)
!32 = !DILocation(line: 56, column: 3, scope: !15)
!33 = !DILocation(line: 56, column: 7, scope: !15)
!34 = !DILocation(line: 56, column: 9, scope: !15)
!35 = !DILocation(line: 57, column: 3, scope: !15)
!36 = !DILocation(line: 57, column: 7, scope: !15)
!37 = !DILocation(line: 58, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !15, file: !1, line: 58, column: 7)
!39 = !DILocation(line: 58, column: 11, scope: !38)
!40 = !DILocation(line: 58, column: 7, scope: !15)
!41 = !DILocation(line: 59, column: 16, scope: !38)
!42 = !DILocation(line: 59, column: 11, scope: !38)
!43 = !DILocation(line: 59, column: 9, scope: !38)
!44 = !DILocation(line: 59, column: 5, scope: !38)
!45 = !DILocation(line: 61, column: 1, scope: !15)
!46 = !DILocation(line: 64, column: 17, scope: !15)
!47 = !DILocation(line: 64, column: 3, scope: !15)
!48 = !DILocation(line: 66, column: 1, scope: !15)
!49 = !DILocation(line: 65, column: 3, scope: !15)
!50 = distinct !DISubprogram(name: "atoi", scope: !51, file: !51, line: 361, type: !52, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!51 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!52 = !DISubroutineType(types: !53)
!53 = !{!4, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!56 = !{!57}
!57 = !DILocalVariable(name: "__nptr", arg: 1, scope: !50, file: !51, line: 361, type: !54)
!58 = !DILocation(line: 361, column: 1, scope: !50)
!59 = !DILocation(line: 363, column: 24, scope: !50)
!60 = !DILocation(line: 363, column: 16, scope: !50)
!61 = !DILocation(line: 363, column: 10, scope: !50)
!62 = !DILocation(line: 363, column: 3, scope: !50)
!63 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !64, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !66, !70, !70}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!70 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!71 = !{!72, !73, !74, !75, !76, !77, !77, !78, !79, !80, !81, !82, !78, !78}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !63, type: !66, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !63, type: !66, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "len", arg: 3, scope: !63, file: !1, line: 57, type: !70)
!75 = !DILocalVariable(name: "x", arg: 4, scope: !63, file: !1, line: 56, type: !70)
!76 = !DILocalVariable(name: ".omp.iv", scope: !63, type: !4, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".capture_expr.", scope: !63, type: !4, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "i", scope: !63, type: !4, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.lb", scope: !63, type: !4, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.ub", scope: !63, type: !4, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.stride", scope: !63, type: !4, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.is_last", scope: !63, type: !4, flags: DIFlagArtificial)
!83 = !DILocation(line: 0, scope: !63)
!84 = !DILocation(line: 57, column: 7, scope: !63)
!85 = !DILocation(line: 56, column: 9, scope: !63)
!86 = !DILocation(line: 62, column: 3, scope: !63)
!87 = !DILocation(line: 62, column: 14, scope: !63)
!88 = !DILocation(line: 62, column: 18, scope: !63)
!89 = !DILocation(line: 62, column: 8, scope: !63)
!90 = !DILocation(line: 61, column: 1, scope: !63)
!91 = !DILocation(line: 63, column: 7, scope: !63)
!92 = !DILocation(line: 63, column: 6, scope: !63)
!93 = !DILocation(line: 63, column: 5, scope: !63)
!94 = distinct !{!94, !90, !95}
!95 = !DILocation(line: 61, column: 38, scope: !63)
!96 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !64, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!97 = !{!98, !99, !100, !101}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !96, type: !66, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !96, type: !66, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "len", arg: 3, scope: !96, type: !70, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "x", arg: 4, scope: !96, type: !70, flags: DIFlagArtificial)
!102 = !DILocation(line: 0, scope: !96)
!103 = !DILocation(line: 61, column: 1, scope: !96)
!104 = !{!105}
!105 = !{i64 2, i64 -1, i64 -1, i1 true}
