; ModuleID = 'DRB169-missingsyncwrite-orig-yes.c'
source_filename = "DRB169-missingsyncwrite-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [48 x i8] c";DRB169-missingsyncwrite-orig-yes.c;main;34;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [49 x i8] c";DRB169-missingsyncwrite-orig-yes.c;main;34;56;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %r1 = alloca [8 x double], align 16
  %r = alloca [8 x [8 x [8 x double]]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !26
  %1 = bitcast i32* %j to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !27
  %2 = bitcast i32* %k to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %k, metadata !16, metadata !DIExpression()), !dbg !28
  %3 = bitcast [8 x double]* %r1 to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %3) #4, !dbg !29
  call void @llvm.dbg.declare(metadata [8 x double]* %r1, metadata !17, metadata !DIExpression()), !dbg !30
  %4 = bitcast [8 x [8 x [8 x double]]]* %r to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %4) #4, !dbg !29
  call void @llvm.dbg.declare(metadata [8 x [8 x [8 x double]]]* %r, metadata !22, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %i, align 4, !dbg !32, !tbaa !34
  br label %for.cond, !dbg !38

for.cond:                                         ; preds = %for.inc14, %entry
  %5 = load i32, i32* %i, align 4, !dbg !39, !tbaa !34
  %cmp = icmp slt i32 %5, 8, !dbg !41
  br i1 %cmp, label %for.body, label %for.end16, !dbg !42

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !43, !tbaa !34
  br label %for.cond1, !dbg !46

for.cond1:                                        ; preds = %for.inc11, %for.body
  %6 = load i32, i32* %j, align 4, !dbg !47, !tbaa !34
  %cmp2 = icmp slt i32 %6, 8, !dbg !49
  br i1 %cmp2, label %for.body3, label %for.end13, !dbg !50

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4, !dbg !51, !tbaa !34
  br label %for.cond4, !dbg !54

for.cond4:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4, !dbg !55, !tbaa !34
  %cmp5 = icmp slt i32 %7, 8, !dbg !57
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !58

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, i32* %i, align 4, !dbg !59, !tbaa !34
  %conv = sitofp i32 %8 to double, !dbg !59
  %9 = load i32, i32* %i, align 4, !dbg !61, !tbaa !34
  %idxprom = sext i32 %9 to i64, !dbg !62
  %arrayidx = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %r, i64 0, i64 %idxprom, !dbg !62
  %10 = load i32, i32* %j, align 4, !dbg !63, !tbaa !34
  %idxprom7 = sext i32 %10 to i64, !dbg !62
  %arrayidx8 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx, i64 0, i64 %idxprom7, !dbg !62
  %11 = load i32, i32* %k, align 4, !dbg !64, !tbaa !34
  %idxprom9 = sext i32 %11 to i64, !dbg !62
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !62
  store double %conv, double* %arrayidx10, align 8, !dbg !65, !tbaa !66
  br label %for.inc, !dbg !68

for.inc:                                          ; preds = %for.body6
  %12 = load i32, i32* %k, align 4, !dbg !69, !tbaa !34
  %inc = add nsw i32 %12, 1, !dbg !69
  store i32 %inc, i32* %k, align 4, !dbg !69, !tbaa !34
  br label %for.cond4, !dbg !70, !llvm.loop !71

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !74

for.inc11:                                        ; preds = %for.end
  %13 = load i32, i32* %j, align 4, !dbg !75, !tbaa !34
  %inc12 = add nsw i32 %13, 1, !dbg !75
  store i32 %inc12, i32* %j, align 4, !dbg !75, !tbaa !34
  br label %for.cond1, !dbg !76, !llvm.loop !77

for.end13:                                        ; preds = %for.cond1
  br label %for.inc14, !dbg !79

for.inc14:                                        ; preds = %for.end13
  %14 = load i32, i32* %i, align 4, !dbg !80, !tbaa !34
  %inc15 = add nsw i32 %14, 1, !dbg !80
  store i32 %inc15, i32* %i, align 4, !dbg !80, !tbaa !34
  br label %for.cond, !dbg !81, !llvm.loop !82

for.end16:                                        ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x double]*, [8 x [8 x [8 x double]]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x double]* %r1, [8 x [8 x [8 x double]]]* %r), !dbg !84
  store i32 0, i32* %k, align 4, !dbg !85, !tbaa !34
  br label %for.cond17, !dbg !87

for.cond17:                                       ; preds = %for.inc23, %for.end16
  %15 = load i32, i32* %k, align 4, !dbg !88, !tbaa !34
  %cmp18 = icmp slt i32 %15, 8, !dbg !90
  br i1 %cmp18, label %for.body20, label %for.end25, !dbg !91

for.body20:                                       ; preds = %for.cond17
  %16 = load i32, i32* %k, align 4, !dbg !92, !tbaa !34
  %idxprom21 = sext i32 %16 to i64, !dbg !93
  %arrayidx22 = getelementptr inbounds [8 x double], [8 x double]* %r1, i64 0, i64 %idxprom21, !dbg !93
  %17 = load double, double* %arrayidx22, align 8, !dbg !93, !tbaa !66
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %17), !dbg !94
  br label %for.inc23, !dbg !94

for.inc23:                                        ; preds = %for.body20
  %18 = load i32, i32* %k, align 4, !dbg !95, !tbaa !34
  %inc24 = add nsw i32 %18, 1, !dbg !95
  store i32 %inc24, i32* %k, align 4, !dbg !95, !tbaa !34
  br label %for.cond17, !dbg !96, !llvm.loop !97

for.end25:                                        ; preds = %for.cond17
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  %19 = bitcast [8 x [8 x [8 x double]]]* %r to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %19) #4, !dbg !100
  %20 = bitcast [8 x double]* %r1 to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %20) #4, !dbg !100
  %21 = bitcast i32* %k to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !100
  %22 = bitcast i32* %j to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !100
  %23 = bitcast i32* %i to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !100
  ret i32 0, !dbg !101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x double]* nonnull align 8 dereferenceable(64) %r1, [8 x [8 x [8 x double]]]* nonnull align 8 dereferenceable(4096) %r) #3 !dbg !102 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %r1.addr = alloca [8 x double]*, align 8
  %r.addr = alloca [8 x [8 x [8 x double]]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !112, metadata !DIExpression()), !dbg !126
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !113, metadata !DIExpression()), !dbg !126
  store [8 x double]* %r1, [8 x double]** %r1.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata [8 x double]** %r1.addr, metadata !114, metadata !DIExpression()), !dbg !127
  store [8 x [8 x [8 x double]]]* %r, [8 x [8 x [8 x double]]]** %r.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata [8 x [8 x [8 x double]]]** %r.addr, metadata !115, metadata !DIExpression()), !dbg !128
  %0 = load [8 x double]*, [8 x double]** %r1.addr, align 8, !dbg !129, !tbaa !124
  %1 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %r.addr, align 8, !dbg !129, !tbaa !124
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !116, metadata !DIExpression()), !dbg !126
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !117, metadata !DIExpression()), !dbg !126
  store i32 0, i32* %.omp.lb, align 4, !dbg !130, !tbaa !34
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !118, metadata !DIExpression()), !dbg !126
  store i32 5, i32* %.omp.ub, align 4, !dbg !130, !tbaa !34
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !119, metadata !DIExpression()), !dbg !126
  store i32 1, i32* %.omp.stride, align 4, !dbg !130, !tbaa !34
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !120, metadata !DIExpression()), !dbg !126
  store i32 0, i32* %.omp.is_last, align 4, !dbg !130, !tbaa !34
  %7 = bitcast i32* %j to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %j, metadata !121, metadata !DIExpression()), !dbg !126
  %8 = bitcast i32* %k to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %k, metadata !122, metadata !DIExpression()), !dbg !126
  %9 = bitcast i32* %i to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %i, metadata !123, metadata !DIExpression()), !dbg !126
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !129
  %11 = load i32, i32* %10, align 4, !dbg !129, !tbaa !34
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !131
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !34
  %cmp = icmp sgt i32 %12, 5, !dbg !130
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !130

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !130

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !34
  br label %cond.end, !dbg !130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 5, %cond.true ], [ %13, %cond.false ], !dbg !130
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !130, !tbaa !34
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !130, !tbaa !34
  store i32 %14, i32* %.omp.iv, align 4, !dbg !130, !tbaa !34
  br label %omp.inner.for.cond, !dbg !129

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !34
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !34
  %cmp1 = icmp sle i32 %15, %16, !dbg !129
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !129

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !129

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !34
  %mul = mul nsw i32 %17, 1, !dbg !132
  %add = add nsw i32 1, %mul, !dbg !132
  store i32 %add, i32* %i, align 4, !dbg !132, !tbaa !34
  store i32 1, i32* %j, align 4, !dbg !133, !tbaa !34
  br label %for.cond, !dbg !136

for.cond:                                         ; preds = %for.inc36, %omp.inner.for.body
  %18 = load i32, i32* %j, align 4, !dbg !137, !tbaa !34
  %cmp2 = icmp slt i32 %18, 7, !dbg !139
  br i1 %cmp2, label %for.body, label %for.end38, !dbg !140

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !141, !tbaa !34
  br label %for.cond3, !dbg !144

for.cond3:                                        ; preds = %for.inc, %for.body
  %19 = load i32, i32* %k, align 4, !dbg !145, !tbaa !34
  %cmp4 = icmp slt i32 %19, 8, !dbg !147
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !148

for.body5:                                        ; preds = %for.cond3
  %20 = load i32, i32* %i, align 4, !dbg !149, !tbaa !34
  %idxprom = sext i32 %20 to i64, !dbg !151
  %arrayidx = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %1, i64 0, i64 %idxprom, !dbg !151
  %21 = load i32, i32* %j, align 4, !dbg !152, !tbaa !34
  %sub = sub nsw i32 %21, 1, !dbg !153
  %idxprom6 = sext i32 %sub to i64, !dbg !151
  %arrayidx7 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx, i64 0, i64 %idxprom6, !dbg !151
  %22 = load i32, i32* %k, align 4, !dbg !154, !tbaa !34
  %idxprom8 = sext i32 %22 to i64, !dbg !151
  %arrayidx9 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx7, i64 0, i64 %idxprom8, !dbg !151
  %23 = load double, double* %arrayidx9, align 8, !dbg !151, !tbaa !66
  %24 = load i32, i32* %i, align 4, !dbg !155, !tbaa !34
  %idxprom10 = sext i32 %24 to i64, !dbg !156
  %arrayidx11 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %1, i64 0, i64 %idxprom10, !dbg !156
  %25 = load i32, i32* %j, align 4, !dbg !157, !tbaa !34
  %add12 = add nsw i32 %25, 1, !dbg !158
  %idxprom13 = sext i32 %add12 to i64, !dbg !156
  %arrayidx14 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx11, i64 0, i64 %idxprom13, !dbg !156
  %26 = load i32, i32* %k, align 4, !dbg !159, !tbaa !34
  %idxprom15 = sext i32 %26 to i64, !dbg !156
  %arrayidx16 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx14, i64 0, i64 %idxprom15, !dbg !156
  %27 = load double, double* %arrayidx16, align 8, !dbg !156, !tbaa !66
  %add17 = fadd double %23, %27, !dbg !160
  %28 = load i32, i32* %i, align 4, !dbg !161, !tbaa !34
  %sub18 = sub nsw i32 %28, 1, !dbg !162
  %idxprom19 = sext i32 %sub18 to i64, !dbg !163
  %arrayidx20 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %1, i64 0, i64 %idxprom19, !dbg !163
  %29 = load i32, i32* %j, align 4, !dbg !164, !tbaa !34
  %idxprom21 = sext i32 %29 to i64, !dbg !163
  %arrayidx22 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx20, i64 0, i64 %idxprom21, !dbg !163
  %30 = load i32, i32* %k, align 4, !dbg !165, !tbaa !34
  %idxprom23 = sext i32 %30 to i64, !dbg !163
  %arrayidx24 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx22, i64 0, i64 %idxprom23, !dbg !163
  %31 = load double, double* %arrayidx24, align 8, !dbg !163, !tbaa !66
  %add25 = fadd double %add17, %31, !dbg !166
  %32 = load i32, i32* %i, align 4, !dbg !167, !tbaa !34
  %add26 = add nsw i32 %32, 1, !dbg !168
  %idxprom27 = sext i32 %add26 to i64, !dbg !169
  %arrayidx28 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %1, i64 0, i64 %idxprom27, !dbg !169
  %33 = load i32, i32* %j, align 4, !dbg !170, !tbaa !34
  %idxprom29 = sext i32 %33 to i64, !dbg !169
  %arrayidx30 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx28, i64 0, i64 %idxprom29, !dbg !169
  %34 = load i32, i32* %k, align 4, !dbg !171, !tbaa !34
  %idxprom31 = sext i32 %34 to i64, !dbg !169
  %arrayidx32 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx30, i64 0, i64 %idxprom31, !dbg !169
  %35 = load double, double* %arrayidx32, align 8, !dbg !169, !tbaa !66
  %add33 = fadd double %add25, %35, !dbg !172
  %36 = load i32, i32* %k, align 4, !dbg !173, !tbaa !34
  %idxprom34 = sext i32 %36 to i64, !dbg !174
  %arrayidx35 = getelementptr inbounds [8 x double], [8 x double]* %0, i64 0, i64 %idxprom34, !dbg !174
  store double %add33, double* %arrayidx35, align 8, !dbg !175, !tbaa !66
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %for.body5
  %37 = load i32, i32* %k, align 4, !dbg !177, !tbaa !34
  %inc = add nsw i32 %37, 1, !dbg !177
  store i32 %inc, i32* %k, align 4, !dbg !177, !tbaa !34
  br label %for.cond3, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond3
  br label %for.inc36, !dbg !181

for.inc36:                                        ; preds = %for.end
  %38 = load i32, i32* %j, align 4, !dbg !182, !tbaa !34
  %inc37 = add nsw i32 %38, 1, !dbg !182
  store i32 %inc37, i32* %j, align 4, !dbg !182, !tbaa !34
  br label %for.cond, !dbg !183, !llvm.loop !184

for.end38:                                        ; preds = %for.cond
  br label %omp.body.continue, !dbg !186

omp.body.continue:                                ; preds = %for.end38
  br label %omp.inner.for.inc, !dbg !131

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !34
  %add39 = add nsw i32 %39, 1, !dbg !129
  store i32 %add39, i32* %.omp.iv, align 4, !dbg !129, !tbaa !34
  br label %omp.inner.for.cond, !dbg !131, !llvm.loop !187

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !131

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %11), !dbg !188
  %40 = bitcast i32* %i to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !131
  %41 = bitcast i32* %k to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !131
  %42 = bitcast i32* %j to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !131
  %43 = bitcast i32* %.omp.is_last to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !131
  %44 = bitcast i32* %.omp.stride to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !131
  %45 = bitcast i32* %.omp.ub to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !131
  %46 = bitcast i32* %.omp.lb to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !131
  %47 = bitcast i32* %.omp.iv to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !131
  ret void, !dbg !189
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x double]* nonnull align 8 dereferenceable(64) %r1, [8 x [8 x [8 x double]]]* nonnull align 8 dereferenceable(4096) %r) #3 !dbg !190 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %r1.addr = alloca [8 x double]*, align 8
  %r.addr = alloca [8 x [8 x [8 x double]]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !192, metadata !DIExpression()), !dbg !196
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !193, metadata !DIExpression()), !dbg !196
  store [8 x double]* %r1, [8 x double]** %r1.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata [8 x double]** %r1.addr, metadata !194, metadata !DIExpression()), !dbg !196
  store [8 x [8 x [8 x double]]]* %r, [8 x [8 x [8 x double]]]** %r.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata [8 x [8 x [8 x double]]]** %r.addr, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = load [8 x double]*, [8 x double]** %r1.addr, align 8, !dbg !197, !tbaa !124
  %1 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %r.addr, align 8, !dbg !197, !tbaa !124
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !197, !tbaa !124
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !197, !tbaa !124
  %4 = load [8 x double]*, [8 x double]** %r1.addr, align 8, !dbg !197, !tbaa !124
  %5 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %r.addr, align 8, !dbg !197, !tbaa !124
  call void @.omp_outlined._debug__(i32* %2, i32* %3, [8 x double]* %4, [8 x [8 x [8 x double]]]* %5) #4, !dbg !197
  ret void, !dbg !197
}

; Function Attrs: nounwind
declare !callback !198 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB169-missingsyncwrite-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !10, scopeLine: 21, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16, !17, !22}
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 22, type: !12)
!15 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 22, type: !12)
!16 = !DILocalVariable(name: "k", scope: !9, file: !1, line: 22, type: !12)
!17 = !DILocalVariable(name: "r1", scope: !9, file: !1, line: 23, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !20)
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DILocalVariable(name: "r", scope: !9, file: !1, line: 23, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32768, elements: !24)
!24 = !{!21, !21, !21}
!25 = !DILocation(line: 22, column: 3, scope: !9)
!26 = !DILocation(line: 22, column: 7, scope: !9)
!27 = !DILocation(line: 22, column: 9, scope: !9)
!28 = !DILocation(line: 22, column: 11, scope: !9)
!29 = !DILocation(line: 23, column: 3, scope: !9)
!30 = !DILocation(line: 23, column: 10, scope: !9)
!31 = !DILocation(line: 23, column: 17, scope: !9)
!32 = !DILocation(line: 25, column: 10, scope: !33)
!33 = distinct !DILexicalBlock(scope: !9, file: !1, line: 25, column: 3)
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 25, column: 8, scope: !33)
!39 = !DILocation(line: 25, column: 15, scope: !40)
!40 = distinct !DILexicalBlock(scope: !33, file: !1, line: 25, column: 3)
!41 = !DILocation(line: 25, column: 17, scope: !40)
!42 = !DILocation(line: 25, column: 3, scope: !33)
!43 = !DILocation(line: 26, column: 12, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 26, column: 5)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 25, column: 27)
!46 = !DILocation(line: 26, column: 10, scope: !44)
!47 = !DILocation(line: 26, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 26, column: 5)
!49 = !DILocation(line: 26, column: 19, scope: !48)
!50 = !DILocation(line: 26, column: 5, scope: !44)
!51 = !DILocation(line: 27, column: 14, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 27, column: 7)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 26, column: 29)
!54 = !DILocation(line: 27, column: 12, scope: !52)
!55 = !DILocation(line: 27, column: 19, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 27, column: 7)
!57 = !DILocation(line: 27, column: 21, scope: !56)
!58 = !DILocation(line: 27, column: 7, scope: !52)
!59 = !DILocation(line: 28, column: 22, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 27, column: 31)
!61 = !DILocation(line: 28, column: 11, scope: !60)
!62 = !DILocation(line: 28, column: 9, scope: !60)
!63 = !DILocation(line: 28, column: 14, scope: !60)
!64 = !DILocation(line: 28, column: 17, scope: !60)
!65 = !DILocation(line: 28, column: 20, scope: !60)
!66 = !{!67, !67, i64 0}
!67 = !{!"double", !36, i64 0}
!68 = !DILocation(line: 29, column: 7, scope: !60)
!69 = !DILocation(line: 27, column: 27, scope: !56)
!70 = !DILocation(line: 27, column: 7, scope: !56)
!71 = distinct !{!71, !58, !72, !73}
!72 = !DILocation(line: 29, column: 7, scope: !52)
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !DILocation(line: 30, column: 5, scope: !53)
!75 = !DILocation(line: 26, column: 25, scope: !48)
!76 = !DILocation(line: 26, column: 5, scope: !48)
!77 = distinct !{!77, !50, !78, !73}
!78 = !DILocation(line: 30, column: 5, scope: !44)
!79 = !DILocation(line: 31, column: 3, scope: !45)
!80 = !DILocation(line: 25, column: 23, scope: !40)
!81 = !DILocation(line: 25, column: 3, scope: !40)
!82 = distinct !{!82, !42, !83, !73}
!83 = !DILocation(line: 31, column: 3, scope: !33)
!84 = !DILocation(line: 34, column: 3, scope: !9)
!85 = !DILocation(line: 43, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 3)
!87 = !DILocation(line: 43, column: 8, scope: !86)
!88 = !DILocation(line: 43, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 43, column: 3)
!90 = !DILocation(line: 43, column: 17, scope: !89)
!91 = !DILocation(line: 43, column: 3, scope: !86)
!92 = !DILocation(line: 43, column: 43, scope: !89)
!93 = !DILocation(line: 43, column: 40, scope: !89)
!94 = !DILocation(line: 43, column: 27, scope: !89)
!95 = !DILocation(line: 43, column: 23, scope: !89)
!96 = !DILocation(line: 43, column: 3, scope: !89)
!97 = distinct !{!97, !91, !98, !73}
!98 = !DILocation(line: 43, column: 45, scope: !86)
!99 = !DILocation(line: 45, column: 3, scope: !9)
!100 = !DILocation(line: 48, column: 1, scope: !9)
!101 = !DILocation(line: 47, column: 3, scope: !9)
!102 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 35, type: !103, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105, !105, !109, !110}
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!109 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!112 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !102, type: !105, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !102, type: !105, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "r1", arg: 3, scope: !102, file: !1, line: 23, type: !109)
!115 = !DILocalVariable(name: "r", arg: 4, scope: !102, file: !1, line: 23, type: !110)
!116 = !DILocalVariable(name: ".omp.iv", scope: !102, type: !12, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".omp.lb", scope: !102, type: !12, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.ub", scope: !102, type: !12, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.stride", scope: !102, type: !12, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.is_last", scope: !102, type: !12, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "j", scope: !102, type: !12, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "k", scope: !102, type: !12, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "i", scope: !102, type: !12, flags: DIFlagArtificial)
!124 = !{!125, !125, i64 0}
!125 = !{!"any pointer", !36, i64 0}
!126 = !DILocation(line: 0, scope: !102)
!127 = !DILocation(line: 23, column: 10, scope: !102)
!128 = !DILocation(line: 23, column: 17, scope: !102)
!129 = !DILocation(line: 35, column: 3, scope: !102)
!130 = !DILocation(line: 35, column: 8, scope: !102)
!131 = !DILocation(line: 34, column: 3, scope: !102)
!132 = !DILocation(line: 35, column: 24, scope: !102)
!133 = !DILocation(line: 36, column: 12, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 36, column: 5)
!135 = distinct !DILexicalBlock(scope: !102, file: !1, line: 35, column: 29)
!136 = !DILocation(line: 36, column: 10, scope: !134)
!137 = !DILocation(line: 36, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !1, line: 36, column: 5)
!139 = !DILocation(line: 36, column: 19, scope: !138)
!140 = !DILocation(line: 36, column: 5, scope: !134)
!141 = !DILocation(line: 37, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 37, column: 7)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 36, column: 31)
!144 = !DILocation(line: 37, column: 12, scope: !142)
!145 = !DILocation(line: 37, column: 19, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 37, column: 7)
!147 = !DILocation(line: 37, column: 21, scope: !146)
!148 = !DILocation(line: 37, column: 7, scope: !142)
!149 = !DILocation(line: 38, column: 19, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 37, column: 31)
!151 = !DILocation(line: 38, column: 17, scope: !150)
!152 = !DILocation(line: 38, column: 22, scope: !150)
!153 = !DILocation(line: 38, column: 23, scope: !150)
!154 = !DILocation(line: 38, column: 27, scope: !150)
!155 = !DILocation(line: 38, column: 34, scope: !150)
!156 = !DILocation(line: 38, column: 32, scope: !150)
!157 = !DILocation(line: 38, column: 37, scope: !150)
!158 = !DILocation(line: 38, column: 38, scope: !150)
!159 = !DILocation(line: 38, column: 42, scope: !150)
!160 = !DILocation(line: 38, column: 30, scope: !150)
!161 = !DILocation(line: 38, column: 49, scope: !150)
!162 = !DILocation(line: 38, column: 50, scope: !150)
!163 = !DILocation(line: 38, column: 47, scope: !150)
!164 = !DILocation(line: 38, column: 54, scope: !150)
!165 = !DILocation(line: 38, column: 57, scope: !150)
!166 = !DILocation(line: 38, column: 45, scope: !150)
!167 = !DILocation(line: 38, column: 64, scope: !150)
!168 = !DILocation(line: 38, column: 65, scope: !150)
!169 = !DILocation(line: 38, column: 62, scope: !150)
!170 = !DILocation(line: 38, column: 69, scope: !150)
!171 = !DILocation(line: 38, column: 72, scope: !150)
!172 = !DILocation(line: 38, column: 60, scope: !150)
!173 = !DILocation(line: 38, column: 12, scope: !150)
!174 = !DILocation(line: 38, column: 9, scope: !150)
!175 = !DILocation(line: 38, column: 15, scope: !150)
!176 = !DILocation(line: 39, column: 7, scope: !150)
!177 = !DILocation(line: 37, column: 27, scope: !146)
!178 = !DILocation(line: 37, column: 7, scope: !146)
!179 = distinct !{!179, !148, !180, !73}
!180 = !DILocation(line: 39, column: 7, scope: !142)
!181 = !DILocation(line: 40, column: 5, scope: !143)
!182 = !DILocation(line: 36, column: 27, scope: !138)
!183 = !DILocation(line: 36, column: 5, scope: !138)
!184 = distinct !{!184, !140, !185, !73}
!185 = !DILocation(line: 40, column: 5, scope: !134)
!186 = !DILocation(line: 41, column: 3, scope: !135)
!187 = distinct !{!187, !131, !188}
!188 = !DILocation(line: 34, column: 56, scope: !102)
!189 = !DILocation(line: 41, column: 3, scope: !102)
!190 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 34, type: !103, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!191 = !{!192, !193, !194, !195}
!192 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !190, type: !105, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !190, type: !105, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "r1", arg: 3, scope: !190, type: !109, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: "r", arg: 4, scope: !190, type: !110, flags: DIFlagArtificial)
!196 = !DILocation(line: 0, scope: !190)
!197 = !DILocation(line: 34, column: 3, scope: !190)
!198 = !{!199}
!199 = !{i64 2, i64 -1, i64 -1, i1 true}
