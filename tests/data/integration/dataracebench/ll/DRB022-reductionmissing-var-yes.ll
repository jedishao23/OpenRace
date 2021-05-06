; ModuleID = 'DRB022-reductionmissing-var-yes.c'
source_filename = "DRB022-reductionmissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [47 x i8] c";DRB022-reductionmissing-var-yes.c;main;67;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [48 x i8] c";DRB022-reductionmissing-var-yes.c;main;67;44;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca float, align 4
  %sum = alloca float, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !39
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !42
  %0 = bitcast i32* %i to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !44
  %1 = bitcast i32* %j to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %j, metadata !22, metadata !DIExpression()), !dbg !45
  %2 = bitcast float* %temp to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !46
  call void @llvm.dbg.declare(metadata float* %temp, metadata !23, metadata !DIExpression()), !dbg !47
  %3 = bitcast float* %sum to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !46
  call void @llvm.dbg.declare(metadata float* %sum, metadata !25, metadata !DIExpression()), !dbg !48
  store float 0.000000e+00, float* %sum, align 4, !dbg !48, !tbaa !49
  %4 = bitcast i32* %len to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %len, metadata !26, metadata !DIExpression()), !dbg !52
  store i32 100, i32* %len, align 4, !dbg !52, !tbaa !35
  %5 = load i32, i32* %argc.addr, align 4, !dbg !53, !tbaa !35
  %cmp = icmp sgt i32 %5, 1, !dbg !55
  br i1 %cmp, label %if.then, label %if.end, !dbg !56

if.then:                                          ; preds = %entry
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !57, !tbaa !40
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !57
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !57, !tbaa !40
  %call = call i32 @atoi(i8* %7) #8, !dbg !58
  store i32 %call, i32* %len, align 4, !dbg !59, !tbaa !35
  br label %if.end, !dbg !60

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %len, align 4, !dbg !61, !tbaa !35
  %9 = zext i32 %8 to i64, !dbg !62
  %10 = load i32, i32* %len, align 4, !dbg !63, !tbaa !35
  %11 = zext i32 %10 to i64, !dbg !62
  %12 = call i8* @llvm.stacksave(), !dbg !62
  store i8* %12, i8** %saved_stack, align 8, !dbg !62
  %13 = mul nuw i64 %9, %11, !dbg !62
  %vla = alloca float, i64 %13, align 16, !dbg !62
  store i64 %9, i64* %__vla_expr0, align 8, !dbg !62
  store i64 %11, i64* %__vla_expr1, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !27, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !29, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata float* %vla, metadata !30, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %i, align 4, !dbg !66, !tbaa !35
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.inc8, %if.end
  %14 = load i32, i32* %i, align 4, !dbg !69, !tbaa !35
  %15 = load i32, i32* %len, align 4, !dbg !71, !tbaa !35
  %cmp1 = icmp slt i32 %14, %15, !dbg !72
  br i1 %cmp1, label %for.body, label %for.end10, !dbg !73

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !74, !tbaa !35
  br label %for.cond2, !dbg !76

for.cond2:                                        ; preds = %for.inc, %for.body
  %16 = load i32, i32* %j, align 4, !dbg !77, !tbaa !35
  %17 = load i32, i32* %len, align 4, !dbg !79, !tbaa !35
  %cmp3 = icmp slt i32 %16, %17, !dbg !80
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !81

for.body4:                                        ; preds = %for.cond2
  %18 = load i32, i32* %i, align 4, !dbg !82, !tbaa !35
  %idxprom = sext i32 %18 to i64, !dbg !83
  %19 = mul nsw i64 %idxprom, %11, !dbg !83
  %arrayidx5 = getelementptr inbounds float, float* %vla, i64 %19, !dbg !83
  %20 = load i32, i32* %j, align 4, !dbg !84, !tbaa !35
  %idxprom6 = sext i32 %20 to i64, !dbg !83
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx5, i64 %idxprom6, !dbg !83
  store float 5.000000e-01, float* %arrayidx7, align 4, !dbg !85, !tbaa !49
  br label %for.inc, !dbg !83

for.inc:                                          ; preds = %for.body4
  %21 = load i32, i32* %j, align 4, !dbg !86, !tbaa !35
  %inc = add nsw i32 %21, 1, !dbg !86
  store i32 %inc, i32* %j, align 4, !dbg !86, !tbaa !35
  br label %for.cond2, !dbg !87, !llvm.loop !88

for.end:                                          ; preds = %for.cond2
  br label %for.inc8, !dbg !89

for.inc8:                                         ; preds = %for.end
  %22 = load i32, i32* %i, align 4, !dbg !91, !tbaa !35
  %inc9 = add nsw i32 %22, 1, !dbg !91
  store i32 %inc9, i32* %i, align 4, !dbg !91, !tbaa !35
  br label %for.cond, !dbg !92, !llvm.loop !93

for.end10:                                        ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, float*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %9, i64 %11, float* %vla, float* %sum), !dbg !95
  %23 = load float, float* %sum, align 4, !dbg !96, !tbaa !49
  %conv = fpext float %23 to double, !dbg !96
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %conv), !dbg !97
  store i32 0, i32* %retval, align 4, !dbg !98
  %24 = load i8*, i8** %saved_stack, align 8, !dbg !99
  call void @llvm.stackrestore(i8* %24), !dbg !99
  %25 = bitcast i32* %len to i8*, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !99
  %26 = bitcast float* %sum to i8*, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !99
  %27 = bitcast float* %temp to i8*, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !99
  %28 = bitcast i32* %j to i8*, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !99
  %29 = bitcast i32* %i to i8*, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !99
  %30 = load i32, i32* %retval, align 4, !dbg !99
  ret i32 %30, !dbg !99
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !100 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !109, !tbaa !40
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !110
  %conv = trunc i64 %call to i32, !dbg !111
  ret i32 %conv, !dbg !112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i64 %vla1, float* nonnull align 4 dereferenceable(4) %u, float* nonnull align 4 dereferenceable(4) %sum) #5 !dbg !113 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %u.addr = alloca float*, align 8
  %sum.addr = alloca float*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %temp = alloca float, align 4
  %i5 = alloca i32, align 4
  %j = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !123, metadata !DIExpression()), !dbg !139
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !124, metadata !DIExpression()), !dbg !139
  store i32* %len, i32** %len.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !125, metadata !DIExpression()), !dbg !140
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !126, metadata !DIExpression()), !dbg !139
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !127, metadata !DIExpression()), !dbg !139
  store float* %u, float** %u.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata float** %u.addr, metadata !128, metadata !DIExpression()), !dbg !143
  store float* %sum, float** %sum.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !129, metadata !DIExpression()), !dbg !144
  %0 = load i32*, i32** %len.addr, align 8, !dbg !145, !tbaa !40
  %1 = load i64, i64* %vla.addr, align 8, !dbg !145, !tbaa !141
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !145, !tbaa !141
  %3 = load float*, float** %u.addr, align 8, !dbg !145, !tbaa !40
  %4 = load float*, float** %sum.addr, align 8, !dbg !145, !tbaa !40
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !130, metadata !DIExpression()), !dbg !139
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !131, metadata !DIExpression()), !dbg !139
  %7 = load i32, i32* %0, align 4, !dbg !146, !tbaa !35
  store i32 %7, i32* %.capture_expr., align 4, !dbg !146, !tbaa !35
  %8 = bitcast i32* %.capture_expr.3 to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !131, metadata !DIExpression()), !dbg !139
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !146, !tbaa !35
  %sub = sub nsw i32 %9, 0, !dbg !145
  %div = sdiv i32 %sub, 1, !dbg !145
  %sub4 = sub nsw i32 %div, 1, !dbg !145
  store i32 %sub4, i32* %.capture_expr.3, align 4, !dbg !145, !tbaa !35
  %10 = bitcast i32* %i to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %i, metadata !132, metadata !DIExpression()), !dbg !139
  store i32 0, i32* %i, align 4, !dbg !147, !tbaa !35
  %11 = bitcast i32* %i to i8*, !dbg !145
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !145
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !146, !tbaa !35
  %cmp = icmp slt i32 0, %12, !dbg !145
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !145

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !133, metadata !DIExpression()), !dbg !139
  store i32 0, i32* %.omp.lb, align 4, !dbg !148, !tbaa !35
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !134, metadata !DIExpression()), !dbg !139
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !145, !tbaa !35
  store i32 %15, i32* %.omp.ub, align 4, !dbg !148, !tbaa !35
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !135, metadata !DIExpression()), !dbg !139
  store i32 1, i32* %.omp.stride, align 4, !dbg !148, !tbaa !35
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !136, metadata !DIExpression()), !dbg !139
  store i32 0, i32* %.omp.is_last, align 4, !dbg !148, !tbaa !35
  %18 = bitcast float* %temp to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !145
  call void @llvm.dbg.declare(metadata float* %temp, metadata !137, metadata !DIExpression()), !dbg !139
  %19 = bitcast i32* %i5 to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !132, metadata !DIExpression()), !dbg !139
  %20 = bitcast i32* %j to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %j, metadata !138, metadata !DIExpression()), !dbg !139
  %21 = bitcast i32* %i6 to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !132, metadata !DIExpression()), !dbg !139
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !145
  %23 = load i32, i32* %22, align 4, !dbg !145, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %23, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !149
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !148, !tbaa !35
  %25 = load i32, i32* %.capture_expr.3, align 4, !dbg !145, !tbaa !35
  %cmp7 = icmp sgt i32 %24, %25, !dbg !148
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !148

cond.true:                                        ; preds = %omp.precond.then
  %26 = load i32, i32* %.capture_expr.3, align 4, !dbg !145, !tbaa !35
  br label %cond.end, !dbg !148

cond.false:                                       ; preds = %omp.precond.then
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !148, !tbaa !35
  br label %cond.end, !dbg !148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !148
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !148, !tbaa !35
  %28 = load i32, i32* %.omp.lb, align 4, !dbg !148, !tbaa !35
  store i32 %28, i32* %.omp.iv, align 4, !dbg !148, !tbaa !35
  br label %omp.inner.for.cond, !dbg !145

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !148, !tbaa !35
  %30 = load i32, i32* %.omp.ub, align 4, !dbg !148, !tbaa !35
  %cmp8 = icmp sle i32 %29, %30, !dbg !145
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !145

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !145

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !148, !tbaa !35
  %mul = mul nsw i32 %31, 1, !dbg !147
  %add = add nsw i32 0, %mul, !dbg !147
  store i32 %add, i32* %i5, align 4, !dbg !147, !tbaa !35
  store i32 0, i32* %j, align 4, !dbg !150, !tbaa !35
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %32 = load i32, i32* %j, align 4, !dbg !153, !tbaa !35
  %33 = load i32, i32* %0, align 4, !dbg !155, !tbaa !35
  %cmp9 = icmp slt i32 %32, %33, !dbg !156
  br i1 %cmp9, label %for.body, label %for.end, !dbg !157

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i5, align 4, !dbg !158, !tbaa !35
  %idxprom = sext i32 %34 to i64, !dbg !160
  %35 = mul nsw i64 %idxprom, %2, !dbg !160
  %arrayidx = getelementptr inbounds float, float* %3, i64 %35, !dbg !160
  %36 = load i32, i32* %j, align 4, !dbg !161, !tbaa !35
  %idxprom10 = sext i32 %36 to i64, !dbg !160
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx, i64 %idxprom10, !dbg !160
  %37 = load float, float* %arrayidx11, align 4, !dbg !160, !tbaa !49
  store float %37, float* %temp, align 4, !dbg !162, !tbaa !49
  %38 = load float, float* %4, align 4, !dbg !163, !tbaa !49
  %39 = load float, float* %temp, align 4, !dbg !164, !tbaa !49
  %40 = load float, float* %temp, align 4, !dbg !165, !tbaa !49
  %mul12 = fmul float %39, %40, !dbg !166
  %add13 = fadd float %38, %mul12, !dbg !167
  store float %add13, float* %4, align 4, !dbg !168, !tbaa !49
  br label %for.inc, !dbg !169

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %j, align 4, !dbg !170, !tbaa !35
  %inc = add nsw i32 %41, 1, !dbg !170
  store i32 %inc, i32* %j, align 4, !dbg !170, !tbaa !35
  br label %for.cond, !dbg !171, !llvm.loop !172

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !173

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !149

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %42 = load i32, i32* %.omp.iv, align 4, !dbg !148, !tbaa !35
  %add14 = add nsw i32 %42, 1, !dbg !145
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !145, !tbaa !35
  br label %omp.inner.for.cond, !dbg !149, !llvm.loop !174

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !149

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %43 = load i32*, i32** %.global_tid..addr, align 8, !dbg !149
  %44 = load i32, i32* %43, align 4, !dbg !149, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %44), !dbg !175
  %45 = bitcast i32* %i6 to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !149
  %46 = bitcast i32* %j to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !149
  %47 = bitcast i32* %i5 to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !149
  %48 = bitcast float* %temp to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !149
  %49 = bitcast i32* %.omp.is_last to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !149
  %50 = bitcast i32* %.omp.stride to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !149
  %51 = bitcast i32* %.omp.ub to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !149
  %52 = bitcast i32* %.omp.lb to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #4, !dbg !149
  br label %omp.precond.end, !dbg !149

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %53 = bitcast i32* %.capture_expr.3 to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #4, !dbg !149
  %54 = bitcast i32* %.capture_expr. to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !149
  %55 = bitcast i32* %.omp.iv to i8*, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !149
  ret void, !dbg !176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i64 %vla1, float* nonnull align 4 dereferenceable(4) %u, float* nonnull align 4 dereferenceable(4) %sum) #5 !dbg !177 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %u.addr = alloca float*, align 8
  %sum.addr = alloca float*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !179, metadata !DIExpression()), !dbg !186
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !180, metadata !DIExpression()), !dbg !186
  store i32* %len, i32** %len.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !181, metadata !DIExpression()), !dbg !186
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !182, metadata !DIExpression()), !dbg !186
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !141
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !183, metadata !DIExpression()), !dbg !186
  store float* %u, float** %u.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata float** %u.addr, metadata !184, metadata !DIExpression()), !dbg !186
  store float* %sum, float** %sum.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = load i32*, i32** %len.addr, align 8, !dbg !187, !tbaa !40
  %1 = load i64, i64* %vla.addr, align 8, !dbg !187, !tbaa !141
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !187, !tbaa !141
  %3 = load float*, float** %u.addr, align 8, !dbg !187, !tbaa !40
  %4 = load float*, float** %sum.addr, align 8, !dbg !187, !tbaa !40
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !187, !tbaa !40
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !187, !tbaa !40
  %7 = load i32*, i32** %len.addr, align 8, !dbg !187, !tbaa !40
  %8 = load float*, float** %u.addr, align 8, !dbg !187, !tbaa !40
  %9 = load float*, float** %sum.addr, align 8, !dbg !187, !tbaa !40
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i64 %2, float* %8, float* %9) #4, !dbg !187
  ret void, !dbg !187
}

; Function Attrs: nounwind
declare !callback !188 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #7

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB022-reductionmissing-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !16, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !25, !26, !27, !29, !30}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 55, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 55, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 57, type: !4)
!22 = !DILocalVariable(name: "j", scope: !15, file: !1, line: 57, type: !4)
!23 = !DILocalVariable(name: "temp", scope: !15, file: !1, line: 58, type: !24)
!24 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!25 = !DILocalVariable(name: "sum", scope: !15, file: !1, line: 58, type: !24)
!26 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 59, type: !4)
!27 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !28, flags: DIFlagArtificial)
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "__vla_expr1", scope: !15, type: !28, flags: DIFlagArtificial)
!30 = !DILocalVariable(name: "u", scope: !15, file: !1, line: 62, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, elements: !32)
!32 = !{!33, !34}
!33 = !DISubrange(count: !27)
!34 = !DISubrange(count: !29)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 55, column: 14, scope: !15)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !DILocation(line: 55, column: 26, scope: !15)
!43 = !DILocation(line: 57, column: 3, scope: !15)
!44 = !DILocation(line: 57, column: 7, scope: !15)
!45 = !DILocation(line: 57, column: 9, scope: !15)
!46 = !DILocation(line: 58, column: 3, scope: !15)
!47 = !DILocation(line: 58, column: 9, scope: !15)
!48 = !DILocation(line: 58, column: 15, scope: !15)
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !37, i64 0}
!51 = !DILocation(line: 59, column: 3, scope: !15)
!52 = !DILocation(line: 59, column: 7, scope: !15)
!53 = !DILocation(line: 60, column: 7, scope: !54)
!54 = distinct !DILexicalBlock(scope: !15, file: !1, line: 60, column: 7)
!55 = !DILocation(line: 60, column: 11, scope: !54)
!56 = !DILocation(line: 60, column: 7, scope: !15)
!57 = !DILocation(line: 61, column: 16, scope: !54)
!58 = !DILocation(line: 61, column: 11, scope: !54)
!59 = !DILocation(line: 61, column: 9, scope: !54)
!60 = !DILocation(line: 61, column: 5, scope: !54)
!61 = !DILocation(line: 62, column: 11, scope: !15)
!62 = !DILocation(line: 62, column: 3, scope: !15)
!63 = !DILocation(line: 62, column: 16, scope: !15)
!64 = !DILocation(line: 0, scope: !15)
!65 = !DILocation(line: 62, column: 9, scope: !15)
!66 = !DILocation(line: 63, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !15, file: !1, line: 63, column: 3)
!68 = !DILocation(line: 63, column: 8, scope: !67)
!69 = !DILocation(line: 63, column: 15, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 63, column: 3)
!71 = !DILocation(line: 63, column: 19, scope: !70)
!72 = !DILocation(line: 63, column: 17, scope: !70)
!73 = !DILocation(line: 63, column: 3, scope: !67)
!74 = !DILocation(line: 64, column: 12, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 64, column: 5)
!76 = !DILocation(line: 64, column: 10, scope: !75)
!77 = !DILocation(line: 64, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 64, column: 5)
!79 = !DILocation(line: 64, column: 21, scope: !78)
!80 = !DILocation(line: 64, column: 19, scope: !78)
!81 = !DILocation(line: 64, column: 5, scope: !75)
!82 = !DILocation(line: 65, column: 11, scope: !78)
!83 = !DILocation(line: 65, column: 9, scope: !78)
!84 = !DILocation(line: 65, column: 14, scope: !78)
!85 = !DILocation(line: 65, column: 17, scope: !78)
!86 = !DILocation(line: 64, column: 27, scope: !78)
!87 = !DILocation(line: 64, column: 5, scope: !78)
!88 = distinct !{!88, !81, !89, !90}
!89 = !DILocation(line: 65, column: 19, scope: !75)
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !DILocation(line: 63, column: 25, scope: !70)
!92 = !DILocation(line: 63, column: 3, scope: !70)
!93 = distinct !{!93, !73, !94, !90}
!94 = !DILocation(line: 65, column: 19, scope: !67)
!95 = !DILocation(line: 67, column: 1, scope: !15)
!96 = !DILocation(line: 74, column: 25, scope: !15)
!97 = !DILocation(line: 74, column: 3, scope: !15)
!98 = !DILocation(line: 75, column: 3, scope: !15)
!99 = !DILocation(line: 76, column: 1, scope: !15)
!100 = distinct !DISubprogram(name: "atoi", scope: !101, file: !101, line: 361, type: !102, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !106)
!101 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!102 = !DISubroutineType(types: !103)
!103 = !{!4, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!106 = !{!107}
!107 = !DILocalVariable(name: "__nptr", arg: 1, scope: !100, file: !101, line: 361, type: !104)
!108 = !DILocation(line: 361, column: 1, scope: !100)
!109 = !DILocation(line: 363, column: 24, scope: !100)
!110 = !DILocation(line: 363, column: 16, scope: !100)
!111 = !DILocation(line: 363, column: 10, scope: !100)
!112 = !DILocation(line: 363, column: 3, scope: !100)
!113 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 68, type: !114, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116, !116, !120, !28, !28, !121, !121}
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!120 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !131, !132, !133, !134, !135, !136, !137, !132, !138, !132}
!123 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !113, type: !116, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !113, type: !116, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "len", arg: 3, scope: !113, file: !1, line: 59, type: !120)
!126 = !DILocalVariable(name: "vla", arg: 4, scope: !113, type: !28, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "vla", arg: 5, scope: !113, type: !28, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "u", arg: 6, scope: !113, file: !1, line: 62, type: !121)
!129 = !DILocalVariable(name: "sum", arg: 7, scope: !113, file: !1, line: 58, type: !121)
!130 = !DILocalVariable(name: ".omp.iv", scope: !113, type: !4, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".capture_expr.", scope: !113, type: !4, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "i", scope: !113, type: !4, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".omp.lb", scope: !113, type: !4, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".omp.ub", scope: !113, type: !4, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".omp.stride", scope: !113, type: !4, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".omp.is_last", scope: !113, type: !4, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "temp", scope: !113, type: !24, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: "j", scope: !113, type: !4, flags: DIFlagArtificial)
!139 = !DILocation(line: 0, scope: !113)
!140 = !DILocation(line: 59, column: 7, scope: !113)
!141 = !{!142, !142, i64 0}
!142 = !{!"long", !37, i64 0}
!143 = !DILocation(line: 62, column: 9, scope: !113)
!144 = !DILocation(line: 58, column: 15, scope: !113)
!145 = !DILocation(line: 68, column: 3, scope: !113)
!146 = !DILocation(line: 68, column: 19, scope: !113)
!147 = !DILocation(line: 68, column: 24, scope: !113)
!148 = !DILocation(line: 68, column: 8, scope: !113)
!149 = !DILocation(line: 67, column: 1, scope: !113)
!150 = !DILocation(line: 69, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !113, file: !1, line: 69, column: 5)
!152 = !DILocation(line: 69, column: 10, scope: !151)
!153 = !DILocation(line: 69, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 69, column: 5)
!155 = !DILocation(line: 69, column: 21, scope: !154)
!156 = !DILocation(line: 69, column: 19, scope: !154)
!157 = !DILocation(line: 69, column: 5, scope: !151)
!158 = !DILocation(line: 71, column: 16, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 70, column: 5)
!160 = !DILocation(line: 71, column: 14, scope: !159)
!161 = !DILocation(line: 71, column: 19, scope: !159)
!162 = !DILocation(line: 71, column: 12, scope: !159)
!163 = !DILocation(line: 72, column: 13, scope: !159)
!164 = !DILocation(line: 72, column: 19, scope: !159)
!165 = !DILocation(line: 72, column: 26, scope: !159)
!166 = !DILocation(line: 72, column: 24, scope: !159)
!167 = !DILocation(line: 72, column: 17, scope: !159)
!168 = !DILocation(line: 72, column: 11, scope: !159)
!169 = !DILocation(line: 73, column: 5, scope: !159)
!170 = !DILocation(line: 69, column: 27, scope: !154)
!171 = !DILocation(line: 69, column: 5, scope: !154)
!172 = distinct !{!172, !157, !173, !90}
!173 = !DILocation(line: 73, column: 5, scope: !151)
!174 = distinct !{!174, !149, !175}
!175 = !DILocation(line: 67, column: 44, scope: !113)
!176 = !DILocation(line: 73, column: 5, scope: !113)
!177 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 67, type: !114, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185}
!179 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !177, type: !116, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !177, type: !116, flags: DIFlagArtificial)
!181 = !DILocalVariable(name: "len", arg: 3, scope: !177, type: !120, flags: DIFlagArtificial)
!182 = !DILocalVariable(name: "vla", arg: 4, scope: !177, type: !28, flags: DIFlagArtificial)
!183 = !DILocalVariable(name: "vla", arg: 5, scope: !177, type: !28, flags: DIFlagArtificial)
!184 = !DILocalVariable(name: "u", arg: 6, scope: !177, type: !121, flags: DIFlagArtificial)
!185 = !DILocalVariable(name: "sum", arg: 7, scope: !177, type: !121, flags: DIFlagArtificial)
!186 = !DILocation(line: 0, scope: !177)
!187 = !DILocation(line: 67, column: 1, scope: !177)
!188 = !{!189}
!189 = !{i64 2, i64 -1, i64 -1, i1 true}
