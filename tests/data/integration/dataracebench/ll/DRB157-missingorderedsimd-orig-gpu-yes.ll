; ModuleID = 'DRB157-missingorderedsimd-orig-gpu-yes.c'
source_filename = "DRB157-missingorderedsimd-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [54 x i8] c";DRB157-missingorderedsimd-orig-gpu-yes.c;main;31;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [55 x i8] c";DRB157-missingorderedsimd-orig-gpu-yes.c;main;31;60;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [100 x i32]* %var to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %0) #4, !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i32]* %var, metadata !14, metadata !DIExpression()), !dbg !21
  %1 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %i, align 4, !dbg !23, !tbaa !24
  br label %for.cond, !dbg !22

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !28, !tbaa !24
  %cmp = icmp slt i32 %2, 100, !dbg !30
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !31

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !32
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !33, !tbaa !24
  %idxprom = sext i32 %4 to i64, !dbg !35
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom, !dbg !35
  store i32 0, i32* %arrayidx, align 4, !dbg !36, !tbaa !24
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !38, !tbaa !24
  %inc = add nsw i32 %5, 1, !dbg !38
  store i32 %inc, i32* %i, align 4, !dbg !38, !tbaa !24
  br label %for.cond, !dbg !32, !llvm.loop !39

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_10308_be0485_main_l30([100 x i32]* %var) #4, !dbg !42
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 97, !dbg !44
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !44, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6), !dbg !45
  %7 = bitcast [100 x i32]* %var to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %7) #4, !dbg !46
  ret i32 0, !dbg !47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0485_main_l30_debug__([100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !48 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !53, metadata !DIExpression()), !dbg !56
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !57, !tbaa !54
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @5, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [100 x i32]* %0), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !59 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !67, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !68, metadata !DIExpression()), !dbg !76
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !69, metadata !DIExpression()), !dbg !77
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !78, !tbaa !54
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !70, metadata !DIExpression()), !dbg !76
  %2 = bitcast i32* %.omp.comb.lb to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !71, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !79, !tbaa !24
  %3 = bitcast i32* %.omp.comb.ub to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !72, metadata !DIExpression()), !dbg !76
  store i32 83, i32* %.omp.comb.ub, align 4, !dbg !79, !tbaa !24
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !73, metadata !DIExpression()), !dbg !76
  store i32 1, i32* %.omp.stride, align 4, !dbg !79, !tbaa !24
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !74, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.is_last, align 4, !dbg !79, !tbaa !24
  %6 = bitcast i32* %i to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %i, metadata !75, metadata !DIExpression()), !dbg !76
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %8 = load i32, i32* %7, align 4, !dbg !78, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !78
  %9 = load i32, i32* %.omp.comb.ub, align 4, !dbg !79, !tbaa !24
  %cmp = icmp sgt i32 %9, 83, !dbg !79
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !79

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !79

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !79, !tbaa !24
  br label %cond.end, !dbg !79

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 83, %cond.true ], [ %10, %cond.false ], !dbg !79
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !79, !tbaa !24
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !79, !tbaa !24
  store i32 %11, i32* %.omp.iv, align 4, !dbg !79, !tbaa !24
  br label %omp.inner.for.cond, !dbg !78

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !24
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !79, !tbaa !24
  %cmp1 = icmp sle i32 %12, %13, !dbg !78
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !78

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !78

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !80
  %15 = zext i32 %14 to i64, !dbg !80
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !80
  %17 = zext i32 %16 to i64, !dbg !80
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %15, i64 %17, [100 x i32]* %0), !dbg !80
  br label %omp.inner.for.inc, !dbg !81

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !24
  %19 = load i32, i32* %.omp.stride, align 4, !dbg !79, !tbaa !24
  %add = add nsw i32 %18, %19, !dbg !78
  store i32 %add, i32* %.omp.iv, align 4, !dbg !78, !tbaa !24
  br label %omp.inner.for.cond, !dbg !81, !llvm.loop !83

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !81

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %8), !dbg !84
  %20 = load i32, i32* %.omp.is_last, align 4, !dbg !81, !tbaa !24
  %21 = icmp ne i32 %20, 0, !dbg !81
  br i1 %21, label %.omp.final.then, label %.omp.final.done, !dbg !81

.omp.final.then:                                  ; preds = %omp.loop.exit
  store i32 100, i32* %i, align 4, !dbg !87, !tbaa !24
  br label %.omp.final.done, !dbg !81

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  %22 = bitcast i32* %i to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !81
  %23 = bitcast i32* %.omp.is_last to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !81
  %24 = bitcast i32* %.omp.stride to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !81
  %25 = bitcast i32* %.omp.comb.ub to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !81
  %26 = bitcast i32* %.omp.comb.lb to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !81
  %27 = bitcast i32* %.omp.iv to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !81
  ret void, !dbg !88
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !89 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !95, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !96, metadata !DIExpression()), !dbg !106
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !97, metadata !DIExpression()), !dbg !106
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !98, metadata !DIExpression()), !dbg !106
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !99, metadata !DIExpression()), !dbg !109
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !110, !tbaa !54
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !100, metadata !DIExpression()), !dbg !106
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !101, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.lb, align 4, !dbg !111, !tbaa !24
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !102, metadata !DIExpression()), !dbg !106
  store i32 83, i32* %.omp.ub, align 4, !dbg !111, !tbaa !24
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !110, !tbaa !107
  %conv = trunc i64 %4 to i32, !dbg !110
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !110, !tbaa !107
  %conv1 = trunc i64 %5 to i32, !dbg !110
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !110, !tbaa !24
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !110, !tbaa !24
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !103, metadata !DIExpression()), !dbg !106
  store i32 1, i32* %.omp.stride, align 4, !dbg !111, !tbaa !24
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !104, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.is_last, align 4, !dbg !111, !tbaa !24
  %8 = bitcast i32* %i to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %i, metadata !105, metadata !DIExpression()), !dbg !106
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !110
  %10 = load i32, i32* %9, align 4, !dbg !110, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !112
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !24
  %cmp = icmp sgt i32 %11, 83, !dbg !111
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !111

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !111

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !24
  br label %cond.end, !dbg !111

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 83, %cond.true ], [ %12, %cond.false ], !dbg !111
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !111, !tbaa !24
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !111, !tbaa !24
  store i32 %13, i32* %.omp.iv, align 4, !dbg !111, !tbaa !24
  br label %omp.inner.for.cond, !dbg !110

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !24
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !24
  %cmp3 = icmp sle i32 %14, %15, !dbg !110
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !110

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !110

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !24
  %mul = mul nsw i32 %16, 1, !dbg !113
  %add = add nsw i32 16, %mul, !dbg !113
  store i32 %add, i32* %i, align 4, !dbg !113, !tbaa !24
  %17 = load i32, i32* %i, align 4, !dbg !114, !tbaa !24
  %sub = sub nsw i32 %17, 16, !dbg !116
  %idxprom = sext i32 %sub to i64, !dbg !117
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %0, i64 0, i64 %idxprom, !dbg !117
  %18 = load i32, i32* %arrayidx, align 4, !dbg !117, !tbaa !24
  %add5 = add nsw i32 %18, 1, !dbg !118
  %19 = load i32, i32* %i, align 4, !dbg !119, !tbaa !24
  %idxprom6 = sext i32 %19 to i64, !dbg !120
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %0, i64 0, i64 %idxprom6, !dbg !120
  store i32 %add5, i32* %arrayidx7, align 4, !dbg !121, !tbaa !24
  br label %omp.body.continue, !dbg !122

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !112

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !24
  %add8 = add nsw i32 %20, 1, !dbg !110
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !110, !tbaa !24
  br label %omp.inner.for.cond, !dbg !112, !llvm.loop !123

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !112

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %10), !dbg !124
  %21 = load i32, i32* %.omp.is_last, align 4, !dbg !112, !tbaa !24
  %22 = icmp ne i32 %21, 0, !dbg !112
  br i1 %22, label %.omp.final.then, label %.omp.final.done, !dbg !112

.omp.final.then:                                  ; preds = %omp.loop.exit
  store i32 100, i32* %i, align 4, !dbg !113, !tbaa !24
  br label %.omp.final.done, !dbg !112

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  %23 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !112
  %24 = bitcast i32* %.omp.is_last to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !112
  %25 = bitcast i32* %.omp.stride to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !112
  %26 = bitcast i32* %.omp.ub to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !112
  %27 = bitcast i32* %.omp.lb to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !112
  %28 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !112
  ret void, !dbg !125
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !126 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !128, metadata !DIExpression()), !dbg !133
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !129, metadata !DIExpression()), !dbg !133
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !130, metadata !DIExpression()), !dbg !133
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !131, metadata !DIExpression()), !dbg !133
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !134, !tbaa !54
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !134, !tbaa !54
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !134, !tbaa !54
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !134, !tbaa !107
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !134, !tbaa !107
  %5 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !134, !tbaa !54
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [100 x i32]* %5) #4, !dbg !134
  ret void, !dbg !134
}

; Function Attrs: nounwind
declare !callback !135 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !137 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !139, metadata !DIExpression()), !dbg !142
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !140, metadata !DIExpression()), !dbg !142
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !143, !tbaa !54
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !143, !tbaa !54
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !143, !tbaa !54
  %3 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !143, !tbaa !54
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [100 x i32]* %3) #4, !dbg !143
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare !callback !135 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0485_main_l30([100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !144 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !148, !tbaa !54
  %1 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !148, !tbaa !54
  call void @__omp_offloading_10308_be0485_main_l30_debug__([100 x i32]* %1) #4, !dbg !148
  ret void, !dbg !148
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
!1 = !DIFile(filename: "DRB157-missingorderedsimd-orig-gpu-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !10, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !18}
!14 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 24, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 100)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 26, type: !12)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 26, column: 3)
!20 = !DILocation(line: 24, column: 3, scope: !9)
!21 = !DILocation(line: 24, column: 7, scope: !9)
!22 = !DILocation(line: 26, column: 7, scope: !19)
!23 = !DILocation(line: 26, column: 11, scope: !19)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 26, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !19, file: !1, line: 26, column: 3)
!30 = !DILocation(line: 26, column: 17, scope: !29)
!31 = !DILocation(line: 26, column: 3, scope: !19)
!32 = !DILocation(line: 26, column: 3, scope: !29)
!33 = !DILocation(line: 27, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 26, column: 25)
!35 = !DILocation(line: 27, column: 5, scope: !34)
!36 = !DILocation(line: 27, column: 11, scope: !34)
!37 = !DILocation(line: 28, column: 3, scope: !34)
!38 = !DILocation(line: 26, column: 22, scope: !29)
!39 = distinct !{!39, !31, !40, !41}
!40 = !DILocation(line: 28, column: 3, scope: !19)
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !DILocation(line: 30, column: 3, scope: !43)
!43 = distinct !DILexicalBlock(scope: !9, file: !1, line: 30, column: 3)
!44 = !DILocation(line: 36, column: 17, scope: !9)
!45 = !DILocation(line: 36, column: 3, scope: !9)
!46 = !DILocation(line: 39, column: 1, scope: !9)
!47 = !DILocation(line: 38, column: 3, scope: !9)
!48 = distinct !DISubprogram(name: "__omp_offloading_10308_be0485_main_l30_debug__", scope: !1, file: !1, line: 31, type: !49, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!52 = !{!53}
!53 = !DILocalVariable(name: "var", arg: 1, scope: !48, file: !1, line: 24, type: !51)
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !26, i64 0}
!56 = !DILocation(line: 24, column: 7, scope: !48)
!57 = !DILocation(line: 31, column: 3, scope: !48)
!58 = !DILocation(line: 31, column: 60, scope: !48)
!59 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 32, type: !60, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !62, !51}
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75}
!67 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !62, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !59, type: !62, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: "var", arg: 3, scope: !59, file: !1, line: 24, type: !51)
!70 = !DILocalVariable(name: ".omp.iv", scope: !59, type: !12, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.comb.lb", scope: !59, type: !12, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.comb.ub", scope: !59, type: !12, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.stride", scope: !59, type: !12, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.is_last", scope: !59, type: !12, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "i", scope: !59, type: !12, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !59)
!77 = !DILocation(line: 24, column: 7, scope: !59)
!78 = !DILocation(line: 32, column: 3, scope: !59)
!79 = !DILocation(line: 32, column: 8, scope: !59)
!80 = !DILocation(line: 31, column: 3, scope: !59)
!81 = !DILocation(line: 31, column: 60, scope: !82)
!82 = distinct !DILexicalBlock(scope: !59, file: !1, line: 31, column: 3)
!83 = distinct !{!83, !80, !84, !85, !86}
!84 = !DILocation(line: 31, column: 60, scope: !59)
!85 = !{!"llvm.loop.vectorize.width", i32 16}
!86 = !{!"llvm.loop.vectorize.enable", i1 true}
!87 = !DILocation(line: 32, column: 22, scope: !59)
!88 = !DILocation(line: 34, column: 3, scope: !59)
!89 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 32, type: !90, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !62, !62, !92, !92, !51}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!95 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !62, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !62, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !89, type: !92, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !89, type: !92, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "var", arg: 5, scope: !89, file: !1, line: 24, type: !51)
!100 = !DILocalVariable(name: ".omp.iv", scope: !89, type: !12, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.lb", scope: !89, type: !12, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.ub", scope: !89, type: !12, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.stride", scope: !89, type: !12, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.is_last", scope: !89, type: !12, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "i", scope: !89, type: !12, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !89)
!107 = !{!108, !108, i64 0}
!108 = !{!"long", !26, i64 0}
!109 = !DILocation(line: 24, column: 7, scope: !89)
!110 = !DILocation(line: 32, column: 3, scope: !89)
!111 = !DILocation(line: 32, column: 8, scope: !89)
!112 = !DILocation(line: 31, column: 3, scope: !89)
!113 = !DILocation(line: 32, column: 22, scope: !89)
!114 = !DILocation(line: 33, column: 16, scope: !115)
!115 = distinct !DILexicalBlock(scope: !89, file: !1, line: 32, column: 26)
!116 = !DILocation(line: 33, column: 17, scope: !115)
!117 = !DILocation(line: 33, column: 12, scope: !115)
!118 = !DILocation(line: 33, column: 20, scope: !115)
!119 = !DILocation(line: 33, column: 9, scope: !115)
!120 = !DILocation(line: 33, column: 5, scope: !115)
!121 = !DILocation(line: 33, column: 11, scope: !115)
!122 = !DILocation(line: 34, column: 3, scope: !115)
!123 = distinct !{!123, !112, !124, !85, !86}
!124 = !DILocation(line: 31, column: 60, scope: !89)
!125 = !DILocation(line: 34, column: 3, scope: !89)
!126 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 31, type: !90, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !126, type: !62, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !126, type: !62, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !126, type: !92, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !126, type: !92, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "var", arg: 5, scope: !126, type: !51, flags: DIFlagArtificial)
!133 = !DILocation(line: 0, scope: !126)
!134 = !DILocation(line: 31, column: 3, scope: !126)
!135 = !{!136}
!136 = !{i64 2, i64 -1, i64 -1, i1 true}
!137 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 31, type: !60, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140, !141}
!139 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !137, type: !62, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !137, type: !62, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "var", arg: 3, scope: !137, type: !51, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !137)
!143 = !DILocation(line: 31, column: 3, scope: !137)
!144 = distinct !DISubprogram(name: "__omp_offloading_10308_be0485_main_l30", scope: !1, file: !1, line: 30, type: !49, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146}
!146 = !DILocalVariable(name: "var", arg: 1, scope: !144, type: !51, flags: DIFlagArtificial)
!147 = !DILocation(line: 0, scope: !144)
!148 = !DILocation(line: 30, column: 3, scope: !144)
