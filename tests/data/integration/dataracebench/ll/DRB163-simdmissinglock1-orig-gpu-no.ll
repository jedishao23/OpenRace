; ModuleID = 'DRB163-simdmissinglock1-orig-gpu-no.c'
source_filename = "DRB163-simdmissinglock1-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [51 x i8] c";DRB163-simdmissinglock1-orig-gpu-no.c;main;27;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [52 x i8] c";DRB163-simdmissinglock1-orig-gpu-no.c;main;27;62;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @3, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @3, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [64 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [64 x i32]* %var to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata [64 x i32]* %var, metadata !14, metadata !DIExpression()), !dbg !23
  %1 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %i, align 4, !dbg !25, !tbaa !26
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !30, !tbaa !26
  %cmp = icmp slt i32 %2, 64, !dbg !32
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !33

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !34
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !35, !tbaa !26
  %idxprom = sext i32 %4 to i64, !dbg !37
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom, !dbg !37
  store i32 0, i32* %arrayidx, align 4, !dbg !38, !tbaa !26
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !40, !tbaa !26
  %inc = add nsw i32 %5, 1, !dbg !40
  store i32 %inc, i32* %i, align 4, !dbg !40, !tbaa !26
  br label %for.cond, !dbg !34, !llvm.loop !41

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_10308_be048b_main_l26([64 x i32]* %var) #4, !dbg !44
  %6 = bitcast i32* %i1 to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !20, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %i1, align 4, !dbg !47, !tbaa !26
  br label %for.cond2, !dbg !46

for.cond2:                                        ; preds = %for.inc11, %for.end
  %7 = load i32, i32* %i1, align 4, !dbg !48, !tbaa !26
  %cmp3 = icmp slt i32 %7, 64, !dbg !50
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !51

for.cond.cleanup4:                                ; preds = %for.cond2
  %8 = bitcast i32* %i1 to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !52
  br label %for.end13

for.body5:                                        ; preds = %for.cond2
  %9 = load i32, i32* %i1, align 4, !dbg !53, !tbaa !26
  %idxprom6 = sext i32 %9 to i64, !dbg !56
  %arrayidx7 = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom6, !dbg !56
  %10 = load i32, i32* %arrayidx7, align 4, !dbg !56, !tbaa !26
  %cmp8 = icmp ne i32 %10, 100, !dbg !57
  br i1 %cmp8, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %for.body5
  %11 = load i32, i32* %i1, align 4, !dbg !59, !tbaa !26
  %idxprom9 = sext i32 %11 to i64, !dbg !61
  %arrayidx10 = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom9, !dbg !61
  %12 = load i32, i32* %arrayidx10, align 4, !dbg !61, !tbaa !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12), !dbg !62
  br label %if.end, !dbg !63

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc11, !dbg !64

for.inc11:                                        ; preds = %if.end
  %13 = load i32, i32* %i1, align 4, !dbg !65, !tbaa !26
  %inc12 = add nsw i32 %13, 1, !dbg !65
  store i32 %inc12, i32* %i1, align 4, !dbg !65, !tbaa !26
  br label %for.cond2, !dbg !52, !llvm.loop !66

for.end13:                                        ; preds = %for.cond.cleanup4
  %14 = bitcast [64 x i32]* %var to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %14) #4, !dbg !68
  ret i32 0, !dbg !69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be048b_main_l26_debug__([64 x i32]* nonnull align 4 dereferenceable(256) %var) #3 !dbg !70 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !75, metadata !DIExpression()), !dbg !78
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !79, !tbaa !76
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @6, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [64 x i32]*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), [64 x i32]* %0), !dbg !79
  ret void, !dbg !80
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* nonnull align 4 dereferenceable(256) %var) #3 !dbg !81 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [64 x i32]*, align 8
  %var1 = alloca [64 x i32], align 16
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !89, metadata !DIExpression()), !dbg !99
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !90, metadata !DIExpression()), !dbg !99
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !91, metadata !DIExpression()), !dbg !100
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !101, !tbaa !76
  %1 = bitcast [64 x i32]* %var1 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %1) #4, !dbg !101
  call void @llvm.dbg.declare(metadata [64 x i32]* %var1, metadata !92, metadata !DIExpression()), !dbg !99
  %array.begin = getelementptr inbounds [64 x i32], [64 x i32]* %var1, i32 0, i32 0, !dbg !101
  %2 = getelementptr i32, i32* %array.begin, i64 64, !dbg !101
  %omp.arrayinit.isempty = icmp eq i32* %array.begin, %2, !dbg !101
  br i1 %omp.arrayinit.isempty, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !101

omp.arrayinit.body:                               ; preds = %omp.arrayinit.body, %entry
  %omp.arraycpy.destElementPast = phi i32* [ %array.begin, %entry ], [ %omp.arraycpy.dest.element, %omp.arrayinit.body ], !dbg !101
  store i32 0, i32* %omp.arraycpy.destElementPast, align 4, !dbg !101, !tbaa !26
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !101
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %2, !dbg !101
  br i1 %omp.arraycpy.done, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !101

omp.arrayinit.done:                               ; preds = %omp.arrayinit.body, %entry
  %lhs.begin = bitcast [64 x i32]* %0 to i32*, !dbg !101
  %rhs.begin = bitcast [64 x i32]* %var1 to i32*, !dbg !101
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !93, metadata !DIExpression()), !dbg !99
  %4 = bitcast i32* %.omp.comb.lb to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !94, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !102, !tbaa !26
  %5 = bitcast i32* %.omp.comb.ub to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !95, metadata !DIExpression()), !dbg !99
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !102, !tbaa !26
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !96, metadata !DIExpression()), !dbg !99
  store i32 1, i32* %.omp.stride, align 4, !dbg !102, !tbaa !26
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !97, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.is_last, align 4, !dbg !102, !tbaa !26
  %8 = bitcast i32* %i to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %i, metadata !98, metadata !DIExpression()), !dbg !99
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101
  %10 = load i32, i32* %9, align 4, !dbg !101, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %10, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !101
  %11 = load i32, i32* %.omp.comb.ub, align 4, !dbg !102, !tbaa !26
  %cmp = icmp sgt i32 %11, 99, !dbg !102
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !102

cond.true:                                        ; preds = %omp.arrayinit.done
  br label %cond.end, !dbg !102

cond.false:                                       ; preds = %omp.arrayinit.done
  %12 = load i32, i32* %.omp.comb.ub, align 4, !dbg !102, !tbaa !26
  br label %cond.end, !dbg !102

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %12, %cond.false ], !dbg !102
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !102, !tbaa !26
  %13 = load i32, i32* %.omp.comb.lb, align 4, !dbg !102, !tbaa !26
  store i32 %13, i32* %.omp.iv, align 4, !dbg !102, !tbaa !26
  br label %omp.inner.for.cond, !dbg !101

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !102, !tbaa !26
  %15 = load i32, i32* %.omp.comb.ub, align 4, !dbg !102, !tbaa !26
  %cmp2 = icmp sle i32 %14, %15, !dbg !101
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !101

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !101

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.comb.lb, align 4, !dbg !103
  %17 = zext i32 %16 to i64, !dbg !103
  %18 = load i32, i32* %.omp.comb.ub, align 4, !dbg !103
  %19 = zext i32 %18 to i64, !dbg !103
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @6, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [64 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %17, i64 %19, [64 x i32]* %var1), !dbg !103
  br label %omp.inner.for.inc, !dbg !104

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !102, !tbaa !26
  %21 = load i32, i32* %.omp.stride, align 4, !dbg !102, !tbaa !26
  %add = add nsw i32 %20, %21, !dbg !101
  store i32 %add, i32* %.omp.iv, align 4, !dbg !101, !tbaa !26
  br label %omp.inner.for.cond, !dbg !104, !llvm.loop !106

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !104

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !104
  %23 = load i32, i32* %22, align 4, !dbg !104, !tbaa !26
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %23), !dbg !107
  %24 = bitcast i32* %i to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !104
  %25 = bitcast i32* %.omp.is_last to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !104
  %26 = bitcast i32* %.omp.stride to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !104
  %27 = bitcast i32* %.omp.comb.ub to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !104
  %28 = bitcast i32* %.omp.comb.lb to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !104
  %29 = bitcast i32* %.omp.iv to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !104
  %30 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !104
  %31 = bitcast i32* %rhs.begin to i8*, !dbg !104
  store i8* %31, i8** %30, align 8, !dbg !104
  %32 = load i32*, i32** %.global_tid..addr, align 8, !dbg !104
  %33 = load i32, i32* %32, align 4, !dbg !104, !tbaa !26
  %34 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !104
  %35 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @5, i32 %33, i32 1, i64 8, i8* %34, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !104
  switch i32 %35, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !104

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %36 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !104
  %omp.arraycpy.isempty = icmp eq i32* %lhs.begin, %36, !dbg !104
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done7, label %omp.arraycpy.body, !dbg !104

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  %omp.arraycpy.srcElementPast = phi i32* [ %rhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !104
  %omp.arraycpy.destElementPast3 = phi i32* [ %lhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.dest.element5, %omp.arraycpy.body ], !dbg !104
  %37 = load i32, i32* %omp.arraycpy.destElementPast3, align 4, !dbg !108, !tbaa !26
  %38 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !108, !tbaa !26
  %add4 = add nsw i32 %37, %38, !dbg !109
  store i32 %add4, i32* %omp.arraycpy.destElementPast3, align 4, !dbg !109, !tbaa !26
  %omp.arraycpy.dest.element5 = getelementptr i32, i32* %omp.arraycpy.destElementPast3, i32 1, !dbg !104
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !104
  %omp.arraycpy.done6 = icmp eq i32* %omp.arraycpy.dest.element5, %36, !dbg !104
  br i1 %omp.arraycpy.done6, label %omp.arraycpy.done7, label %omp.arraycpy.body, !dbg !104

omp.arraycpy.done7:                               ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @5, i32 %33, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !104
  br label %.omp.reduction.default, !dbg !104

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %39 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !104
  %omp.arraycpy.isempty8 = icmp eq i32* %lhs.begin, %39, !dbg !104
  br i1 %omp.arraycpy.isempty8, label %omp.arraycpy.done15, label %omp.arraycpy.body9, !dbg !104

omp.arraycpy.body9:                               ; preds = %omp.arraycpy.body9, %.omp.reduction.case2
  %omp.arraycpy.srcElementPast10 = phi i32* [ %rhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.src.element13, %omp.arraycpy.body9 ], !dbg !104
  %omp.arraycpy.destElementPast11 = phi i32* [ %lhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.dest.element12, %omp.arraycpy.body9 ], !dbg !104
  %40 = load i32, i32* %omp.arraycpy.srcElementPast10, align 4, !dbg !108, !tbaa !26
  %41 = atomicrmw add i32* %omp.arraycpy.destElementPast11, i32 %40 monotonic, !dbg !104
  %omp.arraycpy.dest.element12 = getelementptr i32, i32* %omp.arraycpy.destElementPast11, i32 1, !dbg !104
  %omp.arraycpy.src.element13 = getelementptr i32, i32* %omp.arraycpy.srcElementPast10, i32 1, !dbg !104
  %omp.arraycpy.done14 = icmp eq i32* %omp.arraycpy.dest.element12, %39, !dbg !104
  br i1 %omp.arraycpy.done14, label %omp.arraycpy.done15, label %omp.arraycpy.body9, !dbg !104

omp.arraycpy.done15:                              ; preds = %omp.arraycpy.body9, %.omp.reduction.case2
  br label %.omp.reduction.default, !dbg !104

.omp.reduction.default:                           ; preds = %omp.arraycpy.done15, %omp.arraycpy.done7, %omp.loop.exit
  %42 = bitcast [64 x i32]* %var1 to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %42) #4, !dbg !104
  ret void, !dbg !110
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* nonnull align 4 dereferenceable(256) %var) #3 !dbg !111 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [64 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %var2 = alloca [64 x i32], align 16
  %i = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %.omp.iv7 = alloca i32, align 4
  %i8 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !117, metadata !DIExpression()), !dbg !133
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !118, metadata !DIExpression()), !dbg !133
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !134
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !119, metadata !DIExpression()), !dbg !133
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !134
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !120, metadata !DIExpression()), !dbg !133
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !121, metadata !DIExpression()), !dbg !136
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !137, !tbaa !76
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !122, metadata !DIExpression()), !dbg !133
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !123, metadata !DIExpression()), !dbg !133
  store i32 0, i32* %.omp.lb, align 4, !dbg !138, !tbaa !26
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !124, metadata !DIExpression()), !dbg !133
  store i32 99, i32* %.omp.ub, align 4, !dbg !138, !tbaa !26
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !137, !tbaa !134
  %conv = trunc i64 %4 to i32, !dbg !137
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !137, !tbaa !134
  %conv1 = trunc i64 %5 to i32, !dbg !137
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !137, !tbaa !26
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !137, !tbaa !26
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !125, metadata !DIExpression()), !dbg !133
  store i32 1, i32* %.omp.stride, align 4, !dbg !138, !tbaa !26
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !126, metadata !DIExpression()), !dbg !133
  store i32 0, i32* %.omp.is_last, align 4, !dbg !138, !tbaa !26
  %8 = bitcast [64 x i32]* %var2 to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %8) #4, !dbg !137
  call void @llvm.dbg.declare(metadata [64 x i32]* %var2, metadata !127, metadata !DIExpression()), !dbg !133
  %array.begin = getelementptr inbounds [64 x i32], [64 x i32]* %var2, i32 0, i32 0, !dbg !137
  %9 = getelementptr i32, i32* %array.begin, i64 64, !dbg !137
  %omp.arrayinit.isempty = icmp eq i32* %array.begin, %9, !dbg !137
  br i1 %omp.arrayinit.isempty, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !137

omp.arrayinit.body:                               ; preds = %omp.arrayinit.body, %entry
  %omp.arraycpy.destElementPast = phi i32* [ %array.begin, %entry ], [ %omp.arraycpy.dest.element, %omp.arrayinit.body ], !dbg !137
  store i32 0, i32* %omp.arraycpy.destElementPast, align 4, !dbg !137, !tbaa !26
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !137
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %9, !dbg !137
  br i1 %omp.arraycpy.done, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !137

omp.arrayinit.done:                               ; preds = %omp.arrayinit.body, %entry
  %lhs.begin = bitcast [64 x i32]* %0 to i32*, !dbg !137
  %rhs.begin = bitcast [64 x i32]* %var2 to i32*, !dbg !137
  %10 = bitcast i32* %i to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %i, metadata !128, metadata !DIExpression()), !dbg !133
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !137
  %12 = load i32, i32* %11, align 4, !dbg !137, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !139
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !138, !tbaa !26
  %cmp = icmp sgt i32 %13, 99, !dbg !138
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !138

cond.true:                                        ; preds = %omp.arrayinit.done
  br label %cond.end, !dbg !138

cond.false:                                       ; preds = %omp.arrayinit.done
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !138, !tbaa !26
  br label %cond.end, !dbg !138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %14, %cond.false ], !dbg !138
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !138, !tbaa !26
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !138, !tbaa !26
  store i32 %15, i32* %.omp.iv, align 4, !dbg !138, !tbaa !26
  br label %omp.inner.for.cond, !dbg !137

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc18, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !138, !tbaa !26
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !138, !tbaa !26
  %cmp4 = icmp sle i32 %16, %17, !dbg !137
  br i1 %cmp4, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !137

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end20, !dbg !137

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !138, !tbaa !26
  %mul = mul nsw i32 %18, 1, !dbg !140
  %add = add nsw i32 0, %mul, !dbg !140
  store i32 %add, i32* %i, align 4, !dbg !140, !tbaa !26
  %19 = bitcast i32* %.omp.iv7 to i8*, !dbg !141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !141
  call void @llvm.dbg.declare(metadata i32* %.omp.iv7, metadata !129, metadata !DIExpression()), !dbg !142
  store i32 0, i32* %.omp.iv7, align 4, !dbg !143, !tbaa !26
  %20 = bitcast i32* %i8 to i8*, !dbg !141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !141
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !132, metadata !DIExpression()), !dbg !142
  br label %omp.inner.for.cond9, !dbg !141

omp.inner.for.cond9:                              ; preds = %omp.inner.for.inc, %omp.inner.for.body
  %21 = load i32, i32* %.omp.iv7, align 4, !dbg !143, !tbaa !26, !llvm.access.group !144
  %cmp10 = icmp slt i32 %21, 64, !dbg !145
  br i1 %cmp10, label %omp.inner.for.body13, label %omp.inner.for.cond.cleanup12, !dbg !141

omp.inner.for.cond.cleanup12:                     ; preds = %omp.inner.for.cond9
  br label %omp.inner.for.end, !dbg !141

omp.inner.for.body13:                             ; preds = %omp.inner.for.cond9
  %22 = load i32, i32* %.omp.iv7, align 4, !dbg !143, !tbaa !26, !llvm.access.group !144
  %mul14 = mul nsw i32 %22, 1, !dbg !146
  %add15 = add nsw i32 0, %mul14, !dbg !146
  store i32 %add15, i32* %i8, align 4, !dbg !146, !tbaa !26, !llvm.access.group !144
  %23 = load i32, i32* %i8, align 4, !dbg !147, !tbaa !26, !llvm.access.group !144
  %idxprom = sext i32 %23 to i64, !dbg !149
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %var2, i64 0, i64 %idxprom, !dbg !149
  %24 = load i32, i32* %arrayidx, align 4, !dbg !150, !tbaa !26, !llvm.access.group !144
  %inc = add nsw i32 %24, 1, !dbg !150
  store i32 %inc, i32* %arrayidx, align 4, !dbg !150, !tbaa !26, !llvm.access.group !144
  br label %omp.body.continue, !dbg !151

omp.body.continue:                                ; preds = %omp.inner.for.body13
  br label %omp.inner.for.inc, !dbg !152

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv7, align 4, !dbg !143, !tbaa !26, !llvm.access.group !144
  %add16 = add nsw i32 %25, 1, !dbg !145
  store i32 %add16, i32* %.omp.iv7, align 4, !dbg !145, !tbaa !26, !llvm.access.group !144
  br label %omp.inner.for.cond9, !dbg !152, !llvm.loop !153

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup12
  store i32 64, i32* %i8, align 4, !dbg !146, !tbaa !26
  %26 = bitcast i32* %i8 to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !152
  %27 = bitcast i32* %.omp.iv7 to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !152
  br label %omp.body.continue17, !dbg !157

omp.body.continue17:                              ; preds = %omp.inner.for.end
  br label %omp.inner.for.inc18, !dbg !139

omp.inner.for.inc18:                              ; preds = %omp.body.continue17
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !138, !tbaa !26
  %add19 = add nsw i32 %28, 1, !dbg !137
  store i32 %add19, i32* %.omp.iv, align 4, !dbg !137, !tbaa !26
  br label %omp.inner.for.cond, !dbg !139, !llvm.loop !158

omp.inner.for.end20:                              ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !139

omp.loop.exit:                                    ; preds = %omp.inner.for.end20
  %29 = load i32*, i32** %.global_tid..addr, align 8, !dbg !139
  %30 = load i32, i32* %29, align 4, !dbg !139, !tbaa !26
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %30), !dbg !159
  %31 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !139
  %32 = bitcast i32* %rhs.begin to i8*, !dbg !139
  store i8* %32, i8** %31, align 8, !dbg !139
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !139
  %34 = load i32, i32* %33, align 4, !dbg !139, !tbaa !26
  %35 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !139
  %36 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @5, i32 %34, i32 1, i64 8, i8* %35, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !139
  switch i32 %36, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !139

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %37 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !139
  %omp.arraycpy.isempty = icmp eq i32* %lhs.begin, %37, !dbg !139
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done25, label %omp.arraycpy.body, !dbg !139

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  %omp.arraycpy.srcElementPast = phi i32* [ %rhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !139
  %omp.arraycpy.destElementPast21 = phi i32* [ %lhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.dest.element23, %omp.arraycpy.body ], !dbg !139
  %38 = load i32, i32* %omp.arraycpy.destElementPast21, align 4, !dbg !160, !tbaa !26
  %39 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !160, !tbaa !26
  %add22 = add nsw i32 %38, %39, !dbg !161
  store i32 %add22, i32* %omp.arraycpy.destElementPast21, align 4, !dbg !161, !tbaa !26
  %omp.arraycpy.dest.element23 = getelementptr i32, i32* %omp.arraycpy.destElementPast21, i32 1, !dbg !139
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !139
  %omp.arraycpy.done24 = icmp eq i32* %omp.arraycpy.dest.element23, %37, !dbg !139
  br i1 %omp.arraycpy.done24, label %omp.arraycpy.done25, label %omp.arraycpy.body, !dbg !139

omp.arraycpy.done25:                              ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @5, i32 %34, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !139
  br label %.omp.reduction.default, !dbg !139

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %40 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !139
  %omp.arraycpy.isempty26 = icmp eq i32* %lhs.begin, %40, !dbg !139
  br i1 %omp.arraycpy.isempty26, label %omp.arraycpy.done33, label %omp.arraycpy.body27, !dbg !139

omp.arraycpy.body27:                              ; preds = %omp.arraycpy.body27, %.omp.reduction.case2
  %omp.arraycpy.srcElementPast28 = phi i32* [ %rhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.src.element31, %omp.arraycpy.body27 ], !dbg !139
  %omp.arraycpy.destElementPast29 = phi i32* [ %lhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.dest.element30, %omp.arraycpy.body27 ], !dbg !139
  %41 = load i32, i32* %omp.arraycpy.srcElementPast28, align 4, !dbg !160, !tbaa !26
  %42 = atomicrmw add i32* %omp.arraycpy.destElementPast29, i32 %41 monotonic, !dbg !139
  %omp.arraycpy.dest.element30 = getelementptr i32, i32* %omp.arraycpy.destElementPast29, i32 1, !dbg !139
  %omp.arraycpy.src.element31 = getelementptr i32, i32* %omp.arraycpy.srcElementPast28, i32 1, !dbg !139
  %omp.arraycpy.done32 = icmp eq i32* %omp.arraycpy.dest.element30, %40, !dbg !139
  br i1 %omp.arraycpy.done32, label %omp.arraycpy.done33, label %omp.arraycpy.body27, !dbg !139

omp.arraycpy.done33:                              ; preds = %omp.arraycpy.body27, %.omp.reduction.case2
  br label %.omp.reduction.default, !dbg !139

.omp.reduction.default:                           ; preds = %omp.arraycpy.done33, %omp.arraycpy.done25, %omp.loop.exit
  %43 = bitcast i32* %i to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !139
  %44 = bitcast [64 x i32]* %var2 to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %44) #4, !dbg !139
  %45 = bitcast i32* %.omp.is_last to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !139
  %46 = bitcast i32* %.omp.stride to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !139
  %47 = bitcast i32* %.omp.ub to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !139
  %48 = bitcast i32* %.omp.lb to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !139
  %49 = bitcast i32* %.omp.iv to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !139
  ret void, !dbg !162
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !163 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !166, metadata !DIExpression()), !dbg !169
  store i8* %1, i8** %.addr1, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !168, metadata !DIExpression()), !dbg !169
  %2 = load i8*, i8** %.addr, align 8, !dbg !170
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !170
  %4 = load i8*, i8** %.addr1, align 8, !dbg !170
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !170
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !170
  %7 = load i8*, i8** %6, align 8, !dbg !170
  %8 = bitcast i8* %7 to i32*, !dbg !170
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !170
  %10 = load i8*, i8** %9, align 8, !dbg !170
  %11 = bitcast i8* %10 to i32*, !dbg !170
  %12 = getelementptr i32, i32* %11, i64 64, !dbg !170
  %omp.arraycpy.isempty = icmp eq i32* %11, %12, !dbg !170
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !170

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %entry
  %omp.arraycpy.srcElementPast = phi i32* [ %8, %entry ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !170
  %omp.arraycpy.destElementPast = phi i32* [ %11, %entry ], [ %omp.arraycpy.dest.element, %omp.arraycpy.body ], !dbg !170
  %13 = load i32, i32* %omp.arraycpy.destElementPast, align 4, !dbg !171, !tbaa !26
  %14 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !171, !tbaa !26
  %add = add nsw i32 %13, %14, !dbg !172
  store i32 %add, i32* %omp.arraycpy.destElementPast, align 4, !dbg !172, !tbaa !26
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !170
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !170
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %12, !dbg !170
  br i1 %omp.arraycpy.done, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !170

omp.arraycpy.done2:                               ; preds = %omp.arraycpy.body, %entry
  ret void, !dbg !171
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* nonnull align 4 dereferenceable(256) %var) #3 !dbg !173 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !175, metadata !DIExpression()), !dbg !180
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !176, metadata !DIExpression()), !dbg !180
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !134
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !177, metadata !DIExpression()), !dbg !180
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !134
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !178, metadata !DIExpression()), !dbg !180
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !181, !tbaa !76
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !181, !tbaa !76
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !181, !tbaa !76
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !181, !tbaa !134
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !181, !tbaa !134
  %5 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !181, !tbaa !76
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [64 x i32]* %5) #4, !dbg !181
  ret void, !dbg !181
}

; Function Attrs: nounwind
declare !callback !182 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #3 !dbg !184 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !186, metadata !DIExpression()), !dbg !188
  store i8* %1, i8** %.addr1, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !187, metadata !DIExpression()), !dbg !188
  %2 = load i8*, i8** %.addr, align 8, !dbg !189
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !189
  %4 = load i8*, i8** %.addr1, align 8, !dbg !189
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !189
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !189
  %7 = load i8*, i8** %6, align 8, !dbg !189
  %8 = bitcast i8* %7 to i32*, !dbg !189
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !189
  %10 = load i8*, i8** %9, align 8, !dbg !189
  %11 = bitcast i8* %10 to i32*, !dbg !189
  %12 = getelementptr i32, i32* %11, i64 64, !dbg !189
  %omp.arraycpy.isempty = icmp eq i32* %11, %12, !dbg !189
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !189

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %entry
  %omp.arraycpy.srcElementPast = phi i32* [ %8, %entry ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !189
  %omp.arraycpy.destElementPast = phi i32* [ %11, %entry ], [ %omp.arraycpy.dest.element, %omp.arraycpy.body ], !dbg !189
  %13 = load i32, i32* %omp.arraycpy.destElementPast, align 4, !dbg !190, !tbaa !26
  %14 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !190, !tbaa !26
  %add = add nsw i32 %13, %14, !dbg !191
  store i32 %add, i32* %omp.arraycpy.destElementPast, align 4, !dbg !191, !tbaa !26
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !189
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !189
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %12, !dbg !189
  br i1 %omp.arraycpy.done, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !189

omp.arraycpy.done2:                               ; preds = %omp.arraycpy.body, %entry
  ret void, !dbg !190
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* nonnull align 4 dereferenceable(256) %var) #3 !dbg !192 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !194, metadata !DIExpression()), !dbg !197
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !195, metadata !DIExpression()), !dbg !197
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !198, !tbaa !76
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !198, !tbaa !76
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !198, !tbaa !76
  %3 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !198, !tbaa !76
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [64 x i32]* %3) #4, !dbg !198
  ret void, !dbg !198
}

; Function Attrs: nounwind
declare !callback !182 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be048b_main_l26([64 x i32]* nonnull align 4 dereferenceable(256) %var) #3 !dbg !199 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !76
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !203, !tbaa !76
  %1 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !203, !tbaa !76
  call void @__omp_offloading_10308_be048b_main_l26_debug__([64 x i32]* %1) #4, !dbg !203
  ret void, !dbg !203
}

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB163-simdmissinglock1-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !10, scopeLine: 19, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !18, !20}
!14 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 20, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 64)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 22, type: !12)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 22, column: 3)
!20 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 35, type: !12)
!21 = distinct !DILexicalBlock(scope: !9, file: !1, line: 35, column: 3)
!22 = !DILocation(line: 20, column: 3, scope: !9)
!23 = !DILocation(line: 20, column: 7, scope: !9)
!24 = !DILocation(line: 22, column: 7, scope: !19)
!25 = !DILocation(line: 22, column: 11, scope: !19)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 22, column: 16, scope: !31)
!31 = distinct !DILexicalBlock(scope: !19, file: !1, line: 22, column: 3)
!32 = !DILocation(line: 22, column: 17, scope: !31)
!33 = !DILocation(line: 22, column: 3, scope: !19)
!34 = !DILocation(line: 22, column: 3, scope: !31)
!35 = !DILocation(line: 23, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 22, column: 25)
!37 = !DILocation(line: 23, column: 5, scope: !36)
!38 = !DILocation(line: 23, column: 11, scope: !36)
!39 = !DILocation(line: 24, column: 3, scope: !36)
!40 = !DILocation(line: 22, column: 22, scope: !31)
!41 = distinct !{!41, !33, !42, !43}
!42 = !DILocation(line: 24, column: 3, scope: !19)
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !DILocation(line: 26, column: 3, scope: !45)
!45 = distinct !DILexicalBlock(scope: !9, file: !1, line: 26, column: 3)
!46 = !DILocation(line: 35, column: 7, scope: !21)
!47 = !DILocation(line: 35, column: 11, scope: !21)
!48 = !DILocation(line: 35, column: 16, scope: !49)
!49 = distinct !DILexicalBlock(scope: !21, file: !1, line: 35, column: 3)
!50 = !DILocation(line: 35, column: 17, scope: !49)
!51 = !DILocation(line: 35, column: 3, scope: !21)
!52 = !DILocation(line: 35, column: 3, scope: !49)
!53 = !DILocation(line: 36, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 36, column: 8)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 35, column: 25)
!56 = !DILocation(line: 36, column: 8, scope: !54)
!57 = !DILocation(line: 36, column: 14, scope: !54)
!58 = !DILocation(line: 36, column: 8, scope: !55)
!59 = !DILocation(line: 37, column: 25, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !1, line: 36, column: 20)
!61 = !DILocation(line: 37, column: 21, scope: !60)
!62 = !DILocation(line: 37, column: 7, scope: !60)
!63 = !DILocation(line: 38, column: 5, scope: !60)
!64 = !DILocation(line: 39, column: 3, scope: !55)
!65 = !DILocation(line: 35, column: 22, scope: !49)
!66 = distinct !{!66, !51, !67, !43}
!67 = !DILocation(line: 39, column: 3, scope: !21)
!68 = !DILocation(line: 42, column: 1, scope: !9)
!69 = !DILocation(line: 41, column: 3, scope: !9)
!70 = distinct !DISubprogram(name: "__omp_offloading_10308_be048b_main_l26_debug__", scope: !1, file: !1, line: 27, type: !71, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73}
!73 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!74 = !{!75}
!75 = !DILocalVariable(name: "var", arg: 1, scope: !70, file: !1, line: 20, type: !73)
!76 = !{!77, !77, i64 0}
!77 = !{!"any pointer", !28, i64 0}
!78 = !DILocation(line: 20, column: 7, scope: !70)
!79 = !DILocation(line: 27, column: 3, scope: !70)
!80 = !DILocation(line: 27, column: 62, scope: !70)
!81 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 28, type: !82, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84, !84, !73}
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!89 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !81, type: !84, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !81, type: !84, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "var", arg: 3, scope: !81, file: !1, line: 20, type: !73)
!92 = !DILocalVariable(name: "var", scope: !81, type: !15, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.iv", scope: !81, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.comb.lb", scope: !81, type: !12, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.comb.ub", scope: !81, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.stride", scope: !81, type: !12, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.is_last", scope: !81, type: !12, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "i", scope: !81, type: !12, flags: DIFlagArtificial)
!99 = !DILocation(line: 0, scope: !81)
!100 = !DILocation(line: 20, column: 7, scope: !81)
!101 = !DILocation(line: 28, column: 3, scope: !81)
!102 = !DILocation(line: 28, column: 8, scope: !81)
!103 = !DILocation(line: 27, column: 3, scope: !81)
!104 = !DILocation(line: 27, column: 62, scope: !105)
!105 = distinct !DILexicalBlock(scope: !81, file: !1, line: 27, column: 3)
!106 = distinct !{!106, !103, !107}
!107 = !DILocation(line: 27, column: 62, scope: !81)
!108 = !DILocation(line: 27, column: 57, scope: !81)
!109 = !DILocation(line: 27, column: 55, scope: !81)
!110 = !DILocation(line: 33, column: 3, scope: !81)
!111 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 28, type: !112, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !84, !84, !114, !114, !73}
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !132}
!117 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !111, type: !84, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !111, type: !84, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !111, type: !114, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !111, type: !114, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "var", arg: 5, scope: !111, file: !1, line: 20, type: !73)
!122 = !DILocalVariable(name: ".omp.iv", scope: !111, type: !12, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".omp.lb", scope: !111, type: !12, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: ".omp.ub", scope: !111, type: !12, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".omp.stride", scope: !111, type: !12, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".omp.is_last", scope: !111, type: !12, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "var", scope: !111, type: !15, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "i", scope: !111, type: !12, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: ".omp.iv", scope: !130, type: !12, flags: DIFlagArtificial)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 29, column: 5)
!131 = distinct !DILexicalBlock(scope: !111, file: !1, line: 28, column: 26)
!132 = !DILocalVariable(name: "i", scope: !130, type: !12, flags: DIFlagArtificial)
!133 = !DILocation(line: 0, scope: !111)
!134 = !{!135, !135, i64 0}
!135 = !{!"long", !28, i64 0}
!136 = !DILocation(line: 20, column: 7, scope: !111)
!137 = !DILocation(line: 28, column: 3, scope: !111)
!138 = !DILocation(line: 28, column: 8, scope: !111)
!139 = !DILocation(line: 27, column: 3, scope: !111)
!140 = !DILocation(line: 28, column: 22, scope: !111)
!141 = !DILocation(line: 29, column: 5, scope: !131)
!142 = !DILocation(line: 0, scope: !130)
!143 = !DILocation(line: 30, column: 9, scope: !130)
!144 = distinct !{}
!145 = !DILocation(line: 30, column: 5, scope: !130)
!146 = !DILocation(line: 30, column: 23, scope: !130)
!147 = !DILocation(line: 31, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !130, file: !1, line: 30, column: 27)
!149 = !DILocation(line: 31, column: 7, scope: !148)
!150 = !DILocation(line: 31, column: 13, scope: !148)
!151 = !DILocation(line: 32, column: 5, scope: !148)
!152 = !DILocation(line: 29, column: 5, scope: !130)
!153 = distinct !{!153, !152, !154, !155, !156}
!154 = !DILocation(line: 29, column: 21, scope: !130)
!155 = !{!"llvm.loop.parallel_accesses", !144}
!156 = !{!"llvm.loop.vectorize.enable", i1 true}
!157 = !DILocation(line: 33, column: 3, scope: !131)
!158 = distinct !{!158, !139, !159}
!159 = !DILocation(line: 27, column: 62, scope: !111)
!160 = !DILocation(line: 27, column: 57, scope: !111)
!161 = !DILocation(line: 27, column: 55, scope: !111)
!162 = !DILocation(line: 33, column: 3, scope: !111)
!163 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 27, type: !164, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !165)
!164 = !DISubroutineType(types: !2)
!165 = !{!166, !168}
!166 = !DILocalVariable(arg: 1, scope: !163, type: !167, flags: DIFlagArtificial)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!168 = !DILocalVariable(arg: 2, scope: !163, type: !167, flags: DIFlagArtificial)
!169 = !DILocation(line: 0, scope: !163)
!170 = !DILocation(line: 27, column: 62, scope: !163)
!171 = !DILocation(line: 27, column: 57, scope: !163)
!172 = !DILocation(line: 27, column: 55, scope: !163)
!173 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !112, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!174 = !{!175, !176, !177, !178, !179}
!175 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !173, type: !84, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !173, type: !84, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !173, type: !114, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !173, type: !114, flags: DIFlagArtificial)
!179 = !DILocalVariable(name: "var", arg: 5, scope: !173, type: !73, flags: DIFlagArtificial)
!180 = !DILocation(line: 0, scope: !173)
!181 = !DILocation(line: 27, column: 3, scope: !173)
!182 = !{!183}
!183 = !{i64 2, i64 -1, i64 -1, i1 true}
!184 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !1, file: !1, line: 27, type: !164, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!185 = !{!186, !187}
!186 = !DILocalVariable(arg: 1, scope: !184, type: !167, flags: DIFlagArtificial)
!187 = !DILocalVariable(arg: 2, scope: !184, type: !167, flags: DIFlagArtificial)
!188 = !DILocation(line: 0, scope: !184)
!189 = !DILocation(line: 27, column: 62, scope: !184)
!190 = !DILocation(line: 27, column: 57, scope: !184)
!191 = !DILocation(line: 27, column: 55, scope: !184)
!192 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 27, type: !82, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !193)
!193 = !{!194, !195, !196}
!194 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !192, type: !84, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !192, type: !84, flags: DIFlagArtificial)
!196 = !DILocalVariable(name: "var", arg: 3, scope: !192, type: !73, flags: DIFlagArtificial)
!197 = !DILocation(line: 0, scope: !192)
!198 = !DILocation(line: 27, column: 3, scope: !192)
!199 = distinct !DISubprogram(name: "__omp_offloading_10308_be048b_main_l26", scope: !1, file: !1, line: 26, type: !71, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!200 = !{!201}
!201 = !DILocalVariable(name: "var", arg: 1, scope: !199, type: !73, flags: DIFlagArtificial)
!202 = !DILocation(line: 0, scope: !199)
!203 = !DILocation(line: 26, column: 3, scope: !199)
