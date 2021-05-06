; ModuleID = 'DRB012-minusminus-var-yes.c'
source_filename = "DRB012-minusminus-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [41 x i8] c";DRB012-minusminus-var-yes.c;main;71;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [42 x i8] c";DRB012-minusminus-var-yes.c;main;71;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %numNodes = alloca i32, align 4
  %numNodes2 = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !35
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !38
  %0 = bitcast i32* %i to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !40
  %1 = bitcast i32* %len to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !42
  store i32 100, i32* %len, align 4, !dbg !42, !tbaa !31
  %2 = load i32, i32* %argc.addr, align 4, !dbg !43, !tbaa !31
  %cmp = icmp sgt i32 %2, 1, !dbg !45
  br i1 %cmp, label %if.then, label %if.end, !dbg !46

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !47, !tbaa !36
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !47
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !47, !tbaa !36
  %call = call i32 @atoi(i8* %4) #7, !dbg !48
  store i32 %call, i32* %len, align 4, !dbg !49, !tbaa !31
  br label %if.end, !dbg !50

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast i32* %numNodes to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %numNodes, metadata !23, metadata !DIExpression()), !dbg !52
  %6 = load i32, i32* %len, align 4, !dbg !53, !tbaa !31
  store i32 %6, i32* %numNodes, align 4, !dbg !52, !tbaa !31
  %7 = bitcast i32* %numNodes2 to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %numNodes2, metadata !24, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %numNodes2, align 4, !dbg !54, !tbaa !31
  %8 = load i32, i32* %len, align 4, !dbg !55, !tbaa !31
  %9 = zext i32 %8 to i64, !dbg !56
  %10 = call i8* @llvm.stacksave(), !dbg !56
  store i8* %10, i8** %saved_stack, align 8, !dbg !56
  %vla = alloca i32, i64 %9, align 16, !dbg !56
  store i64 %9, i64* %__vla_expr0, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !25, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !27, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %i, align 4, !dbg !59, !tbaa !31
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !62, !tbaa !31
  %12 = load i32, i32* %len, align 4, !dbg !64, !tbaa !31
  %cmp1 = icmp slt i32 %11, %12, !dbg !65
  br i1 %cmp1, label %for.body, label %for.end, !dbg !66

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !67, !tbaa !31
  %rem = srem i32 %13, 2, !dbg !70
  %cmp2 = icmp eq i32 %rem, 0, !dbg !71
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !72

if.then3:                                         ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !73, !tbaa !31
  %idxprom = sext i32 %14 to i64, !dbg !74
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !74
  store i32 5, i32* %arrayidx4, align 4, !dbg !75, !tbaa !31
  br label %if.end7, !dbg !74

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !76, !tbaa !31
  %idxprom5 = sext i32 %15 to i64, !dbg !77
  %arrayidx6 = getelementptr inbounds i32, i32* %vla, i64 %idxprom5, !dbg !77
  store i32 -5, i32* %arrayidx6, align 4, !dbg !78, !tbaa !31
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  br label %for.inc, !dbg !79

for.inc:                                          ; preds = %if.end7
  %16 = load i32, i32* %i, align 4, !dbg !80, !tbaa !31
  %inc = add nsw i32 %16, 1, !dbg !80
  store i32 %inc, i32* %i, align 4, !dbg !80, !tbaa !31
  br label %for.cond, !dbg !81, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numNodes, i64 %9, i32* %vla, i32* %numNodes2), !dbg !85
  store i32 0, i32* %retval, align 4, !dbg !86
  %17 = load i8*, i8** %saved_stack, align 8, !dbg !87
  call void @llvm.stackrestore(i8* %17), !dbg !87
  %18 = bitcast i32* %numNodes2 to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !87
  %19 = bitcast i32* %numNodes to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !87
  %20 = bitcast i32* %len to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !87
  %21 = bitcast i32* %i to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !87
  %22 = load i32, i32* %retval, align 4, !dbg !87
  ret i32 %22, !dbg !87
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !88 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !97, !tbaa !36
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !98
  %conv = trunc i64 %call to i32, !dbg !99
  ret i32 %conv, !dbg !100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %numNodes, i64 %vla, i32* nonnull align 4 dereferenceable(4) %x, i32* nonnull align 4 dereferenceable(4) %numNodes2) #5 !dbg !101 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %x.addr = alloca i32*, align 8
  %numNodes2.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !110, metadata !DIExpression()), !dbg !125
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !111, metadata !DIExpression()), !dbg !125
  store i32* %numNodes, i32** %numNodes.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !112, metadata !DIExpression()), !dbg !126
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !127
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !113, metadata !DIExpression()), !dbg !125
  store i32* %x, i32** %x.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !114, metadata !DIExpression()), !dbg !129
  store i32* %numNodes2, i32** %numNodes2.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !115, metadata !DIExpression()), !dbg !130
  %0 = load i32*, i32** %numNodes.addr, align 8, !dbg !131, !tbaa !36
  %1 = load i64, i64* %vla.addr, align 8, !dbg !131, !tbaa !127
  %2 = load i32*, i32** %x.addr, align 8, !dbg !131, !tbaa !36
  %3 = load i32*, i32** %numNodes2.addr, align 8, !dbg !131, !tbaa !36
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !116, metadata !DIExpression()), !dbg !125
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !118, metadata !DIExpression()), !dbg !125
  %6 = load i32, i32* %0, align 4, !dbg !132, !tbaa !31
  %sub = sub nsw i32 %6, 1, !dbg !133
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !132, !tbaa !31
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !119, metadata !DIExpression()), !dbg !125
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !133, !tbaa !31
  %sub2 = sub i32 %8, -1, !dbg !131
  %div = udiv i32 %sub2, 1, !dbg !131
  %sub3 = sub i32 %div, 1, !dbg !131
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !131, !tbaa !31
  %9 = bitcast i32* %i to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %i, metadata !120, metadata !DIExpression()), !dbg !125
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !133, !tbaa !31
  store i32 %10, i32* %i, align 4, !dbg !134, !tbaa !31
  %11 = bitcast i32* %i to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !131
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !133, !tbaa !31
  %cmp = icmp sgt i32 %12, -1, !dbg !131
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !131

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !121, metadata !DIExpression()), !dbg !125
  store i32 0, i32* %.omp.lb, align 4, !dbg !135, !tbaa !31
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !122, metadata !DIExpression()), !dbg !125
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !131, !tbaa !31
  store i32 %15, i32* %.omp.ub, align 4, !dbg !135, !tbaa !31
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !123, metadata !DIExpression()), !dbg !125
  store i32 1, i32* %.omp.stride, align 4, !dbg !135, !tbaa !31
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !124, metadata !DIExpression()), !dbg !125
  store i32 0, i32* %.omp.is_last, align 4, !dbg !135, !tbaa !31
  %18 = bitcast i32* %i4 to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !120, metadata !DIExpression()), !dbg !125
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %20 = load i32, i32* %19, align 4, !dbg !131, !tbaa !31
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @1, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !136
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !31
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !131, !tbaa !31
  %cmp5 = icmp ugt i32 %21, %22, !dbg !135
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !135

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !131, !tbaa !31
  br label %cond.end, !dbg !135

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !31
  br label %cond.end, !dbg !135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !135
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !135, !tbaa !31
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !135, !tbaa !31
  store i32 %25, i32* %.omp.iv, align 4, !dbg !135, !tbaa !31
  br label %omp.inner.for.cond, !dbg !131

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !31
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !31
  %add = add i32 %27, 1, !dbg !131
  %cmp6 = icmp ult i32 %26, %add, !dbg !131
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !131

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !131

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.capture_expr., align 4, !dbg !133, !tbaa !31
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !31
  %mul = mul i32 %29, 1, !dbg !134
  %sub7 = sub i32 %28, %mul, !dbg !134
  store i32 %sub7, i32* %i4, align 4, !dbg !134, !tbaa !31
  %30 = load i32, i32* %i4, align 4, !dbg !137, !tbaa !31
  %idxprom = sext i32 %30 to i64, !dbg !140
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !140
  %31 = load i32, i32* %arrayidx, align 4, !dbg !140, !tbaa !31
  %cmp8 = icmp sle i32 %31, 0, !dbg !141
  br i1 %cmp8, label %if.then, label %if.end, !dbg !142

if.then:                                          ; preds = %omp.inner.for.body
  %32 = load i32, i32* %3, align 4, !dbg !143, !tbaa !31
  %dec = add nsw i32 %32, -1, !dbg !143
  store i32 %dec, i32* %3, align 4, !dbg !143, !tbaa !31
  br label %if.end, !dbg !145

if.end:                                           ; preds = %if.then, %omp.inner.for.body
  br label %omp.body.continue, !dbg !146

omp.body.continue:                                ; preds = %if.end
  br label %omp.inner.for.inc, !dbg !136

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !31
  %add9 = add i32 %33, 1, !dbg !131
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !131, !tbaa !31
  br label %omp.inner.for.cond, !dbg !136, !llvm.loop !147

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !136

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !136
  %35 = load i32, i32* %34, align 4, !dbg !136, !tbaa !31
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %35), !dbg !148
  %36 = bitcast i32* %i4 to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !136
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !136
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !136
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !136
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !136
  br label %omp.precond.end, !dbg !136

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.1 to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !136
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !136
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !136
  ret void, !dbg !149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %numNodes, i64 %vla, i32* nonnull align 4 dereferenceable(4) %x, i32* nonnull align 4 dereferenceable(4) %numNodes2) #5 !dbg !150 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %x.addr = alloca i32*, align 8
  %numNodes2.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !152, metadata !DIExpression()), !dbg !158
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !153, metadata !DIExpression()), !dbg !158
  store i32* %numNodes, i32** %numNodes.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !154, metadata !DIExpression()), !dbg !158
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !127
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !155, metadata !DIExpression()), !dbg !158
  store i32* %x, i32** %x.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !156, metadata !DIExpression()), !dbg !158
  store i32* %numNodes2, i32** %numNodes2.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load i32*, i32** %numNodes.addr, align 8, !dbg !159, !tbaa !36
  %1 = load i64, i64* %vla.addr, align 8, !dbg !159, !tbaa !127
  %2 = load i32*, i32** %x.addr, align 8, !dbg !159, !tbaa !36
  %3 = load i32*, i32** %numNodes2.addr, align 8, !dbg !159, !tbaa !36
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !159, !tbaa !36
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !159, !tbaa !36
  %6 = load i32*, i32** %numNodes.addr, align 8, !dbg !159, !tbaa !36
  %7 = load i32*, i32** %x.addr, align 8, !dbg !159, !tbaa !36
  %8 = load i32*, i32** %numNodes2.addr, align 8, !dbg !159, !tbaa !36
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i32* %7, i32* %8) #4, !dbg !159
  ret void, !dbg !159
}

; Function Attrs: nounwind
declare !callback !160 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB012-minusminus-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !16, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !24, !25, !27}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 52, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 52, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 54, type: !4)
!22 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 55, type: !4)
!23 = !DILocalVariable(name: "numNodes", scope: !15, file: !1, line: 60, type: !4)
!24 = !DILocalVariable(name: "numNodes2", scope: !15, file: !1, line: 60, type: !4)
!25 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !26, flags: DIFlagArtificial)
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "x", scope: !15, file: !1, line: 61, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: !25)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 52, column: 14, scope: !15)
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !33, i64 0}
!38 = !DILocation(line: 52, column: 26, scope: !15)
!39 = !DILocation(line: 54, column: 3, scope: !15)
!40 = !DILocation(line: 54, column: 7, scope: !15)
!41 = !DILocation(line: 55, column: 3, scope: !15)
!42 = !DILocation(line: 55, column: 7, scope: !15)
!43 = !DILocation(line: 57, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !15, file: !1, line: 57, column: 7)
!45 = !DILocation(line: 57, column: 11, scope: !44)
!46 = !DILocation(line: 57, column: 7, scope: !15)
!47 = !DILocation(line: 58, column: 16, scope: !44)
!48 = !DILocation(line: 58, column: 11, scope: !44)
!49 = !DILocation(line: 58, column: 9, scope: !44)
!50 = !DILocation(line: 58, column: 5, scope: !44)
!51 = !DILocation(line: 60, column: 3, scope: !15)
!52 = !DILocation(line: 60, column: 7, scope: !15)
!53 = !DILocation(line: 60, column: 16, scope: !15)
!54 = !DILocation(line: 60, column: 21, scope: !15)
!55 = !DILocation(line: 61, column: 9, scope: !15)
!56 = !DILocation(line: 61, column: 3, scope: !15)
!57 = !DILocation(line: 0, scope: !15)
!58 = !DILocation(line: 61, column: 7, scope: !15)
!59 = !DILocation(line: 63, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !15, file: !1, line: 63, column: 3)
!61 = !DILocation(line: 63, column: 8, scope: !60)
!62 = !DILocation(line: 63, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 63, column: 3)
!64 = !DILocation(line: 63, column: 16, scope: !63)
!65 = !DILocation(line: 63, column: 14, scope: !63)
!66 = !DILocation(line: 63, column: 3, scope: !60)
!67 = !DILocation(line: 65, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 65, column: 9)
!69 = distinct !DILexicalBlock(scope: !63, file: !1, line: 64, column: 3)
!70 = !DILocation(line: 65, column: 10, scope: !68)
!71 = !DILocation(line: 65, column: 12, scope: !68)
!72 = !DILocation(line: 65, column: 9, scope: !69)
!73 = !DILocation(line: 66, column: 9, scope: !68)
!74 = !DILocation(line: 66, column: 7, scope: !68)
!75 = !DILocation(line: 66, column: 11, scope: !68)
!76 = !DILocation(line: 68, column: 9, scope: !68)
!77 = !DILocation(line: 68, column: 7, scope: !68)
!78 = !DILocation(line: 68, column: 11, scope: !68)
!79 = !DILocation(line: 69, column: 3, scope: !69)
!80 = !DILocation(line: 63, column: 22, scope: !63)
!81 = !DILocation(line: 63, column: 3, scope: !63)
!82 = distinct !{!82, !66, !83, !84}
!83 = !DILocation(line: 69, column: 3, scope: !60)
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !DILocation(line: 71, column: 1, scope: !15)
!86 = !DILocation(line: 77, column: 3, scope: !15)
!87 = !DILocation(line: 78, column: 1, scope: !15)
!88 = distinct !DISubprogram(name: "atoi", scope: !89, file: !89, line: 361, type: !90, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!89 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!90 = !DISubroutineType(types: !91)
!91 = !{!4, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!94 = !{!95}
!95 = !DILocalVariable(name: "__nptr", arg: 1, scope: !88, file: !89, line: 361, type: !92)
!96 = !DILocation(line: 361, column: 1, scope: !88)
!97 = !DILocation(line: 363, column: 24, scope: !88)
!98 = !DILocation(line: 363, column: 16, scope: !88)
!99 = !DILocation(line: 363, column: 10, scope: !88)
!100 = !DILocation(line: 363, column: 3, scope: !88)
!101 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 72, type: !102, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !109)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !104, !104, !108, !26, !108, !108}
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!108 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!109 = !{!110, !111, !112, !113, !114, !115, !116, !118, !119, !120, !121, !122, !123, !124, !120}
!110 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !104, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !101, type: !104, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "numNodes", arg: 3, scope: !101, file: !1, line: 60, type: !108)
!113 = !DILocalVariable(name: "vla", arg: 4, scope: !101, type: !26, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "x", arg: 5, scope: !101, file: !1, line: 61, type: !108)
!115 = !DILocalVariable(name: "numNodes2", arg: 6, scope: !101, file: !1, line: 60, type: !108)
!116 = !DILocalVariable(name: ".omp.iv", scope: !101, type: !117, flags: DIFlagArtificial)
!117 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!118 = !DILocalVariable(name: ".capture_expr.", scope: !101, type: !4, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".capture_expr.", scope: !101, type: !117, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "i", scope: !101, type: !4, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.lb", scope: !101, type: !117, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.ub", scope: !101, type: !117, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".omp.stride", scope: !101, type: !117, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: ".omp.is_last", scope: !101, type: !4, flags: DIFlagArtificial)
!125 = !DILocation(line: 0, scope: !101)
!126 = !DILocation(line: 60, column: 7, scope: !101)
!127 = !{!128, !128, i64 0}
!128 = !{!"long", !33, i64 0}
!129 = !DILocation(line: 61, column: 7, scope: !101)
!130 = !DILocation(line: 60, column: 21, scope: !101)
!131 = !DILocation(line: 72, column: 3, scope: !101)
!132 = !DILocation(line: 72, column: 10, scope: !101)
!133 = !DILocation(line: 72, column: 18, scope: !101)
!134 = !DILocation(line: 72, column: 30, scope: !101)
!135 = !DILocation(line: 72, column: 8, scope: !101)
!136 = !DILocation(line: 71, column: 1, scope: !101)
!137 = !DILocation(line: 73, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 73, column: 9)
!139 = distinct !DILexicalBlock(scope: !101, file: !1, line: 72, column: 35)
!140 = !DILocation(line: 73, column: 9, scope: !138)
!141 = !DILocation(line: 73, column: 13, scope: !138)
!142 = !DILocation(line: 73, column: 9, scope: !139)
!143 = !DILocation(line: 74, column: 16, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !1, line: 73, column: 18)
!145 = !DILocation(line: 75, column: 5, scope: !144)
!146 = !DILocation(line: 76, column: 3, scope: !139)
!147 = distinct !{!147, !136, !148}
!148 = !DILocation(line: 71, column: 25, scope: !101)
!149 = !DILocation(line: 76, column: 3, scope: !101)
!150 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 71, type: !102, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !150, type: !104, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !150, type: !104, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: "numNodes", arg: 3, scope: !150, type: !108, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: "vla", arg: 4, scope: !150, type: !26, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: "x", arg: 5, scope: !150, type: !108, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: "numNodes2", arg: 6, scope: !150, type: !108, flags: DIFlagArtificial)
!158 = !DILocation(line: 0, scope: !150)
!159 = !DILocation(line: 71, column: 1, scope: !150)
!160 = !{!161}
!161 = !{i64 2, i64 -1, i64 -1, i1 true}
