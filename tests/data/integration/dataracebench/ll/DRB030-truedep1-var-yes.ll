; ModuleID = 'DRB030-truedep1-var-yes.c'
source_filename = "DRB030-truedep1-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [39 x i8] c";DRB030-truedep1-var-yes.c;main;66;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [40 x i8] c";DRB030-truedep1-var-yes.c;main;66;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !33
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !36
  %0 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !38
  %1 = bitcast i32* %len to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !40
  store i32 100, i32* %len, align 4, !dbg !40, !tbaa !29
  %2 = load i32, i32* %argc.addr, align 4, !dbg !41, !tbaa !29
  %cmp = icmp sgt i32 %2, 1, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !45, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !45
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !45, !tbaa !34
  %call = call i32 @atoi(i8* %4) #7, !dbg !46
  store i32 %call, i32* %len, align 4, !dbg !47, !tbaa !29
  br label %if.end, !dbg !48

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %len, align 4, !dbg !49, !tbaa !29
  %6 = zext i32 %5 to i64, !dbg !50
  %7 = call i8* @llvm.stacksave(), !dbg !50
  store i8* %7, i8** %saved_stack, align 8, !dbg !50
  %vla = alloca i32, i64 %6, align 16, !dbg !50
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !50
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !23, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !25, metadata !DIExpression()), !dbg !52
  store i32 0, i32* %i, align 4, !dbg !53, !tbaa !29
  br label %for.cond, !dbg !55

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !56, !tbaa !29
  %9 = load i32, i32* %len, align 4, !dbg !58, !tbaa !29
  %cmp1 = icmp slt i32 %8, %9, !dbg !59
  br i1 %cmp1, label %for.body, label %for.end, !dbg !60

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !61, !tbaa !29
  %11 = load i32, i32* %i, align 4, !dbg !62, !tbaa !29
  %idxprom = sext i32 %11 to i64, !dbg !63
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !63
  store i32 %10, i32* %arrayidx2, align 4, !dbg !64, !tbaa !29
  br label %for.inc, !dbg !63

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !65, !tbaa !29
  %inc = add nsw i32 %12, 1, !dbg !65
  store i32 %inc, i32* %i, align 4, !dbg !65, !tbaa !29
  br label %for.cond, !dbg !66, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %6, i32* %vla), !dbg !70
  store i32 0, i32* %retval, align 4, !dbg !71
  %13 = load i8*, i8** %saved_stack, align 8, !dbg !72
  call void @llvm.stackrestore(i8* %13), !dbg !72
  %14 = bitcast i32* %len to i8*, !dbg !72
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !72
  %15 = bitcast i32* %i to i8*, !dbg !72
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4, !dbg !72
  %16 = load i32, i32* %retval, align 4, !dbg !72
  ret i32 %16, !dbg !72
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !73 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !80, metadata !DIExpression()), !dbg !81
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !82, !tbaa !34
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !83
  %conv = trunc i64 %call to i32, !dbg !84
  ret i32 %conv, !dbg !85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #5 !dbg !86 {
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
  %i4 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !95, metadata !DIExpression()), !dbg !107
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !96, metadata !DIExpression()), !dbg !107
  store i32* %len, i32** %len.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !97, metadata !DIExpression()), !dbg !108
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !109
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !98, metadata !DIExpression()), !dbg !107
  store i32* %a, i32** %a.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !99, metadata !DIExpression()), !dbg !111
  %0 = load i32*, i32** %len.addr, align 8, !dbg !112, !tbaa !34
  %1 = load i64, i64* %vla.addr, align 8, !dbg !112, !tbaa !109
  %2 = load i32*, i32** %a.addr, align 8, !dbg !112, !tbaa !34
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !100, metadata !DIExpression()), !dbg !107
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !101, metadata !DIExpression()), !dbg !107
  %5 = load i32, i32* %0, align 4, !dbg !113, !tbaa !29
  %sub = sub nsw i32 %5, 1, !dbg !114
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !113, !tbaa !29
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !101, metadata !DIExpression()), !dbg !107
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !114, !tbaa !29
  %sub2 = sub nsw i32 %7, 0, !dbg !112
  %div = sdiv i32 %sub2, 1, !dbg !112
  %sub3 = sub nsw i32 %div, 1, !dbg !112
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !112, !tbaa !29
  %8 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %i, align 4, !dbg !115, !tbaa !29
  %9 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !112
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !114, !tbaa !29
  %cmp = icmp slt i32 0, %10, !dbg !112
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !112

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !103, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %.omp.lb, align 4, !dbg !116, !tbaa !29
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !104, metadata !DIExpression()), !dbg !107
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !112, !tbaa !29
  store i32 %13, i32* %.omp.ub, align 4, !dbg !116, !tbaa !29
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !105, metadata !DIExpression()), !dbg !107
  store i32 1, i32* %.omp.stride, align 4, !dbg !116, !tbaa !29
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %.omp.is_last, align 4, !dbg !116, !tbaa !29
  %16 = bitcast i32* %i4 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !102, metadata !DIExpression()), !dbg !107
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112
  %18 = load i32, i32* %17, align 4, !dbg !112, !tbaa !29
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !117
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !29
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !112, !tbaa !29
  %cmp5 = icmp sgt i32 %19, %20, !dbg !116
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !116

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !112, !tbaa !29
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !29
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !116
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !116, !tbaa !29
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !116, !tbaa !29
  store i32 %23, i32* %.omp.iv, align 4, !dbg !116, !tbaa !29
  br label %omp.inner.for.cond, !dbg !112

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !29
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !29
  %cmp6 = icmp sle i32 %24, %25, !dbg !112
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !112

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !112

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !29
  %mul = mul nsw i32 %26, 1, !dbg !115
  %add = add nsw i32 0, %mul, !dbg !115
  store i32 %add, i32* %i4, align 4, !dbg !115, !tbaa !29
  %27 = load i32, i32* %i4, align 4, !dbg !118, !tbaa !29
  %idxprom = sext i32 %27 to i64, !dbg !119
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !119
  %28 = load i32, i32* %arrayidx, align 4, !dbg !119, !tbaa !29
  %add7 = add nsw i32 %28, 1, !dbg !120
  %29 = load i32, i32* %i4, align 4, !dbg !121, !tbaa !29
  %add8 = add nsw i32 %29, 1, !dbg !122
  %idxprom9 = sext i32 %add8 to i64, !dbg !123
  %arrayidx10 = getelementptr inbounds i32, i32* %2, i64 %idxprom9, !dbg !123
  store i32 %add7, i32* %arrayidx10, align 4, !dbg !124, !tbaa !29
  br label %omp.body.continue, !dbg !123

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !117

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !29
  %add11 = add nsw i32 %30, 1, !dbg !112
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !112, !tbaa !29
  br label %omp.inner.for.cond, !dbg !117, !llvm.loop !125

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !117

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !117
  %32 = load i32, i32* %31, align 4, !dbg !117, !tbaa !29
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %32), !dbg !126
  %33 = bitcast i32* %i4 to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !117
  %34 = bitcast i32* %.omp.is_last to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !117
  %35 = bitcast i32* %.omp.stride to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !117
  %36 = bitcast i32* %.omp.ub to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !117
  %37 = bitcast i32* %.omp.lb to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !117
  br label %omp.precond.end, !dbg !117

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %38 = bitcast i32* %.capture_expr.1 to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !117
  %39 = bitcast i32* %.capture_expr. to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !117
  %40 = bitcast i32* %.omp.iv to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !117
  ret void, !dbg !127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i32* nonnull align 4 dereferenceable(4) %a) #5 !dbg !128 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !130, metadata !DIExpression()), !dbg !135
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !131, metadata !DIExpression()), !dbg !135
  store i32* %len, i32** %len.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !132, metadata !DIExpression()), !dbg !135
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !109
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !133, metadata !DIExpression()), !dbg !135
  store i32* %a, i32** %a.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load i32*, i32** %len.addr, align 8, !dbg !136, !tbaa !34
  %1 = load i64, i64* %vla.addr, align 8, !dbg !136, !tbaa !109
  %2 = load i32*, i32** %a.addr, align 8, !dbg !136, !tbaa !34
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !136, !tbaa !34
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !136, !tbaa !34
  %5 = load i32*, i32** %len.addr, align 8, !dbg !136, !tbaa !34
  %6 = load i32*, i32** %a.addr, align 8, !dbg !136, !tbaa !34
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #4, !dbg !136
  ret void, !dbg !136
}

; Function Attrs: nounwind
declare !callback !137 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB030-truedep1-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !16, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !25}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 54, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 54, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 56, type: !4)
!22 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 57, type: !4)
!23 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !24, flags: DIFlagArtificial)
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "a", scope: !15, file: !1, line: 62, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: !23)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 54, column: 14, scope: !15)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !31, i64 0}
!36 = !DILocation(line: 54, column: 26, scope: !15)
!37 = !DILocation(line: 56, column: 3, scope: !15)
!38 = !DILocation(line: 56, column: 7, scope: !15)
!39 = !DILocation(line: 57, column: 3, scope: !15)
!40 = !DILocation(line: 57, column: 7, scope: !15)
!41 = !DILocation(line: 59, column: 7, scope: !42)
!42 = distinct !DILexicalBlock(scope: !15, file: !1, line: 59, column: 7)
!43 = !DILocation(line: 59, column: 11, scope: !42)
!44 = !DILocation(line: 59, column: 7, scope: !15)
!45 = !DILocation(line: 60, column: 16, scope: !42)
!46 = !DILocation(line: 60, column: 11, scope: !42)
!47 = !DILocation(line: 60, column: 9, scope: !42)
!48 = !DILocation(line: 60, column: 5, scope: !42)
!49 = !DILocation(line: 62, column: 9, scope: !15)
!50 = !DILocation(line: 62, column: 3, scope: !15)
!51 = !DILocation(line: 0, scope: !15)
!52 = !DILocation(line: 62, column: 7, scope: !15)
!53 = !DILocation(line: 63, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !15, file: !1, line: 63, column: 3)
!55 = !DILocation(line: 63, column: 8, scope: !54)
!56 = !DILocation(line: 63, column: 12, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !1, line: 63, column: 3)
!58 = !DILocation(line: 63, column: 14, scope: !57)
!59 = !DILocation(line: 63, column: 13, scope: !57)
!60 = !DILocation(line: 63, column: 3, scope: !54)
!61 = !DILocation(line: 64, column: 10, scope: !57)
!62 = !DILocation(line: 64, column: 7, scope: !57)
!63 = !DILocation(line: 64, column: 5, scope: !57)
!64 = !DILocation(line: 64, column: 9, scope: !57)
!65 = !DILocation(line: 63, column: 19, scope: !57)
!66 = !DILocation(line: 63, column: 3, scope: !57)
!67 = distinct !{!67, !60, !68, !69}
!68 = !DILocation(line: 64, column: 10, scope: !54)
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !DILocation(line: 66, column: 1, scope: !15)
!71 = !DILocation(line: 70, column: 3, scope: !15)
!72 = !DILocation(line: 71, column: 1, scope: !15)
!73 = distinct !DISubprogram(name: "atoi", scope: !74, file: !74, line: 361, type: !75, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!74 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!75 = !DISubroutineType(types: !76)
!76 = !{!4, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!79 = !{!80}
!80 = !DILocalVariable(name: "__nptr", arg: 1, scope: !73, file: !74, line: 361, type: !77)
!81 = !DILocation(line: 361, column: 1, scope: !73)
!82 = !DILocation(line: 363, column: 24, scope: !73)
!83 = !DILocation(line: 363, column: 16, scope: !73)
!84 = !DILocation(line: 363, column: 10, scope: !73)
!85 = !DILocation(line: 363, column: 3, scope: !73)
!86 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 67, type: !87, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89, !89, !93, !24, !93}
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!93 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !101, !102, !103, !104, !105, !106, !102}
!95 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !86, type: !89, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !86, type: !89, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "len", arg: 3, scope: !86, file: !1, line: 57, type: !93)
!98 = !DILocalVariable(name: "vla", arg: 4, scope: !86, type: !24, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "a", arg: 5, scope: !86, file: !1, line: 62, type: !93)
!100 = !DILocalVariable(name: ".omp.iv", scope: !86, type: !4, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".capture_expr.", scope: !86, type: !4, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "i", scope: !86, type: !4, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.lb", scope: !86, type: !4, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.ub", scope: !86, type: !4, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.stride", scope: !86, type: !4, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".omp.is_last", scope: !86, type: !4, flags: DIFlagArtificial)
!107 = !DILocation(line: 0, scope: !86)
!108 = !DILocation(line: 57, column: 7, scope: !86)
!109 = !{!110, !110, i64 0}
!110 = !{!"long", !31, i64 0}
!111 = !DILocation(line: 62, column: 7, scope: !86)
!112 = !DILocation(line: 67, column: 3, scope: !86)
!113 = !DILocation(line: 67, column: 14, scope: !86)
!114 = !DILocation(line: 67, column: 17, scope: !86)
!115 = !DILocation(line: 67, column: 20, scope: !86)
!116 = !DILocation(line: 67, column: 8, scope: !86)
!117 = !DILocation(line: 66, column: 1, scope: !86)
!118 = !DILocation(line: 68, column: 14, scope: !86)
!119 = !DILocation(line: 68, column: 12, scope: !86)
!120 = !DILocation(line: 68, column: 16, scope: !86)
!121 = !DILocation(line: 68, column: 7, scope: !86)
!122 = !DILocation(line: 68, column: 8, scope: !86)
!123 = !DILocation(line: 68, column: 5, scope: !86)
!124 = !DILocation(line: 68, column: 11, scope: !86)
!125 = distinct !{!125, !117, !126}
!126 = !DILocation(line: 66, column: 25, scope: !86)
!127 = !DILocation(line: 68, column: 17, scope: !86)
!128 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !87, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!129 = !{!130, !131, !132, !133, !134}
!130 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !128, type: !89, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !128, type: !89, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "len", arg: 3, scope: !128, type: !93, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "vla", arg: 4, scope: !128, type: !24, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: "a", arg: 5, scope: !128, type: !93, flags: DIFlagArtificial)
!135 = !DILocation(line: 0, scope: !128)
!136 = !DILocation(line: 66, column: 1, scope: !128)
!137 = !{!138}
!138 = !{i64 2, i64 -1, i64 -1, i1 true}
