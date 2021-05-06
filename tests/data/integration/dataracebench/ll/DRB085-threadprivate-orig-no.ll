; ModuleID = 'DRB085-threadprivate-orig-no.c'
source_filename = "DRB085-threadprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW4sum0 = comdat any

@sum0 = dso_local thread_local global i32 0, align 4, !dbg !0
@sum1 = dso_local global i32 0, align 4, !dbg !6
@0 = private unnamed_addr constant [44 x i8] c";DRB085-threadprivate-orig-no.c;main;66;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [44 x i8] c";DRB085-threadprivate-orig-no.c;main;68;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [45 x i8] c";DRB085-threadprivate-orig-no.c;main;68;16;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [44 x i8] c";DRB085-threadprivate-orig-no.c;main;73;1;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @7, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sum==sum1\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DRB085-threadprivate-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo(i32 %i) #0 !dbg !15 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !20
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !19, metadata !DIExpression()), !dbg !24
  %0 = load i32, i32* @sum0, align 4, !dbg !25, !tbaa !20
  %1 = load i32, i32* %i.addr, align 4, !dbg !26, !tbaa !20
  %add = add nsw i32 %0, %1, !dbg !27
  store i32 %add, i32* @sum0, align 4, !dbg !28, !tbaa !20
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !30 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %len to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %len, metadata !34, metadata !DIExpression()), !dbg !38
  store i32 1000, i32* %len, align 4, !dbg !38, !tbaa !20
  %1 = bitcast i32* %i to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %i, metadata !35, metadata !DIExpression()), !dbg !40
  %2 = bitcast i32* %sum to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !36, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %sum, align 4, !dbg !41, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @9, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %sum, i32* @sum0), !dbg !42
  store i32 0, i32* %i, align 4, !dbg !43, !tbaa !20
  br label %for.cond, !dbg !45

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !46, !tbaa !20
  %4 = load i32, i32* %len, align 4, !dbg !48, !tbaa !20
  %cmp = icmp slt i32 %3, %4, !dbg !49
  br i1 %cmp, label %for.body, label %for.end, !dbg !50

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* @sum1, align 4, !dbg !51, !tbaa !20
  %6 = load i32, i32* %i, align 4, !dbg !53, !tbaa !20
  %add = add nsw i32 %5, %6, !dbg !54
  store i32 %add, i32* @sum1, align 4, !dbg !55, !tbaa !20
  br label %for.inc, !dbg !56

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !57, !tbaa !20
  %inc = add nsw i32 %7, 1, !dbg !57
  store i32 %inc, i32* %i, align 4, !dbg !57, !tbaa !20
  br label %for.cond, !dbg !58, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %sum, align 4, !dbg !62, !tbaa !20
  %9 = load i32, i32* @sum1, align 4, !dbg !63, !tbaa !20
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9), !dbg !64
  %10 = load i32, i32* %sum, align 4, !dbg !65, !tbaa !20
  %11 = load i32, i32* @sum1, align 4, !dbg !65, !tbaa !20
  %cmp1 = icmp eq i32 %10, %11, !dbg !65
  br i1 %cmp1, label %if.then, label %if.else, !dbg !68

if.then:                                          ; preds = %for.end
  br label %if.end, !dbg !68

if.else:                                          ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9, !dbg !65
  unreachable, !dbg !65

if.end:                                           ; preds = %if.then
  %12 = bitcast i32* %sum to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !69
  %13 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !69
  %14 = bitcast i32* %len to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !69
  ret i32 0, !dbg !70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %sum, i32* nonnull align 4 dereferenceable(4) %sum0) #3 !dbg !71 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !96
  store i32* %len, i32** %len.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !82, metadata !DIExpression()), !dbg !97
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !83, metadata !DIExpression()), !dbg !98
  store i32* %sum0, i32** %sum0.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !84, metadata !DIExpression()), !dbg !99
  %0 = load i32*, i32** %len.addr, align 8, !dbg !100, !tbaa !94
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !100, !tbaa !94
  %2 = load i32*, i32** %sum0.addr, align 8, !dbg !100, !tbaa !94
  %3 = ptrtoint i32* %2 to i64, !dbg !100
  %4 = icmp ne i64 %3, ptrtoint (i32* @sum0 to i64), !dbg !100
  br i1 %4, label %copyin.not.master, label %copyin.not.master.end, !dbg !100

copyin.not.master:                                ; preds = %entry
  %5 = load i32, i32* %2, align 4, !dbg !101, !tbaa !20
  store i32 %5, i32* @sum0, align 4, !dbg !101, !tbaa !20
  br label %copyin.not.master.end, !dbg !100

copyin.not.master.end:                            ; preds = %copyin.not.master, %entry
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !100
  %7 = load i32, i32* %6, align 4, !dbg !100, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* @1, i32 %7), !dbg !100
  %8 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !85, metadata !DIExpression()), !dbg !103
  %9 = bitcast i32* %.capture_expr. to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !88, metadata !DIExpression()), !dbg !103
  %10 = load i32, i32* %0, align 4, !dbg !104, !tbaa !20
  store i32 %10, i32* %.capture_expr., align 4, !dbg !104, !tbaa !20
  %11 = bitcast i32* %.capture_expr.1 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !88, metadata !DIExpression()), !dbg !103
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !104, !tbaa !20
  %sub = sub nsw i32 %12, 0, !dbg !105
  %div = sdiv i32 %sub, 1, !dbg !105
  %sub2 = sub nsw i32 %div, 1, !dbg !105
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !105, !tbaa !20
  %13 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %i, align 4, !dbg !106, !tbaa !20
  %14 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !102
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !104, !tbaa !20
  %cmp = icmp slt i32 0, %15, !dbg !105
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !102

omp.precond.then:                                 ; preds = %copyin.not.master.end
  %16 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !90, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %.omp.lb, align 4, !dbg !107, !tbaa !20
  %17 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !91, metadata !DIExpression()), !dbg !103
  %18 = load i32, i32* %.capture_expr.1, align 4, !dbg !105, !tbaa !20
  store i32 %18, i32* %.omp.ub, align 4, !dbg !107, !tbaa !20
  %19 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !92, metadata !DIExpression()), !dbg !103
  store i32 1, i32* %.omp.stride, align 4, !dbg !107, !tbaa !20
  %20 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !93, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %.omp.is_last, align 4, !dbg !107, !tbaa !20
  %21 = bitcast i32* %i3 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !89, metadata !DIExpression()), !dbg !103
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %23 = load i32, i32* %22, align 4, !dbg !102, !tbaa !20
  call void @__kmpc_for_static_init_4(%struct.ident_t* @3, i32 %23, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !108
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !107, !tbaa !20
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !105, !tbaa !20
  %cmp4 = icmp sgt i32 %24, %25, !dbg !107
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !107

cond.true:                                        ; preds = %omp.precond.then
  %26 = load i32, i32* %.capture_expr.1, align 4, !dbg !105, !tbaa !20
  br label %cond.end, !dbg !107

cond.false:                                       ; preds = %omp.precond.then
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !107, !tbaa !20
  br label %cond.end, !dbg !107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !107
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !107, !tbaa !20
  %28 = load i32, i32* %.omp.lb, align 4, !dbg !107, !tbaa !20
  store i32 %28, i32* %.omp.iv, align 4, !dbg !107, !tbaa !20
  br label %omp.inner.for.cond, !dbg !102

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !107, !tbaa !20
  %30 = load i32, i32* %.omp.ub, align 4, !dbg !107, !tbaa !20
  %cmp5 = icmp sle i32 %29, %30, !dbg !105
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !102

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !102

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !107, !tbaa !20
  %mul = mul nsw i32 %31, 1, !dbg !106
  %add = add nsw i32 0, %mul, !dbg !106
  store i32 %add, i32* %i3, align 4, !dbg !106, !tbaa !20
  %32 = load i32, i32* %i3, align 4, !dbg !109, !tbaa !20
  call void @foo(i32 %32), !dbg !111
  br label %omp.body.continue, !dbg !112

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !108

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !107, !tbaa !20
  %add6 = add nsw i32 %33, 1, !dbg !105
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !105, !tbaa !20
  br label %omp.inner.for.cond, !dbg !108, !llvm.loop !113

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !108

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %35 = load i32, i32* %34, align 4, !dbg !108, !tbaa !20
  call void @__kmpc_for_static_fini(%struct.ident_t* @5, i32 %35), !dbg !114
  %36 = bitcast i32* %i3 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !108
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !108
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !108
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !108
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !108
  br label %omp.precond.end, !dbg !108

omp.precond.end:                                  ; preds = %omp.loop.exit, %copyin.not.master.end
  %41 = bitcast i32* %.capture_expr.1 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !108
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !108
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !108
  %44 = load i32*, i32** %.global_tid..addr, align 8, !dbg !114
  %45 = load i32, i32* %44, align 4, !dbg !114, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* @6, i32 %45), !dbg !114
  %46 = load i32*, i32** %.global_tid..addr, align 8, !dbg !115
  %47 = load i32, i32* %46, align 4, !dbg !115, !tbaa !20
  call void @__kmpc_critical(%struct.ident_t* @8, i32 %47, [8 x i32]* @.gomp_critical_user_.var), !dbg !115
  %48 = load i32, i32* %1, align 4, !dbg !116, !tbaa !20
  %49 = load i32, i32* @sum0, align 4, !dbg !119, !tbaa !20
  %add7 = add nsw i32 %48, %49, !dbg !120
  store i32 %add7, i32* %1, align 4, !dbg !121, !tbaa !20
  call void @__kmpc_end_critical(%struct.ident_t* @8, i32 %47, [8 x i32]* @.gomp_critical_user_.var), !dbg !122
  ret void, !dbg !123
}

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %sum, i32* nonnull align 4 dereferenceable(4) %sum0) #3 !dbg !124 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum0.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !126, metadata !DIExpression()), !dbg !131
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !127, metadata !DIExpression()), !dbg !131
  store i32* %len, i32** %len.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !128, metadata !DIExpression()), !dbg !131
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !129, metadata !DIExpression()), !dbg !131
  store i32* %sum0, i32** %sum0.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load i32*, i32** %len.addr, align 8, !dbg !132, !tbaa !94
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !132, !tbaa !94
  %2 = load i32*, i32** %sum0.addr, align 8, !dbg !132, !tbaa !94
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !132, !tbaa !94
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !132, !tbaa !94
  %5 = load i32*, i32** %len.addr, align 8, !dbg !132, !tbaa !94
  %6 = load i32*, i32** %sum.addr, align 8, !dbg !132, !tbaa !94
  %7 = load i32*, i32** %sum0.addr, align 8, !dbg !132, !tbaa !94
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #4, !dbg !132
  ret void, !dbg !132
}

; Function Attrs: nounwind
declare !callback !133 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: nounwind sspstrong uwtable
define weak_odr hidden i32* @_ZTW4sum0() #8 comdat {
  ret i32* @sum0
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
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
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB085-threadprivate-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 57, type: !16, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !8}
!18 = !{!19}
!19 = !DILocalVariable(name: "i", arg: 1, scope: !15, file: !3, line: 57, type: !8)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 57, column: 15, scope: !15)
!25 = !DILocation(line: 59, column: 8, scope: !15)
!26 = !DILocation(line: 59, column: 13, scope: !15)
!27 = !DILocation(line: 59, column: 12, scope: !15)
!28 = !DILocation(line: 59, column: 7, scope: !15)
!29 = !DILocation(line: 60, column: 1, scope: !15)
!30 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !31, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!8}
!33 = !{!34, !35, !36}
!34 = !DILocalVariable(name: "len", scope: !30, file: !3, line: 64, type: !8)
!35 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 65, type: !8)
!36 = !DILocalVariable(name: "sum", scope: !30, file: !3, line: 65, type: !8)
!37 = !DILocation(line: 64, column: 3, scope: !30)
!38 = !DILocation(line: 64, column: 7, scope: !30)
!39 = !DILocation(line: 65, column: 3, scope: !30)
!40 = !DILocation(line: 65, column: 7, scope: !30)
!41 = !DILocation(line: 65, column: 10, scope: !30)
!42 = !DILocation(line: 66, column: 1, scope: !30)
!43 = !DILocation(line: 79, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !30, file: !3, line: 79, column: 3)
!45 = !DILocation(line: 79, column: 8, scope: !44)
!46 = !DILocation(line: 79, column: 12, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !3, line: 79, column: 3)
!48 = !DILocation(line: 79, column: 14, scope: !47)
!49 = !DILocation(line: 79, column: 13, scope: !47)
!50 = !DILocation(line: 79, column: 3, scope: !44)
!51 = !DILocation(line: 81, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !47, file: !3, line: 80, column: 3)
!53 = !DILocation(line: 81, column: 15, scope: !52)
!54 = !DILocation(line: 81, column: 14, scope: !52)
!55 = !DILocation(line: 81, column: 9, scope: !52)
!56 = !DILocation(line: 82, column: 3, scope: !52)
!57 = !DILocation(line: 79, column: 19, scope: !47)
!58 = !DILocation(line: 79, column: 3, scope: !47)
!59 = distinct !{!59, !50, !60, !61}
!60 = !DILocation(line: 82, column: 3, scope: !44)
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !DILocation(line: 83, column: 30, scope: !30)
!63 = !DILocation(line: 83, column: 34, scope: !30)
!64 = !DILocation(line: 83, column: 3, scope: !30)
!65 = !DILocation(line: 84, column: 3, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 84, column: 3)
!67 = distinct !DILexicalBlock(scope: !30, file: !3, line: 84, column: 3)
!68 = !DILocation(line: 84, column: 3, scope: !67)
!69 = !DILocation(line: 86, column: 1, scope: !30)
!70 = !DILocation(line: 85, column: 3, scope: !30)
!71 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 67, type: !72, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !74, !78, !78, !78}
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!78 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!79 = !{!80, !81, !82, !83, !84, !85, !88, !88, !89, !90, !91, !92, !93, !89}
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !71, type: !74, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !71, type: !74, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "len", arg: 3, scope: !71, file: !3, line: 64, type: !78)
!83 = !DILocalVariable(name: "sum", arg: 4, scope: !71, file: !3, line: 65, type: !78)
!84 = !DILocalVariable(name: "sum0", arg: 5, scope: !71, file: !3, line: 54, type: !78)
!85 = !DILocalVariable(name: ".omp.iv", scope: !86, type: !8, flags: DIFlagArtificial)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 68, column: 1)
!87 = distinct !DILexicalBlock(scope: !71, file: !3, line: 67, column: 3)
!88 = !DILocalVariable(name: ".capture_expr.", scope: !86, type: !8, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "i", scope: !86, type: !8, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.lb", scope: !86, type: !8, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.ub", scope: !86, type: !8, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.stride", scope: !86, type: !8, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.is_last", scope: !86, type: !8, flags: DIFlagArtificial)
!94 = !{!95, !95, i64 0}
!95 = !{!"any pointer", !22, i64 0}
!96 = !DILocation(line: 0, scope: !71)
!97 = !DILocation(line: 64, column: 7, scope: !71)
!98 = !DILocation(line: 65, column: 10, scope: !71)
!99 = !DILocation(line: 54, column: 5, scope: !71)
!100 = !DILocation(line: 67, column: 3, scope: !71)
!101 = !DILocation(line: 66, column: 29, scope: !71)
!102 = !DILocation(line: 68, column: 1, scope: !87)
!103 = !DILocation(line: 0, scope: !86)
!104 = !DILocation(line: 69, column: 16, scope: !86)
!105 = !DILocation(line: 69, column: 5, scope: !86)
!106 = !DILocation(line: 69, column: 20, scope: !86)
!107 = !DILocation(line: 69, column: 10, scope: !86)
!108 = !DILocation(line: 68, column: 1, scope: !86)
!109 = !DILocation(line: 71, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !86, file: !3, line: 70, column: 5)
!111 = !DILocation(line: 71, column: 8, scope: !110)
!112 = !DILocation(line: 72, column: 5, scope: !110)
!113 = distinct !{!113, !108, !114}
!114 = !DILocation(line: 68, column: 16, scope: !86)
!115 = !DILocation(line: 73, column: 1, scope: !87)
!116 = !DILocation(line: 75, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 74, column: 5)
!118 = distinct !DILexicalBlock(scope: !87, file: !3, line: 73, column: 1)
!119 = !DILocation(line: 75, column: 16, scope: !117)
!120 = !DILocation(line: 75, column: 15, scope: !117)
!121 = !DILocation(line: 75, column: 10, scope: !117)
!122 = !DILocation(line: 76, column: 5, scope: !117)
!123 = !DILocation(line: 77, column: 3, scope: !71)
!124 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 66, type: !72, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!125 = !{!126, !127, !128, !129, !130}
!126 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !124, type: !74, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !124, type: !74, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "len", arg: 3, scope: !124, type: !78, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "sum", arg: 4, scope: !124, type: !78, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: "sum0", arg: 5, scope: !124, type: !78, flags: DIFlagArtificial)
!131 = !DILocation(line: 0, scope: !124)
!132 = !DILocation(line: 66, column: 1, scope: !124)
!133 = !{!134}
!134 = !{i64 2, i64 -1, i64 -1, i1 true}
