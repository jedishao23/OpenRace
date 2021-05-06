; ModuleID = 'DRB141-reduction-barrier-orig-no.c'
source_filename = "DRB141-reduction-barrier-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;25;5;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;28;5;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;30;5;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [49 x i8] c";DRB141-reduction-barrier-orig-no.c;main;30;35;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @6, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @6, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @4, i32 0, i32 0) }, align 8
@10 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;35;5;;\00", align 1
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @10, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1
@12 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @10, i32 0, i32 0) }, align 8
@13 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;23;3;;\00", align 1
@14 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @13, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %a to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %a, metadata !14, metadata !DIExpression()), !dbg !17
  %1 = bitcast i32* %i to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !15, metadata !DIExpression()), !dbg !18
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @14, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %a), !dbg !19
  %2 = bitcast i32* %i to i8*, !dbg !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !20
  %3 = bitcast i32* %a to i8*, !dbg !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !20
  ret i32 0, !dbg !21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %a) #3 !dbg !22 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %a1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !31, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !32, metadata !DIExpression()), !dbg !48
  store i32* %a, i32** %a.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !33, metadata !DIExpression()), !dbg !49
  %0 = load i32*, i32** %a.addr, align 8, !dbg !50, !tbaa !44
  %1 = bitcast i32* %i to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !DIExpression()), !dbg !48
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %3 = load i32, i32* %2, align 4, !dbg !51, !tbaa !52
  %4 = call i32 @__kmpc_master(%struct.ident_t* @1, i32 %3), !dbg !51
  %5 = icmp ne i32 %4, 0, !dbg !51
  br i1 %5, label %omp_if.then, label %omp_if.end, !dbg !51

omp_if.then:                                      ; preds = %entry
  store i32 0, i32* %0, align 4, !dbg !54, !tbaa !52
  call void @__kmpc_end_master(%struct.ident_t* @1, i32 %3), !dbg !56
  br label %omp_if.end, !dbg !56

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @3, i32 %3), !dbg !57
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !35, metadata !DIExpression()), !dbg !59
  %7 = bitcast i32* %.omp.lb to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !38, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.lb, align 4, !dbg !60, !tbaa !52
  %8 = bitcast i32* %.omp.ub to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !39, metadata !DIExpression()), !dbg !59
  store i32 9, i32* %.omp.ub, align 4, !dbg !60, !tbaa !52
  %9 = bitcast i32* %.omp.stride to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !40, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !60, !tbaa !52
  %10 = bitcast i32* %.omp.is_last to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !41, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !60, !tbaa !52
  %11 = bitcast i32* %a1 to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %a1, metadata !42, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %a1, align 4, !dbg !61, !tbaa !52
  %12 = bitcast i32* %i2 to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !43, metadata !DIExpression()), !dbg !59
  call void @__kmpc_for_static_init_4(%struct.ident_t* @5, i32 %3, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !62
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !52
  %cmp = icmp sgt i32 %13, 9, !dbg !60
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !60

cond.true:                                        ; preds = %omp_if.end
  br label %cond.end, !dbg !60

cond.false:                                       ; preds = %omp_if.end
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !52
  br label %cond.end, !dbg !60

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %14, %cond.false ], !dbg !60
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !60, !tbaa !52
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !60, !tbaa !52
  store i32 %15, i32* %.omp.iv, align 4, !dbg !60, !tbaa !52
  br label %omp.inner.for.cond, !dbg !58

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !52
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !52
  %cmp3 = icmp sle i32 %16, %17, !dbg !63
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !58

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !58

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !52
  %mul = mul nsw i32 %18, 1, !dbg !64
  %add = add nsw i32 0, %mul, !dbg !64
  store i32 %add, i32* %i2, align 4, !dbg !64, !tbaa !52
  %19 = load i32, i32* %i2, align 4, !dbg !65, !tbaa !52
  %20 = load i32, i32* %a1, align 4, !dbg !67, !tbaa !52
  %add4 = add nsw i32 %20, %19, !dbg !67
  store i32 %add4, i32* %a1, align 4, !dbg !67, !tbaa !52
  br label %omp.body.continue, !dbg !68

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !62

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !52
  %add5 = add nsw i32 %21, 1, !dbg !63
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !63, !tbaa !52
  br label %omp.inner.for.cond, !dbg !62, !llvm.loop !69

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !62

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @7, i32 %3), !dbg !70
  %22 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !62
  %23 = bitcast i32* %a1 to i8*, !dbg !62
  store i8* %23, i8** %22, align 8, !dbg !62
  %24 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !62
  %25 = call i32 @__kmpc_reduce(%struct.ident_t* @8, i32 %3, i32 1, i64 8, i8* %24, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !62
  switch i32 %25, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !62

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %26 = load i32, i32* %0, align 4, !dbg !61, !tbaa !52
  %27 = load i32, i32* %a1, align 4, !dbg !61, !tbaa !52
  %add6 = add nsw i32 %26, %27, !dbg !71
  store i32 %add6, i32* %0, align 4, !dbg !71, !tbaa !52
  call void @__kmpc_end_reduce(%struct.ident_t* @8, i32 %3, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !62
  br label %.omp.reduction.default, !dbg !62

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %28 = load i32, i32* %a1, align 4, !dbg !61, !tbaa !52
  %29 = atomicrmw add i32* %0, i32 %28 monotonic, !dbg !62
  call void @__kmpc_end_reduce(%struct.ident_t* @8, i32 %3, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !62
  br label %.omp.reduction.default, !dbg !62

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %30 = bitcast i32* %i2 to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !62
  %31 = bitcast i32* %a1 to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !62
  %32 = bitcast i32* %.omp.is_last to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !62
  %33 = bitcast i32* %.omp.stride to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !62
  %34 = bitcast i32* %.omp.ub to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !62
  %35 = bitcast i32* %.omp.lb to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !62
  %36 = bitcast i32* %.omp.iv to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !62
  call void @__kmpc_barrier(%struct.ident_t* @9, i32 %3), !dbg !70
  %37 = call i32 @__kmpc_single(%struct.ident_t* @11, i32 %3), !dbg !72
  %38 = icmp ne i32 %37, 0, !dbg !72
  br i1 %38, label %omp_if.then7, label %omp_if.end8, !dbg !72

omp_if.then7:                                     ; preds = %.omp.reduction.default
  %39 = load i32, i32* %0, align 4, !dbg !73, !tbaa !52
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %39), !dbg !75
  call void @__kmpc_end_single(%struct.ident_t* @11, i32 %3), !dbg !75
  br label %omp_if.end8, !dbg !75

omp_if.end8:                                      ; preds = %omp_if.then7, %.omp.reduction.default
  call void @__kmpc_barrier(%struct.ident_t* @12, i32 %3), !dbg !76
  %40 = bitcast i32* %i to i8*, !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !77
  ret void, !dbg !78
}

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_master(%struct.ident_t*, i32) #4

; Function Attrs: inaccessiblemem_or_argmemonly
declare i32 @__kmpc_master(%struct.ident_t*, i32) #4

declare void @__kmpc_barrier(%struct.ident_t*, i32)

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !79 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !82, metadata !DIExpression()), !dbg !85
  store i8* %1, i8** %.addr1, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !84, metadata !DIExpression()), !dbg !85
  %2 = load i8*, i8** %.addr, align 8, !dbg !86
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !86
  %4 = load i8*, i8** %.addr1, align 8, !dbg !86
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !86
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !86
  %7 = load i8*, i8** %6, align 8, !dbg !86
  %8 = bitcast i8* %7 to i32*, !dbg !86
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !86
  %10 = load i8*, i8** %9, align 8, !dbg !86
  %11 = bitcast i8* %10 to i32*, !dbg !86
  %12 = load i32, i32* %11, align 4, !dbg !87, !tbaa !52
  %13 = load i32, i32* %8, align 4, !dbg !87, !tbaa !52
  %add = add nsw i32 %12, %13, !dbg !88
  store i32 %add, i32* %11, align 4, !dbg !88, !tbaa !52
  ret void, !dbg !87
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #5

; Function Attrs: nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #5

declare i32 @printf(i8*, ...) #6

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %a) #3 !dbg !89 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !91, metadata !DIExpression()), !dbg !94
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !92, metadata !DIExpression()), !dbg !94
  store i32* %a, i32** %a.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load i32*, i32** %a.addr, align 8, !dbg !95, !tbaa !44
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !95, !tbaa !44
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !95, !tbaa !44
  %3 = load i32*, i32** %a.addr, align 8, !dbg !95, !tbaa !44
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !95
  ret void, !dbg !95
}

; Function Attrs: nounwind
declare !callback !96 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblemem_or_argmemonly }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB141-reduction-barrier-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !10, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 21, type: !12)
!15 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 21, type: !12)
!16 = !DILocation(line: 21, column: 3, scope: !9)
!17 = !DILocation(line: 21, column: 7, scope: !9)
!18 = !DILocation(line: 21, column: 10, scope: !9)
!19 = !DILocation(line: 23, column: 3, scope: !9)
!20 = !DILocation(line: 40, column: 1, scope: !9)
!21 = !DILocation(line: 39, column: 3, scope: !9)
!22 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 24, type: !23, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !25, !29}
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!29 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!30 = !{!31, !32, !33, !34, !35, !38, !39, !40, !41, !42, !43}
!31 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !22, type: !25, flags: DIFlagArtificial)
!32 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !22, type: !25, flags: DIFlagArtificial)
!33 = !DILocalVariable(name: "a", arg: 3, scope: !22, file: !1, line: 21, type: !29)
!34 = !DILocalVariable(name: "i", scope: !22, type: !12, flags: DIFlagArtificial)
!35 = !DILocalVariable(name: ".omp.iv", scope: !36, type: !12, flags: DIFlagArtificial)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 30, column: 5)
!37 = distinct !DILexicalBlock(scope: !22, file: !1, line: 24, column: 3)
!38 = !DILocalVariable(name: ".omp.lb", scope: !36, type: !12, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".omp.ub", scope: !36, type: !12, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.stride", scope: !36, type: !12, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.is_last", scope: !36, type: !12, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "a", scope: !36, type: !12, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: "i", scope: !36, type: !12, flags: DIFlagArtificial)
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 0, scope: !22)
!49 = !DILocation(line: 21, column: 7, scope: !22)
!50 = !DILocation(line: 24, column: 3, scope: !22)
!51 = !DILocation(line: 25, column: 5, scope: !37)
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !46, i64 0}
!54 = !DILocation(line: 26, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !37, file: !1, line: 25, column: 5)
!56 = !DILocation(line: 26, column: 5, scope: !55)
!57 = !DILocation(line: 28, column: 5, scope: !37)
!58 = !DILocation(line: 30, column: 5, scope: !37)
!59 = !DILocation(line: 0, scope: !36)
!60 = !DILocation(line: 31, column: 10, scope: !36)
!61 = !DILocation(line: 30, column: 33, scope: !36)
!62 = !DILocation(line: 30, column: 5, scope: !36)
!63 = !DILocation(line: 31, column: 5, scope: !36)
!64 = !DILocation(line: 31, column: 21, scope: !36)
!65 = !DILocation(line: 32, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !36, file: !1, line: 31, column: 25)
!67 = !DILocation(line: 32, column: 9, scope: !66)
!68 = !DILocation(line: 33, column: 5, scope: !66)
!69 = distinct !{!69, !62, !70}
!70 = !DILocation(line: 30, column: 35, scope: !36)
!71 = !DILocation(line: 30, column: 31, scope: !36)
!72 = !DILocation(line: 35, column: 5, scope: !37)
!73 = !DILocation(line: 36, column: 27, scope: !74)
!74 = distinct !DILexicalBlock(scope: !37, file: !1, line: 35, column: 5)
!75 = !DILocation(line: 36, column: 5, scope: !74)
!76 = !DILocation(line: 35, column: 23, scope: !74)
!77 = !DILocation(line: 37, column: 3, scope: !37)
!78 = !DILocation(line: 37, column: 3, scope: !22)
!79 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 30, type: !80, scopeLine: 30, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!80 = !DISubroutineType(types: !2)
!81 = !{!82, !84}
!82 = !DILocalVariable(arg: 1, scope: !79, type: !83, flags: DIFlagArtificial)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DILocalVariable(arg: 2, scope: !79, type: !83, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !79)
!86 = !DILocation(line: 30, column: 35, scope: !79)
!87 = !DILocation(line: 30, column: 33, scope: !79)
!88 = !DILocation(line: 30, column: 31, scope: !79)
!89 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 23, type: !23, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !90)
!90 = !{!91, !92, !93}
!91 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !25, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !25, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "a", arg: 3, scope: !89, type: !29, flags: DIFlagArtificial)
!94 = !DILocation(line: 0, scope: !89)
!95 = !DILocation(line: 23, column: 3, scope: !89)
!96 = !{!97}
!97 = !{i64 2, i64 -1, i64 -1, i1 true}
