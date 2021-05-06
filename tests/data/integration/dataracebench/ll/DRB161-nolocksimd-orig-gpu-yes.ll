; ModuleID = 'DRB161-nolocksimd-orig-gpu-yes.c'
source_filename = "DRB161-nolocksimd-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [46 x i8] c";DRB161-nolocksimd-orig-gpu-yes.c;main;29;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [47 x i8] c";DRB161-nolocksimd-orig-gpu-yes.c;main;29;39;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [46 x i8] c";DRB161-nolocksimd-orig-gpu-yes.c;main;28;3;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @6, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i32]* %var to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata [8 x i32]* %var, metadata !14, metadata !DIExpression()), !dbg !23
  %1 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %i, align 4, !dbg !25, !tbaa !26
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !30, !tbaa !26
  %cmp = icmp slt i32 %2, 8, !dbg !32
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !33

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !34
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !35, !tbaa !26
  %idxprom = sext i32 %4 to i64, !dbg !37
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom, !dbg !37
  store i32 0, i32* %arrayidx, align 4, !dbg !38, !tbaa !26
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !40, !tbaa !26
  %inc = add nsw i32 %5, 1, !dbg !40
  store i32 %inc, i32* %i, align 4, !dbg !40, !tbaa !26
  br label %for.cond, !dbg !34, !llvm.loop !41

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_10308_be0489_main_l27([8 x i32]* %var) #4, !dbg !44
  %6 = bitcast i32* %i1 to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !20, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %i1, align 4, !dbg !47, !tbaa !26
  br label %for.cond2, !dbg !46

for.cond2:                                        ; preds = %for.inc11, %for.end
  %7 = load i32, i32* %i1, align 4, !dbg !48, !tbaa !26
  %cmp3 = icmp slt i32 %7, 8, !dbg !50
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !51

for.cond.cleanup4:                                ; preds = %for.cond2
  %8 = bitcast i32* %i1 to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !52
  br label %for.end13

for.body5:                                        ; preds = %for.cond2
  %9 = load i32, i32* %i1, align 4, !dbg !53, !tbaa !26
  %idxprom6 = sext i32 %9 to i64, !dbg !56
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom6, !dbg !56
  %10 = load i32, i32* %arrayidx7, align 4, !dbg !56, !tbaa !26
  %cmp8 = icmp ne i32 %10, 20, !dbg !57
  br i1 %cmp8, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %for.body5
  %11 = load i32, i32* %i1, align 4, !dbg !59, !tbaa !26
  %idxprom9 = sext i32 %11 to i64, !dbg !60
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom9, !dbg !60
  %12 = load i32, i32* %arrayidx10, align 4, !dbg !60, !tbaa !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12), !dbg !61
  br label %if.end, !dbg !61

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc11, !dbg !62

for.inc11:                                        ; preds = %if.end
  %13 = load i32, i32* %i1, align 4, !dbg !63, !tbaa !26
  %inc12 = add nsw i32 %13, 1, !dbg !63
  store i32 %inc12, i32* %i1, align 4, !dbg !63, !tbaa !26
  br label %for.cond2, !dbg !52, !llvm.loop !64

for.end13:                                        ; preds = %for.cond.cleanup4
  %14 = bitcast [8 x i32]* %var to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %14) #4, !dbg !66
  ret i32 0, !dbg !67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0489_main_l27_debug__([8 x i32]* nonnull align 4 dereferenceable(32) %var) #3 !dbg !68 {
entry:
  %var.addr = alloca [8 x i32]*, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @7)
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !73, metadata !DIExpression()), !dbg !76
  %1 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !77, !tbaa !74
  call void @__kmpc_push_num_teams(%struct.ident_t* @7, i32 %0, i32 1, i32 1048), !dbg !77
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @7, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [8 x i32]* %1), !dbg !77
  ret void, !dbg !78
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* nonnull align 4 dereferenceable(32) %var) #3 !dbg !79 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [8 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !87, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !88, metadata !DIExpression()), !dbg !97
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !89, metadata !DIExpression()), !dbg !98
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !99, !tbaa !74
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !90, metadata !DIExpression()), !dbg !100
  %2 = bitcast i32* %.omp.comb.lb to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !92, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !101, !tbaa !26
  %3 = bitcast i32* %.omp.comb.ub to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !93, metadata !DIExpression()), !dbg !100
  store i32 19, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !26
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !94, metadata !DIExpression()), !dbg !100
  store i32 1, i32* %.omp.stride, align 4, !dbg !101, !tbaa !26
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !95, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.is_last, align 4, !dbg !101, !tbaa !26
  %6 = bitcast i32* %i to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !100
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !99
  %8 = load i32, i32* %7, align 4, !dbg !99, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !99
  %9 = load i32, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !26
  %cmp = icmp sgt i32 %9, 19, !dbg !101
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !101

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !101

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !26
  br label %cond.end, !dbg !101

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %10, %cond.false ], !dbg !101
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !26
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !101, !tbaa !26
  store i32 %11, i32* %.omp.iv, align 4, !dbg !101, !tbaa !26
  br label %omp.inner.for.cond, !dbg !99

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !26
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !26
  %cmp1 = icmp sle i32 %12, %13, !dbg !102
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !99

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !99

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !103
  %15 = zext i32 %14 to i64, !dbg !103
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !103
  %17 = zext i32 %16 to i64, !dbg !103
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [8 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %15, i64 %17, [8 x i32]* %0), !dbg !103
  br label %omp.inner.for.inc, !dbg !104

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !26
  %19 = load i32, i32* %.omp.stride, align 4, !dbg !101, !tbaa !26
  %add = add nsw i32 %18, %19, !dbg !102
  store i32 %add, i32* %.omp.iv, align 4, !dbg !102, !tbaa !26
  br label %omp.inner.for.cond, !dbg !104, !llvm.loop !106

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !104

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %8), !dbg !107
  %20 = bitcast i32* %i to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !104
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !104
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !104
  %23 = bitcast i32* %.omp.comb.ub to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !104
  %24 = bitcast i32* %.omp.comb.lb to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !104
  %25 = bitcast i32* %.omp.iv to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !104
  ret void, !dbg !108
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [8 x i32]* nonnull align 4 dereferenceable(32) %var) #3 !dbg !109 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [8 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %.omp.iv6 = alloca i32, align 4
  %i7 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !115, metadata !DIExpression()), !dbg !130
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !116, metadata !DIExpression()), !dbg !130
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !117, metadata !DIExpression()), !dbg !130
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !118, metadata !DIExpression()), !dbg !130
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !119, metadata !DIExpression()), !dbg !133
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !134, !tbaa !74
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !120, metadata !DIExpression()), !dbg !130
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !121, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %.omp.lb, align 4, !dbg !135, !tbaa !26
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !122, metadata !DIExpression()), !dbg !130
  store i32 19, i32* %.omp.ub, align 4, !dbg !135, !tbaa !26
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !134, !tbaa !131
  %conv = trunc i64 %4 to i32, !dbg !134
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !134, !tbaa !131
  %conv1 = trunc i64 %5 to i32, !dbg !134
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !134, !tbaa !26
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !134, !tbaa !26
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !123, metadata !DIExpression()), !dbg !130
  store i32 1, i32* %.omp.stride, align 4, !dbg !135, !tbaa !26
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !124, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %.omp.is_last, align 4, !dbg !135, !tbaa !26
  %8 = bitcast i32* %i to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %i, metadata !125, metadata !DIExpression()), !dbg !130
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !134
  %10 = load i32, i32* %9, align 4, !dbg !134, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !136
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !26
  %cmp = icmp sgt i32 %11, 19, !dbg !135
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !135

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !135

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !26
  br label %cond.end, !dbg !135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %12, %cond.false ], !dbg !135
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !135, !tbaa !26
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !135, !tbaa !26
  store i32 %13, i32* %.omp.iv, align 4, !dbg !135, !tbaa !26
  br label %omp.inner.for.cond, !dbg !134

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc17, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !26
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !26
  %cmp3 = icmp sle i32 %14, %15, !dbg !134
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !134

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end19, !dbg !134

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !26
  %mul = mul nsw i32 %16, 1, !dbg !137
  %add = add nsw i32 0, %mul, !dbg !137
  store i32 %add, i32* %i, align 4, !dbg !137, !tbaa !26
  %17 = bitcast i32* %.omp.iv6 to i8*, !dbg !138
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %.omp.iv6, metadata !126, metadata !DIExpression()), !dbg !139
  store i32 0, i32* %.omp.iv6, align 4, !dbg !140, !tbaa !26
  %18 = bitcast i32* %i7 to i8*, !dbg !138
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !129, metadata !DIExpression()), !dbg !139
  br label %omp.inner.for.cond8, !dbg !138

omp.inner.for.cond8:                              ; preds = %omp.inner.for.inc, %omp.inner.for.body
  %19 = load i32, i32* %.omp.iv6, align 4, !dbg !140, !tbaa !26, !llvm.access.group !141
  %cmp9 = icmp slt i32 %19, 8, !dbg !142
  br i1 %cmp9, label %omp.inner.for.body12, label %omp.inner.for.cond.cleanup11, !dbg !138

omp.inner.for.cond.cleanup11:                     ; preds = %omp.inner.for.cond8
  br label %omp.inner.for.end, !dbg !138

omp.inner.for.body12:                             ; preds = %omp.inner.for.cond8
  %20 = load i32, i32* %.omp.iv6, align 4, !dbg !140, !tbaa !26, !llvm.access.group !141
  %mul13 = mul nsw i32 %20, 1, !dbg !143
  %add14 = add nsw i32 0, %mul13, !dbg !143
  store i32 %add14, i32* %i7, align 4, !dbg !143, !tbaa !26, !llvm.access.group !141
  %21 = load i32, i32* %i7, align 4, !dbg !144, !tbaa !26, !llvm.access.group !141
  %idxprom = sext i32 %21 to i64, !dbg !146
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %0, i64 0, i64 %idxprom, !dbg !146
  %22 = load i32, i32* %arrayidx, align 4, !dbg !147, !tbaa !26, !llvm.access.group !141
  %inc = add nsw i32 %22, 1, !dbg !147
  store i32 %inc, i32* %arrayidx, align 4, !dbg !147, !tbaa !26, !llvm.access.group !141
  br label %omp.body.continue, !dbg !148

omp.body.continue:                                ; preds = %omp.inner.for.body12
  br label %omp.inner.for.inc, !dbg !149

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv6, align 4, !dbg !140, !tbaa !26, !llvm.access.group !141
  %add15 = add nsw i32 %23, 1, !dbg !142
  store i32 %add15, i32* %.omp.iv6, align 4, !dbg !142, !tbaa !26, !llvm.access.group !141
  br label %omp.inner.for.cond8, !dbg !149, !llvm.loop !150

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup11
  store i32 8, i32* %i7, align 4, !dbg !143, !tbaa !26
  %24 = bitcast i32* %i7 to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !149
  %25 = bitcast i32* %.omp.iv6 to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !149
  br label %omp.body.continue16, !dbg !154

omp.body.continue16:                              ; preds = %omp.inner.for.end
  br label %omp.inner.for.inc17, !dbg !136

omp.inner.for.inc17:                              ; preds = %omp.body.continue16
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !26
  %add18 = add nsw i32 %26, 1, !dbg !134
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !134, !tbaa !26
  br label %omp.inner.for.cond, !dbg !136, !llvm.loop !155

omp.inner.for.end19:                              ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !136

omp.loop.exit:                                    ; preds = %omp.inner.for.end19
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %10), !dbg !156
  %27 = bitcast i32* %i to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !136
  %28 = bitcast i32* %.omp.is_last to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !136
  %29 = bitcast i32* %.omp.stride to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !136
  %30 = bitcast i32* %.omp.ub to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !136
  %31 = bitcast i32* %.omp.lb to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !136
  %32 = bitcast i32* %.omp.iv to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !136
  ret void, !dbg !157
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [8 x i32]* nonnull align 4 dereferenceable(32) %var) #3 !dbg !158 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [8 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !160, metadata !DIExpression()), !dbg !165
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !161, metadata !DIExpression()), !dbg !165
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !162, metadata !DIExpression()), !dbg !165
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !163, metadata !DIExpression()), !dbg !165
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !166, !tbaa !74
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !166, !tbaa !74
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !166, !tbaa !74
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !166, !tbaa !131
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !166, !tbaa !131
  %5 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !166, !tbaa !74
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [8 x i32]* %5) #4, !dbg !166
  ret void, !dbg !166
}

; Function Attrs: nounwind
declare !callback !167 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* nonnull align 4 dereferenceable(32) %var) #3 !dbg !169 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [8 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !171, metadata !DIExpression()), !dbg !174
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !172, metadata !DIExpression()), !dbg !174
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !175, !tbaa !74
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !175, !tbaa !74
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !175, !tbaa !74
  %3 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !175, !tbaa !74
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [8 x i32]* %3) #4, !dbg !175
  ret void, !dbg !175
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) #4

; Function Attrs: nounwind
declare !callback !167 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0489_main_l27([8 x i32]* nonnull align 4 dereferenceable(32) %var) #3 !dbg !176 {
entry:
  %var.addr = alloca [8 x i32]*, align 8
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !180, !tbaa !74
  %1 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !180, !tbaa !74
  call void @__omp_offloading_10308_be0489_main_l27_debug__([8 x i32]* %1) #4, !dbg !180
  ret void, !dbg !180
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
!1 = !DIFile(filename: "DRB161-nolocksimd-orig-gpu-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!13 = !{!14, !18, !20}
!14 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 21, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 8)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 23, type: !12)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 23, column: 3)
!20 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 37, type: !12)
!21 = distinct !DILexicalBlock(scope: !9, file: !1, line: 37, column: 3)
!22 = !DILocation(line: 21, column: 3, scope: !9)
!23 = !DILocation(line: 21, column: 7, scope: !9)
!24 = !DILocation(line: 23, column: 7, scope: !19)
!25 = !DILocation(line: 23, column: 11, scope: !19)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 23, column: 16, scope: !31)
!31 = distinct !DILexicalBlock(scope: !19, file: !1, line: 23, column: 3)
!32 = !DILocation(line: 23, column: 17, scope: !31)
!33 = !DILocation(line: 23, column: 3, scope: !19)
!34 = !DILocation(line: 23, column: 3, scope: !31)
!35 = !DILocation(line: 24, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 23, column: 25)
!37 = !DILocation(line: 24, column: 5, scope: !36)
!38 = !DILocation(line: 24, column: 12, scope: !36)
!39 = !DILocation(line: 25, column: 3, scope: !36)
!40 = !DILocation(line: 23, column: 22, scope: !31)
!41 = distinct !{!41, !33, !42, !43}
!42 = !DILocation(line: 25, column: 3, scope: !19)
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !DILocation(line: 27, column: 3, scope: !45)
!45 = distinct !DILexicalBlock(scope: !9, file: !1, line: 27, column: 3)
!46 = !DILocation(line: 37, column: 7, scope: !21)
!47 = !DILocation(line: 37, column: 11, scope: !21)
!48 = !DILocation(line: 37, column: 16, scope: !49)
!49 = distinct !DILexicalBlock(scope: !21, file: !1, line: 37, column: 3)
!50 = !DILocation(line: 37, column: 17, scope: !49)
!51 = !DILocation(line: 37, column: 3, scope: !21)
!52 = !DILocation(line: 37, column: 3, scope: !49)
!53 = !DILocation(line: 38, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 38, column: 8)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 37, column: 25)
!56 = !DILocation(line: 38, column: 8, scope: !54)
!57 = !DILocation(line: 38, column: 14, scope: !54)
!58 = !DILocation(line: 38, column: 8, scope: !55)
!59 = !DILocation(line: 38, column: 38, scope: !54)
!60 = !DILocation(line: 38, column: 34, scope: !54)
!61 = !DILocation(line: 38, column: 19, scope: !54)
!62 = !DILocation(line: 39, column: 3, scope: !55)
!63 = !DILocation(line: 37, column: 22, scope: !49)
!64 = distinct !{!64, !51, !65, !43}
!65 = !DILocation(line: 39, column: 3, scope: !21)
!66 = !DILocation(line: 42, column: 1, scope: !9)
!67 = !DILocation(line: 41, column: 3, scope: !9)
!68 = distinct !DISubprogram(name: "__omp_offloading_10308_be0489_main_l27_debug__", scope: !1, file: !1, line: 28, type: !69, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71}
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!72 = !{!73}
!73 = !DILocalVariable(name: "var", arg: 1, scope: !68, file: !1, line: 21, type: !71)
!74 = !{!75, !75, i64 0}
!75 = !{!"any pointer", !28, i64 0}
!76 = !DILocation(line: 21, column: 7, scope: !68)
!77 = !DILocation(line: 28, column: 3, scope: !68)
!78 = !DILocation(line: 28, column: 53, scope: !68)
!79 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 29, type: !80, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !82, !71}
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!86 = !{!87, !88, !89, !90, !92, !93, !94, !95, !96}
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !79, type: !82, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !79, type: !82, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "var", arg: 3, scope: !79, file: !1, line: 21, type: !71)
!90 = !DILocalVariable(name: ".omp.iv", scope: !91, type: !12, flags: DIFlagArtificial)
!91 = distinct !DILexicalBlock(scope: !79, file: !1, line: 29, column: 3)
!92 = !DILocalVariable(name: ".omp.comb.lb", scope: !91, type: !12, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.comb.ub", scope: !91, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.stride", scope: !91, type: !12, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.is_last", scope: !91, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "i", scope: !91, type: !12, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !79)
!98 = !DILocation(line: 21, column: 7, scope: !79)
!99 = !DILocation(line: 29, column: 3, scope: !79)
!100 = !DILocation(line: 0, scope: !91)
!101 = !DILocation(line: 30, column: 8, scope: !91)
!102 = !DILocation(line: 30, column: 3, scope: !91)
!103 = !DILocation(line: 29, column: 3, scope: !91)
!104 = !DILocation(line: 29, column: 39, scope: !105)
!105 = distinct !DILexicalBlock(scope: !91, file: !1, line: 29, column: 3)
!106 = distinct !{!106, !103, !107}
!107 = !DILocation(line: 29, column: 39, scope: !91)
!108 = !DILocation(line: 29, column: 39, scope: !79)
!109 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 30, type: !110, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !82, !82, !112, !112, !71}
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !129}
!115 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !109, type: !82, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !109, type: !82, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !109, type: !112, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !109, type: !112, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: "var", arg: 5, scope: !109, file: !1, line: 21, type: !71)
!120 = !DILocalVariable(name: ".omp.iv", scope: !109, type: !12, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.lb", scope: !109, type: !12, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.ub", scope: !109, type: !12, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".omp.stride", scope: !109, type: !12, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: ".omp.is_last", scope: !109, type: !12, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "i", scope: !109, type: !12, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".omp.iv", scope: !127, type: !12, flags: DIFlagArtificial)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 31, column: 5)
!128 = distinct !DILexicalBlock(scope: !109, file: !1, line: 30, column: 26)
!129 = !DILocalVariable(name: "i", scope: !127, type: !12, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !109)
!131 = !{!132, !132, i64 0}
!132 = !{!"long", !28, i64 0}
!133 = !DILocation(line: 21, column: 7, scope: !109)
!134 = !DILocation(line: 30, column: 3, scope: !109)
!135 = !DILocation(line: 30, column: 8, scope: !109)
!136 = !DILocation(line: 29, column: 3, scope: !109)
!137 = !DILocation(line: 30, column: 22, scope: !109)
!138 = !DILocation(line: 31, column: 5, scope: !128)
!139 = !DILocation(line: 0, scope: !127)
!140 = !DILocation(line: 32, column: 9, scope: !127)
!141 = distinct !{}
!142 = !DILocation(line: 32, column: 5, scope: !127)
!143 = !DILocation(line: 32, column: 23, scope: !127)
!144 = !DILocation(line: 33, column: 11, scope: !145)
!145 = distinct !DILexicalBlock(scope: !127, file: !1, line: 32, column: 27)
!146 = !DILocation(line: 33, column: 7, scope: !145)
!147 = !DILocation(line: 33, column: 13, scope: !145)
!148 = !DILocation(line: 34, column: 5, scope: !145)
!149 = !DILocation(line: 31, column: 5, scope: !127)
!150 = distinct !{!150, !149, !151, !152, !153}
!151 = !DILocation(line: 31, column: 21, scope: !127)
!152 = !{!"llvm.loop.parallel_accesses", !141}
!153 = !{!"llvm.loop.vectorize.enable", i1 true}
!154 = !DILocation(line: 35, column: 3, scope: !128)
!155 = distinct !{!155, !136, !156}
!156 = !DILocation(line: 29, column: 39, scope: !109)
!157 = !DILocation(line: 35, column: 3, scope: !109)
!158 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 29, type: !110, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !159)
!159 = !{!160, !161, !162, !163, !164}
!160 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !158, type: !82, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !158, type: !82, flags: DIFlagArtificial)
!162 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !158, type: !112, flags: DIFlagArtificial)
!163 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !158, type: !112, flags: DIFlagArtificial)
!164 = !DILocalVariable(name: "var", arg: 5, scope: !158, type: !71, flags: DIFlagArtificial)
!165 = !DILocation(line: 0, scope: !158)
!166 = !DILocation(line: 29, column: 3, scope: !158)
!167 = !{!168}
!168 = !{i64 2, i64 -1, i64 -1, i1 true}
!169 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 28, type: !80, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!170 = !{!171, !172, !173}
!171 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !169, type: !82, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !169, type: !82, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: "var", arg: 3, scope: !169, type: !71, flags: DIFlagArtificial)
!174 = !DILocation(line: 0, scope: !169)
!175 = !DILocation(line: 28, column: 3, scope: !169)
!176 = distinct !DISubprogram(name: "__omp_offloading_10308_be0489_main_l27", scope: !1, file: !1, line: 27, type: !69, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!177 = !{!178}
!178 = !DILocalVariable(name: "var", arg: 1, scope: !176, type: !71, flags: DIFlagArtificial)
!179 = !DILocation(line: 0, scope: !176)
!180 = !DILocation(line: 27, column: 3, scope: !176)
