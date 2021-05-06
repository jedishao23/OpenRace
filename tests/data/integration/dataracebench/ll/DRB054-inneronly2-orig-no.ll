; ModuleID = 'DRB054-inneronly2-orig-no.c'
source_filename = "DRB054-inneronly2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [41 x i8] c";DRB054-inneronly2-orig-no.c;main;62;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [42 x i8] c";DRB054-inneronly2-orig-no.c;main;62;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !29
  %1 = bitcast i32* %j to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !17, metadata !DIExpression()), !dbg !30
  %2 = bitcast i32* %n to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %n, metadata !18, metadata !DIExpression()), !dbg !32
  store i32 100, i32* %n, align 4, !dbg !32, !tbaa !33
  %3 = bitcast i32* %m to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %m, metadata !19, metadata !DIExpression()), !dbg !37
  store i32 100, i32* %m, align 4, !dbg !37, !tbaa !33
  %4 = load i32, i32* %n, align 4, !dbg !38, !tbaa !33
  %5 = zext i32 %4 to i64, !dbg !39
  %6 = load i32, i32* %m, align 4, !dbg !40, !tbaa !33
  %7 = zext i32 %6 to i64, !dbg !39
  %8 = call i8* @llvm.stacksave(), !dbg !39
  store i8* %8, i8** %saved_stack, align 8, !dbg !39
  %9 = mul nuw i64 %5, %7, !dbg !39
  %vla = alloca double, i64 %9, align 16, !dbg !39
  store i64 %5, i64* %__vla_expr0, align 8, !dbg !39
  store i64 %7, i64* %__vla_expr1, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !20, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !22, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata double* %vla, metadata !23, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %i, align 4, !dbg !43, !tbaa !33
  br label %for.cond, !dbg !45

for.cond:                                         ; preds = %for.inc6, %entry
  %10 = load i32, i32* %i, align 4, !dbg !46, !tbaa !33
  %11 = load i32, i32* %n, align 4, !dbg !48, !tbaa !33
  %cmp = icmp slt i32 %10, %11, !dbg !49
  br i1 %cmp, label %for.body, label %for.end8, !dbg !50

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !51, !tbaa !33
  br label %for.cond1, !dbg !53

for.cond1:                                        ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4, !dbg !54, !tbaa !33
  %13 = load i32, i32* %n, align 4, !dbg !56, !tbaa !33
  %cmp2 = icmp slt i32 %12, %13, !dbg !57
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !58

for.body3:                                        ; preds = %for.cond1
  %14 = load i32, i32* %i, align 4, !dbg !59, !tbaa !33
  %15 = load i32, i32* %j, align 4, !dbg !60, !tbaa !33
  %mul = mul nsw i32 %14, %15, !dbg !61
  %conv = sitofp i32 %mul to double, !dbg !62
  %16 = load i32, i32* %i, align 4, !dbg !63, !tbaa !33
  %idxprom = sext i32 %16 to i64, !dbg !64
  %17 = mul nsw i64 %idxprom, %7, !dbg !64
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %17, !dbg !64
  %18 = load i32, i32* %j, align 4, !dbg !65, !tbaa !33
  %idxprom4 = sext i32 %18 to i64, !dbg !64
  %arrayidx5 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom4, !dbg !64
  store double %conv, double* %arrayidx5, align 8, !dbg !66, !tbaa !67
  br label %for.inc, !dbg !64

for.inc:                                          ; preds = %for.body3
  %19 = load i32, i32* %j, align 4, !dbg !69, !tbaa !33
  %inc = add nsw i32 %19, 1, !dbg !69
  store i32 %inc, i32* %j, align 4, !dbg !69, !tbaa !33
  br label %for.cond1, !dbg !70, !llvm.loop !71

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !72

for.inc6:                                         ; preds = %for.end
  %20 = load i32, i32* %i, align 4, !dbg !74, !tbaa !33
  %inc7 = add nsw i32 %20, 1, !dbg !74
  store i32 %inc7, i32* %i, align 4, !dbg !74, !tbaa !33
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end8:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4, !dbg !78, !tbaa !33
  br label %for.cond9, !dbg !80

for.cond9:                                        ; preds = %for.inc13, %for.end8
  %21 = load i32, i32* %i, align 4, !dbg !81, !tbaa !33
  %22 = load i32, i32* %n, align 4, !dbg !83, !tbaa !33
  %cmp10 = icmp slt i32 %21, %22, !dbg !84
  br i1 %cmp10, label %for.body12, label %for.end15, !dbg !85

for.body12:                                       ; preds = %for.cond9
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, i64 %5, i64 %7, double* %vla, i32* %i), !dbg !86
  br label %for.inc13, !dbg !87

for.inc13:                                        ; preds = %for.body12
  %23 = load i32, i32* %i, align 4, !dbg !89, !tbaa !33
  %inc14 = add nsw i32 %23, 1, !dbg !89
  store i32 %inc14, i32* %i, align 4, !dbg !89, !tbaa !33
  br label %for.cond9, !dbg !90, !llvm.loop !91

for.end15:                                        ; preds = %for.cond9
  store i32 0, i32* %retval, align 4, !dbg !93
  %24 = load i8*, i8** %saved_stack, align 8, !dbg !94
  call void @llvm.stackrestore(i8* %24), !dbg !94
  %25 = bitcast i32* %m to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3, !dbg !94
  %26 = bitcast i32* %n to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3, !dbg !94
  %27 = bitcast i32* %j to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3, !dbg !94
  %28 = bitcast i32* %i to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3, !dbg !94
  %29 = load i32, i32* %retval, align 4, !dbg !94
  ret i32 %29, !dbg !94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %m, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b, i32* nonnull align 4 dereferenceable(4) %i) #4 !dbg !95 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %j = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j5 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !105, metadata !DIExpression()), !dbg !121
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !106, metadata !DIExpression()), !dbg !121
  store i32* %m, i32** %m.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !107, metadata !DIExpression()), !dbg !122
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !123
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !108, metadata !DIExpression()), !dbg !121
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !123
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !109, metadata !DIExpression()), !dbg !121
  store double* %b, double** %b.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !110, metadata !DIExpression()), !dbg !125
  store i32* %i, i32** %i.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !111, metadata !DIExpression()), !dbg !126
  %0 = load i32*, i32** %m.addr, align 8, !dbg !127, !tbaa !119
  %1 = load i64, i64* %vla.addr, align 8, !dbg !127, !tbaa !123
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !127, !tbaa !123
  %3 = load double*, double** %b.addr, align 8, !dbg !127, !tbaa !119
  %4 = load i32*, i32** %i.addr, align 8, !dbg !127, !tbaa !119
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !112, metadata !DIExpression()), !dbg !121
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !113, metadata !DIExpression()), !dbg !121
  %7 = load i32, i32* %0, align 4, !dbg !128, !tbaa !33
  store i32 %7, i32* %.capture_expr., align 4, !dbg !128, !tbaa !33
  %8 = bitcast i32* %.capture_expr.3 to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !113, metadata !DIExpression()), !dbg !121
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !128, !tbaa !33
  %sub = sub nsw i32 %9, 1, !dbg !127
  %div = sdiv i32 %sub, 1, !dbg !127
  %sub4 = sub nsw i32 %div, 1, !dbg !127
  store i32 %sub4, i32* %.capture_expr.3, align 4, !dbg !127, !tbaa !33
  %10 = bitcast i32* %j to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %j, metadata !114, metadata !DIExpression()), !dbg !121
  store i32 1, i32* %j, align 4, !dbg !129, !tbaa !33
  %11 = bitcast i32* %j to i8*, !dbg !127
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3, !dbg !127
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !128, !tbaa !33
  %cmp = icmp slt i32 1, %12, !dbg !127
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !127

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !115, metadata !DIExpression()), !dbg !121
  store i32 0, i32* %.omp.lb, align 4, !dbg !130, !tbaa !33
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !116, metadata !DIExpression()), !dbg !121
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !127, !tbaa !33
  store i32 %15, i32* %.omp.ub, align 4, !dbg !130, !tbaa !33
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !117, metadata !DIExpression()), !dbg !121
  store i32 1, i32* %.omp.stride, align 4, !dbg !130, !tbaa !33
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !118, metadata !DIExpression()), !dbg !121
  store i32 0, i32* %.omp.is_last, align 4, !dbg !130, !tbaa !33
  %18 = bitcast i32* %j5 to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %j5, metadata !114, metadata !DIExpression()), !dbg !121
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !127
  %20 = load i32, i32* %19, align 4, !dbg !127, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !131
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !33
  %22 = load i32, i32* %.capture_expr.3, align 4, !dbg !127, !tbaa !33
  %cmp6 = icmp sgt i32 %21, %22, !dbg !130
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !130

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.3, align 4, !dbg !127, !tbaa !33
  br label %cond.end, !dbg !130

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !33
  br label %cond.end, !dbg !130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !130
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !130, !tbaa !33
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !130, !tbaa !33
  store i32 %25, i32* %.omp.iv, align 4, !dbg !130, !tbaa !33
  br label %omp.inner.for.cond, !dbg !127

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !33
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !33
  %cmp7 = icmp sle i32 %26, %27, !dbg !127
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !127

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !127

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !33
  %mul = mul nsw i32 %28, 1, !dbg !129
  %add = add nsw i32 1, %mul, !dbg !129
  store i32 %add, i32* %j5, align 4, !dbg !129, !tbaa !33
  %29 = load i32, i32* %4, align 4, !dbg !132, !tbaa !33
  %sub8 = sub nsw i32 %29, 1, !dbg !133
  %idxprom = sext i32 %sub8 to i64, !dbg !134
  %30 = mul nsw i64 %idxprom, %2, !dbg !134
  %arrayidx = getelementptr inbounds double, double* %3, i64 %30, !dbg !134
  %31 = load i32, i32* %j5, align 4, !dbg !135, !tbaa !33
  %sub9 = sub nsw i32 %31, 1, !dbg !136
  %idxprom10 = sext i32 %sub9 to i64, !dbg !134
  %arrayidx11 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom10, !dbg !134
  %32 = load double, double* %arrayidx11, align 8, !dbg !134, !tbaa !67
  %33 = load i32, i32* %4, align 4, !dbg !137, !tbaa !33
  %idxprom12 = sext i32 %33 to i64, !dbg !138
  %34 = mul nsw i64 %idxprom12, %2, !dbg !138
  %arrayidx13 = getelementptr inbounds double, double* %3, i64 %34, !dbg !138
  %35 = load i32, i32* %j5, align 4, !dbg !139, !tbaa !33
  %idxprom14 = sext i32 %35 to i64, !dbg !138
  %arrayidx15 = getelementptr inbounds double, double* %arrayidx13, i64 %idxprom14, !dbg !138
  store double %32, double* %arrayidx15, align 8, !dbg !140, !tbaa !67
  br label %omp.body.continue, !dbg !138

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !131

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !33
  %add16 = add nsw i32 %36, 1, !dbg !127
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !127, !tbaa !33
  br label %omp.inner.for.cond, !dbg !131, !llvm.loop !141

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !131

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %38 = load i32, i32* %37, align 4, !dbg !131, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %38), !dbg !142
  %39 = bitcast i32* %j5 to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !131
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !131
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !131
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3, !dbg !131
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !131
  br label %omp.precond.end, !dbg !131

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = bitcast i32* %.capture_expr.3 to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3, !dbg !131
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !131
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !131
  ret void, !dbg !143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %m, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b, i32* nonnull align 4 dereferenceable(4) %i) #4 !dbg !144 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !146, metadata !DIExpression()), !dbg !153
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !147, metadata !DIExpression()), !dbg !153
  store i32* %m, i32** %m.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !148, metadata !DIExpression()), !dbg !153
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !123
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !149, metadata !DIExpression()), !dbg !153
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !123
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !150, metadata !DIExpression()), !dbg !153
  store double* %b, double** %b.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !151, metadata !DIExpression()), !dbg !153
  store i32* %i, i32** %i.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load i32*, i32** %m.addr, align 8, !dbg !154, !tbaa !119
  %1 = load i64, i64* %vla.addr, align 8, !dbg !154, !tbaa !123
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !154, !tbaa !123
  %3 = load double*, double** %b.addr, align 8, !dbg !154, !tbaa !119
  %4 = load i32*, i32** %i.addr, align 8, !dbg !154, !tbaa !119
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !154, !tbaa !119
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !154, !tbaa !119
  %7 = load i32*, i32** %m.addr, align 8, !dbg !154, !tbaa !119
  %8 = load double*, double** %b.addr, align 8, !dbg !154, !tbaa !119
  %9 = load i32*, i32** %i.addr, align 8, !dbg !154, !tbaa !119
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i64 %2, double* %8, i32* %9) #3, !dbg !154
  ret void, !dbg !154
}

; Function Attrs: nounwind
declare !callback !155 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB054-inneronly2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"clang version 11.1.0"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !12, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20, !22, !23}
!16 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 53, type: !14)
!17 = !DILocalVariable(name: "j", scope: !11, file: !1, line: 53, type: !14)
!18 = !DILocalVariable(name: "n", scope: !11, file: !1, line: 54, type: !14)
!19 = !DILocalVariable(name: "m", scope: !11, file: !1, line: 54, type: !14)
!20 = !DILocalVariable(name: "__vla_expr0", scope: !11, type: !21, flags: DIFlagArtificial)
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "__vla_expr1", scope: !11, type: !21, flags: DIFlagArtificial)
!23 = !DILocalVariable(name: "b", scope: !11, file: !1, line: 55, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !25)
!25 = !{!26, !27}
!26 = !DISubrange(count: !20)
!27 = !DISubrange(count: !22)
!28 = !DILocation(line: 53, column: 3, scope: !11)
!29 = !DILocation(line: 53, column: 7, scope: !11)
!30 = !DILocation(line: 53, column: 9, scope: !11)
!31 = !DILocation(line: 54, column: 3, scope: !11)
!32 = !DILocation(line: 54, column: 7, scope: !11)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 54, column: 14, scope: !11)
!38 = !DILocation(line: 55, column: 12, scope: !11)
!39 = !DILocation(line: 55, column: 3, scope: !11)
!40 = !DILocation(line: 55, column: 15, scope: !11)
!41 = !DILocation(line: 0, scope: !11)
!42 = !DILocation(line: 55, column: 10, scope: !11)
!43 = !DILocation(line: 57, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !11, file: !1, line: 57, column: 3)
!45 = !DILocation(line: 57, column: 7, scope: !44)
!46 = !DILocation(line: 57, column: 11, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 57, column: 3)
!48 = !DILocation(line: 57, column: 13, scope: !47)
!49 = !DILocation(line: 57, column: 12, scope: !47)
!50 = !DILocation(line: 57, column: 3, scope: !44)
!51 = !DILocation(line: 58, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 58, column: 5)
!53 = !DILocation(line: 58, column: 9, scope: !52)
!54 = !DILocation(line: 58, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 58, column: 5)
!56 = !DILocation(line: 58, column: 15, scope: !55)
!57 = !DILocation(line: 58, column: 14, scope: !55)
!58 = !DILocation(line: 58, column: 5, scope: !52)
!59 = !DILocation(line: 59, column: 24, scope: !55)
!60 = !DILocation(line: 59, column: 26, scope: !55)
!61 = !DILocation(line: 59, column: 25, scope: !55)
!62 = !DILocation(line: 59, column: 15, scope: !55)
!63 = !DILocation(line: 59, column: 9, scope: !55)
!64 = !DILocation(line: 59, column: 7, scope: !55)
!65 = !DILocation(line: 59, column: 12, scope: !55)
!66 = !DILocation(line: 59, column: 14, scope: !55)
!67 = !{!68, !68, i64 0}
!68 = !{!"double", !35, i64 0}
!69 = !DILocation(line: 58, column: 19, scope: !55)
!70 = !DILocation(line: 58, column: 5, scope: !55)
!71 = distinct !{!71, !58, !72, !73}
!72 = !DILocation(line: 59, column: 27, scope: !52)
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !DILocation(line: 57, column: 17, scope: !47)
!75 = !DILocation(line: 57, column: 3, scope: !47)
!76 = distinct !{!76, !50, !77, !73}
!77 = !DILocation(line: 59, column: 27, scope: !44)
!78 = !DILocation(line: 61, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !11, file: !1, line: 61, column: 3)
!80 = !DILocation(line: 61, column: 8, scope: !79)
!81 = !DILocation(line: 61, column: 12, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 61, column: 3)
!83 = !DILocation(line: 61, column: 14, scope: !82)
!84 = !DILocation(line: 61, column: 13, scope: !82)
!85 = !DILocation(line: 61, column: 3, scope: !79)
!86 = !DILocation(line: 62, column: 1, scope: !82)
!87 = !DILocation(line: 62, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !82, file: !1, line: 62, column: 1)
!89 = !DILocation(line: 61, column: 17, scope: !82)
!90 = !DILocation(line: 61, column: 3, scope: !82)
!91 = distinct !{!91, !85, !92, !73}
!92 = !DILocation(line: 62, column: 25, scope: !79)
!93 = !DILocation(line: 65, column: 3, scope: !11)
!94 = !DILocation(line: 66, column: 1, scope: !11)
!95 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !96, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98, !98, !102, !21, !21, !103, !102}
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!102 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !113, !114, !115, !116, !117, !118, !114}
!105 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !95, type: !98, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !95, type: !98, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "m", arg: 3, scope: !95, file: !1, line: 54, type: !102)
!108 = !DILocalVariable(name: "vla", arg: 4, scope: !95, type: !21, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "vla", arg: 5, scope: !95, type: !21, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "b", arg: 6, scope: !95, file: !1, line: 55, type: !103)
!111 = !DILocalVariable(name: "i", arg: 7, scope: !95, file: !1, line: 53, type: !102)
!112 = !DILocalVariable(name: ".omp.iv", scope: !95, type: !14, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".capture_expr.", scope: !95, type: !14, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "j", scope: !95, type: !14, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".omp.lb", scope: !95, type: !14, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".omp.ub", scope: !95, type: !14, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".omp.stride", scope: !95, type: !14, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.is_last", scope: !95, type: !14, flags: DIFlagArtificial)
!119 = !{!120, !120, i64 0}
!120 = !{!"any pointer", !35, i64 0}
!121 = !DILocation(line: 0, scope: !95)
!122 = !DILocation(line: 54, column: 14, scope: !95)
!123 = !{!124, !124, i64 0}
!124 = !{!"long", !35, i64 0}
!125 = !DILocation(line: 55, column: 10, scope: !95)
!126 = !DILocation(line: 53, column: 7, scope: !95)
!127 = !DILocation(line: 63, column: 5, scope: !95)
!128 = !DILocation(line: 63, column: 16, scope: !95)
!129 = !DILocation(line: 63, column: 18, scope: !95)
!130 = !DILocation(line: 63, column: 10, scope: !95)
!131 = !DILocation(line: 62, column: 1, scope: !95)
!132 = !DILocation(line: 64, column: 17, scope: !95)
!133 = !DILocation(line: 64, column: 18, scope: !95)
!134 = !DILocation(line: 64, column: 15, scope: !95)
!135 = !DILocation(line: 64, column: 22, scope: !95)
!136 = !DILocation(line: 64, column: 23, scope: !95)
!137 = !DILocation(line: 64, column: 9, scope: !95)
!138 = !DILocation(line: 64, column: 7, scope: !95)
!139 = !DILocation(line: 64, column: 12, scope: !95)
!140 = !DILocation(line: 64, column: 14, scope: !95)
!141 = distinct !{!141, !131, !142}
!142 = !DILocation(line: 62, column: 25, scope: !95)
!143 = !DILocation(line: 64, column: 25, scope: !95)
!144 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !96, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152}
!146 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !144, type: !98, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !144, type: !98, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "m", arg: 3, scope: !144, type: !102, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "vla", arg: 4, scope: !144, type: !21, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "vla", arg: 5, scope: !144, type: !21, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "b", arg: 6, scope: !144, type: !103, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "i", arg: 7, scope: !144, type: !102, flags: DIFlagArtificial)
!153 = !DILocation(line: 0, scope: !144)
!154 = !DILocation(line: 62, column: 1, scope: !144)
!155 = !{!156}
!156 = !{i64 2, i64 -1, i64 -1, i1 true}
