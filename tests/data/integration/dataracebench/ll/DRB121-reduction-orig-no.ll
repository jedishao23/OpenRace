; ModuleID = 'DRB121-reduction-orig-no.c'
source_filename = "DRB121-reduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [40 x i8] c";DRB121-reduction-orig-no.c;main;30;5;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [41 x i8] c";DRB121-reduction-orig-no.c;main;30;56;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [40 x i8] c";DRB121-reduction-orig-no.c;main;33;5;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @6, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant [41 x i8] c";DRB121-reduction-orig-no.c;main;33;56;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @8, i32 0, i32 0) }, align 8
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @8, i32 0, i32 0) }, align 8
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @6, i32 0, i32 0) }, align 8
@12 = private unnamed_addr constant [41 x i8] c";DRB121-reduction-orig-no.c;main;28;41;;\00", align 1
@13 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @12, i32 0, i32 0) }, align 8
@14 = private unnamed_addr constant [40 x i8] c";DRB121-reduction-orig-no.c;main;28;3;;\00", align 1
@15 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @14, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %error = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !29
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !32
  %0 = bitcast i32* %var to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %var, metadata !19, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %var, align 4, !dbg !34, !tbaa !25
  %1 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !35
  %2 = bitcast i32* %res to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %res, metadata !21, metadata !DIExpression()), !dbg !36
  %3 = bitcast i32* %sum1 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %sum1, metadata !22, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %sum1, align 4, !dbg !38, !tbaa !25
  %4 = bitcast i32* %sum2 to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %sum2, metadata !23, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %sum2, align 4, !dbg !40, !tbaa !25
  %call = call i32 @omp_get_max_threads(), !dbg !41
  store i32 %call, i32* %res, align 4, !dbg !42, !tbaa !25
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @15, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum1, i32* %sum2, i32* %var), !dbg !43
  %5 = bitcast i32* %error to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %error, metadata !24, metadata !DIExpression()), !dbg !45
  %6 = load i32, i32* %var, align 4, !dbg !46, !tbaa !25
  %7 = load i32, i32* %res, align 4, !dbg !47, !tbaa !25
  %mul = mul nsw i32 20, %7, !dbg !48
  %cmp = icmp ne i32 %6, %mul, !dbg !49
  %conv = zext i1 %cmp to i32, !dbg !49
  store i32 %conv, i32* %error, align 4, !dbg !45, !tbaa !25
  %8 = load i32, i32* %error, align 4, !dbg !50, !tbaa !25
  %tobool = icmp ne i32 %8, 0, !dbg !50
  br i1 %tobool, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %var, align 4, !dbg !53, !tbaa !25
  %10 = load i32, i32* %res, align 4, !dbg !54, !tbaa !25
  %mul1 = mul nsw i32 20, %10, !dbg !55
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %mul1), !dbg !56
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %error, align 4, !dbg !57, !tbaa !25
  %12 = bitcast i32* %error to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !58
  %13 = bitcast i32* %sum2 to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #5, !dbg !58
  %14 = bitcast i32* %sum1 to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #5, !dbg !58
  %15 = bitcast i32* %res to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #5, !dbg !58
  %16 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #5, !dbg !58
  %17 = bitcast i32* %var to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #5, !dbg !58
  ret i32 %11, !dbg !59
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !60 i32 @omp_get_max_threads() #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %sum1, i32* nonnull align 4 dereferenceable(4) %sum2, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum1.addr = alloca i32*, align 8
  %sum2.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %var1 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum12 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %.omp.iv7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %.omp.lb9 = alloca i32, align 4
  %.omp.ub10 = alloca i32, align 4
  %.omp.stride11 = alloca i32, align 4
  %.omp.is_last12 = alloca i32, align 4
  %sum213 = alloca i32, align 4
  %i14 = alloca i32, align 4
  %.omp.reduction.red_list32 = alloca [1 x i8*], align 8
  %.omp.reduction.red_list38 = alloca [1 x i8*], align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !96
  store i32* %sum1, i32** %sum1.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %sum1.addr, metadata !75, metadata !DIExpression()), !dbg !97
  store i32* %sum2, i32** %sum2.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %sum2.addr, metadata !76, metadata !DIExpression()), !dbg !98
  store i32* %var, i32** %var.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !77, metadata !DIExpression()), !dbg !99
  %0 = load i32*, i32** %sum1.addr, align 8, !dbg !100, !tbaa !30
  %1 = load i32*, i32** %sum2.addr, align 8, !dbg !100, !tbaa !30
  %2 = load i32*, i32** %var.addr, align 8, !dbg !100, !tbaa !30
  %3 = bitcast i32* %var1 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !78, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %var1, align 4, !dbg !101, !tbaa !25
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !79, metadata !DIExpression()), !dbg !103
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !82, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %.omp.lb, align 4, !dbg !104, !tbaa !25
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !83, metadata !DIExpression()), !dbg !103
  store i32 4, i32* %.omp.ub, align 4, !dbg !104, !tbaa !25
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !84, metadata !DIExpression()), !dbg !103
  store i32 1, i32* %.omp.stride, align 4, !dbg !104, !tbaa !25
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !85, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %.omp.is_last, align 4, !dbg !104, !tbaa !25
  %9 = bitcast i32* %sum12 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %sum12, metadata !86, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %sum12, align 4, !dbg !105, !tbaa !25
  %10 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !103
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %12 = load i32, i32* %11, align 4, !dbg !102, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !106
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !104, !tbaa !25
  %cmp = icmp sgt i32 %13, 4, !dbg !104
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !104

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !104

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !104, !tbaa !25
  br label %cond.end, !dbg !104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %14, %cond.false ], !dbg !104
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !104, !tbaa !25
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !104, !tbaa !25
  store i32 %15, i32* %.omp.iv, align 4, !dbg !104, !tbaa !25
  br label %omp.inner.for.cond, !dbg !102

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !104, !tbaa !25
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !104, !tbaa !25
  %cmp3 = icmp sle i32 %16, %17, !dbg !107
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !102

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !102

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !104, !tbaa !25
  %mul = mul nsw i32 %18, 1, !dbg !108
  %add = add nsw i32 0, %mul, !dbg !108
  store i32 %add, i32* %i, align 4, !dbg !108, !tbaa !25
  %19 = load i32, i32* %i, align 4, !dbg !109, !tbaa !25
  %20 = load i32, i32* %sum12, align 4, !dbg !110, !tbaa !25
  %add4 = add nsw i32 %20, %19, !dbg !110
  store i32 %add4, i32* %sum12, align 4, !dbg !110, !tbaa !25
  br label %omp.body.continue, !dbg !111

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !106

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !104, !tbaa !25
  %add5 = add nsw i32 %21, 1, !dbg !107
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !107, !tbaa !25
  br label %omp.inner.for.cond, !dbg !106, !llvm.loop !112

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !106

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %12), !dbg !113
  %22 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !106
  %23 = bitcast i32* %sum12 to i8*, !dbg !106
  store i8* %23, i8** %22, align 8, !dbg !106
  %24 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !106
  %25 = call i32 @__kmpc_reduce(%struct.ident_t* @4, i32 %12, i32 1, i64 8, i8* %24, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !106
  switch i32 %25, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !106

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %26 = load i32, i32* %0, align 4, !dbg !105, !tbaa !25
  %27 = load i32, i32* %sum12, align 4, !dbg !105, !tbaa !25
  %add6 = add nsw i32 %26, %27, !dbg !114
  store i32 %add6, i32* %0, align 4, !dbg !114, !tbaa !25
  call void @__kmpc_end_reduce(%struct.ident_t* @4, i32 %12, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !106
  br label %.omp.reduction.default, !dbg !106

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %28 = load i32, i32* %sum12, align 4, !dbg !105, !tbaa !25
  %29 = atomicrmw add i32* %0, i32 %28 monotonic, !dbg !106
  call void @__kmpc_end_reduce(%struct.ident_t* @4, i32 %12, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !106
  br label %.omp.reduction.default, !dbg !106

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %30 = bitcast i32* %i to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !106
  %31 = bitcast i32* %sum12 to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !106
  %32 = bitcast i32* %.omp.is_last to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !106
  %33 = bitcast i32* %.omp.stride to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !106
  %34 = bitcast i32* %.omp.ub to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !106
  %35 = bitcast i32* %.omp.lb to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !106
  %36 = bitcast i32* %.omp.iv to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !106
  call void @__kmpc_barrier(%struct.ident_t* @5, i32 %12), !dbg !113
  %37 = bitcast i32* %.omp.iv7 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %37) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.iv7, metadata !88, metadata !DIExpression()), !dbg !116
  %38 = bitcast i32* %.omp.lb9 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.lb9, metadata !90, metadata !DIExpression()), !dbg !116
  store i32 0, i32* %.omp.lb9, align 4, !dbg !117, !tbaa !25
  %39 = bitcast i32* %.omp.ub10 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.ub10, metadata !91, metadata !DIExpression()), !dbg !116
  store i32 4, i32* %.omp.ub10, align 4, !dbg !117, !tbaa !25
  %40 = bitcast i32* %.omp.stride11 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.stride11, metadata !92, metadata !DIExpression()), !dbg !116
  store i32 1, i32* %.omp.stride11, align 4, !dbg !117, !tbaa !25
  %41 = bitcast i32* %.omp.is_last12 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last12, metadata !93, metadata !DIExpression()), !dbg !116
  store i32 0, i32* %.omp.is_last12, align 4, !dbg !117, !tbaa !25
  %42 = bitcast i32* %sum213 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %sum213, metadata !94, metadata !DIExpression()), !dbg !116
  store i32 0, i32* %sum213, align 4, !dbg !118, !tbaa !25
  %43 = bitcast i32* %i14 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %43) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %i14, metadata !95, metadata !DIExpression()), !dbg !116
  call void @__kmpc_for_static_init_4(%struct.ident_t* @7, i32 %12, i32 34, i32* %.omp.is_last12, i32* %.omp.lb9, i32* %.omp.ub10, i32* %.omp.stride11, i32 1, i32 1), !dbg !119
  %44 = load i32, i32* %.omp.ub10, align 4, !dbg !117, !tbaa !25
  %cmp15 = icmp sgt i32 %44, 4, !dbg !117
  br i1 %cmp15, label %cond.true16, label %cond.false17, !dbg !117

cond.true16:                                      ; preds = %.omp.reduction.default
  br label %cond.end18, !dbg !117

cond.false17:                                     ; preds = %.omp.reduction.default
  %45 = load i32, i32* %.omp.ub10, align 4, !dbg !117, !tbaa !25
  br label %cond.end18, !dbg !117

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i32 [ 4, %cond.true16 ], [ %45, %cond.false17 ], !dbg !117
  store i32 %cond19, i32* %.omp.ub10, align 4, !dbg !117, !tbaa !25
  %46 = load i32, i32* %.omp.lb9, align 4, !dbg !117, !tbaa !25
  store i32 %46, i32* %.omp.iv7, align 4, !dbg !117, !tbaa !25
  br label %omp.inner.for.cond20, !dbg !115

omp.inner.for.cond20:                             ; preds = %omp.inner.for.inc28, %cond.end18
  %47 = load i32, i32* %.omp.iv7, align 4, !dbg !117, !tbaa !25
  %48 = load i32, i32* %.omp.ub10, align 4, !dbg !117, !tbaa !25
  %cmp21 = icmp sle i32 %47, %48, !dbg !120
  br i1 %cmp21, label %omp.inner.for.body23, label %omp.inner.for.cond.cleanup22, !dbg !115

omp.inner.for.cond.cleanup22:                     ; preds = %omp.inner.for.cond20
  br label %omp.inner.for.end30, !dbg !115

omp.inner.for.body23:                             ; preds = %omp.inner.for.cond20
  %49 = load i32, i32* %.omp.iv7, align 4, !dbg !117, !tbaa !25
  %mul24 = mul nsw i32 %49, 1, !dbg !121
  %add25 = add nsw i32 0, %mul24, !dbg !121
  store i32 %add25, i32* %i14, align 4, !dbg !121, !tbaa !25
  %50 = load i32, i32* %i14, align 4, !dbg !122, !tbaa !25
  %51 = load i32, i32* %sum213, align 4, !dbg !123, !tbaa !25
  %add26 = add nsw i32 %51, %50, !dbg !123
  store i32 %add26, i32* %sum213, align 4, !dbg !123, !tbaa !25
  br label %omp.body.continue27, !dbg !124

omp.body.continue27:                              ; preds = %omp.inner.for.body23
  br label %omp.inner.for.inc28, !dbg !119

omp.inner.for.inc28:                              ; preds = %omp.body.continue27
  %52 = load i32, i32* %.omp.iv7, align 4, !dbg !117, !tbaa !25
  %add29 = add nsw i32 %52, 1, !dbg !120
  store i32 %add29, i32* %.omp.iv7, align 4, !dbg !120, !tbaa !25
  br label %omp.inner.for.cond20, !dbg !119, !llvm.loop !125

omp.inner.for.end30:                              ; preds = %omp.inner.for.cond.cleanup22
  br label %omp.loop.exit31, !dbg !119

omp.loop.exit31:                                  ; preds = %omp.inner.for.end30
  call void @__kmpc_for_static_fini(%struct.ident_t* @9, i32 %12), !dbg !126
  %53 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list32, i64 0, i64 0, !dbg !119
  %54 = bitcast i32* %sum213 to i8*, !dbg !119
  store i8* %54, i8** %53, align 8, !dbg !119
  %55 = bitcast [1 x i8*]* %.omp.reduction.red_list32 to i8*, !dbg !119
  %56 = call i32 @__kmpc_reduce(%struct.ident_t* @10, i32 %12, i32 1, i64 8, i8* %55, void (i8*, i8*)* @.omp.reduction.reduction_func.1, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !119
  switch i32 %56, label %.omp.reduction.default36 [
    i32 1, label %.omp.reduction.case133
    i32 2, label %.omp.reduction.case235
  ], !dbg !119

.omp.reduction.case133:                           ; preds = %omp.loop.exit31
  %57 = load i32, i32* %1, align 4, !dbg !118, !tbaa !25
  %58 = load i32, i32* %sum213, align 4, !dbg !118, !tbaa !25
  %add34 = add nsw i32 %57, %58, !dbg !127
  store i32 %add34, i32* %1, align 4, !dbg !127, !tbaa !25
  call void @__kmpc_end_reduce(%struct.ident_t* @10, i32 %12, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !119
  br label %.omp.reduction.default36, !dbg !119

.omp.reduction.case235:                           ; preds = %omp.loop.exit31
  %59 = load i32, i32* %sum213, align 4, !dbg !118, !tbaa !25
  %60 = atomicrmw add i32* %1, i32 %59 monotonic, !dbg !119
  call void @__kmpc_end_reduce(%struct.ident_t* @10, i32 %12, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !119
  br label %.omp.reduction.default36, !dbg !119

.omp.reduction.default36:                         ; preds = %.omp.reduction.case235, %.omp.reduction.case133, %omp.loop.exit31
  %61 = bitcast i32* %i14 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #5, !dbg !119
  %62 = bitcast i32* %sum213 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #5, !dbg !119
  %63 = bitcast i32* %.omp.is_last12 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #5, !dbg !119
  %64 = bitcast i32* %.omp.stride11 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #5, !dbg !119
  %65 = bitcast i32* %.omp.ub10 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #5, !dbg !119
  %66 = bitcast i32* %.omp.lb9 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #5, !dbg !119
  %67 = bitcast i32* %.omp.iv7 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #5, !dbg !119
  call void @__kmpc_barrier(%struct.ident_t* @11, i32 %12), !dbg !126
  %68 = load i32, i32* %0, align 4, !dbg !128, !tbaa !25
  %69 = load i32, i32* %1, align 4, !dbg !129, !tbaa !25
  %add37 = add nsw i32 %68, %69, !dbg !130
  store i32 %add37, i32* %var1, align 4, !dbg !131, !tbaa !25
  %70 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list38, i64 0, i64 0, !dbg !132
  %71 = bitcast i32* %var1 to i8*, !dbg !132
  store i8* %71, i8** %70, align 8, !dbg !132
  %72 = bitcast [1 x i8*]* %.omp.reduction.red_list38 to i8*, !dbg !132
  %73 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @13, i32 %12, i32 1, i64 8, i8* %72, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !132
  switch i32 %73, label %.omp.reduction.default42 [
    i32 1, label %.omp.reduction.case139
    i32 2, label %.omp.reduction.case241
  ], !dbg !132

.omp.reduction.case139:                           ; preds = %.omp.reduction.default36
  %74 = load i32, i32* %2, align 4, !dbg !101, !tbaa !25
  %75 = load i32, i32* %var1, align 4, !dbg !101, !tbaa !25
  %add40 = add nsw i32 %74, %75, !dbg !133
  store i32 %add40, i32* %2, align 4, !dbg !133, !tbaa !25
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @13, i32 %12, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !132
  br label %.omp.reduction.default42, !dbg !132

.omp.reduction.case241:                           ; preds = %.omp.reduction.default36
  %76 = load i32, i32* %var1, align 4, !dbg !101, !tbaa !25
  %77 = atomicrmw add i32* %2, i32 %76 monotonic, !dbg !132
  br label %.omp.reduction.default42, !dbg !132

.omp.reduction.default42:                         ; preds = %.omp.reduction.case241, %.omp.reduction.case139, %.omp.reduction.default36
  %78 = bitcast i32* %var1 to i8*, !dbg !132
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #5, !dbg !132
  ret void, !dbg !134
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !135 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !138, metadata !DIExpression()), !dbg !141
  store i8* %1, i8** %.addr1, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !140, metadata !DIExpression()), !dbg !141
  %2 = load i8*, i8** %.addr, align 8, !dbg !142
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !142
  %4 = load i8*, i8** %.addr1, align 8, !dbg !142
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !142
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !142
  %7 = load i8*, i8** %6, align 8, !dbg !142
  %8 = bitcast i8* %7 to i32*, !dbg !142
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !142
  %10 = load i8*, i8** %9, align 8, !dbg !142
  %11 = bitcast i8* %10 to i32*, !dbg !142
  %12 = load i32, i32* %11, align 4, !dbg !143, !tbaa !25
  %13 = load i32, i32* %8, align 4, !dbg !143, !tbaa !25
  %add = add nsw i32 %12, %13, !dbg !144
  store i32 %add, i32* %11, align 4, !dbg !144, !tbaa !25
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #5

; Function Attrs: nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func.1(i8* %0, i8* %1) #4 !dbg !145 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !147, metadata !DIExpression()), !dbg !149
  store i8* %1, i8** %.addr1, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !148, metadata !DIExpression()), !dbg !149
  %2 = load i8*, i8** %.addr, align 8, !dbg !150
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !150
  %4 = load i8*, i8** %.addr1, align 8, !dbg !150
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !150
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !150
  %7 = load i8*, i8** %6, align 8, !dbg !150
  %8 = bitcast i8* %7 to i32*, !dbg !150
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !150
  %10 = load i8*, i8** %9, align 8, !dbg !150
  %11 = bitcast i8* %10 to i32*, !dbg !150
  %12 = load i32, i32* %11, align 4, !dbg !151, !tbaa !25
  %13 = load i32, i32* %8, align 4, !dbg !151, !tbaa !25
  %add = add nsw i32 %12, %13, !dbg !152
  store i32 %add, i32* %11, align 4, !dbg !152, !tbaa !25
  ret void, !dbg !151
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #4 !dbg !153 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !155, metadata !DIExpression()), !dbg !157
  store i8* %1, i8** %.addr1, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !156, metadata !DIExpression()), !dbg !157
  %2 = load i8*, i8** %.addr, align 8, !dbg !158
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !158
  %4 = load i8*, i8** %.addr1, align 8, !dbg !158
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !158
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !158
  %7 = load i8*, i8** %6, align 8, !dbg !158
  %8 = bitcast i8* %7 to i32*, !dbg !158
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !158
  %10 = load i8*, i8** %9, align 8, !dbg !158
  %11 = bitcast i8* %10 to i32*, !dbg !158
  %12 = load i32, i32* %11, align 4, !dbg !159, !tbaa !25
  %13 = load i32, i32* %8, align 4, !dbg !159, !tbaa !25
  %add = add nsw i32 %12, %13, !dbg !160
  store i32 %add, i32* %11, align 4, !dbg !160, !tbaa !25
  ret void, !dbg !159
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #5

; Function Attrs: nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %sum1, i32* nonnull align 4 dereferenceable(4) %sum2, i32* nonnull align 4 dereferenceable(4) %var) #4 !dbg !161 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum1.addr = alloca i32*, align 8
  %sum2.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !163, metadata !DIExpression()), !dbg !168
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !164, metadata !DIExpression()), !dbg !168
  store i32* %sum1, i32** %sum1.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %sum1.addr, metadata !165, metadata !DIExpression()), !dbg !168
  store i32* %sum2, i32** %sum2.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %sum2.addr, metadata !166, metadata !DIExpression()), !dbg !168
  store i32* %var, i32** %var.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = load i32*, i32** %sum1.addr, align 8, !dbg !169, !tbaa !30
  %1 = load i32*, i32** %sum2.addr, align 8, !dbg !169, !tbaa !30
  %2 = load i32*, i32** %var.addr, align 8, !dbg !169, !tbaa !30
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !169, !tbaa !30
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !169, !tbaa !30
  %5 = load i32*, i32** %sum1.addr, align 8, !dbg !169, !tbaa !30
  %6 = load i32*, i32** %sum2.addr, align 8, !dbg !169, !tbaa !30
  %7 = load i32*, i32** %var.addr, align 8, !dbg !169, !tbaa !30
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #5, !dbg !169
  ret void, !dbg !169
}

; Function Attrs: nounwind
declare !callback !170 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare i32 @printf(i8*, ...) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB121-reduction-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !10, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 20, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 20, type: !13)
!19 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 22, type: !12)
!20 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 22, type: !12)
!21 = !DILocalVariable(name: "res", scope: !9, file: !1, line: 22, type: !12)
!22 = !DILocalVariable(name: "sum1", scope: !9, file: !1, line: 23, type: !12)
!23 = !DILocalVariable(name: "sum2", scope: !9, file: !1, line: 24, type: !12)
!24 = !DILocalVariable(name: "error", scope: !9, file: !1, line: 40, type: !12)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 20, column: 14, scope: !9)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 20, column: 26, scope: !9)
!33 = !DILocation(line: 22, column: 3, scope: !9)
!34 = !DILocation(line: 22, column: 7, scope: !9)
!35 = !DILocation(line: 22, column: 16, scope: !9)
!36 = !DILocation(line: 22, column: 19, scope: !9)
!37 = !DILocation(line: 23, column: 3, scope: !9)
!38 = !DILocation(line: 23, column: 7, scope: !9)
!39 = !DILocation(line: 24, column: 3, scope: !9)
!40 = !DILocation(line: 24, column: 7, scope: !9)
!41 = !DILocation(line: 26, column: 9, scope: !9)
!42 = !DILocation(line: 26, column: 7, scope: !9)
!43 = !DILocation(line: 28, column: 3, scope: !9)
!44 = !DILocation(line: 40, column: 3, scope: !9)
!45 = !DILocation(line: 40, column: 7, scope: !9)
!46 = !DILocation(line: 40, column: 16, scope: !9)
!47 = !DILocation(line: 40, column: 26, scope: !9)
!48 = !DILocation(line: 40, column: 25, scope: !9)
!49 = !DILocation(line: 40, column: 20, scope: !9)
!50 = !DILocation(line: 41, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !9, file: !1, line: 41, column: 7)
!52 = !DILocation(line: 41, column: 7, scope: !9)
!53 = !DILocation(line: 41, column: 31, scope: !51)
!54 = !DILocation(line: 41, column: 38, scope: !51)
!55 = !DILocation(line: 41, column: 37, scope: !51)
!56 = !DILocation(line: 41, column: 14, scope: !51)
!57 = !DILocation(line: 42, column: 10, scope: !9)
!58 = !DILocation(line: 43, column: 1, scope: !9)
!59 = !DILocation(line: 42, column: 3, scope: !9)
!60 = !DISubprogram(name: "omp_get_max_threads", scope: !61, file: !61, line: 67, type: !62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!61 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!62 = !DISubroutineType(types: !63)
!63 = !{!12}
!64 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 29, type: !65, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !67, !71, !71, !71}
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93, !94, !95}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !67, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !67, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "sum1", arg: 3, scope: !64, file: !1, line: 23, type: !71)
!76 = !DILocalVariable(name: "sum2", arg: 4, scope: !64, file: !1, line: 24, type: !71)
!77 = !DILocalVariable(name: "var", arg: 5, scope: !64, file: !1, line: 22, type: !71)
!78 = !DILocalVariable(name: "var", scope: !64, type: !12, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.iv", scope: !80, type: !12, flags: DIFlagArtificial)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 30, column: 5)
!81 = distinct !DILexicalBlock(scope: !64, file: !1, line: 29, column: 3)
!82 = !DILocalVariable(name: ".omp.lb", scope: !80, type: !12, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.ub", scope: !80, type: !12, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.stride", scope: !80, type: !12, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.is_last", scope: !80, type: !12, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "sum1", scope: !80, type: !12, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "i", scope: !80, type: !12, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.iv", scope: !89, type: !12, flags: DIFlagArtificial)
!89 = distinct !DILexicalBlock(scope: !81, file: !1, line: 33, column: 5)
!90 = !DILocalVariable(name: ".omp.lb", scope: !89, type: !12, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.ub", scope: !89, type: !12, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.stride", scope: !89, type: !12, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.is_last", scope: !89, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "sum2", scope: !89, type: !12, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "i", scope: !89, type: !12, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !64)
!97 = !DILocation(line: 23, column: 7, scope: !64)
!98 = !DILocation(line: 24, column: 7, scope: !64)
!99 = !DILocation(line: 22, column: 7, scope: !64)
!100 = !DILocation(line: 29, column: 3, scope: !64)
!101 = !DILocation(line: 28, column: 37, scope: !64)
!102 = !DILocation(line: 30, column: 5, scope: !81)
!103 = !DILocation(line: 0, scope: !80)
!104 = !DILocation(line: 31, column: 10, scope: !80)
!105 = !DILocation(line: 30, column: 51, scope: !80)
!106 = !DILocation(line: 30, column: 5, scope: !80)
!107 = !DILocation(line: 31, column: 5, scope: !80)
!108 = !DILocation(line: 31, column: 20, scope: !80)
!109 = !DILocation(line: 32, column: 11, scope: !80)
!110 = !DILocation(line: 32, column: 9, scope: !80)
!111 = !DILocation(line: 32, column: 5, scope: !80)
!112 = distinct !{!112, !106, !113}
!113 = !DILocation(line: 30, column: 56, scope: !80)
!114 = !DILocation(line: 30, column: 48, scope: !80)
!115 = !DILocation(line: 33, column: 5, scope: !81)
!116 = !DILocation(line: 0, scope: !89)
!117 = !DILocation(line: 34, column: 10, scope: !89)
!118 = !DILocation(line: 33, column: 51, scope: !89)
!119 = !DILocation(line: 33, column: 5, scope: !89)
!120 = !DILocation(line: 34, column: 5, scope: !89)
!121 = !DILocation(line: 34, column: 20, scope: !89)
!122 = !DILocation(line: 35, column: 11, scope: !89)
!123 = !DILocation(line: 35, column: 9, scope: !89)
!124 = !DILocation(line: 35, column: 5, scope: !89)
!125 = distinct !{!125, !119, !126}
!126 = !DILocation(line: 33, column: 56, scope: !89)
!127 = !DILocation(line: 33, column: 48, scope: !89)
!128 = !DILocation(line: 37, column: 11, scope: !81)
!129 = !DILocation(line: 37, column: 18, scope: !81)
!130 = !DILocation(line: 37, column: 16, scope: !81)
!131 = !DILocation(line: 37, column: 9, scope: !81)
!132 = !DILocation(line: 38, column: 3, scope: !81)
!133 = !DILocation(line: 28, column: 34, scope: !64)
!134 = !DILocation(line: 38, column: 3, scope: !64)
!135 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 30, type: !136, scopeLine: 30, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!136 = !DISubroutineType(types: !2)
!137 = !{!138, !140}
!138 = !DILocalVariable(arg: 1, scope: !135, type: !139, flags: DIFlagArtificial)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DILocalVariable(arg: 2, scope: !135, type: !139, flags: DIFlagArtificial)
!141 = !DILocation(line: 0, scope: !135)
!142 = !DILocation(line: 30, column: 56, scope: !135)
!143 = !DILocation(line: 30, column: 51, scope: !135)
!144 = !DILocation(line: 30, column: 48, scope: !135)
!145 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.1", scope: !1, file: !1, line: 33, type: !136, scopeLine: 33, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!146 = !{!147, !148}
!147 = !DILocalVariable(arg: 1, scope: !145, type: !139, flags: DIFlagArtificial)
!148 = !DILocalVariable(arg: 2, scope: !145, type: !139, flags: DIFlagArtificial)
!149 = !DILocation(line: 0, scope: !145)
!150 = !DILocation(line: 33, column: 56, scope: !145)
!151 = !DILocation(line: 33, column: 51, scope: !145)
!152 = !DILocation(line: 33, column: 48, scope: !145)
!153 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !1, file: !1, line: 28, type: !136, scopeLine: 28, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !154)
!154 = !{!155, !156}
!155 = !DILocalVariable(arg: 1, scope: !153, type: !139, flags: DIFlagArtificial)
!156 = !DILocalVariable(arg: 2, scope: !153, type: !139, flags: DIFlagArtificial)
!157 = !DILocation(line: 0, scope: !153)
!158 = !DILocation(line: 28, column: 41, scope: !153)
!159 = !DILocation(line: 28, column: 37, scope: !153)
!160 = !DILocation(line: 28, column: 34, scope: !153)
!161 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 28, type: !65, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!162 = !{!163, !164, !165, !166, !167}
!163 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !161, type: !67, flags: DIFlagArtificial)
!164 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !161, type: !67, flags: DIFlagArtificial)
!165 = !DILocalVariable(name: "sum1", arg: 3, scope: !161, type: !71, flags: DIFlagArtificial)
!166 = !DILocalVariable(name: "sum2", arg: 4, scope: !161, type: !71, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: "var", arg: 5, scope: !161, type: !71, flags: DIFlagArtificial)
!168 = !DILocation(line: 0, scope: !161)
!169 = !DILocation(line: 28, column: 3, scope: !161)
!170 = !{!171}
!171 = !{i64 2, i64 -1, i64 -1, i1 true}
