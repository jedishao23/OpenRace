; ModuleID = 'DRB071-targetparallelfor-orig-no.c'
source_filename = "DRB071-targetparallelfor-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [48 x i8] c";DRB071-targetparallelfor-orig-no.c;main;60;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [49 x i8] c";DRB071-targetparallelfor-orig-no.c;main;60;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %len.casted = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !31
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !34
  %0 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !36
  %1 = bitcast i32* %len to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !38
  store i32 1000, i32* %len, align 4, !dbg !38, !tbaa !27
  %2 = load i32, i32* %len, align 4, !dbg !39, !tbaa !27
  %3 = zext i32 %2 to i64, !dbg !40
  %4 = call i8* @llvm.stacksave(), !dbg !40
  store i8* %4, i8** %saved_stack, align 8, !dbg !40
  %vla = alloca i32, i64 %3, align 16, !dbg !40
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !21, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !23, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %i, align 4, !dbg !43, !tbaa !27
  br label %for.cond, !dbg !45

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !46, !tbaa !27
  %6 = load i32, i32* %len, align 4, !dbg !48, !tbaa !27
  %cmp = icmp slt i32 %5, %6, !dbg !49
  br i1 %cmp, label %for.body, label %for.end, !dbg !50

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !51, !tbaa !27
  %8 = load i32, i32* %i, align 4, !dbg !52, !tbaa !27
  %idxprom = sext i32 %8 to i64, !dbg !53
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !53
  store i32 %7, i32* %arrayidx, align 4, !dbg !54, !tbaa !27
  br label %for.inc, !dbg !53

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !55, !tbaa !27
  %inc = add nsw i32 %9, 1, !dbg !55
  store i32 %inc, i32* %i, align 4, !dbg !55, !tbaa !27
  br label %for.cond, !dbg !56, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %len, align 4, !dbg !60, !tbaa !27
  %conv = bitcast i64* %len.casted to i32*, !dbg !60
  store i32 %10, i32* %conv, align 4, !dbg !60, !tbaa !27
  %11 = load i64, i64* %len.casted, align 8, !dbg !60, !tbaa !61
  call void @__omp_offloading_10308_be042f_main_l59(i64 %11, i64 %3, i32* %vla) #3, !dbg !63
  store i32 0, i32* %retval, align 4, !dbg !65
  %12 = load i8*, i8** %saved_stack, align 8, !dbg !66
  call void @llvm.stackrestore(i8* %12), !dbg !66
  %13 = bitcast i32* %len to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !66
  %14 = bitcast i32* %i to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3, !dbg !66
  %15 = load i32, i32* %retval, align 4, !dbg !66
  ret i32 %15, !dbg !66
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be042f_main_l59_debug__(i32 %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #4 !dbg !67 {
entry:
  %len.addr = alloca i32, align 4
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32 %len, i32* %len.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !72, metadata !DIExpression()), !dbg !75
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !73, metadata !DIExpression()), !dbg !76
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !74, metadata !DIExpression()), !dbg !77
  %0 = load i64, i64* %vla.addr, align 8, !dbg !78, !tbaa !61
  %1 = load i32*, i32** %a.addr, align 8, !dbg !78, !tbaa !32
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len.addr, i64 %0, i32* %1), !dbg !78
  ret void, !dbg !79
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #4 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !89, metadata !DIExpression()), !dbg !100
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !90, metadata !DIExpression()), !dbg !101
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !91, metadata !DIExpression()), !dbg !100
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !92, metadata !DIExpression()), !dbg !102
  %0 = load i32*, i32** %len.addr, align 8, !dbg !103, !tbaa !32
  %1 = load i64, i64* %vla.addr, align 8, !dbg !103, !tbaa !61
  %2 = load i32*, i32** %a.addr, align 8, !dbg !103, !tbaa !32
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !93, metadata !DIExpression()), !dbg !100
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !94, metadata !DIExpression()), !dbg !100
  %5 = load i32, i32* %0, align 4, !dbg !104, !tbaa !27
  store i32 %5, i32* %.capture_expr., align 4, !dbg !104, !tbaa !27
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !94, metadata !DIExpression()), !dbg !100
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !104, !tbaa !27
  %sub = sub nsw i32 %7, 0, !dbg !103
  %div = sdiv i32 %sub, 1, !dbg !103
  %sub2 = sub nsw i32 %div, 1, !dbg !103
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !27
  %8 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !95, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %i, align 4, !dbg !105, !tbaa !27
  %9 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3, !dbg !103
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !104, !tbaa !27
  %cmp = icmp slt i32 0, %10, !dbg !103
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !103

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !96, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.lb, align 4, !dbg !106, !tbaa !27
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !97, metadata !DIExpression()), !dbg !100
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !27
  store i32 %13, i32* %.omp.ub, align 4, !dbg !106, !tbaa !27
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !98, metadata !DIExpression()), !dbg !100
  store i32 1, i32* %.omp.stride, align 4, !dbg !106, !tbaa !27
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.is_last, align 4, !dbg !106, !tbaa !27
  %16 = bitcast i32* %i3 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !95, metadata !DIExpression()), !dbg !100
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %18 = load i32, i32* %17, align 4, !dbg !103, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !107
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !27
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !27
  %cmp4 = icmp sgt i32 %19, %20, !dbg !106
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !106

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !103, !tbaa !27
  br label %cond.end, !dbg !106

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !27
  br label %cond.end, !dbg !106

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !106
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !106, !tbaa !27
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !106, !tbaa !27
  store i32 %23, i32* %.omp.iv, align 4, !dbg !106, !tbaa !27
  br label %omp.inner.for.cond, !dbg !103

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !27
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !27
  %cmp5 = icmp sle i32 %24, %25, !dbg !103
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !103

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !103

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !27
  %mul = mul nsw i32 %26, 1, !dbg !105
  %add = add nsw i32 0, %mul, !dbg !105
  store i32 %add, i32* %i3, align 4, !dbg !105, !tbaa !27
  %27 = load i32, i32* %i3, align 4, !dbg !108, !tbaa !27
  %idxprom = sext i32 %27 to i64, !dbg !109
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !109
  %28 = load i32, i32* %arrayidx, align 4, !dbg !109, !tbaa !27
  %add6 = add nsw i32 %28, 1, !dbg !110
  %29 = load i32, i32* %i3, align 4, !dbg !111, !tbaa !27
  %idxprom7 = sext i32 %29 to i64, !dbg !112
  %arrayidx8 = getelementptr inbounds i32, i32* %2, i64 %idxprom7, !dbg !112
  store i32 %add6, i32* %arrayidx8, align 4, !dbg !113, !tbaa !27
  br label %omp.body.continue, !dbg !112

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !107

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !27
  %add9 = add nsw i32 %30, 1, !dbg !103
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !103, !tbaa !27
  br label %omp.inner.for.cond, !dbg !107, !llvm.loop !114

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !107

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107
  %32 = load i32, i32* %31, align 4, !dbg !107, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %32), !dbg !115
  %33 = bitcast i32* %i3 to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3, !dbg !107
  %34 = bitcast i32* %.omp.is_last to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3, !dbg !107
  %35 = bitcast i32* %.omp.stride to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3, !dbg !107
  %36 = bitcast i32* %.omp.ub to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3, !dbg !107
  %37 = bitcast i32* %.omp.lb to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3, !dbg !107
  br label %omp.precond.end, !dbg !107

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %38 = bitcast i32* %.capture_expr.1 to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3, !dbg !107
  %39 = bitcast i32* %.capture_expr. to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !107
  %40 = bitcast i32* %.omp.iv to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !107
  ret void, !dbg !116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #4 !dbg !117 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !119, metadata !DIExpression()), !dbg !124
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !120, metadata !DIExpression()), !dbg !124
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !121, metadata !DIExpression()), !dbg !124
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !122, metadata !DIExpression()), !dbg !124
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load i32*, i32** %len.addr, align 8, !dbg !125, !tbaa !32
  %1 = load i64, i64* %vla.addr, align 8, !dbg !125, !tbaa !61
  %2 = load i32*, i32** %a.addr, align 8, !dbg !125, !tbaa !32
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !125, !tbaa !32
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !125, !tbaa !32
  %5 = load i32*, i32** %len.addr, align 8, !dbg !125, !tbaa !32
  %6 = load i32*, i32** %a.addr, align 8, !dbg !125, !tbaa !32
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #3, !dbg !125
  ret void, !dbg !125
}

; Function Attrs: nounwind
declare !callback !126 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be042f_main_l59(i64 %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #4 !dbg !128 {
entry:
  %len.addr = alloca i64, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i64 %len, i64* %len.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !132, metadata !DIExpression()), !dbg !135
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !133, metadata !DIExpression()), !dbg !135
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %conv = bitcast i64* %len.addr to i32*, !dbg !136
  %0 = load i64, i64* %vla.addr, align 8, !dbg !136, !tbaa !61
  %1 = load i32*, i32** %a.addr, align 8, !dbg !136, !tbaa !32
  %2 = load i32, i32* %conv, align 8, !dbg !136, !tbaa !27
  %3 = load i32*, i32** %a.addr, align 8, !dbg !136, !tbaa !32
  call void @__omp_offloading_10308_be042f_main_l59_debug__(i32 %2, i64 %0, i32* %3) #3, !dbg !136
  ret void, !dbg !136
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB071-targetparallelfor-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 50, type: !10, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !23}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 50, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 50, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 52, type: !12)
!20 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 53, type: !12)
!21 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !22, flags: DIFlagArtificial)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 54, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: !21)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 50, column: 14, scope: !9)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !DILocation(line: 50, column: 26, scope: !9)
!35 = !DILocation(line: 52, column: 3, scope: !9)
!36 = !DILocation(line: 52, column: 7, scope: !9)
!37 = !DILocation(line: 53, column: 3, scope: !9)
!38 = !DILocation(line: 53, column: 7, scope: !9)
!39 = !DILocation(line: 54, column: 9, scope: !9)
!40 = !DILocation(line: 54, column: 3, scope: !9)
!41 = !DILocation(line: 0, scope: !9)
!42 = !DILocation(line: 54, column: 7, scope: !9)
!43 = !DILocation(line: 56, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !9, file: !1, line: 56, column: 3)
!45 = !DILocation(line: 56, column: 8, scope: !44)
!46 = !DILocation(line: 56, column: 13, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 56, column: 3)
!48 = !DILocation(line: 56, column: 15, scope: !47)
!49 = !DILocation(line: 56, column: 14, scope: !47)
!50 = !DILocation(line: 56, column: 3, scope: !44)
!51 = !DILocation(line: 57, column: 11, scope: !47)
!52 = !DILocation(line: 57, column: 7, scope: !47)
!53 = !DILocation(line: 57, column: 5, scope: !47)
!54 = !DILocation(line: 57, column: 9, scope: !47)
!55 = !DILocation(line: 56, column: 21, scope: !47)
!56 = !DILocation(line: 56, column: 3, scope: !47)
!57 = distinct !{!57, !50, !58, !59}
!58 = !DILocation(line: 57, column: 11, scope: !44)
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !DILocation(line: 59, column: 1, scope: !9)
!61 = !{!62, !62, i64 0}
!62 = !{!"long", !29, i64 0}
!63 = !DILocation(line: 59, column: 1, scope: !64)
!64 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 1)
!65 = !DILocation(line: 64, column: 3, scope: !9)
!66 = !DILocation(line: 65, column: 1, scope: !9)
!67 = distinct !DISubprogram(name: "__omp_offloading_10308_be042f_main_l59_debug__", scope: !1, file: !1, line: 60, type: !68, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !12, !22, !70}
!70 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!71 = !{!72, !73, !74}
!72 = !DILocalVariable(name: "len", arg: 1, scope: !67, file: !1, line: 53, type: !12)
!73 = !DILocalVariable(name: "vla", arg: 2, scope: !67, type: !22, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "a", arg: 3, scope: !67, file: !1, line: 54, type: !70)
!75 = !DILocation(line: 53, column: 7, scope: !67)
!76 = !DILocation(line: 0, scope: !67)
!77 = !DILocation(line: 54, column: 7, scope: !67)
!78 = !DILocation(line: 60, column: 1, scope: !67)
!79 = !DILocation(line: 60, column: 25, scope: !67)
!80 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 61, type: !81, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !83, !70, !22, !70}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !94, !95, !96, !97, !98, !99, !95}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !83, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !83, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "len", arg: 3, scope: !80, file: !1, line: 53, type: !70)
!91 = !DILocalVariable(name: "vla", arg: 4, scope: !80, type: !22, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "a", arg: 5, scope: !80, file: !1, line: 54, type: !70)
!93 = !DILocalVariable(name: ".omp.iv", scope: !80, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".capture_expr.", scope: !80, type: !12, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "i", scope: !80, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.lb", scope: !80, type: !12, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.ub", scope: !80, type: !12, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.stride", scope: !80, type: !12, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".omp.is_last", scope: !80, type: !12, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !80)
!101 = !DILocation(line: 53, column: 7, scope: !80)
!102 = !DILocation(line: 54, column: 7, scope: !80)
!103 = !DILocation(line: 61, column: 3, scope: !80)
!104 = !DILocation(line: 61, column: 15, scope: !80)
!105 = !DILocation(line: 61, column: 19, scope: !80)
!106 = !DILocation(line: 61, column: 8, scope: !80)
!107 = !DILocation(line: 60, column: 1, scope: !80)
!108 = !DILocation(line: 62, column: 12, scope: !80)
!109 = !DILocation(line: 62, column: 10, scope: !80)
!110 = !DILocation(line: 62, column: 14, scope: !80)
!111 = !DILocation(line: 62, column: 7, scope: !80)
!112 = !DILocation(line: 62, column: 5, scope: !80)
!113 = !DILocation(line: 62, column: 9, scope: !80)
!114 = distinct !{!114, !107, !115}
!115 = !DILocation(line: 60, column: 25, scope: !80)
!116 = !DILocation(line: 62, column: 15, scope: !80)
!117 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 60, type: !81, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!118 = !{!119, !120, !121, !122, !123}
!119 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !117, type: !83, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !117, type: !83, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "len", arg: 3, scope: !117, type: !70, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "vla", arg: 4, scope: !117, type: !22, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "a", arg: 5, scope: !117, type: !70, flags: DIFlagArtificial)
!124 = !DILocation(line: 0, scope: !117)
!125 = !DILocation(line: 60, column: 1, scope: !117)
!126 = !{!127}
!127 = !{i64 2, i64 -1, i64 -1, i1 true}
!128 = distinct !DISubprogram(name: "__omp_offloading_10308_be042f_main_l59", scope: !1, file: !1, line: 59, type: !129, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !22, !22, !70}
!131 = !{!132, !133, !134}
!132 = !DILocalVariable(name: "len", arg: 1, scope: !128, type: !22, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "vla", arg: 2, scope: !128, type: !22, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: "a", arg: 3, scope: !128, type: !70, flags: DIFlagArtificial)
!135 = !DILocation(line: 0, scope: !128)
!136 = !DILocation(line: 59, column: 1, scope: !128)
