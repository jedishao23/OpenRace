; ModuleID = 'DRB153-missinglock2-orig-gpu-yes.c'
source_filename = "DRB153-missinglock2-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [48 x i8] c";DRB153-missinglock2-orig-gpu-yes.c;main;26;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [49 x i8] c";DRB153-missinglock2-orig-gpu-yes.c;main;26;38;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [48 x i8] c";DRB153-missinglock2-orig-gpu-yes.c;main;25;3;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @6, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %var = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %var to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %var, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %var, align 4, !dbg !16, !tbaa !17
  call void @__omp_offloading_10308_be0481_main_l24(i32* %var) #4, !dbg !21
  %1 = load i32, i32* %var, align 4, !dbg !23, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !24
  %2 = bitcast i32* %var to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0481_main_l24_debug__(i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !27 {
entry:
  %var.addr = alloca i32*, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @7)
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !32, metadata !DIExpression()), !dbg !35
  %1 = load i32*, i32** %var.addr, align 8, !dbg !36, !tbaa !33
  call void @__kmpc_push_num_teams(%struct.ident_t* @7, i32 %0, i32 1, i32 0), !dbg !36
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @7, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %1), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !38 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !46, metadata !DIExpression()), !dbg !56
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !47, metadata !DIExpression()), !dbg !56
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !48, metadata !DIExpression()), !dbg !57
  %0 = load i32*, i32** %var.addr, align 8, !dbg !58, !tbaa !33
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !49, metadata !DIExpression()), !dbg !59
  %2 = bitcast i32* %.omp.comb.lb to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !51, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !60, !tbaa !17
  %3 = bitcast i32* %.omp.comb.ub to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !52, metadata !DIExpression()), !dbg !59
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !17
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !53, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !60, !tbaa !17
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !54, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !60, !tbaa !17
  %6 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !59
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !58
  %8 = load i32, i32* %7, align 4, !dbg !58, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !58
  %9 = load i32, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !17
  %cmp = icmp sgt i32 %9, 99, !dbg !60
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !60

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !60

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !17
  br label %cond.end, !dbg !60

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %10, %cond.false ], !dbg !60
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !17
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !60, !tbaa !17
  store i32 %11, i32* %.omp.iv, align 4, !dbg !60, !tbaa !17
  br label %omp.inner.for.cond, !dbg !58

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !17
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !17
  %cmp1 = icmp sle i32 %12, %13, !dbg !61
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !58

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !58

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !62
  %15 = zext i32 %14 to i64, !dbg !62
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !62
  %17 = zext i32 %16 to i64, !dbg !62
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %15, i64 %17, i32* %0), !dbg !62
  br label %omp.inner.for.inc, !dbg !63

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !17
  %19 = load i32, i32* %.omp.stride, align 4, !dbg !60, !tbaa !17
  %add = add nsw i32 %18, %19, !dbg !61
  store i32 %add, i32* %.omp.iv, align 4, !dbg !61, !tbaa !17
  br label %omp.inner.for.cond, !dbg !63, !llvm.loop !65

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !63

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %8), !dbg !66
  %20 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !63
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !63
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !63
  %23 = bitcast i32* %.omp.comb.ub to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !63
  %24 = bitcast i32* %.omp.comb.lb to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !63
  %25 = bitcast i32* %.omp.iv to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !63
  ret void, !dbg !67
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !85
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !76, metadata !DIExpression()), !dbg !85
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !77, metadata !DIExpression()), !dbg !85
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !78, metadata !DIExpression()), !dbg !88
  %0 = load i32*, i32** %var.addr, align 8, !dbg !89, !tbaa !33
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !79, metadata !DIExpression()), !dbg !85
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !80, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.lb, align 4, !dbg !90, !tbaa !17
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !81, metadata !DIExpression()), !dbg !85
  store i32 99, i32* %.omp.ub, align 4, !dbg !90, !tbaa !17
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !89, !tbaa !86
  %conv = trunc i64 %4 to i32, !dbg !89
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !89, !tbaa !86
  %conv1 = trunc i64 %5 to i32, !dbg !89
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !89, !tbaa !17
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !89, !tbaa !17
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !82, metadata !DIExpression()), !dbg !85
  store i32 1, i32* %.omp.stride, align 4, !dbg !90, !tbaa !17
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !83, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.is_last, align 4, !dbg !90, !tbaa !17
  %8 = bitcast i32* %i to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !85
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %10 = load i32, i32* %9, align 4, !dbg !89, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !91
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !90, !tbaa !17
  %cmp = icmp sgt i32 %11, 99, !dbg !90
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !90

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !90

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !90, !tbaa !17
  br label %cond.end, !dbg !90

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %12, %cond.false ], !dbg !90
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !90, !tbaa !17
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !90, !tbaa !17
  store i32 %13, i32* %.omp.iv, align 4, !dbg !90, !tbaa !17
  br label %omp.inner.for.cond, !dbg !89

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !90, !tbaa !17
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !90, !tbaa !17
  %cmp3 = icmp sle i32 %14, %15, !dbg !89
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !89

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !89

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !90, !tbaa !17
  %mul = mul nsw i32 %16, 1, !dbg !92
  %add = add nsw i32 0, %mul, !dbg !92
  store i32 %add, i32* %i, align 4, !dbg !92, !tbaa !17
  %17 = load i32, i32* %0, align 4, !dbg !93, !tbaa !17
  %inc = add nsw i32 %17, 1, !dbg !93
  store i32 %inc, i32* %0, align 4, !dbg !93, !tbaa !17
  br label %omp.body.continue, !dbg !95

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !91

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !90, !tbaa !17
  %add5 = add nsw i32 %18, 1, !dbg !89
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !89, !tbaa !17
  br label %omp.inner.for.cond, !dbg !91, !llvm.loop !96

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !91

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %10), !dbg !97
  %19 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !91
  %20 = bitcast i32* %.omp.is_last to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !91
  %21 = bitcast i32* %.omp.stride to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !91
  %22 = bitcast i32* %.omp.ub to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !91
  %23 = bitcast i32* %.omp.lb to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !91
  %24 = bitcast i32* %.omp.iv to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !91
  ret void, !dbg !98
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !99 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !101, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !102, metadata !DIExpression()), !dbg !106
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !103, metadata !DIExpression()), !dbg !106
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !104, metadata !DIExpression()), !dbg !106
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load i32*, i32** %var.addr, align 8, !dbg !107, !tbaa !33
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107, !tbaa !33
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !107, !tbaa !33
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !107, !tbaa !86
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !107, !tbaa !86
  %5 = load i32*, i32** %var.addr, align 8, !dbg !107, !tbaa !33
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #4, !dbg !107
  ret void, !dbg !107
}

; Function Attrs: nounwind
declare !callback !108 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !110 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !112, metadata !DIExpression()), !dbg !115
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !113, metadata !DIExpression()), !dbg !115
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load i32*, i32** %var.addr, align 8, !dbg !116, !tbaa !33
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116, !tbaa !33
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !116, !tbaa !33
  %3 = load i32*, i32** %var.addr, align 8, !dbg !116, !tbaa !33
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !116
  ret void, !dbg !116
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) #4

; Function Attrs: nounwind
declare !callback !108 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0481_main_l24(i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !117 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !119, metadata !DIExpression()), !dbg !120
  %0 = load i32*, i32** %var.addr, align 8, !dbg !121, !tbaa !33
  %1 = load i32*, i32** %var.addr, align 8, !dbg !121, !tbaa !33
  call void @__omp_offloading_10308_be0481_main_l24_debug__(i32* %1) #4, !dbg !121
  ret void, !dbg !121
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
!1 = !DIFile(filename: "DRB153-missinglock2-orig-gpu-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !10, scopeLine: 21, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 22, type: !12)
!15 = !DILocation(line: 22, column: 3, scope: !9)
!16 = !DILocation(line: 22, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 24, column: 3, scope: !22)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 24, column: 3)
!23 = !DILocation(line: 31, column: 18, scope: !9)
!24 = !DILocation(line: 31, column: 3, scope: !9)
!25 = !DILocation(line: 33, column: 1, scope: !9)
!26 = !DILocation(line: 32, column: 3, scope: !9)
!27 = distinct !DISubprogram(name: "__omp_offloading_10308_be0481_main_l24_debug__", scope: !1, file: !1, line: 25, type: !28, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!31 = !{!32}
!32 = !DILocalVariable(name: "var", arg: 1, scope: !27, file: !1, line: 22, type: !30)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !19, i64 0}
!35 = !DILocation(line: 22, column: 7, scope: !27)
!36 = !DILocation(line: 25, column: 3, scope: !27)
!37 = !DILocation(line: 25, column: 33, scope: !27)
!38 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 26, type: !39, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !30}
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!45 = !{!46, !47, !48, !49, !51, !52, !53, !54, !55}
!46 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !38, type: !41, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !38, type: !41, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "var", arg: 3, scope: !38, file: !1, line: 22, type: !30)
!49 = !DILocalVariable(name: ".omp.iv", scope: !50, type: !12, flags: DIFlagArtificial)
!50 = distinct !DILexicalBlock(scope: !38, file: !1, line: 26, column: 3)
!51 = !DILocalVariable(name: ".omp.comb.lb", scope: !50, type: !12, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.comb.ub", scope: !50, type: !12, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".omp.stride", scope: !50, type: !12, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".omp.is_last", scope: !50, type: !12, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "i", scope: !50, type: !12, flags: DIFlagArtificial)
!56 = !DILocation(line: 0, scope: !38)
!57 = !DILocation(line: 22, column: 7, scope: !38)
!58 = !DILocation(line: 26, column: 3, scope: !38)
!59 = !DILocation(line: 0, scope: !50)
!60 = !DILocation(line: 27, column: 8, scope: !50)
!61 = !DILocation(line: 27, column: 3, scope: !50)
!62 = !DILocation(line: 26, column: 3, scope: !50)
!63 = !DILocation(line: 26, column: 38, scope: !64)
!64 = distinct !DILexicalBlock(scope: !50, file: !1, line: 26, column: 3)
!65 = distinct !{!65, !62, !66}
!66 = !DILocation(line: 26, column: 38, scope: !50)
!67 = !DILocation(line: 26, column: 38, scope: !38)
!68 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 27, type: !69, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !41, !41, !71, !71, !30}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !41, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !68, type: !41, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !68, type: !71, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !68, type: !71, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "var", arg: 5, scope: !68, file: !1, line: 22, type: !30)
!79 = !DILocalVariable(name: ".omp.iv", scope: !68, type: !12, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.lb", scope: !68, type: !12, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.ub", scope: !68, type: !12, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.stride", scope: !68, type: !12, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.is_last", scope: !68, type: !12, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "i", scope: !68, type: !12, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !68)
!86 = !{!87, !87, i64 0}
!87 = !{!"long", !19, i64 0}
!88 = !DILocation(line: 22, column: 7, scope: !68)
!89 = !DILocation(line: 27, column: 3, scope: !68)
!90 = !DILocation(line: 27, column: 8, scope: !68)
!91 = !DILocation(line: 26, column: 3, scope: !68)
!92 = !DILocation(line: 27, column: 22, scope: !68)
!93 = !DILocation(line: 28, column: 8, scope: !94)
!94 = distinct !DILexicalBlock(scope: !68, file: !1, line: 27, column: 26)
!95 = !DILocation(line: 29, column: 3, scope: !94)
!96 = distinct !{!96, !91, !97}
!97 = !DILocation(line: 26, column: 38, scope: !68)
!98 = !DILocation(line: 29, column: 3, scope: !68)
!99 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 26, type: !69, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !100)
!100 = !{!101, !102, !103, !104, !105}
!101 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !99, type: !41, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !99, type: !41, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !99, type: !71, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !99, type: !71, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "var", arg: 5, scope: !99, type: !30, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !99)
!107 = !DILocation(line: 26, column: 3, scope: !99)
!108 = !{!109}
!109 = !{i64 2, i64 -1, i64 -1, i1 true}
!110 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 25, type: !39, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!111 = !{!112, !113, !114}
!112 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !110, type: !41, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !110, type: !41, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "var", arg: 3, scope: !110, type: !30, flags: DIFlagArtificial)
!115 = !DILocation(line: 0, scope: !110)
!116 = !DILocation(line: 25, column: 3, scope: !110)
!117 = distinct !DISubprogram(name: "__omp_offloading_10308_be0481_main_l24", scope: !1, file: !1, line: 24, type: !28, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!118 = !{!119}
!119 = !DILocalVariable(name: "var", arg: 1, scope: !117, type: !30, flags: DIFlagArtificial)
!120 = !DILocation(line: 0, scope: !117)
!121 = !DILocation(line: 24, column: 3, scope: !117)
