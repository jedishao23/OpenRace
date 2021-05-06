; ModuleID = 'DRB112-linear-orig-no.c'
source_filename = "DRB112-linear-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [37 x i8] c";DRB112-linear-orig-no.c;main;66;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [38 x i8] c";DRB112-linear-orig-no.c;main;66;35;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"c[50]=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %len to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %len, metadata !16, metadata !DIExpression()), !dbg !36
  store i32 100, i32* %len, align 4, !dbg !36, !tbaa !37
  %1 = load i32, i32* %len, align 4, !dbg !41, !tbaa !37
  %2 = zext i32 %1 to i64, !dbg !42
  %3 = call i8* @llvm.stacksave(), !dbg !42
  store i8* %3, i8** %saved_stack, align 8, !dbg !42
  %vla = alloca double, i64 %2, align 16, !dbg !42
  store i64 %2, i64* %__vla_expr0, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !17, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata double* %vla, metadata !19, metadata !DIExpression()), !dbg !44
  %4 = load i32, i32* %len, align 4, !dbg !45, !tbaa !37
  %5 = zext i32 %4 to i64, !dbg !42
  %vla1 = alloca double, i64 %5, align 16, !dbg !42
  store i64 %5, i64* %__vla_expr1, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !23, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata double* %vla1, metadata !24, metadata !DIExpression()), !dbg !46
  %6 = load i32, i32* %len, align 4, !dbg !47, !tbaa !37
  %7 = zext i32 %6 to i64, !dbg !42
  %vla2 = alloca double, i64 %7, align 16, !dbg !42
  store i64 %7, i64* %__vla_expr2, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata i64* %__vla_expr2, metadata !28, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata double* %vla2, metadata !29, metadata !DIExpression()), !dbg !48
  %8 = bitcast i32* %i to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !33, metadata !DIExpression()), !dbg !50
  %9 = bitcast i32* %j to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %j, metadata !34, metadata !DIExpression()), !dbg !51
  store i32 0, i32* %j, align 4, !dbg !51, !tbaa !37
  store i32 0, i32* %i, align 4, !dbg !52, !tbaa !37
  br label %for.cond, !dbg !54

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !dbg !55, !tbaa !37
  %11 = load i32, i32* %len, align 4, !dbg !57, !tbaa !37
  %cmp = icmp slt i32 %10, %11, !dbg !58
  br i1 %cmp, label %for.body, label %for.end, !dbg !59

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !60, !tbaa !37
  %conv = sitofp i32 %12 to double, !dbg !62
  %div = fdiv double %conv, 2.000000e+00, !dbg !63
  %13 = load i32, i32* %i, align 4, !dbg !64, !tbaa !37
  %idxprom = sext i32 %13 to i64, !dbg !65
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !65
  store double %div, double* %arrayidx, align 8, !dbg !66, !tbaa !67
  %14 = load i32, i32* %i, align 4, !dbg !69, !tbaa !37
  %conv3 = sitofp i32 %14 to double, !dbg !70
  %div4 = fdiv double %conv3, 3.000000e+00, !dbg !71
  %15 = load i32, i32* %i, align 4, !dbg !72, !tbaa !37
  %idxprom5 = sext i32 %15 to i64, !dbg !73
  %arrayidx6 = getelementptr inbounds double, double* %vla1, i64 %idxprom5, !dbg !73
  store double %div4, double* %arrayidx6, align 8, !dbg !74, !tbaa !67
  %16 = load i32, i32* %i, align 4, !dbg !75, !tbaa !37
  %conv7 = sitofp i32 %16 to double, !dbg !76
  %div8 = fdiv double %conv7, 7.000000e+00, !dbg !77
  %17 = load i32, i32* %i, align 4, !dbg !78, !tbaa !37
  %idxprom9 = sext i32 %17 to i64, !dbg !79
  %arrayidx10 = getelementptr inbounds double, double* %vla2, i64 %idxprom9, !dbg !79
  store double %div8, double* %arrayidx10, align 8, !dbg !80, !tbaa !67
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !82, !tbaa !37
  %inc = add nsw i32 %18, 1, !dbg !82
  store i32 %inc, i32* %i, align 4, !dbg !82, !tbaa !37
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, double*, i32*, i64, double*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %7, double* %vla2, i32* %j, i64 %2, double* %vla, i64 %5, double* %vla1), !dbg !87
  %arrayidx11 = getelementptr inbounds double, double* %vla2, i64 50, !dbg !88
  %19 = load double, double* %arrayidx11, align 16, !dbg !88, !tbaa !67
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %19), !dbg !89
  store i32 0, i32* %retval, align 4, !dbg !90
  %20 = bitcast i32* %j to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3, !dbg !91
  %21 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3, !dbg !91
  %22 = load i8*, i8** %saved_stack, align 8, !dbg !91
  call void @llvm.stackrestore(i8* %22), !dbg !91
  %23 = bitcast i32* %len to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3, !dbg !91
  %24 = load i32, i32* %retval, align 4, !dbg !91
  ret i32 %24, !dbg !91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, double* nonnull align 8 dereferenceable(8) %c, i32* nonnull align 4 dereferenceable(4) %j, i64 %vla1, double* nonnull align 8 dereferenceable(8) %a, i64 %vla3, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !92 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %c.addr = alloca double*, align 8
  %j.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr4 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.5 = alloca i32, align 4
  %i = alloca i32, align 4
  %.linear.start = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !123
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !123
  store i32* %len, i32** %len.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !104, metadata !DIExpression()), !dbg !124
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !105, metadata !DIExpression()), !dbg !123
  store double* %c, double** %c.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %c.addr, metadata !106, metadata !DIExpression()), !dbg !127
  store i32* %j, i32** %j.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !107, metadata !DIExpression()), !dbg !128
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !108, metadata !DIExpression()), !dbg !123
  store double* %a, double** %a.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !109, metadata !DIExpression()), !dbg !129
  store i64 %vla3, i64* %vla.addr4, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr4, metadata !110, metadata !DIExpression()), !dbg !123
  store double* %b, double** %b.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !111, metadata !DIExpression()), !dbg !130
  %0 = load i32*, i32** %len.addr, align 8, !dbg !131, !tbaa !121
  %1 = load i64, i64* %vla.addr, align 8, !dbg !131, !tbaa !125
  %2 = load double*, double** %c.addr, align 8, !dbg !131, !tbaa !121
  %3 = load i32*, i32** %j.addr, align 8, !dbg !131, !tbaa !121
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !131, !tbaa !125
  %5 = load double*, double** %a.addr, align 8, !dbg !131, !tbaa !121
  %6 = load i64, i64* %vla.addr4, align 8, !dbg !131, !tbaa !125
  %7 = load double*, double** %b.addr, align 8, !dbg !131, !tbaa !121
  %8 = bitcast i32* %.omp.iv to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !112, metadata !DIExpression()), !dbg !123
  %9 = bitcast i32* %.capture_expr. to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !113, metadata !DIExpression()), !dbg !123
  %10 = load i32, i32* %0, align 4, !dbg !132, !tbaa !37
  store i32 %10, i32* %.capture_expr., align 4, !dbg !132, !tbaa !37
  %11 = bitcast i32* %.capture_expr.5 to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.5, metadata !113, metadata !DIExpression()), !dbg !123
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !132, !tbaa !37
  %sub = sub nsw i32 %12, 0, !dbg !131
  %div = sdiv i32 %sub, 1, !dbg !131
  %sub6 = sub nsw i32 %div, 1, !dbg !131
  store i32 %sub6, i32* %.capture_expr.5, align 4, !dbg !131, !tbaa !37
  %13 = bitcast i32* %i to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %i, metadata !114, metadata !DIExpression()), !dbg !123
  store i32 0, i32* %i, align 4, !dbg !133, !tbaa !37
  %14 = bitcast i32* %i to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3, !dbg !131
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !132, !tbaa !37
  %cmp = icmp slt i32 0, %15, !dbg !131
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !131

omp.precond.then:                                 ; preds = %entry
  %16 = bitcast i32* %.linear.start to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.linear.start, metadata !115, metadata !DIExpression()), !dbg !123
  %17 = load i32, i32* %3, align 4, !dbg !134, !tbaa !37
  store i32 %17, i32* %.linear.start, align 4, !dbg !131, !tbaa !37
  %18 = bitcast i32* %.omp.lb to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !116, metadata !DIExpression()), !dbg !123
  store i32 0, i32* %.omp.lb, align 4, !dbg !135, !tbaa !37
  %19 = bitcast i32* %.omp.ub to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !117, metadata !DIExpression()), !dbg !123
  %20 = load i32, i32* %.capture_expr.5, align 4, !dbg !131, !tbaa !37
  store i32 %20, i32* %.omp.ub, align 4, !dbg !135, !tbaa !37
  %21 = bitcast i32* %.omp.stride to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !118, metadata !DIExpression()), !dbg !123
  store i32 1, i32* %.omp.stride, align 4, !dbg !135, !tbaa !37
  %22 = bitcast i32* %.omp.is_last to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !119, metadata !DIExpression()), !dbg !123
  store i32 0, i32* %.omp.is_last, align 4, !dbg !135, !tbaa !37
  %23 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %24 = load i32, i32* %23, align 4, !dbg !131, !tbaa !37
  call void @__kmpc_barrier(%struct.ident_t* @1, i32 %24), !dbg !131
  %25 = bitcast i32* %i7 to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !114, metadata !DIExpression()), !dbg !123
  %26 = bitcast i32* %j8 to i8*, !dbg !131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %j8, metadata !120, metadata !DIExpression()), !dbg !123
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %28 = load i32, i32* %27, align 4, !dbg !131, !tbaa !37
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %28, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !136
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !37
  %30 = load i32, i32* %.capture_expr.5, align 4, !dbg !131, !tbaa !37
  %cmp9 = icmp sgt i32 %29, %30, !dbg !135
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !135

cond.true:                                        ; preds = %omp.precond.then
  %31 = load i32, i32* %.capture_expr.5, align 4, !dbg !131, !tbaa !37
  br label %cond.end, !dbg !135

cond.false:                                       ; preds = %omp.precond.then
  %32 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !37
  br label %cond.end, !dbg !135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %32, %cond.false ], !dbg !135
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !135, !tbaa !37
  %33 = load i32, i32* %.omp.lb, align 4, !dbg !135, !tbaa !37
  store i32 %33, i32* %.omp.iv, align 4, !dbg !135, !tbaa !37
  br label %omp.inner.for.cond, !dbg !131

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !37
  %35 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !37
  %cmp10 = icmp sle i32 %34, %35, !dbg !131
  br i1 %cmp10, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !131

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !131

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !37
  %mul = mul nsw i32 %36, 1, !dbg !133
  %add = add nsw i32 0, %mul, !dbg !133
  store i32 %add, i32* %i7, align 4, !dbg !133, !tbaa !37
  %37 = load i32, i32* %.linear.start, align 4, !dbg !134, !tbaa !37
  %38 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !37
  %mul11 = mul nsw i32 %38, 1, !dbg !134
  %add12 = add nsw i32 %37, %mul11, !dbg !134
  store i32 %add12, i32* %j8, align 4, !dbg !134, !tbaa !37
  %39 = load i32, i32* %i7, align 4, !dbg !137, !tbaa !37
  %idxprom = sext i32 %39 to i64, !dbg !139
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom, !dbg !139
  %40 = load double, double* %arrayidx, align 8, !dbg !139, !tbaa !67
  %41 = load i32, i32* %i7, align 4, !dbg !140, !tbaa !37
  %idxprom13 = sext i32 %41 to i64, !dbg !141
  %arrayidx14 = getelementptr inbounds double, double* %7, i64 %idxprom13, !dbg !141
  %42 = load double, double* %arrayidx14, align 8, !dbg !141, !tbaa !67
  %mul15 = fmul double %40, %42, !dbg !142
  %43 = load i32, i32* %j8, align 4, !dbg !143, !tbaa !37
  %idxprom16 = sext i32 %43 to i64, !dbg !144
  %arrayidx17 = getelementptr inbounds double, double* %2, i64 %idxprom16, !dbg !144
  %44 = load double, double* %arrayidx17, align 8, !dbg !145, !tbaa !67
  %add18 = fadd double %44, %mul15, !dbg !145
  store double %add18, double* %arrayidx17, align 8, !dbg !145, !tbaa !67
  %45 = load i32, i32* %j8, align 4, !dbg !146, !tbaa !37
  %inc = add nsw i32 %45, 1, !dbg !146
  store i32 %inc, i32* %j8, align 4, !dbg !146, !tbaa !37
  br label %omp.body.continue, !dbg !147

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !136

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %46 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !37
  %add19 = add nsw i32 %46, 1, !dbg !131
  store i32 %add19, i32* %.omp.iv, align 4, !dbg !131, !tbaa !37
  br label %omp.inner.for.cond, !dbg !136, !llvm.loop !148

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !136

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %47 = load i32*, i32** %.global_tid..addr, align 8, !dbg !136
  %48 = load i32, i32* %47, align 4, !dbg !136, !tbaa !37
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %48), !dbg !149
  %49 = bitcast i32* %j8 to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3, !dbg !136
  %50 = bitcast i32* %i7 to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3, !dbg !136
  %51 = load i32, i32* %.omp.is_last, align 4, !dbg !136, !tbaa !37
  %52 = icmp ne i32 %51, 0, !dbg !136
  br i1 %52, label %.omp.linear.pu, label %.omp.linear.pu.done, !dbg !136

.omp.linear.pu:                                   ; preds = %omp.loop.exit
  %53 = load i32, i32* %.linear.start, align 4, !dbg !134, !tbaa !37
  %54 = load i32, i32* %.capture_expr.5, align 4, !dbg !131, !tbaa !37
  %add20 = add nsw i32 %54, 1, !dbg !131
  %mul21 = mul nsw i32 %add20, 1, !dbg !134
  %add22 = add nsw i32 %53, %mul21, !dbg !134
  store i32 %add22, i32* %3, align 4, !dbg !134, !tbaa !37
  br label %.omp.linear.pu.done, !dbg !136

.omp.linear.pu.done:                              ; preds = %.omp.linear.pu, %omp.loop.exit
  %55 = bitcast i32* %.omp.is_last to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3, !dbg !136
  %56 = bitcast i32* %.omp.stride to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #3, !dbg !136
  %57 = bitcast i32* %.omp.ub to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #3, !dbg !136
  %58 = bitcast i32* %.omp.lb to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #3, !dbg !136
  %59 = bitcast i32* %.linear.start to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3, !dbg !136
  br label %omp.precond.end, !dbg !136

omp.precond.end:                                  ; preds = %.omp.linear.pu.done, %entry
  %60 = bitcast i32* %.capture_expr.5 to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3, !dbg !136
  %61 = bitcast i32* %.capture_expr. to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3, !dbg !136
  %62 = bitcast i32* %.omp.iv to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3, !dbg !136
  ret void, !dbg !150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_barrier(%struct.ident_t*, i32)

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i64 %vla, double* nonnull align 8 dereferenceable(8) %c, i32* nonnull align 4 dereferenceable(4) %j, i64 %vla1, double* nonnull align 8 dereferenceable(8) %a, i64 %vla3, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !151 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %c.addr = alloca double*, align 8
  %j.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr4 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !153, metadata !DIExpression()), !dbg !163
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !154, metadata !DIExpression()), !dbg !163
  store i32* %len, i32** %len.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !155, metadata !DIExpression()), !dbg !163
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !156, metadata !DIExpression()), !dbg !163
  store double* %c, double** %c.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %c.addr, metadata !157, metadata !DIExpression()), !dbg !163
  store i32* %j, i32** %j.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !158, metadata !DIExpression()), !dbg !163
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !159, metadata !DIExpression()), !dbg !163
  store double* %a, double** %a.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !160, metadata !DIExpression()), !dbg !163
  store i64 %vla3, i64* %vla.addr4, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr4, metadata !161, metadata !DIExpression()), !dbg !163
  store double* %b, double** %b.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = load i32*, i32** %len.addr, align 8, !dbg !164, !tbaa !121
  %1 = load i64, i64* %vla.addr, align 8, !dbg !164, !tbaa !125
  %2 = load double*, double** %c.addr, align 8, !dbg !164, !tbaa !121
  %3 = load i32*, i32** %j.addr, align 8, !dbg !164, !tbaa !121
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !164, !tbaa !125
  %5 = load double*, double** %a.addr, align 8, !dbg !164, !tbaa !121
  %6 = load i64, i64* %vla.addr4, align 8, !dbg !164, !tbaa !125
  %7 = load double*, double** %b.addr, align 8, !dbg !164, !tbaa !121
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !164, !tbaa !121
  %9 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !164, !tbaa !121
  %10 = load i32*, i32** %len.addr, align 8, !dbg !164, !tbaa !121
  %11 = load double*, double** %c.addr, align 8, !dbg !164, !tbaa !121
  %12 = load i32*, i32** %j.addr, align 8, !dbg !164, !tbaa !121
  %13 = load double*, double** %a.addr, align 8, !dbg !164, !tbaa !121
  %14 = load double*, double** %b.addr, align 8, !dbg !164, !tbaa !121
  call void @.omp_outlined._debug__(i32* %8, i32* %9, i32* %10, i64 %1, double* %11, i32* %12, i64 %4, double* %13, i64 %6, double* %14) #3, !dbg !164
  ret void, !dbg !164
}

; Function Attrs: nounwind
declare !callback !165 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB112-linear-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"clang version 11.1.0"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !12, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !19, !23, !24, !28, !29, !33, !34}
!16 = !DILocalVariable(name: "len", scope: !11, file: !1, line: 55, type: !14)
!17 = !DILocalVariable(name: "__vla_expr0", scope: !11, type: !18, flags: DIFlagArtificial)
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DILocalVariable(name: "a", scope: !11, file: !1, line: 56, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: !17)
!23 = !DILocalVariable(name: "__vla_expr1", scope: !11, type: !18, flags: DIFlagArtificial)
!24 = !DILocalVariable(name: "b", scope: !11, file: !1, line: 56, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: !23)
!28 = !DILocalVariable(name: "__vla_expr2", scope: !11, type: !18, flags: DIFlagArtificial)
!29 = !DILocalVariable(name: "c", scope: !11, file: !1, line: 56, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: !28)
!33 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 57, type: !14)
!34 = !DILocalVariable(name: "j", scope: !11, file: !1, line: 57, type: !14)
!35 = !DILocation(line: 55, column: 3, scope: !11)
!36 = !DILocation(line: 55, column: 7, scope: !11)
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 56, column: 12, scope: !11)
!42 = !DILocation(line: 56, column: 3, scope: !11)
!43 = !DILocation(line: 0, scope: !11)
!44 = !DILocation(line: 56, column: 10, scope: !11)
!45 = !DILocation(line: 56, column: 20, scope: !11)
!46 = !DILocation(line: 56, column: 18, scope: !11)
!47 = !DILocation(line: 56, column: 28, scope: !11)
!48 = !DILocation(line: 56, column: 26, scope: !11)
!49 = !DILocation(line: 57, column: 3, scope: !11)
!50 = !DILocation(line: 57, column: 7, scope: !11)
!51 = !DILocation(line: 57, column: 9, scope: !11)
!52 = !DILocation(line: 59, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !11, file: !1, line: 59, column: 3)
!54 = !DILocation(line: 59, column: 8, scope: !53)
!55 = !DILocation(line: 59, column: 12, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 59, column: 3)
!57 = !DILocation(line: 59, column: 14, scope: !56)
!58 = !DILocation(line: 59, column: 13, scope: !56)
!59 = !DILocation(line: 59, column: 3, scope: !53)
!60 = !DILocation(line: 61, column: 19, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 60, column: 3)
!62 = !DILocation(line: 61, column: 11, scope: !61)
!63 = !DILocation(line: 61, column: 21, scope: !61)
!64 = !DILocation(line: 61, column: 7, scope: !61)
!65 = !DILocation(line: 61, column: 5, scope: !61)
!66 = !DILocation(line: 61, column: 9, scope: !61)
!67 = !{!68, !68, i64 0}
!68 = !{!"double", !39, i64 0}
!69 = !DILocation(line: 62, column: 19, scope: !61)
!70 = !DILocation(line: 62, column: 11, scope: !61)
!71 = !DILocation(line: 62, column: 21, scope: !61)
!72 = !DILocation(line: 62, column: 7, scope: !61)
!73 = !DILocation(line: 62, column: 5, scope: !61)
!74 = !DILocation(line: 62, column: 9, scope: !61)
!75 = !DILocation(line: 63, column: 19, scope: !61)
!76 = !DILocation(line: 63, column: 11, scope: !61)
!77 = !DILocation(line: 63, column: 21, scope: !61)
!78 = !DILocation(line: 63, column: 7, scope: !61)
!79 = !DILocation(line: 63, column: 5, scope: !61)
!80 = !DILocation(line: 63, column: 9, scope: !61)
!81 = !DILocation(line: 64, column: 3, scope: !61)
!82 = !DILocation(line: 59, column: 19, scope: !56)
!83 = !DILocation(line: 59, column: 3, scope: !56)
!84 = distinct !{!84, !59, !85, !86}
!85 = !DILocation(line: 64, column: 3, scope: !53)
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !DILocation(line: 66, column: 1, scope: !11)
!88 = !DILocation(line: 73, column: 24, scope: !11)
!89 = !DILocation(line: 73, column: 3, scope: !11)
!90 = !DILocation(line: 74, column: 3, scope: !11)
!91 = !DILocation(line: 75, column: 1, scope: !11)
!92 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 67, type: !93, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95, !95, !99, !18, !100, !99, !18, !100, !18, !100}
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!99 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !113, !114, !115, !116, !117, !118, !119, !114, !120}
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !92, type: !95, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !92, type: !95, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "len", arg: 3, scope: !92, file: !1, line: 55, type: !99)
!105 = !DILocalVariable(name: "vla", arg: 4, scope: !92, type: !18, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "c", arg: 5, scope: !92, file: !1, line: 56, type: !100)
!107 = !DILocalVariable(name: "j", arg: 6, scope: !92, file: !1, line: 57, type: !99)
!108 = !DILocalVariable(name: "vla", arg: 7, scope: !92, type: !18, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "a", arg: 8, scope: !92, file: !1, line: 56, type: !100)
!110 = !DILocalVariable(name: "vla", arg: 9, scope: !92, type: !18, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "b", arg: 10, scope: !92, file: !1, line: 56, type: !100)
!112 = !DILocalVariable(name: ".omp.iv", scope: !92, type: !14, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".capture_expr.", scope: !92, type: !14, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "i", scope: !92, type: !14, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".linear.start", scope: !92, type: !14, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".omp.lb", scope: !92, type: !14, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".omp.ub", scope: !92, type: !14, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.stride", scope: !92, type: !14, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.is_last", scope: !92, type: !14, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "j", scope: !92, type: !14, flags: DIFlagArtificial)
!121 = !{!122, !122, i64 0}
!122 = !{!"any pointer", !39, i64 0}
!123 = !DILocation(line: 0, scope: !92)
!124 = !DILocation(line: 55, column: 7, scope: !92)
!125 = !{!126, !126, i64 0}
!126 = !{!"long", !39, i64 0}
!127 = !DILocation(line: 56, column: 26, scope: !92)
!128 = !DILocation(line: 57, column: 9, scope: !92)
!129 = !DILocation(line: 56, column: 10, scope: !92)
!130 = !DILocation(line: 56, column: 18, scope: !92)
!131 = !DILocation(line: 67, column: 3, scope: !92)
!132 = !DILocation(line: 67, column: 14, scope: !92)
!133 = !DILocation(line: 67, column: 18, scope: !92)
!134 = !DILocation(line: 66, column: 33, scope: !92)
!135 = !DILocation(line: 67, column: 8, scope: !92)
!136 = !DILocation(line: 66, column: 1, scope: !92)
!137 = !DILocation(line: 69, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !92, file: !1, line: 68, column: 3)
!139 = !DILocation(line: 69, column: 11, scope: !138)
!140 = !DILocation(line: 69, column: 18, scope: !138)
!141 = !DILocation(line: 69, column: 16, scope: !138)
!142 = !DILocation(line: 69, column: 15, scope: !138)
!143 = !DILocation(line: 69, column: 7, scope: !138)
!144 = !DILocation(line: 69, column: 5, scope: !138)
!145 = !DILocation(line: 69, column: 9, scope: !138)
!146 = !DILocation(line: 70, column: 6, scope: !138)
!147 = !DILocation(line: 71, column: 3, scope: !138)
!148 = distinct !{!148, !136, !149}
!149 = !DILocation(line: 66, column: 35, scope: !92)
!150 = !DILocation(line: 71, column: 3, scope: !92)
!151 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !93, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!153 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !151, type: !95, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !151, type: !95, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: "len", arg: 3, scope: !151, type: !99, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: "vla", arg: 4, scope: !151, type: !18, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: "c", arg: 5, scope: !151, type: !100, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: "j", arg: 6, scope: !151, type: !99, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: "vla", arg: 7, scope: !151, type: !18, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: "a", arg: 8, scope: !151, type: !100, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: "vla", arg: 9, scope: !151, type: !18, flags: DIFlagArtificial)
!162 = !DILocalVariable(name: "b", arg: 10, scope: !151, type: !100, flags: DIFlagArtificial)
!163 = !DILocation(line: 0, scope: !151)
!164 = !DILocation(line: 66, column: 1, scope: !151)
!165 = !{!166}
!166 = !{i64 2, i64 -1, i64 -1, i1 true}
