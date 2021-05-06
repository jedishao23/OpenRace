; ModuleID = 'DRB104-nowait-barrier-orig-no.c'
source_filename = "DRB104-nowait-barrier-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [45 x i8] c";DRB104-nowait-barrier-orig-no.c;main;66;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [46 x i8] c";DRB104-nowait-barrier-orig-no.c;main;66;23;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [45 x i8] c";DRB104-nowait-barrier-orig-no.c;main;70;1;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [45 x i8] c";DRB104-nowait-barrier-orig-no.c;main;72;1;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @6, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @6, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant [45 x i8] c";DRB104-nowait-barrier-orig-no.c;main;64;1;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @9, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [12 x i8] c"error == 51\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"DRB104-nowait-barrier-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"error = %d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !25
  %1 = bitcast i32* %error to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %error, metadata !15, metadata !DIExpression()), !dbg !26
  %2 = bitcast i32* %len to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %len, metadata !16, metadata !DIExpression()), !dbg !28
  store i32 1000, i32* %len, align 4, !dbg !28, !tbaa !29
  %3 = load i32, i32* %len, align 4, !dbg !33, !tbaa !29
  %4 = zext i32 %3 to i64, !dbg !34
  %5 = call i8* @llvm.stacksave(), !dbg !34
  store i8* %5, i8** %saved_stack, align 8, !dbg !34
  %vla = alloca i32, i64 %4, align 16, !dbg !34
  store i64 %4, i64* %__vla_expr0, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !17, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !19, metadata !DIExpression()), !dbg !36
  %6 = bitcast i32* %b to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %b, metadata !23, metadata !DIExpression()), !dbg !37
  store i32 5, i32* %b, align 4, !dbg !37, !tbaa !29
  store i32 0, i32* %i, align 4, !dbg !38, !tbaa !29
  br label %for.cond, !dbg !40

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !41, !tbaa !29
  %8 = load i32, i32* %len, align 4, !dbg !43, !tbaa !29
  %cmp = icmp slt i32 %7, %8, !dbg !44
  br i1 %cmp, label %for.body, label %for.end, !dbg !45

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !46, !tbaa !29
  %10 = load i32, i32* %i, align 4, !dbg !47, !tbaa !29
  %idxprom = sext i32 %10 to i64, !dbg !48
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !48
  store i32 %9, i32* %arrayidx, align 4, !dbg !49, !tbaa !29
  br label %for.inc, !dbg !48

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !50, !tbaa !29
  %inc = add nsw i32 %11, 1, !dbg !50
  store i32 %inc, i32* %i, align 4, !dbg !50, !tbaa !29
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @10, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %4, i32* %vla, i32* %b, i32* %error), !dbg !55
  %12 = load i32, i32* %error, align 4, !dbg !56, !tbaa !29
  %cmp1 = icmp eq i32 %12, 51, !dbg !56
  br i1 %cmp1, label %if.then, label %if.else, !dbg !59

if.then:                                          ; preds = %for.end
  br label %if.end, !dbg !59

if.else:                                          ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !56
  unreachable, !dbg !56

if.end:                                           ; preds = %if.then
  %13 = load i32, i32* %error, align 4, !dbg !60, !tbaa !29
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %13), !dbg !61
  store i32 0, i32* %retval, align 4, !dbg !62
  %14 = bitcast i32* %b to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3, !dbg !63
  %15 = load i8*, i8** %saved_stack, align 8, !dbg !63
  call void @llvm.stackrestore(i8* %15), !dbg !63
  %16 = bitcast i32* %len to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !63
  %17 = bitcast i32* %error to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3, !dbg !63
  %18 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !63
  %19 = load i32, i32* %retval, align 4, !dbg !63
  ret i32 %19, !dbg !63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a, i32* nonnull align 4 dereferenceable(4) %b, i32* nonnull align 4 dereferenceable(4) %error) #4 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %error.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !91
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !91
  store i32* %len, i32** %len.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !75, metadata !DIExpression()), !dbg !92
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !76, metadata !DIExpression()), !dbg !91
  store i32* %a, i32** %a.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !77, metadata !DIExpression()), !dbg !95
  store i32* %b, i32** %b.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !78, metadata !DIExpression()), !dbg !96
  store i32* %error, i32** %error.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %error.addr, metadata !79, metadata !DIExpression()), !dbg !97
  %0 = load i32*, i32** %len.addr, align 8, !dbg !98, !tbaa !89
  %1 = load i64, i64* %vla.addr, align 8, !dbg !98, !tbaa !93
  %2 = load i32*, i32** %a.addr, align 8, !dbg !98, !tbaa !89
  %3 = load i32*, i32** %b.addr, align 8, !dbg !98, !tbaa !89
  %4 = load i32*, i32** %error.addr, align 8, !dbg !98, !tbaa !89
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !80, metadata !DIExpression()), !dbg !100
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !83, metadata !DIExpression()), !dbg !100
  %7 = load i32, i32* %0, align 4, !dbg !101, !tbaa !29
  store i32 %7, i32* %.capture_expr., align 4, !dbg !101, !tbaa !29
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !83, metadata !DIExpression()), !dbg !100
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !101, !tbaa !29
  %sub = sub nsw i32 %9, 0, !dbg !102
  %div = sdiv i32 %sub, 1, !dbg !102
  %sub2 = sub nsw i32 %div, 1, !dbg !102
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !29
  %10 = bitcast i32* %i to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %i, align 4, !dbg !103, !tbaa !29
  %11 = bitcast i32* %i to i8*, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3, !dbg !99
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !101, !tbaa !29
  %cmp = icmp slt i32 0, %12, !dbg !102
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !99

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !85, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.lb, align 4, !dbg !104, !tbaa !29
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !86, metadata !DIExpression()), !dbg !100
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !29
  store i32 %15, i32* %.omp.ub, align 4, !dbg !104, !tbaa !29
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !87, metadata !DIExpression()), !dbg !100
  store i32 1, i32* %.omp.stride, align 4, !dbg !104, !tbaa !29
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !88, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.is_last, align 4, !dbg !104, !tbaa !29
  %18 = bitcast i32* %i3 to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !84, metadata !DIExpression()), !dbg !100
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !99
  %20 = load i32, i32* %19, align 4, !dbg !99, !tbaa !29
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !105
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !104, !tbaa !29
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !29
  %cmp4 = icmp sgt i32 %21, %22, !dbg !104
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !104

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !29
  br label %cond.end, !dbg !104

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !104, !tbaa !29
  br label %cond.end, !dbg !104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !104
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !104, !tbaa !29
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !104, !tbaa !29
  store i32 %25, i32* %.omp.iv, align 4, !dbg !104, !tbaa !29
  br label %omp.inner.for.cond, !dbg !99

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !104, !tbaa !29
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !104, !tbaa !29
  %cmp5 = icmp sle i32 %26, %27, !dbg !102
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !99

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !99

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !104, !tbaa !29
  %mul = mul nsw i32 %28, 1, !dbg !103
  %add = add nsw i32 0, %mul, !dbg !103
  store i32 %add, i32* %i3, align 4, !dbg !103, !tbaa !29
  %29 = load i32, i32* %3, align 4, !dbg !106, !tbaa !29
  %30 = load i32, i32* %i3, align 4, !dbg !107, !tbaa !29
  %idxprom = sext i32 %30 to i64, !dbg !108
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !108
  %31 = load i32, i32* %arrayidx, align 4, !dbg !108, !tbaa !29
  %mul6 = mul nsw i32 %31, 5, !dbg !109
  %add7 = add nsw i32 %29, %mul6, !dbg !110
  %32 = load i32, i32* %i3, align 4, !dbg !111, !tbaa !29
  %idxprom8 = sext i32 %32 to i64, !dbg !112
  %arrayidx9 = getelementptr inbounds i32, i32* %2, i64 %idxprom8, !dbg !112
  store i32 %add7, i32* %arrayidx9, align 4, !dbg !113, !tbaa !29
  br label %omp.body.continue, !dbg !112

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !105

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !104, !tbaa !29
  %add10 = add nsw i32 %33, 1, !dbg !102
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !102, !tbaa !29
  br label %omp.inner.for.cond, !dbg !105, !llvm.loop !114

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !105

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !105
  %35 = load i32, i32* %34, align 4, !dbg !105, !tbaa !29
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %35), !dbg !115
  %36 = bitcast i32* %i3 to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3, !dbg !105
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3, !dbg !105
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3, !dbg !105
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !105
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !105
  br label %omp.precond.end, !dbg !105

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.1 to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !105
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3, !dbg !105
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !105
  %44 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116
  %45 = load i32, i32* %44, align 4, !dbg !116, !tbaa !29
  call void @__kmpc_barrier(%struct.ident_t* @5, i32 %45), !dbg !116
  %46 = load i32*, i32** %.global_tid..addr, align 8, !dbg !117
  %47 = load i32, i32* %46, align 4, !dbg !117, !tbaa !29
  %48 = call i32 @__kmpc_single(%struct.ident_t* @7, i32 %47), !dbg !117
  %49 = icmp ne i32 %48, 0, !dbg !117
  br i1 %49, label %omp_if.then, label %omp_if.end, !dbg !117

omp_if.then:                                      ; preds = %omp.precond.end
  %arrayidx11 = getelementptr inbounds i32, i32* %2, i64 9, !dbg !118
  %50 = load i32, i32* %arrayidx11, align 4, !dbg !118, !tbaa !29
  %add12 = add nsw i32 %50, 1, !dbg !120
  store i32 %add12, i32* %4, align 4, !dbg !121, !tbaa !29
  call void @__kmpc_end_single(%struct.ident_t* @7, i32 %47), !dbg !122
  br label %omp_if.end, !dbg !122

omp_if.end:                                       ; preds = %omp_if.then, %omp.precond.end
  %51 = load i32*, i32** %.global_tid..addr, align 8, !dbg !123
  %52 = load i32, i32* %51, align 4, !dbg !123, !tbaa !29
  call void @__kmpc_barrier(%struct.ident_t* @8, i32 %52), !dbg !123
  ret void, !dbg !124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a, i32* nonnull align 4 dereferenceable(4) %b, i32* nonnull align 4 dereferenceable(4) %error) #4 !dbg !125 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %error.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !127, metadata !DIExpression()), !dbg !134
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !128, metadata !DIExpression()), !dbg !134
  store i32* %len, i32** %len.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !129, metadata !DIExpression()), !dbg !134
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !130, metadata !DIExpression()), !dbg !134
  store i32* %a, i32** %a.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !131, metadata !DIExpression()), !dbg !134
  store i32* %b, i32** %b.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !132, metadata !DIExpression()), !dbg !134
  store i32* %error, i32** %error.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %error.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load i32*, i32** %len.addr, align 8, !dbg !135, !tbaa !89
  %1 = load i64, i64* %vla.addr, align 8, !dbg !135, !tbaa !93
  %2 = load i32*, i32** %a.addr, align 8, !dbg !135, !tbaa !89
  %3 = load i32*, i32** %b.addr, align 8, !dbg !135, !tbaa !89
  %4 = load i32*, i32** %error.addr, align 8, !dbg !135, !tbaa !89
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !135, !tbaa !89
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !135, !tbaa !89
  %7 = load i32*, i32** %len.addr, align 8, !dbg !135, !tbaa !89
  %8 = load i32*, i32** %a.addr, align 8, !dbg !135, !tbaa !89
  %9 = load i32*, i32** %b.addr, align 8, !dbg !135, !tbaa !89
  %10 = load i32*, i32** %error.addr, align 8, !dbg !135, !tbaa !89
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i32* %8, i32* %9, i32* %10) #3, !dbg !135
  ret void, !dbg !135
}

; Function Attrs: nounwind
declare !callback !136 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

declare i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB104-nowait-barrier-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !10, scopeLine: 56, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16, !17, !19, !23}
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 57, type: !12)
!15 = !DILocalVariable(name: "error", scope: !9, file: !1, line: 57, type: !12)
!16 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 58, type: !12)
!17 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !18, flags: DIFlagArtificial)
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 59, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: !17)
!23 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 59, type: !12)
!24 = !DILocation(line: 57, column: 3, scope: !9)
!25 = !DILocation(line: 57, column: 7, scope: !9)
!26 = !DILocation(line: 57, column: 9, scope: !9)
!27 = !DILocation(line: 58, column: 3, scope: !9)
!28 = !DILocation(line: 58, column: 7, scope: !9)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 59, column: 9, scope: !9)
!34 = !DILocation(line: 59, column: 3, scope: !9)
!35 = !DILocation(line: 0, scope: !9)
!36 = !DILocation(line: 59, column: 7, scope: !9)
!37 = !DILocation(line: 59, column: 15, scope: !9)
!38 = !DILocation(line: 61, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !9, file: !1, line: 61, column: 3)
!40 = !DILocation(line: 61, column: 8, scope: !39)
!41 = !DILocation(line: 61, column: 13, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 61, column: 3)
!43 = !DILocation(line: 61, column: 15, scope: !42)
!44 = !DILocation(line: 61, column: 14, scope: !42)
!45 = !DILocation(line: 61, column: 3, scope: !39)
!46 = !DILocation(line: 62, column: 11, scope: !42)
!47 = !DILocation(line: 62, column: 7, scope: !42)
!48 = !DILocation(line: 62, column: 5, scope: !42)
!49 = !DILocation(line: 62, column: 9, scope: !42)
!50 = !DILocation(line: 61, column: 21, scope: !42)
!51 = !DILocation(line: 61, column: 3, scope: !42)
!52 = distinct !{!52, !45, !53, !54}
!53 = !DILocation(line: 62, column: 11, scope: !39)
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !DILocation(line: 64, column: 1, scope: !9)
!56 = !DILocation(line: 75, column: 3, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 75, column: 3)
!58 = distinct !DILexicalBlock(scope: !9, file: !1, line: 75, column: 3)
!59 = !DILocation(line: 75, column: 3, scope: !58)
!60 = !DILocation(line: 76, column: 27, scope: !9)
!61 = !DILocation(line: 76, column: 3, scope: !9)
!62 = !DILocation(line: 77, column: 3, scope: !9)
!63 = !DILocation(line: 78, column: 1, scope: !9)
!64 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !65, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !67, !71, !18, !71, !71, !71}
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !83, !83, !84, !85, !86, !87, !88, !84}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !67, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !67, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "len", arg: 3, scope: !64, file: !1, line: 58, type: !71)
!76 = !DILocalVariable(name: "vla", arg: 4, scope: !64, type: !18, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "a", arg: 5, scope: !64, file: !1, line: 59, type: !71)
!78 = !DILocalVariable(name: "b", arg: 6, scope: !64, file: !1, line: 59, type: !71)
!79 = !DILocalVariable(name: "error", arg: 7, scope: !64, file: !1, line: 57, type: !71)
!80 = !DILocalVariable(name: ".omp.iv", scope: !81, type: !12, flags: DIFlagArtificial)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 66, column: 1)
!82 = distinct !DILexicalBlock(scope: !64, file: !1, line: 65, column: 3)
!83 = !DILocalVariable(name: ".capture_expr.", scope: !81, type: !12, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "i", scope: !81, type: !12, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.lb", scope: !81, type: !12, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.ub", scope: !81, type: !12, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".omp.stride", scope: !81, type: !12, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.is_last", scope: !81, type: !12, flags: DIFlagArtificial)
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !31, i64 0}
!91 = !DILocation(line: 0, scope: !64)
!92 = !DILocation(line: 58, column: 7, scope: !64)
!93 = !{!94, !94, i64 0}
!94 = !{!"long", !31, i64 0}
!95 = !DILocation(line: 59, column: 7, scope: !64)
!96 = !DILocation(line: 59, column: 15, scope: !64)
!97 = !DILocation(line: 57, column: 9, scope: !64)
!98 = !DILocation(line: 65, column: 3, scope: !64)
!99 = !DILocation(line: 66, column: 1, scope: !82)
!100 = !DILocation(line: 0, scope: !81)
!101 = !DILocation(line: 67, column: 20, scope: !81)
!102 = !DILocation(line: 67, column: 5, scope: !81)
!103 = !DILocation(line: 67, column: 25, scope: !81)
!104 = !DILocation(line: 67, column: 9, scope: !81)
!105 = !DILocation(line: 66, column: 1, scope: !81)
!106 = !DILocation(line: 68, column: 14, scope: !81)
!107 = !DILocation(line: 68, column: 20, scope: !81)
!108 = !DILocation(line: 68, column: 18, scope: !81)
!109 = !DILocation(line: 68, column: 22, scope: !81)
!110 = !DILocation(line: 68, column: 16, scope: !81)
!111 = !DILocation(line: 68, column: 9, scope: !81)
!112 = !DILocation(line: 68, column: 7, scope: !81)
!113 = !DILocation(line: 68, column: 12, scope: !81)
!114 = distinct !{!114, !105, !115}
!115 = !DILocation(line: 66, column: 23, scope: !81)
!116 = !DILocation(line: 70, column: 1, scope: !82)
!117 = !DILocation(line: 72, column: 1, scope: !82)
!118 = !DILocation(line: 73, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !82, file: !1, line: 72, column: 1)
!120 = !DILocation(line: 73, column: 18, scope: !119)
!121 = !DILocation(line: 73, column: 11, scope: !119)
!122 = !DILocation(line: 73, column: 5, scope: !119)
!123 = !DILocation(line: 72, column: 19, scope: !119)
!124 = !DILocation(line: 74, column: 3, scope: !64)
!125 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !65, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133}
!127 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !125, type: !67, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !125, type: !67, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "len", arg: 3, scope: !125, type: !71, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: "vla", arg: 4, scope: !125, type: !18, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "a", arg: 5, scope: !125, type: !71, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "b", arg: 6, scope: !125, type: !71, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "error", arg: 7, scope: !125, type: !71, flags: DIFlagArtificial)
!134 = !DILocation(line: 0, scope: !125)
!135 = !DILocation(line: 64, column: 1, scope: !125)
!136 = !{!137}
!137 = !{i64 2, i64 -1, i64 -1, i1 true}
