; ModuleID = 'DRB021-reductionmissing-orig-yes.c'
source_filename = "DRB021-reductionmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [48 x i8] c";DRB021-reductionmissing-orig-yes.c;main;65;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [49 x i8] c";DRB021-reductionmissing-orig-yes.c;main;65;44;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca float, align 4
  %sum = alloca float, align 4
  %len = alloca i32, align 4
  %u = alloca [100 x [100 x float]], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !33
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !36
  %0 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !38
  %1 = bitcast i32* %j to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !39
  %2 = bitcast float* %temp to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !40
  call void @llvm.dbg.declare(metadata float* %temp, metadata !21, metadata !DIExpression()), !dbg !41
  %3 = bitcast float* %sum to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !40
  call void @llvm.dbg.declare(metadata float* %sum, metadata !23, metadata !DIExpression()), !dbg !42
  store float 0.000000e+00, float* %sum, align 4, !dbg !42, !tbaa !43
  %4 = bitcast i32* %len to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %len, metadata !24, metadata !DIExpression()), !dbg !46
  store i32 100, i32* %len, align 4, !dbg !46, !tbaa !29
  %5 = bitcast [100 x [100 x float]]* %u to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* %5) #4, !dbg !47
  call void @llvm.dbg.declare(metadata [100 x [100 x float]]* %u, metadata !25, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %i, align 4, !dbg !49, !tbaa !29
  br label %for.cond, !dbg !51

for.cond:                                         ; preds = %for.inc6, %entry
  %6 = load i32, i32* %i, align 4, !dbg !52, !tbaa !29
  %7 = load i32, i32* %len, align 4, !dbg !54, !tbaa !29
  %cmp = icmp slt i32 %6, %7, !dbg !55
  br i1 %cmp, label %for.body, label %for.end8, !dbg !56

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !57, !tbaa !29
  br label %for.cond1, !dbg !59

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4, !dbg !60, !tbaa !29
  %9 = load i32, i32* %len, align 4, !dbg !62, !tbaa !29
  %cmp2 = icmp slt i32 %8, %9, !dbg !63
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !64

for.body3:                                        ; preds = %for.cond1
  %10 = load i32, i32* %i, align 4, !dbg !65, !tbaa !29
  %idxprom = sext i32 %10 to i64, !dbg !66
  %arrayidx = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %u, i64 0, i64 %idxprom, !dbg !66
  %11 = load i32, i32* %j, align 4, !dbg !67, !tbaa !29
  %idxprom4 = sext i32 %11 to i64, !dbg !66
  %arrayidx5 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx, i64 0, i64 %idxprom4, !dbg !66
  store float 5.000000e-01, float* %arrayidx5, align 4, !dbg !68, !tbaa !43
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %for.body3
  %12 = load i32, i32* %j, align 4, !dbg !69, !tbaa !29
  %inc = add nsw i32 %12, 1, !dbg !69
  store i32 %inc, i32* %j, align 4, !dbg !69, !tbaa !29
  br label %for.cond1, !dbg !70, !llvm.loop !71

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !72

for.inc6:                                         ; preds = %for.end
  %13 = load i32, i32* %i, align 4, !dbg !74, !tbaa !29
  %inc7 = add nsw i32 %13, 1, !dbg !74
  store i32 %inc7, i32* %i, align 4, !dbg !74, !tbaa !29
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end8:                                         ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x [100 x float]]*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x [100 x float]]* %u, float* %sum), !dbg !78
  %14 = load float, float* %sum, align 4, !dbg !79, !tbaa !43
  %conv = fpext float %14 to double, !dbg !79
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %conv), !dbg !80
  %15 = bitcast [100 x [100 x float]]* %u to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* %15) #4, !dbg !81
  %16 = bitcast i32* %len to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !81
  %17 = bitcast float* %sum to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !81
  %18 = bitcast float* %temp to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !81
  %19 = bitcast i32* %j to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !81
  %20 = bitcast i32* %i to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !81
  ret i32 0, !dbg !82
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [100 x [100 x float]]* nonnull align 4 dereferenceable(40000) %u, float* nonnull align 4 dereferenceable(4) %sum) #3 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %u.addr = alloca [100 x [100 x float]]*, align 8
  %sum.addr = alloca float*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %temp = alloca float, align 4
  %i3 = alloca i32, align 4
  %j = alloca i32, align 4
  %i4 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !108
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !108
  store i32* %len, i32** %len.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !96, metadata !DIExpression()), !dbg !109
  store [100 x [100 x float]]* %u, [100 x [100 x float]]** %u.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata [100 x [100 x float]]** %u.addr, metadata !97, metadata !DIExpression()), !dbg !110
  store float* %sum, float** %sum.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !98, metadata !DIExpression()), !dbg !111
  %0 = load i32*, i32** %len.addr, align 8, !dbg !112, !tbaa !34
  %1 = load [100 x [100 x float]]*, [100 x [100 x float]]** %u.addr, align 8, !dbg !112, !tbaa !34
  %2 = load float*, float** %sum.addr, align 8, !dbg !112, !tbaa !34
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !99, metadata !DIExpression()), !dbg !108
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !100, metadata !DIExpression()), !dbg !108
  %5 = load i32, i32* %0, align 4, !dbg !113, !tbaa !29
  store i32 %5, i32* %.capture_expr., align 4, !dbg !113, !tbaa !29
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !100, metadata !DIExpression()), !dbg !108
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !113, !tbaa !29
  %sub = sub nsw i32 %7, 0, !dbg !112
  %div = sdiv i32 %sub, 1, !dbg !112
  %sub2 = sub nsw i32 %div, 1, !dbg !112
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !112, !tbaa !29
  %8 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i, metadata !101, metadata !DIExpression()), !dbg !108
  store i32 0, i32* %i, align 4, !dbg !114, !tbaa !29
  %9 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !112
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !113, !tbaa !29
  %cmp = icmp slt i32 0, %10, !dbg !112
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !112

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !102, metadata !DIExpression()), !dbg !108
  store i32 0, i32* %.omp.lb, align 4, !dbg !115, !tbaa !29
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !103, metadata !DIExpression()), !dbg !108
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !112, !tbaa !29
  store i32 %13, i32* %.omp.ub, align 4, !dbg !115, !tbaa !29
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !104, metadata !DIExpression()), !dbg !108
  store i32 1, i32* %.omp.stride, align 4, !dbg !115, !tbaa !29
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !105, metadata !DIExpression()), !dbg !108
  store i32 0, i32* %.omp.is_last, align 4, !dbg !115, !tbaa !29
  %16 = bitcast float* %temp to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !112
  call void @llvm.dbg.declare(metadata float* %temp, metadata !106, metadata !DIExpression()), !dbg !108
  %17 = bitcast i32* %i3 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !101, metadata !DIExpression()), !dbg !108
  %18 = bitcast i32* %j to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %j, metadata !107, metadata !DIExpression()), !dbg !108
  %19 = bitcast i32* %i4 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !101, metadata !DIExpression()), !dbg !108
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112
  %21 = load i32, i32* %20, align 4, !dbg !112, !tbaa !29
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !116
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !115, !tbaa !29
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !112, !tbaa !29
  %cmp5 = icmp sgt i32 %22, %23, !dbg !115
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !115

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !112, !tbaa !29
  br label %cond.end, !dbg !115

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !115, !tbaa !29
  br label %cond.end, !dbg !115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !115
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !115, !tbaa !29
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !115, !tbaa !29
  store i32 %26, i32* %.omp.iv, align 4, !dbg !115, !tbaa !29
  br label %omp.inner.for.cond, !dbg !112

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !115, !tbaa !29
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !115, !tbaa !29
  %cmp6 = icmp sle i32 %27, %28, !dbg !112
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !112

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !112

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !115, !tbaa !29
  %mul = mul nsw i32 %29, 1, !dbg !114
  %add = add nsw i32 0, %mul, !dbg !114
  store i32 %add, i32* %i3, align 4, !dbg !114, !tbaa !29
  store i32 0, i32* %j, align 4, !dbg !117, !tbaa !29
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %30 = load i32, i32* %j, align 4, !dbg !120, !tbaa !29
  %31 = load i32, i32* %0, align 4, !dbg !122, !tbaa !29
  %cmp7 = icmp slt i32 %30, %31, !dbg !123
  br i1 %cmp7, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i3, align 4, !dbg !125, !tbaa !29
  %idxprom = sext i32 %32 to i64, !dbg !127
  %arrayidx = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %1, i64 0, i64 %idxprom, !dbg !127
  %33 = load i32, i32* %j, align 4, !dbg !128, !tbaa !29
  %idxprom8 = sext i32 %33 to i64, !dbg !127
  %arrayidx9 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx, i64 0, i64 %idxprom8, !dbg !127
  %34 = load float, float* %arrayidx9, align 4, !dbg !127, !tbaa !43
  store float %34, float* %temp, align 4, !dbg !129, !tbaa !43
  %35 = load float, float* %2, align 4, !dbg !130, !tbaa !43
  %36 = load float, float* %temp, align 4, !dbg !131, !tbaa !43
  %37 = load float, float* %temp, align 4, !dbg !132, !tbaa !43
  %mul10 = fmul float %36, %37, !dbg !133
  %add11 = fadd float %35, %mul10, !dbg !134
  store float %add11, float* %2, align 4, !dbg !135, !tbaa !43
  br label %for.inc, !dbg !136

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %j, align 4, !dbg !137, !tbaa !29
  %inc = add nsw i32 %38, 1, !dbg !137
  store i32 %inc, i32* %j, align 4, !dbg !137, !tbaa !29
  br label %for.cond, !dbg !138, !llvm.loop !139

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !140

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !116

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !115, !tbaa !29
  %add12 = add nsw i32 %39, 1, !dbg !112
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !112, !tbaa !29
  br label %omp.inner.for.cond, !dbg !116, !llvm.loop !141

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !116

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %40 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116
  %41 = load i32, i32* %40, align 4, !dbg !116, !tbaa !29
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %41), !dbg !142
  %42 = bitcast i32* %i4 to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !116
  %43 = bitcast i32* %j to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !116
  %44 = bitcast i32* %i3 to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !116
  %45 = bitcast float* %temp to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !116
  %46 = bitcast i32* %.omp.is_last to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !116
  %47 = bitcast i32* %.omp.stride to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !116
  %48 = bitcast i32* %.omp.ub to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !116
  %49 = bitcast i32* %.omp.lb to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !116
  br label %omp.precond.end, !dbg !116

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %50 = bitcast i32* %.capture_expr.1 to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !116
  %51 = bitcast i32* %.capture_expr. to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !116
  %52 = bitcast i32* %.omp.iv to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #4, !dbg !116
  ret void, !dbg !143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [100 x [100 x float]]* nonnull align 4 dereferenceable(40000) %u, float* nonnull align 4 dereferenceable(4) %sum) #3 !dbg !144 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %u.addr = alloca [100 x [100 x float]]*, align 8
  %sum.addr = alloca float*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !146, metadata !DIExpression()), !dbg !151
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !147, metadata !DIExpression()), !dbg !151
  store i32* %len, i32** %len.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !148, metadata !DIExpression()), !dbg !151
  store [100 x [100 x float]]* %u, [100 x [100 x float]]** %u.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata [100 x [100 x float]]** %u.addr, metadata !149, metadata !DIExpression()), !dbg !151
  store float* %sum, float** %sum.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load i32*, i32** %len.addr, align 8, !dbg !152, !tbaa !34
  %1 = load [100 x [100 x float]]*, [100 x [100 x float]]** %u.addr, align 8, !dbg !152, !tbaa !34
  %2 = load float*, float** %sum.addr, align 8, !dbg !152, !tbaa !34
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !152, !tbaa !34
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !152, !tbaa !34
  %5 = load i32*, i32** %len.addr, align 8, !dbg !152, !tbaa !34
  %6 = load [100 x [100 x float]]*, [100 x [100 x float]]** %u.addr, align 8, !dbg !152, !tbaa !34
  %7 = load float*, float** %sum.addr, align 8, !dbg !152, !tbaa !34
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x [100 x float]]* %6, float* %7) #4, !dbg !152
  ret void, !dbg !152
}

; Function Attrs: nounwind
declare !callback !153 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB021-reductionmissing-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !10, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !23, !24, !25}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 54, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 54, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 56, type: !12)
!20 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 56, type: !12)
!21 = !DILocalVariable(name: "temp", scope: !9, file: !1, line: 57, type: !22)
!22 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!23 = !DILocalVariable(name: "sum", scope: !9, file: !1, line: 57, type: !22)
!24 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 58, type: !12)
!25 = !DILocalVariable(name: "u", scope: !9, file: !1, line: 60, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 320000, elements: !27)
!27 = !{!28, !28}
!28 = !DISubrange(count: 100)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 54, column: 14, scope: !9)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !31, i64 0}
!36 = !DILocation(line: 54, column: 26, scope: !9)
!37 = !DILocation(line: 56, column: 3, scope: !9)
!38 = !DILocation(line: 56, column: 7, scope: !9)
!39 = !DILocation(line: 56, column: 9, scope: !9)
!40 = !DILocation(line: 57, column: 3, scope: !9)
!41 = !DILocation(line: 57, column: 9, scope: !9)
!42 = !DILocation(line: 57, column: 15, scope: !9)
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !31, i64 0}
!45 = !DILocation(line: 58, column: 3, scope: !9)
!46 = !DILocation(line: 58, column: 7, scope: !9)
!47 = !DILocation(line: 60, column: 3, scope: !9)
!48 = !DILocation(line: 60, column: 9, scope: !9)
!49 = !DILocation(line: 61, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !9, file: !1, line: 61, column: 3)
!51 = !DILocation(line: 61, column: 8, scope: !50)
!52 = !DILocation(line: 61, column: 15, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 61, column: 3)
!54 = !DILocation(line: 61, column: 19, scope: !53)
!55 = !DILocation(line: 61, column: 17, scope: !53)
!56 = !DILocation(line: 61, column: 3, scope: !50)
!57 = !DILocation(line: 62, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 62, column: 5)
!59 = !DILocation(line: 62, column: 10, scope: !58)
!60 = !DILocation(line: 62, column: 17, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 62, column: 5)
!62 = !DILocation(line: 62, column: 21, scope: !61)
!63 = !DILocation(line: 62, column: 19, scope: !61)
!64 = !DILocation(line: 62, column: 5, scope: !58)
!65 = !DILocation(line: 63, column: 11, scope: !61)
!66 = !DILocation(line: 63, column: 9, scope: !61)
!67 = !DILocation(line: 63, column: 14, scope: !61)
!68 = !DILocation(line: 63, column: 17, scope: !61)
!69 = !DILocation(line: 62, column: 27, scope: !61)
!70 = !DILocation(line: 62, column: 5, scope: !61)
!71 = distinct !{!71, !64, !72, !73}
!72 = !DILocation(line: 63, column: 19, scope: !58)
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !DILocation(line: 61, column: 25, scope: !53)
!75 = !DILocation(line: 61, column: 3, scope: !53)
!76 = distinct !{!76, !56, !77, !73}
!77 = !DILocation(line: 63, column: 19, scope: !50)
!78 = !DILocation(line: 65, column: 1, scope: !9)
!79 = !DILocation(line: 73, column: 25, scope: !9)
!80 = !DILocation(line: 73, column: 3, scope: !9)
!81 = !DILocation(line: 75, column: 1, scope: !9)
!82 = !DILocation(line: 74, column: 3, scope: !9)
!83 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 66, type: !84, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !90, !91, !92}
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!90 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !100, !101, !102, !103, !104, !105, !106, !101, !107, !101}
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !86, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !86, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "len", arg: 3, scope: !83, file: !1, line: 58, type: !90)
!97 = !DILocalVariable(name: "u", arg: 4, scope: !83, file: !1, line: 60, type: !91)
!98 = !DILocalVariable(name: "sum", arg: 5, scope: !83, file: !1, line: 57, type: !92)
!99 = !DILocalVariable(name: ".omp.iv", scope: !83, type: !12, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".capture_expr.", scope: !83, type: !12, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "i", scope: !83, type: !12, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.lb", scope: !83, type: !12, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.ub", scope: !83, type: !12, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.stride", scope: !83, type: !12, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.is_last", scope: !83, type: !12, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "temp", scope: !83, type: !22, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "j", scope: !83, type: !12, flags: DIFlagArtificial)
!108 = !DILocation(line: 0, scope: !83)
!109 = !DILocation(line: 58, column: 7, scope: !83)
!110 = !DILocation(line: 60, column: 9, scope: !83)
!111 = !DILocation(line: 57, column: 15, scope: !83)
!112 = !DILocation(line: 66, column: 3, scope: !83)
!113 = !DILocation(line: 66, column: 19, scope: !83)
!114 = !DILocation(line: 66, column: 24, scope: !83)
!115 = !DILocation(line: 66, column: 8, scope: !83)
!116 = !DILocation(line: 65, column: 1, scope: !83)
!117 = !DILocation(line: 67, column: 12, scope: !118)
!118 = distinct !DILexicalBlock(scope: !83, file: !1, line: 67, column: 5)
!119 = !DILocation(line: 67, column: 10, scope: !118)
!120 = !DILocation(line: 67, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 67, column: 5)
!122 = !DILocation(line: 67, column: 21, scope: !121)
!123 = !DILocation(line: 67, column: 19, scope: !121)
!124 = !DILocation(line: 67, column: 5, scope: !118)
!125 = !DILocation(line: 69, column: 16, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 68, column: 5)
!127 = !DILocation(line: 69, column: 14, scope: !126)
!128 = !DILocation(line: 69, column: 19, scope: !126)
!129 = !DILocation(line: 69, column: 12, scope: !126)
!130 = !DILocation(line: 70, column: 13, scope: !126)
!131 = !DILocation(line: 70, column: 19, scope: !126)
!132 = !DILocation(line: 70, column: 26, scope: !126)
!133 = !DILocation(line: 70, column: 24, scope: !126)
!134 = !DILocation(line: 70, column: 17, scope: !126)
!135 = !DILocation(line: 70, column: 11, scope: !126)
!136 = !DILocation(line: 71, column: 5, scope: !126)
!137 = !DILocation(line: 67, column: 27, scope: !121)
!138 = !DILocation(line: 67, column: 5, scope: !121)
!139 = distinct !{!139, !124, !140, !73}
!140 = !DILocation(line: 71, column: 5, scope: !118)
!141 = distinct !{!141, !116, !142}
!142 = !DILocation(line: 65, column: 44, scope: !83)
!143 = !DILocation(line: 71, column: 5, scope: !83)
!144 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !84, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146, !147, !148, !149, !150}
!146 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !144, type: !86, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !144, type: !86, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "len", arg: 3, scope: !144, type: !90, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "u", arg: 4, scope: !144, type: !91, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "sum", arg: 5, scope: !144, type: !92, flags: DIFlagArtificial)
!151 = !DILocation(line: 0, scope: !144)
!152 = !DILocation(line: 65, column: 1, scope: !144)
!153 = !{!154}
!154 = !{i64 2, i64 -1, i64 -1, i1 true}
