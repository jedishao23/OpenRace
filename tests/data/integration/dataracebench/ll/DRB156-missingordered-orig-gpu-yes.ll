; ModuleID = 'DRB156-missingordered-orig-gpu-yes.c'
source_filename = "DRB156-missingordered-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [50 x i8] c";DRB156-missingordered-orig-gpu-yes.c;main;26;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [51 x i8] c";DRB156-missingordered-orig-gpu-yes.c;main;26;44;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [19 x i8] c"Data Race Present\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [100 x i32]* %var to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i32]* %var, metadata !14, metadata !DIExpression()), !dbg !23
  %1 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %i, align 4, !dbg !25, !tbaa !26
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !30, !tbaa !26
  %cmp = icmp slt i32 %2, 100, !dbg !32
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !33

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !34
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !35, !tbaa !26
  %idxprom = sext i32 %4 to i64, !dbg !37
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom, !dbg !37
  store i32 0, i32* %arrayidx, align 4, !dbg !38, !tbaa !26
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !40, !tbaa !26
  %inc = add nsw i32 %5, 1, !dbg !40
  store i32 %inc, i32* %i, align 4, !dbg !40, !tbaa !26
  br label %for.cond, !dbg !34, !llvm.loop !41

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_10308_be0484_main_l25([100 x i32]* %var) #4, !dbg !44
  %6 = bitcast i32* %i1 to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !20, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %i1, align 4, !dbg !47, !tbaa !26
  br label %for.cond2, !dbg !46

for.cond2:                                        ; preds = %for.inc9, %for.end
  %7 = load i32, i32* %i1, align 4, !dbg !48, !tbaa !26
  %cmp3 = icmp slt i32 %7, 100, !dbg !50
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !51

for.cond.cleanup4:                                ; preds = %for.cond2
  store i32 5, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !51

for.body5:                                        ; preds = %for.cond2
  %8 = load i32, i32* %i1, align 4, !dbg !52, !tbaa !26
  %idxprom6 = sext i32 %8 to i64, !dbg !55
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom6, !dbg !55
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !55, !tbaa !26
  %10 = load i32, i32* %i1, align 4, !dbg !56, !tbaa !26
  %cmp8 = icmp ne i32 %9, %10, !dbg !57
  br i1 %cmp8, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %for.body5
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !59
  store i32 0, i32* %retval, align 4, !dbg !61
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !61

if.end:                                           ; preds = %for.body5
  br label %for.inc9, !dbg !62

for.inc9:                                         ; preds = %if.end
  %11 = load i32, i32* %i1, align 4, !dbg !63, !tbaa !26
  %inc10 = add nsw i32 %11, 1, !dbg !63
  store i32 %inc10, i32* %i1, align 4, !dbg !63, !tbaa !26
  br label %for.cond2, !dbg !64, !llvm.loop !65

cleanup:                                          ; preds = %if.then, %for.cond.cleanup4
  %12 = bitcast i32* %i1 to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !64
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 5, label %for.end11
  ]

for.end11:                                        ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !67
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !67

cleanup12:                                        ; preds = %for.end11, %cleanup
  %13 = bitcast [100 x i32]* %var to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %13) #4, !dbg !68
  %14 = load i32, i32* %retval, align 4, !dbg !68
  ret i32 %14, !dbg !68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0484_main_l25_debug__([100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !69 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !74, metadata !DIExpression()), !dbg !77
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !78, !tbaa !75
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @5, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [100 x i32]* %0), !dbg !78
  ret void, !dbg !79
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !89, metadata !DIExpression()), !dbg !97
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !90, metadata !DIExpression()), !dbg !98
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !99, !tbaa !75
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !91, metadata !DIExpression()), !dbg !97
  %2 = bitcast i32* %.omp.comb.lb to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !92, metadata !DIExpression()), !dbg !97
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !100, !tbaa !26
  %3 = bitcast i32* %.omp.comb.ub to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !93, metadata !DIExpression()), !dbg !97
  store i32 98, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !26
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !94, metadata !DIExpression()), !dbg !97
  store i32 1, i32* %.omp.stride, align 4, !dbg !100, !tbaa !26
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !95, metadata !DIExpression()), !dbg !97
  store i32 0, i32* %.omp.is_last, align 4, !dbg !100, !tbaa !26
  %6 = bitcast i32* %i to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !97
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !99
  %8 = load i32, i32* %7, align 4, !dbg !99, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !99
  %9 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !26
  %cmp = icmp sgt i32 %9, 98, !dbg !100
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !100

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !100

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !26
  br label %cond.end, !dbg !100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 98, %cond.true ], [ %10, %cond.false ], !dbg !100
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !26
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !100, !tbaa !26
  store i32 %11, i32* %.omp.iv, align 4, !dbg !100, !tbaa !26
  br label %omp.inner.for.cond, !dbg !99

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !26
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !26
  %cmp1 = icmp sle i32 %12, %13, !dbg !99
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !99

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !99

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !101
  %15 = zext i32 %14 to i64, !dbg !101
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !101
  %17 = zext i32 %16 to i64, !dbg !101
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %15, i64 %17, [100 x i32]* %0), !dbg !101
  br label %omp.inner.for.inc, !dbg !102

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !26
  %19 = load i32, i32* %.omp.stride, align 4, !dbg !100, !tbaa !26
  %add = add nsw i32 %18, %19, !dbg !99
  store i32 %add, i32* %.omp.iv, align 4, !dbg !99, !tbaa !26
  br label %omp.inner.for.cond, !dbg !102, !llvm.loop !104

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !102

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %8), !dbg !105
  %20 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !102
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !102
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !102
  %23 = bitcast i32* %.omp.comb.ub to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !102
  %24 = bitcast i32* %.omp.comb.lb to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !102
  %25 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !102
  ret void, !dbg !106
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !107 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [100 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !113, metadata !DIExpression()), !dbg !124
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !114, metadata !DIExpression()), !dbg !124
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !115, metadata !DIExpression()), !dbg !124
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !116, metadata !DIExpression()), !dbg !124
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !117, metadata !DIExpression()), !dbg !127
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !128, !tbaa !75
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !118, metadata !DIExpression()), !dbg !124
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !119, metadata !DIExpression()), !dbg !124
  store i32 0, i32* %.omp.lb, align 4, !dbg !129, !tbaa !26
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !120, metadata !DIExpression()), !dbg !124
  store i32 98, i32* %.omp.ub, align 4, !dbg !129, !tbaa !26
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !128, !tbaa !125
  %conv = trunc i64 %4 to i32, !dbg !128
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !128, !tbaa !125
  %conv1 = trunc i64 %5 to i32, !dbg !128
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !128, !tbaa !26
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !128, !tbaa !26
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !121, metadata !DIExpression()), !dbg !124
  store i32 1, i32* %.omp.stride, align 4, !dbg !129, !tbaa !26
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !122, metadata !DIExpression()), !dbg !124
  store i32 0, i32* %.omp.is_last, align 4, !dbg !129, !tbaa !26
  %8 = bitcast i32* %i to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %i, metadata !123, metadata !DIExpression()), !dbg !124
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !128
  %10 = load i32, i32* %9, align 4, !dbg !128, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !130
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !26
  %cmp = icmp sgt i32 %11, 98, !dbg !129
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !129

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !129

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !26
  br label %cond.end, !dbg !129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 98, %cond.true ], [ %12, %cond.false ], !dbg !129
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !129, !tbaa !26
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !129, !tbaa !26
  store i32 %13, i32* %.omp.iv, align 4, !dbg !129, !tbaa !26
  br label %omp.inner.for.cond, !dbg !128

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !26
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !26
  %cmp3 = icmp sle i32 %14, %15, !dbg !128
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !128

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !128

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !26
  %mul = mul nsw i32 %16, 1, !dbg !131
  %add = add nsw i32 1, %mul, !dbg !131
  store i32 %add, i32* %i, align 4, !dbg !131, !tbaa !26
  %17 = load i32, i32* %i, align 4, !dbg !132, !tbaa !26
  %sub = sub nsw i32 %17, 1, !dbg !134
  %idxprom = sext i32 %sub to i64, !dbg !135
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %0, i64 0, i64 %idxprom, !dbg !135
  %18 = load i32, i32* %arrayidx, align 4, !dbg !135, !tbaa !26
  %add5 = add nsw i32 %18, 1, !dbg !136
  %19 = load i32, i32* %i, align 4, !dbg !137, !tbaa !26
  %idxprom6 = sext i32 %19 to i64, !dbg !138
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %0, i64 0, i64 %idxprom6, !dbg !138
  store i32 %add5, i32* %arrayidx7, align 4, !dbg !139, !tbaa !26
  br label %omp.body.continue, !dbg !140

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !130

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !26
  %add8 = add nsw i32 %20, 1, !dbg !128
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !128, !tbaa !26
  br label %omp.inner.for.cond, !dbg !130, !llvm.loop !141

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !130

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %10), !dbg !142
  %21 = bitcast i32* %i to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !130
  %22 = bitcast i32* %.omp.is_last to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !130
  %23 = bitcast i32* %.omp.stride to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !130
  %24 = bitcast i32* %.omp.ub to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !130
  %25 = bitcast i32* %.omp.lb to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !130
  %26 = bitcast i32* %.omp.iv to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !130
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !144 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !146, metadata !DIExpression()), !dbg !151
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !147, metadata !DIExpression()), !dbg !151
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !148, metadata !DIExpression()), !dbg !151
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !149, metadata !DIExpression()), !dbg !151
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !152, !tbaa !75
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !152, !tbaa !75
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !152, !tbaa !75
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !152, !tbaa !125
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !152, !tbaa !125
  %5 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !152, !tbaa !75
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [100 x i32]* %5) #4, !dbg !152
  ret void, !dbg !152
}

; Function Attrs: nounwind
declare !callback !153 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !155 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !157, metadata !DIExpression()), !dbg !160
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !158, metadata !DIExpression()), !dbg !160
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !161, !tbaa !75
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !161, !tbaa !75
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !161, !tbaa !75
  %3 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !161, !tbaa !75
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [100 x i32]* %3) #4, !dbg !161
  ret void, !dbg !161
}

; Function Attrs: nounwind
declare !callback !153 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0484_main_l25([100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !162 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !166, !tbaa !75
  %1 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !166, !tbaa !75
  call void @__omp_offloading_10308_be0484_main_l25_debug__([100 x i32]* %1) #4, !dbg !166
  ret void, !dbg !166
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
!1 = !DIFile(filename: "DRB156-missingordered-orig-gpu-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 100)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 21, type: !12)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 21, column: 3)
!20 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 31, type: !12)
!21 = distinct !DILexicalBlock(scope: !9, file: !1, line: 31, column: 3)
!22 = !DILocation(line: 20, column: 3, scope: !9)
!23 = !DILocation(line: 20, column: 7, scope: !9)
!24 = !DILocation(line: 21, column: 7, scope: !19)
!25 = !DILocation(line: 21, column: 11, scope: !19)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 21, column: 16, scope: !31)
!31 = distinct !DILexicalBlock(scope: !19, file: !1, line: 21, column: 3)
!32 = !DILocation(line: 21, column: 17, scope: !31)
!33 = !DILocation(line: 21, column: 3, scope: !19)
!34 = !DILocation(line: 21, column: 3, scope: !31)
!35 = !DILocation(line: 22, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 21, column: 25)
!37 = !DILocation(line: 22, column: 5, scope: !36)
!38 = !DILocation(line: 22, column: 11, scope: !36)
!39 = !DILocation(line: 23, column: 3, scope: !36)
!40 = !DILocation(line: 21, column: 22, scope: !31)
!41 = distinct !{!41, !33, !42, !43}
!42 = !DILocation(line: 23, column: 3, scope: !19)
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !DILocation(line: 25, column: 3, scope: !45)
!45 = distinct !DILexicalBlock(scope: !9, file: !1, line: 25, column: 3)
!46 = !DILocation(line: 31, column: 7, scope: !21)
!47 = !DILocation(line: 31, column: 11, scope: !21)
!48 = !DILocation(line: 31, column: 16, scope: !49)
!49 = distinct !DILexicalBlock(scope: !21, file: !1, line: 31, column: 3)
!50 = !DILocation(line: 31, column: 17, scope: !49)
!51 = !DILocation(line: 31, column: 3, scope: !21)
!52 = !DILocation(line: 32, column: 12, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 32, column: 8)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 31, column: 25)
!55 = !DILocation(line: 32, column: 8, scope: !53)
!56 = !DILocation(line: 32, column: 16, scope: !53)
!57 = !DILocation(line: 32, column: 14, scope: !53)
!58 = !DILocation(line: 32, column: 8, scope: !54)
!59 = !DILocation(line: 33, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !53, file: !1, line: 32, column: 18)
!61 = !DILocation(line: 34, column: 7, scope: !60)
!62 = !DILocation(line: 36, column: 3, scope: !54)
!63 = !DILocation(line: 31, column: 22, scope: !49)
!64 = !DILocation(line: 31, column: 3, scope: !49)
!65 = distinct !{!65, !51, !66, !43}
!66 = !DILocation(line: 36, column: 3, scope: !21)
!67 = !DILocation(line: 37, column: 3, scope: !9)
!68 = !DILocation(line: 38, column: 1, scope: !9)
!69 = distinct !DISubprogram(name: "__omp_offloading_10308_be0484_main_l25_debug__", scope: !1, file: !1, line: 26, type: !70, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72}
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!73 = !{!74}
!74 = !DILocalVariable(name: "var", arg: 1, scope: !69, file: !1, line: 20, type: !72)
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !28, i64 0}
!77 = !DILocation(line: 20, column: 7, scope: !69)
!78 = !DILocation(line: 26, column: 3, scope: !69)
!79 = !DILocation(line: 26, column: 44, scope: !69)
!80 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !81, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !83, !72}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !83, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !83, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "var", arg: 3, scope: !80, file: !1, line: 20, type: !72)
!91 = !DILocalVariable(name: ".omp.iv", scope: !80, type: !12, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.comb.lb", scope: !80, type: !12, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.comb.ub", scope: !80, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.stride", scope: !80, type: !12, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.is_last", scope: !80, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "i", scope: !80, type: !12, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !80)
!98 = !DILocation(line: 20, column: 7, scope: !80)
!99 = !DILocation(line: 27, column: 3, scope: !80)
!100 = !DILocation(line: 27, column: 8, scope: !80)
!101 = !DILocation(line: 26, column: 3, scope: !80)
!102 = !DILocation(line: 26, column: 44, scope: !103)
!103 = distinct !DILexicalBlock(scope: !80, file: !1, line: 26, column: 3)
!104 = distinct !{!104, !101, !105}
!105 = !DILocation(line: 26, column: 44, scope: !80)
!106 = !DILocation(line: 29, column: 3, scope: !80)
!107 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 27, type: !108, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !112)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !83, !83, !110, !110, !72}
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!113 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !107, type: !83, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !107, type: !83, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !107, type: !110, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !107, type: !110, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "var", arg: 5, scope: !107, file: !1, line: 20, type: !72)
!118 = !DILocalVariable(name: ".omp.iv", scope: !107, type: !12, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.lb", scope: !107, type: !12, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.ub", scope: !107, type: !12, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.stride", scope: !107, type: !12, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.is_last", scope: !107, type: !12, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "i", scope: !107, type: !12, flags: DIFlagArtificial)
!124 = !DILocation(line: 0, scope: !107)
!125 = !{!126, !126, i64 0}
!126 = !{!"long", !28, i64 0}
!127 = !DILocation(line: 20, column: 7, scope: !107)
!128 = !DILocation(line: 27, column: 3, scope: !107)
!129 = !DILocation(line: 27, column: 8, scope: !107)
!130 = !DILocation(line: 26, column: 3, scope: !107)
!131 = !DILocation(line: 27, column: 22, scope: !107)
!132 = !DILocation(line: 28, column: 16, scope: !133)
!133 = distinct !DILexicalBlock(scope: !107, file: !1, line: 27, column: 26)
!134 = !DILocation(line: 28, column: 17, scope: !133)
!135 = !DILocation(line: 28, column: 12, scope: !133)
!136 = !DILocation(line: 28, column: 20, scope: !133)
!137 = !DILocation(line: 28, column: 9, scope: !133)
!138 = !DILocation(line: 28, column: 5, scope: !133)
!139 = !DILocation(line: 28, column: 11, scope: !133)
!140 = !DILocation(line: 29, column: 3, scope: !133)
!141 = distinct !{!141, !130, !142}
!142 = !DILocation(line: 26, column: 44, scope: !107)
!143 = !DILocation(line: 29, column: 3, scope: !107)
!144 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 26, type: !108, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146, !147, !148, !149, !150}
!146 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !144, type: !83, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !144, type: !83, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !144, type: !110, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !144, type: !110, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "var", arg: 5, scope: !144, type: !72, flags: DIFlagArtificial)
!151 = !DILocation(line: 0, scope: !144)
!152 = !DILocation(line: 26, column: 3, scope: !144)
!153 = !{!154}
!154 = !{i64 2, i64 -1, i64 -1, i1 true}
!155 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 26, type: !81, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !155, type: !83, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !155, type: !83, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: "var", arg: 3, scope: !155, type: !72, flags: DIFlagArtificial)
!160 = !DILocation(line: 0, scope: !155)
!161 = !DILocation(line: 26, column: 3, scope: !155)
!162 = distinct !DISubprogram(name: "__omp_offloading_10308_be0484_main_l25", scope: !1, file: !1, line: 25, type: !70, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!163 = !{!164}
!164 = !DILocalVariable(name: "var", arg: 1, scope: !162, type: !72, flags: DIFlagArtificial)
!165 = !DILocation(line: 0, scope: !162)
!166 = !DILocation(line: 25, column: 3, scope: !162)
