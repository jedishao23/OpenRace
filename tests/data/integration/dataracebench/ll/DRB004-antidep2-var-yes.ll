; ModuleID = 'DRB004-antidep2-var-yes.c'
source_filename = "DRB004-antidep2-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [39 x i8] c";DRB004-antidep2-var-yes.c;main;67;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [40 x i8] c";DRB004-antidep2-var-yes.c;main;67;36;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !33
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !37
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !40
  %0 = bitcast i32* %i to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !42
  %1 = bitcast i32* %j to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %j, metadata !22, metadata !DIExpression()), !dbg !43
  %2 = bitcast i32* %len to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %len, metadata !23, metadata !DIExpression()), !dbg !45
  store i32 20, i32* %len, align 4, !dbg !45, !tbaa !33
  %3 = load i32, i32* %argc.addr, align 4, !dbg !46, !tbaa !33
  %cmp = icmp sgt i32 %3, 1, !dbg !48
  br i1 %cmp, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !50, !tbaa !38
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !50
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !50, !tbaa !38
  %call = call i32 @atoi(i8* %5) #7, !dbg !51
  store i32 %call, i32* %len, align 4, !dbg !52, !tbaa !33
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %len, align 4, !dbg !54, !tbaa !33
  %7 = zext i32 %6 to i64, !dbg !55
  %8 = load i32, i32* %len, align 4, !dbg !56, !tbaa !33
  %9 = zext i32 %8 to i64, !dbg !55
  %10 = call i8* @llvm.stacksave(), !dbg !55
  store i8* %10, i8** %saved_stack, align 8, !dbg !55
  %11 = mul nuw i64 %7, %9, !dbg !55
  %vla = alloca double, i64 %11, align 16, !dbg !55
  store i64 %7, i64* %__vla_expr0, align 8, !dbg !55
  store i64 %9, i64* %__vla_expr1, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !24, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !26, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata double* %vla, metadata !27, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %i, align 4, !dbg !59, !tbaa !33
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc8, %if.end
  %12 = load i32, i32* %i, align 4, !dbg !62, !tbaa !33
  %13 = load i32, i32* %len, align 4, !dbg !64, !tbaa !33
  %cmp1 = icmp slt i32 %12, %13, !dbg !65
  br i1 %cmp1, label %for.body, label %for.end10, !dbg !66

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !67, !tbaa !33
  br label %for.cond2, !dbg !69

for.cond2:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4, !dbg !70, !tbaa !33
  %15 = load i32, i32* %len, align 4, !dbg !72, !tbaa !33
  %cmp3 = icmp slt i32 %14, %15, !dbg !73
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !74

for.body4:                                        ; preds = %for.cond2
  %16 = load i32, i32* %i, align 4, !dbg !75, !tbaa !33
  %idxprom = sext i32 %16 to i64, !dbg !76
  %17 = mul nsw i64 %idxprom, %9, !dbg !76
  %arrayidx5 = getelementptr inbounds double, double* %vla, i64 %17, !dbg !76
  %18 = load i32, i32* %j, align 4, !dbg !77, !tbaa !33
  %idxprom6 = sext i32 %18 to i64, !dbg !76
  %arrayidx7 = getelementptr inbounds double, double* %arrayidx5, i64 %idxprom6, !dbg !76
  store double 5.000000e-01, double* %arrayidx7, align 8, !dbg !78, !tbaa !79
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body4
  %19 = load i32, i32* %j, align 4, !dbg !81, !tbaa !33
  %inc = add nsw i32 %19, 1, !dbg !81
  store i32 %inc, i32* %j, align 4, !dbg !81, !tbaa !33
  br label %for.cond2, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond2
  br label %for.inc8, !dbg !84

for.inc8:                                         ; preds = %for.end
  %20 = load i32, i32* %i, align 4, !dbg !86, !tbaa !33
  %inc9 = add nsw i32 %20, 1, !dbg !86
  store i32 %inc9, i32* %i, align 4, !dbg !86, !tbaa !33
  br label %for.cond, !dbg !87, !llvm.loop !88

for.end10:                                        ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %7, i64 %9, double* %vla), !dbg !90
  store i32 0, i32* %retval, align 4, !dbg !91
  %21 = load i8*, i8** %saved_stack, align 8, !dbg !92
  call void @llvm.stackrestore(i8* %21), !dbg !92
  %22 = bitcast i32* %len to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !92
  %23 = bitcast i32* %j to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !92
  %24 = bitcast i32* %i to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !92
  %25 = load i32, i32* %retval, align 4, !dbg !92
  ret i32 %25, !dbg !92
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !93 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !102, !tbaa !38
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !103
  %conv = trunc i64 %call to i32, !dbg !104
  ret i32 %conv, !dbg !105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %a) #5 !dbg !106 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !116, metadata !DIExpression()), !dbg !130
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !117, metadata !DIExpression()), !dbg !130
  store i32* %len, i32** %len.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !118, metadata !DIExpression()), !dbg !131
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !132
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !119, metadata !DIExpression()), !dbg !130
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !132
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !120, metadata !DIExpression()), !dbg !130
  store double* %a, double** %a.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !121, metadata !DIExpression()), !dbg !134
  %0 = load i32*, i32** %len.addr, align 8, !dbg !135, !tbaa !38
  %1 = load i64, i64* %vla.addr, align 8, !dbg !135, !tbaa !132
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !135, !tbaa !132
  %3 = load double*, double** %a.addr, align 8, !dbg !135, !tbaa !38
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !122, metadata !DIExpression()), !dbg !130
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !123, metadata !DIExpression()), !dbg !130
  %6 = load i32, i32* %0, align 4, !dbg !136, !tbaa !33
  %sub = sub nsw i32 %6, 1, !dbg !137
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !136, !tbaa !33
  %7 = bitcast i32* %.capture_expr.3 to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !123, metadata !DIExpression()), !dbg !130
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !137, !tbaa !33
  %sub4 = sub nsw i32 %8, 0, !dbg !135
  %div = sdiv i32 %sub4, 1, !dbg !135
  %sub5 = sub nsw i32 %div, 1, !dbg !135
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !135, !tbaa !33
  %9 = bitcast i32* %i to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %i, metadata !124, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %i, align 4, !dbg !138, !tbaa !33
  %10 = bitcast i32* %i to i8*, !dbg !135
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !135
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !137, !tbaa !33
  %cmp = icmp slt i32 0, %11, !dbg !135
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !135

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !125, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %.omp.lb, align 4, !dbg !139, !tbaa !33
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !126, metadata !DIExpression()), !dbg !130
  %14 = load i32, i32* %.capture_expr.3, align 4, !dbg !135, !tbaa !33
  store i32 %14, i32* %.omp.ub, align 4, !dbg !139, !tbaa !33
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !127, metadata !DIExpression()), !dbg !130
  store i32 1, i32* %.omp.stride, align 4, !dbg !139, !tbaa !33
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !128, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %.omp.is_last, align 4, !dbg !139, !tbaa !33
  %17 = bitcast i32* %j to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %j, metadata !129, metadata !DIExpression()), !dbg !130
  %18 = bitcast i32* %i6 to i8*, !dbg !135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !124, metadata !DIExpression()), !dbg !130
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !135
  %20 = load i32, i32* %19, align 4, !dbg !135, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !140
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !139, !tbaa !33
  %22 = load i32, i32* %.capture_expr.3, align 4, !dbg !135, !tbaa !33
  %cmp7 = icmp sgt i32 %21, %22, !dbg !139
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !139

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.3, align 4, !dbg !135, !tbaa !33
  br label %cond.end, !dbg !139

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !139, !tbaa !33
  br label %cond.end, !dbg !139

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !139
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !139, !tbaa !33
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !139, !tbaa !33
  store i32 %25, i32* %.omp.iv, align 4, !dbg !139, !tbaa !33
  br label %omp.inner.for.cond, !dbg !135

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !139, !tbaa !33
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !139, !tbaa !33
  %cmp8 = icmp sle i32 %26, %27, !dbg !135
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !135

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !135

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !139, !tbaa !33
  %mul = mul nsw i32 %28, 1, !dbg !138
  %add = add nsw i32 0, %mul, !dbg !138
  store i32 %add, i32* %i6, align 4, !dbg !138, !tbaa !33
  store i32 0, i32* %j, align 4, !dbg !141, !tbaa !33
  br label %for.cond, !dbg !144

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %29 = load i32, i32* %j, align 4, !dbg !145, !tbaa !33
  %30 = load i32, i32* %0, align 4, !dbg !147, !tbaa !33
  %cmp9 = icmp slt i32 %29, %30, !dbg !148
  br i1 %cmp9, label %for.body, label %for.end, !dbg !149

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i6, align 4, !dbg !150, !tbaa !33
  %add10 = add nsw i32 %31, 1, !dbg !152
  %idxprom = sext i32 %add10 to i64, !dbg !153
  %32 = mul nsw i64 %idxprom, %2, !dbg !153
  %arrayidx = getelementptr inbounds double, double* %3, i64 %32, !dbg !153
  %33 = load i32, i32* %j, align 4, !dbg !154, !tbaa !33
  %idxprom11 = sext i32 %33 to i64, !dbg !153
  %arrayidx12 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom11, !dbg !153
  %34 = load double, double* %arrayidx12, align 8, !dbg !153, !tbaa !79
  %35 = load i32, i32* %i6, align 4, !dbg !155, !tbaa !33
  %idxprom13 = sext i32 %35 to i64, !dbg !156
  %36 = mul nsw i64 %idxprom13, %2, !dbg !156
  %arrayidx14 = getelementptr inbounds double, double* %3, i64 %36, !dbg !156
  %37 = load i32, i32* %j, align 4, !dbg !157, !tbaa !33
  %idxprom15 = sext i32 %37 to i64, !dbg !156
  %arrayidx16 = getelementptr inbounds double, double* %arrayidx14, i64 %idxprom15, !dbg !156
  %38 = load double, double* %arrayidx16, align 8, !dbg !158, !tbaa !79
  %add17 = fadd double %38, %34, !dbg !158
  store double %add17, double* %arrayidx16, align 8, !dbg !158, !tbaa !79
  br label %for.inc, !dbg !159

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %j, align 4, !dbg !160, !tbaa !33
  %add18 = add nsw i32 %39, 1, !dbg !160
  store i32 %add18, i32* %j, align 4, !dbg !160, !tbaa !33
  br label %for.cond, !dbg !161, !llvm.loop !162

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !164

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !140

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %40 = load i32, i32* %.omp.iv, align 4, !dbg !139, !tbaa !33
  %add19 = add nsw i32 %40, 1, !dbg !135
  store i32 %add19, i32* %.omp.iv, align 4, !dbg !135, !tbaa !33
  br label %omp.inner.for.cond, !dbg !140, !llvm.loop !165

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !140

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !140
  %42 = load i32, i32* %41, align 4, !dbg !140, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %42), !dbg !166
  %43 = bitcast i32* %i6 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !140
  %44 = bitcast i32* %j to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !140
  %45 = bitcast i32* %.omp.is_last to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !140
  %46 = bitcast i32* %.omp.stride to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !140
  %47 = bitcast i32* %.omp.ub to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !140
  %48 = bitcast i32* %.omp.lb to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !140
  br label %omp.precond.end, !dbg !140

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %49 = bitcast i32* %.capture_expr.3 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !140
  %50 = bitcast i32* %.capture_expr. to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !140
  %51 = bitcast i32* %.omp.iv to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !140
  ret void, !dbg !167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %a) #5 !dbg !168 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !170, metadata !DIExpression()), !dbg !176
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !171, metadata !DIExpression()), !dbg !176
  store i32* %len, i32** %len.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !172, metadata !DIExpression()), !dbg !176
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !132
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !173, metadata !DIExpression()), !dbg !176
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !132
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !174, metadata !DIExpression()), !dbg !176
  store double* %a, double** %a.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i32*, i32** %len.addr, align 8, !dbg !177, !tbaa !38
  %1 = load i64, i64* %vla.addr, align 8, !dbg !177, !tbaa !132
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !177, !tbaa !132
  %3 = load double*, double** %a.addr, align 8, !dbg !177, !tbaa !38
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !177, !tbaa !38
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !177, !tbaa !38
  %6 = load i32*, i32** %len.addr, align 8, !dbg !177, !tbaa !38
  %7 = load double*, double** %a.addr, align 8, !dbg !177, !tbaa !38
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i64 %2, double* %7) #4, !dbg !177
  ret void, !dbg !177
}

; Function Attrs: nounwind
declare !callback !178 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB004-antidep2-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !16, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !24, !26, !27}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 53, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 53, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 55, type: !4)
!22 = !DILocalVariable(name: "j", scope: !15, file: !1, line: 55, type: !4)
!23 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 56, type: !4)
!24 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !25, flags: DIFlagArtificial)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "__vla_expr1", scope: !15, type: !25, flags: DIFlagArtificial)
!27 = !DILocalVariable(name: "a", scope: !15, file: !1, line: 61, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !30)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !{!31, !32}
!31 = !DISubrange(count: !24)
!32 = !DISubrange(count: !26)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 53, column: 14, scope: !15)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !35, i64 0}
!40 = !DILocation(line: 53, column: 25, scope: !15)
!41 = !DILocation(line: 55, column: 3, scope: !15)
!42 = !DILocation(line: 55, column: 7, scope: !15)
!43 = !DILocation(line: 55, column: 10, scope: !15)
!44 = !DILocation(line: 56, column: 3, scope: !15)
!45 = !DILocation(line: 56, column: 7, scope: !15)
!46 = !DILocation(line: 58, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !15, file: !1, line: 58, column: 7)
!48 = !DILocation(line: 58, column: 11, scope: !47)
!49 = !DILocation(line: 58, column: 7, scope: !15)
!50 = !DILocation(line: 59, column: 16, scope: !47)
!51 = !DILocation(line: 59, column: 11, scope: !47)
!52 = !DILocation(line: 59, column: 9, scope: !47)
!53 = !DILocation(line: 59, column: 5, scope: !47)
!54 = !DILocation(line: 61, column: 12, scope: !15)
!55 = !DILocation(line: 61, column: 3, scope: !15)
!56 = !DILocation(line: 61, column: 17, scope: !15)
!57 = !DILocation(line: 0, scope: !15)
!58 = !DILocation(line: 61, column: 10, scope: !15)
!59 = !DILocation(line: 63, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !15, file: !1, line: 63, column: 3)
!61 = !DILocation(line: 63, column: 8, scope: !60)
!62 = !DILocation(line: 63, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 63, column: 3)
!64 = !DILocation(line: 63, column: 16, scope: !63)
!65 = !DILocation(line: 63, column: 14, scope: !63)
!66 = !DILocation(line: 63, column: 3, scope: !60)
!67 = !DILocation(line: 64, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 64, column: 5)
!69 = !DILocation(line: 64, column: 10, scope: !68)
!70 = !DILocation(line: 64, column: 15, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 64, column: 5)
!72 = !DILocation(line: 64, column: 17, scope: !71)
!73 = !DILocation(line: 64, column: 16, scope: !71)
!74 = !DILocation(line: 64, column: 5, scope: !68)
!75 = !DILocation(line: 65, column: 9, scope: !71)
!76 = !DILocation(line: 65, column: 7, scope: !71)
!77 = !DILocation(line: 65, column: 12, scope: !71)
!78 = !DILocation(line: 65, column: 15, scope: !71)
!79 = !{!80, !80, i64 0}
!80 = !{!"double", !35, i64 0}
!81 = !DILocation(line: 64, column: 23, scope: !71)
!82 = !DILocation(line: 64, column: 5, scope: !71)
!83 = distinct !{!83, !74, !84, !85}
!84 = !DILocation(line: 65, column: 17, scope: !68)
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !DILocation(line: 63, column: 22, scope: !63)
!87 = !DILocation(line: 63, column: 3, scope: !63)
!88 = distinct !{!88, !66, !89, !85}
!89 = !DILocation(line: 65, column: 17, scope: !60)
!90 = !DILocation(line: 67, column: 1, scope: !15)
!91 = !DILocation(line: 73, column: 3, scope: !15)
!92 = !DILocation(line: 74, column: 1, scope: !15)
!93 = distinct !DISubprogram(name: "atoi", scope: !94, file: !94, line: 361, type: !95, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !99)
!94 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!95 = !DISubroutineType(types: !96)
!96 = !{!4, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!99 = !{!100}
!100 = !DILocalVariable(name: "__nptr", arg: 1, scope: !93, file: !94, line: 361, type: !97)
!101 = !DILocation(line: 361, column: 1, scope: !93)
!102 = !DILocation(line: 363, column: 24, scope: !93)
!103 = !DILocation(line: 363, column: 16, scope: !93)
!104 = !DILocation(line: 363, column: 10, scope: !93)
!105 = !DILocation(line: 363, column: 3, scope: !93)
!106 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 68, type: !107, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !109, !109, !113, !25, !25, !114}
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!113 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !29, size: 64)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !123, !124, !125, !126, !127, !128, !129, !124}
!116 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !106, type: !109, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !106, type: !109, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "len", arg: 3, scope: !106, file: !1, line: 56, type: !113)
!119 = !DILocalVariable(name: "vla", arg: 4, scope: !106, type: !25, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "vla", arg: 5, scope: !106, type: !25, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "a", arg: 6, scope: !106, file: !1, line: 61, type: !114)
!122 = !DILocalVariable(name: ".omp.iv", scope: !106, type: !4, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".capture_expr.", scope: !106, type: !4, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "i", scope: !106, type: !4, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".omp.lb", scope: !106, type: !4, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".omp.ub", scope: !106, type: !4, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".omp.stride", scope: !106, type: !4, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".omp.is_last", scope: !106, type: !4, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "j", scope: !106, type: !4, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !106)
!131 = !DILocation(line: 56, column: 7, scope: !106)
!132 = !{!133, !133, i64 0}
!133 = !{!"long", !35, i64 0}
!134 = !DILocation(line: 61, column: 10, scope: !106)
!135 = !DILocation(line: 68, column: 3, scope: !106)
!136 = !DILocation(line: 68, column: 19, scope: !106)
!137 = !DILocation(line: 68, column: 23, scope: !106)
!138 = !DILocation(line: 68, column: 28, scope: !106)
!139 = !DILocation(line: 68, column: 8, scope: !106)
!140 = !DILocation(line: 67, column: 1, scope: !106)
!141 = !DILocation(line: 69, column: 12, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 69, column: 5)
!143 = distinct !DILexicalBlock(scope: !106, file: !1, line: 68, column: 36)
!144 = !DILocation(line: 69, column: 10, scope: !142)
!145 = !DILocation(line: 69, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 69, column: 5)
!147 = !DILocation(line: 69, column: 21, scope: !146)
!148 = !DILocation(line: 69, column: 19, scope: !146)
!149 = !DILocation(line: 69, column: 5, scope: !142)
!150 = !DILocation(line: 70, column: 20, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 69, column: 35)
!152 = !DILocation(line: 70, column: 22, scope: !151)
!153 = !DILocation(line: 70, column: 18, scope: !151)
!154 = !DILocation(line: 70, column: 27, scope: !151)
!155 = !DILocation(line: 70, column: 9, scope: !151)
!156 = !DILocation(line: 70, column: 7, scope: !151)
!157 = !DILocation(line: 70, column: 12, scope: !151)
!158 = !DILocation(line: 70, column: 15, scope: !151)
!159 = !DILocation(line: 71, column: 5, scope: !151)
!160 = !DILocation(line: 69, column: 29, scope: !146)
!161 = !DILocation(line: 69, column: 5, scope: !146)
!162 = distinct !{!162, !149, !163, !85}
!163 = !DILocation(line: 71, column: 5, scope: !142)
!164 = !DILocation(line: 72, column: 3, scope: !143)
!165 = distinct !{!165, !140, !166}
!166 = !DILocation(line: 67, column: 36, scope: !106)
!167 = !DILocation(line: 72, column: 3, scope: !106)
!168 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 67, type: !107, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170, !171, !172, !173, !174, !175}
!170 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !168, type: !109, flags: DIFlagArtificial)
!171 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !168, type: !109, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: "len", arg: 3, scope: !168, type: !113, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: "vla", arg: 4, scope: !168, type: !25, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: "vla", arg: 5, scope: !168, type: !25, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: "a", arg: 6, scope: !168, type: !114, flags: DIFlagArtificial)
!176 = !DILocation(line: 0, scope: !168)
!177 = !DILocation(line: 67, column: 1, scope: !168)
!178 = !{!179}
!179 = !{i64 2, i64 -1, i64 -1, i1 true}
