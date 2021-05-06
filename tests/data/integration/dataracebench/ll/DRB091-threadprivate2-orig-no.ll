; ModuleID = 'DRB091-threadprivate2-orig-no.c'
source_filename = "DRB091-threadprivate2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW4sum0 = comdat any

@sum0 = dso_local thread_local global i32 0, align 4, !dbg !0
@sum1 = dso_local global i32 0, align 4, !dbg !6
@0 = private unnamed_addr constant [45 x i8] c";DRB091-threadprivate2-orig-no.c;main;62;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [45 x i8] c";DRB091-threadprivate2-orig-no.c;main;64;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [46 x i8] c";DRB091-threadprivate2-orig-no.c;main;64;16;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [45 x i8] c";DRB091-threadprivate2-orig-no.c;main;69;1;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @7, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sum==sum1\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DRB091-threadprivate2-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %len to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %len, metadata !19, metadata !DIExpression()), !dbg !23
  store i32 1000, i32* %len, align 4, !dbg !23, !tbaa !24
  %1 = bitcast i32* %i to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !29
  %2 = bitcast i32* %sum to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !21, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %sum, align 4, !dbg !30, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @9, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %sum, i32* @sum0), !dbg !31
  store i32 0, i32* %i, align 4, !dbg !32, !tbaa !24
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !35, !tbaa !24
  %4 = load i32, i32* %len, align 4, !dbg !37, !tbaa !24
  %cmp = icmp slt i32 %3, %4, !dbg !38
  br i1 %cmp, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* @sum1, align 4, !dbg !40, !tbaa !24
  %6 = load i32, i32* %i, align 4, !dbg !42, !tbaa !24
  %add = add nsw i32 %5, %6, !dbg !43
  store i32 %add, i32* @sum1, align 4, !dbg !44, !tbaa !24
  br label %for.inc, !dbg !45

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !46, !tbaa !24
  %inc = add nsw i32 %7, 1, !dbg !46
  store i32 %inc, i32* %i, align 4, !dbg !46, !tbaa !24
  br label %for.cond, !dbg !47, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %sum, align 4, !dbg !51, !tbaa !24
  %9 = load i32, i32* @sum1, align 4, !dbg !52, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9), !dbg !53
  %10 = load i32, i32* %sum, align 4, !dbg !54, !tbaa !24
  %11 = load i32, i32* @sum1, align 4, !dbg !54, !tbaa !24
  %cmp1 = icmp eq i32 %10, %11, !dbg !54
  br i1 %cmp1, label %if.then, label %if.else, !dbg !57

if.then:                                          ; preds = %for.end
  br label %if.end, !dbg !57

if.else:                                          ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9, !dbg !54
  unreachable, !dbg !54

if.end:                                           ; preds = %if.then
  %12 = bitcast i32* %sum to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !58
  %13 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !58
  %14 = bitcast i32* %len to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !58
  ret i32 0, !dbg !59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %sum, i32* nonnull align 4 dereferenceable(4) %sum0) #3 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum0.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !70, metadata !DIExpression()), !dbg !85
  store i32* %len, i32** %len.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !71, metadata !DIExpression()), !dbg !86
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !72, metadata !DIExpression()), !dbg !87
  store i32* %sum0, i32** %sum0.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !73, metadata !DIExpression()), !dbg !88
  %0 = load i32*, i32** %len.addr, align 8, !dbg !89, !tbaa !83
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !89, !tbaa !83
  %2 = load i32*, i32** %sum0.addr, align 8, !dbg !89, !tbaa !83
  %3 = ptrtoint i32* %2 to i64, !dbg !89
  %4 = icmp ne i64 %3, ptrtoint (i32* @sum0 to i64), !dbg !89
  br i1 %4, label %copyin.not.master, label %copyin.not.master.end, !dbg !89

copyin.not.master:                                ; preds = %entry
  %5 = load i32, i32* %2, align 4, !dbg !90, !tbaa !24
  store i32 %5, i32* @sum0, align 4, !dbg !90, !tbaa !24
  br label %copyin.not.master.end, !dbg !89

copyin.not.master.end:                            ; preds = %copyin.not.master, %entry
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %7 = load i32, i32* %6, align 4, !dbg !89, !tbaa !24
  call void @__kmpc_barrier(%struct.ident_t* @1, i32 %7), !dbg !89
  %8 = bitcast i32* %.omp.iv to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !74, metadata !DIExpression()), !dbg !92
  %9 = bitcast i32* %.capture_expr. to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !77, metadata !DIExpression()), !dbg !92
  %10 = load i32, i32* %0, align 4, !dbg !93, !tbaa !24
  store i32 %10, i32* %.capture_expr., align 4, !dbg !93, !tbaa !24
  %11 = bitcast i32* %.capture_expr.1 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !77, metadata !DIExpression()), !dbg !92
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !93, !tbaa !24
  %sub = sub nsw i32 %12, 0, !dbg !94
  %div = sdiv i32 %sub, 1, !dbg !94
  %sub2 = sub nsw i32 %div, 1, !dbg !94
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !94, !tbaa !24
  %13 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %i, metadata !78, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %i, align 4, !dbg !95, !tbaa !24
  %14 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !91
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !93, !tbaa !24
  %cmp = icmp slt i32 0, %15, !dbg !94
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !91

omp.precond.then:                                 ; preds = %copyin.not.master.end
  %16 = bitcast i32* %.omp.lb to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !79, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %.omp.lb, align 4, !dbg !96, !tbaa !24
  %17 = bitcast i32* %.omp.ub to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !80, metadata !DIExpression()), !dbg !92
  %18 = load i32, i32* %.capture_expr.1, align 4, !dbg !94, !tbaa !24
  store i32 %18, i32* %.omp.ub, align 4, !dbg !96, !tbaa !24
  %19 = bitcast i32* %.omp.stride to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !81, metadata !DIExpression()), !dbg !92
  store i32 1, i32* %.omp.stride, align 4, !dbg !96, !tbaa !24
  %20 = bitcast i32* %.omp.is_last to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !82, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %.omp.is_last, align 4, !dbg !96, !tbaa !24
  %21 = bitcast i32* %i3 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !78, metadata !DIExpression()), !dbg !92
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !91
  %23 = load i32, i32* %22, align 4, !dbg !91, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* @3, i32 %23, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !97
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !96, !tbaa !24
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !94, !tbaa !24
  %cmp4 = icmp sgt i32 %24, %25, !dbg !96
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !96

cond.true:                                        ; preds = %omp.precond.then
  %26 = load i32, i32* %.capture_expr.1, align 4, !dbg !94, !tbaa !24
  br label %cond.end, !dbg !96

cond.false:                                       ; preds = %omp.precond.then
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !96, !tbaa !24
  br label %cond.end, !dbg !96

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !96
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !96, !tbaa !24
  %28 = load i32, i32* %.omp.lb, align 4, !dbg !96, !tbaa !24
  store i32 %28, i32* %.omp.iv, align 4, !dbg !96, !tbaa !24
  br label %omp.inner.for.cond, !dbg !91

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !96, !tbaa !24
  %30 = load i32, i32* %.omp.ub, align 4, !dbg !96, !tbaa !24
  %cmp5 = icmp sle i32 %29, %30, !dbg !94
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !91

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !91

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !96, !tbaa !24
  %mul = mul nsw i32 %31, 1, !dbg !95
  %add = add nsw i32 0, %mul, !dbg !95
  store i32 %add, i32* %i3, align 4, !dbg !95, !tbaa !24
  %32 = load i32, i32* @sum0, align 4, !dbg !98, !tbaa !24
  %33 = load i32, i32* %i3, align 4, !dbg !100, !tbaa !24
  %add6 = add nsw i32 %32, %33, !dbg !101
  store i32 %add6, i32* @sum0, align 4, !dbg !102, !tbaa !24
  br label %omp.body.continue, !dbg !103

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !97

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !96, !tbaa !24
  %add7 = add nsw i32 %34, 1, !dbg !94
  store i32 %add7, i32* %.omp.iv, align 4, !dbg !94, !tbaa !24
  br label %omp.inner.for.cond, !dbg !97, !llvm.loop !104

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !97

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %35 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %36 = load i32, i32* %35, align 4, !dbg !97, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* @5, i32 %36), !dbg !105
  %37 = bitcast i32* %i3 to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !97
  %38 = bitcast i32* %.omp.is_last to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !97
  %39 = bitcast i32* %.omp.stride to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !97
  %40 = bitcast i32* %.omp.ub to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !97
  %41 = bitcast i32* %.omp.lb to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !97
  br label %omp.precond.end, !dbg !97

omp.precond.end:                                  ; preds = %omp.loop.exit, %copyin.not.master.end
  %42 = bitcast i32* %.capture_expr.1 to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !97
  %43 = bitcast i32* %.capture_expr. to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !97
  %44 = bitcast i32* %.omp.iv to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !97
  %45 = load i32*, i32** %.global_tid..addr, align 8, !dbg !105
  %46 = load i32, i32* %45, align 4, !dbg !105, !tbaa !24
  call void @__kmpc_barrier(%struct.ident_t* @6, i32 %46), !dbg !105
  %47 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106
  %48 = load i32, i32* %47, align 4, !dbg !106, !tbaa !24
  call void @__kmpc_critical(%struct.ident_t* @8, i32 %48, [8 x i32]* @.gomp_critical_user_.var), !dbg !106
  %49 = load i32, i32* %1, align 4, !dbg !107, !tbaa !24
  %50 = load i32, i32* @sum0, align 4, !dbg !110, !tbaa !24
  %add8 = add nsw i32 %49, %50, !dbg !111
  store i32 %add8, i32* %1, align 4, !dbg !112, !tbaa !24
  call void @__kmpc_end_critical(%struct.ident_t* @8, i32 %48, [8 x i32]* @.gomp_critical_user_.var), !dbg !113
  ret void, !dbg !114
}

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %sum, i32* nonnull align 4 dereferenceable(4) %sum0) #3 !dbg !115 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum0.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !117, metadata !DIExpression()), !dbg !122
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !118, metadata !DIExpression()), !dbg !122
  store i32* %len, i32** %len.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !119, metadata !DIExpression()), !dbg !122
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !120, metadata !DIExpression()), !dbg !122
  store i32* %sum0, i32** %sum0.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load i32*, i32** %len.addr, align 8, !dbg !123, !tbaa !83
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !123, !tbaa !83
  %2 = load i32*, i32** %sum0.addr, align 8, !dbg !123, !tbaa !83
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !123, !tbaa !83
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !123, !tbaa !83
  %5 = load i32*, i32** %len.addr, align 8, !dbg !123, !tbaa !83
  %6 = load i32*, i32** %sum.addr, align 8, !dbg !123, !tbaa !83
  %7 = load i32*, i32** %sum0.addr, align 8, !dbg !123, !tbaa !83
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #4, !dbg !123
  ret void, !dbg !123
}

; Function Attrs: nounwind
declare !callback !124 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: nounwind sspstrong uwtable
define weak_odr hidden i32* @_ZTW4sum0() #8 comdat {
  ret i32* @sum0
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblemem_or_argmemonly }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 55, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB091-threadprivate2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 55, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !16, scopeLine: 59, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!8}
!18 = !{!19, !20, !21}
!19 = !DILocalVariable(name: "len", scope: !15, file: !3, line: 60, type: !8)
!20 = !DILocalVariable(name: "i", scope: !15, file: !3, line: 61, type: !8)
!21 = !DILocalVariable(name: "sum", scope: !15, file: !3, line: 61, type: !8)
!22 = !DILocation(line: 60, column: 3, scope: !15)
!23 = !DILocation(line: 60, column: 7, scope: !15)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 61, column: 3, scope: !15)
!29 = !DILocation(line: 61, column: 7, scope: !15)
!30 = !DILocation(line: 61, column: 10, scope: !15)
!31 = !DILocation(line: 62, column: 1, scope: !15)
!32 = !DILocation(line: 75, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !15, file: !3, line: 75, column: 3)
!34 = !DILocation(line: 75, column: 8, scope: !33)
!35 = !DILocation(line: 75, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !3, line: 75, column: 3)
!37 = !DILocation(line: 75, column: 14, scope: !36)
!38 = !DILocation(line: 75, column: 13, scope: !36)
!39 = !DILocation(line: 75, column: 3, scope: !33)
!40 = !DILocation(line: 77, column: 10, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !3, line: 76, column: 3)
!42 = !DILocation(line: 77, column: 15, scope: !41)
!43 = !DILocation(line: 77, column: 14, scope: !41)
!44 = !DILocation(line: 77, column: 9, scope: !41)
!45 = !DILocation(line: 78, column: 3, scope: !41)
!46 = !DILocation(line: 75, column: 19, scope: !36)
!47 = !DILocation(line: 75, column: 3, scope: !36)
!48 = distinct !{!48, !39, !49, !50}
!49 = !DILocation(line: 78, column: 3, scope: !33)
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !DILocation(line: 79, column: 30, scope: !15)
!52 = !DILocation(line: 79, column: 34, scope: !15)
!53 = !DILocation(line: 79, column: 3, scope: !15)
!54 = !DILocation(line: 80, column: 3, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 80, column: 3)
!56 = distinct !DILexicalBlock(scope: !15, file: !3, line: 80, column: 3)
!57 = !DILocation(line: 80, column: 3, scope: !56)
!58 = !DILocation(line: 82, column: 1, scope: !15)
!59 = !DILocation(line: 81, column: 3, scope: !15)
!60 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 63, type: !61, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63, !63, !67, !67, !67}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!67 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!68 = !{!69, !70, !71, !72, !73, !74, !77, !77, !78, !79, !80, !81, !82, !78}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !63, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !63, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "len", arg: 3, scope: !60, file: !3, line: 60, type: !67)
!72 = !DILocalVariable(name: "sum", arg: 4, scope: !60, file: !3, line: 61, type: !67)
!73 = !DILocalVariable(name: "sum0", arg: 5, scope: !60, file: !3, line: 55, type: !67)
!74 = !DILocalVariable(name: ".omp.iv", scope: !75, type: !8, flags: DIFlagArtificial)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 64, column: 1)
!76 = distinct !DILexicalBlock(scope: !60, file: !3, line: 63, column: 3)
!77 = !DILocalVariable(name: ".capture_expr.", scope: !75, type: !8, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "i", scope: !75, type: !8, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.lb", scope: !75, type: !8, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.ub", scope: !75, type: !8, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.stride", scope: !75, type: !8, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.is_last", scope: !75, type: !8, flags: DIFlagArtificial)
!83 = !{!84, !84, i64 0}
!84 = !{!"any pointer", !26, i64 0}
!85 = !DILocation(line: 0, scope: !60)
!86 = !DILocation(line: 60, column: 7, scope: !60)
!87 = !DILocation(line: 61, column: 10, scope: !60)
!88 = !DILocation(line: 55, column: 5, scope: !60)
!89 = !DILocation(line: 63, column: 3, scope: !60)
!90 = !DILocation(line: 62, column: 29, scope: !60)
!91 = !DILocation(line: 64, column: 1, scope: !76)
!92 = !DILocation(line: 0, scope: !75)
!93 = !DILocation(line: 65, column: 16, scope: !75)
!94 = !DILocation(line: 65, column: 5, scope: !75)
!95 = !DILocation(line: 65, column: 20, scope: !75)
!96 = !DILocation(line: 65, column: 10, scope: !75)
!97 = !DILocation(line: 64, column: 1, scope: !75)
!98 = !DILocation(line: 67, column: 12, scope: !99)
!99 = distinct !DILexicalBlock(scope: !75, file: !3, line: 66, column: 5)
!100 = !DILocation(line: 67, column: 17, scope: !99)
!101 = !DILocation(line: 67, column: 16, scope: !99)
!102 = !DILocation(line: 67, column: 11, scope: !99)
!103 = !DILocation(line: 68, column: 5, scope: !99)
!104 = distinct !{!104, !97, !105}
!105 = !DILocation(line: 64, column: 16, scope: !75)
!106 = !DILocation(line: 69, column: 1, scope: !76)
!107 = !DILocation(line: 71, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 70, column: 5)
!109 = distinct !DILexicalBlock(scope: !76, file: !3, line: 69, column: 1)
!110 = !DILocation(line: 71, column: 16, scope: !108)
!111 = !DILocation(line: 71, column: 15, scope: !108)
!112 = !DILocation(line: 71, column: 10, scope: !108)
!113 = !DILocation(line: 72, column: 5, scope: !108)
!114 = !DILocation(line: 73, column: 3, scope: !60)
!115 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 62, type: !61, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !115, type: !63, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !115, type: !63, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: "len", arg: 3, scope: !115, type: !67, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "sum", arg: 4, scope: !115, type: !67, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "sum0", arg: 5, scope: !115, type: !67, flags: DIFlagArtificial)
!122 = !DILocation(line: 0, scope: !115)
!123 = !DILocation(line: 62, column: 1, scope: !115)
!124 = !{!125}
!125 = !{i64 2, i64 -1, i64 -1, i1 true}
