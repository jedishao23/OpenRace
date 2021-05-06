; ModuleID = 'DRB038-truedepseconddimension-var-yes.c'
source_filename = "DRB038-truedepseconddimension-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [53 x i8] c";DRB038-truedepseconddimension-var-yes.c;main;63;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [54 x i8] c";DRB038-truedepseconddimension-var-yes.c;main;63;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
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
  %2 = bitcast i32* %len to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %len, metadata !23, metadata !DIExpression()), !dbg !47
  store i32 1000, i32* %len, align 4, !dbg !47, !tbaa !35
  %3 = load i32, i32* %argc.addr, align 4, !dbg !48, !tbaa !35
  %cmp = icmp sgt i32 %3, 1, !dbg !50
  br i1 %cmp, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !52, !tbaa !40
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !52
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !52, !tbaa !40
  %call = call i32 @atoi(i8* %5) #7, !dbg !53
  store i32 %call, i32* %len, align 4, !dbg !54, !tbaa !35
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  %6 = bitcast i32* %n to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %n, metadata !24, metadata !DIExpression()), !dbg !57
  %7 = load i32, i32* %len, align 4, !dbg !58, !tbaa !35
  store i32 %7, i32* %n, align 4, !dbg !57, !tbaa !35
  %8 = bitcast i32* %m to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %m, metadata !25, metadata !DIExpression()), !dbg !59
  %9 = load i32, i32* %len, align 4, !dbg !60, !tbaa !35
  store i32 %9, i32* %m, align 4, !dbg !59, !tbaa !35
  %10 = load i32, i32* %n, align 4, !dbg !61, !tbaa !35
  %11 = zext i32 %10 to i64, !dbg !62
  %12 = load i32, i32* %m, align 4, !dbg !63, !tbaa !35
  %13 = zext i32 %12 to i64, !dbg !62
  %14 = call i8* @llvm.stacksave(), !dbg !62
  store i8* %14, i8** %saved_stack, align 8, !dbg !62
  %15 = mul nuw i64 %11, %13, !dbg !62
  %vla = alloca double, i64 %15, align 16, !dbg !62
  store i64 %11, i64* %__vla_expr0, align 8, !dbg !62
  store i64 %13, i64* %__vla_expr1, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !26, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !28, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata double* %vla, metadata !29, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %i, align 4, !dbg !66, !tbaa !35
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !dbg !69, !tbaa !35
  %17 = load i32, i32* %n, align 4, !dbg !71, !tbaa !35
  %cmp1 = icmp slt i32 %16, %17, !dbg !72
  br i1 %cmp1, label %for.body, label %for.end, !dbg !73

for.body:                                         ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, i64 %11, i64 %13, double* %vla, i32* %i), !dbg !74
  br label %for.inc, !dbg !75

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !77, !tbaa !35
  %inc = add nsw i32 %18, 1, !dbg !77
  store i32 %inc, i32* %i, align 4, !dbg !77, !tbaa !35
  br label %for.cond, !dbg !78, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !82
  %19 = load i8*, i8** %saved_stack, align 8, !dbg !83
  call void @llvm.stackrestore(i8* %19), !dbg !83
  %20 = bitcast i32* %m to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !83
  %21 = bitcast i32* %n to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !83
  %22 = bitcast i32* %len to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !83
  %23 = bitcast i32* %j to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !83
  %24 = bitcast i32* %i to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !83
  %25 = load i32, i32* %retval, align 4, !dbg !83
  ret i32 %25, !dbg !83
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !84 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !93, !tbaa !40
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !94
  %conv = trunc i64 %call to i32, !dbg !95
  ret i32 %conv, !dbg !96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %m, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b, i32* nonnull align 4 dereferenceable(4) %i) #5 !dbg !97 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !107, metadata !DIExpression()), !dbg !121
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !108, metadata !DIExpression()), !dbg !121
  store i32* %m, i32** %m.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !109, metadata !DIExpression()), !dbg !122
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !123
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !110, metadata !DIExpression()), !dbg !121
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !123
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !111, metadata !DIExpression()), !dbg !121
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !112, metadata !DIExpression()), !dbg !125
  store i32* %i, i32** %i.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !113, metadata !DIExpression()), !dbg !126
  %0 = load i32*, i32** %m.addr, align 8, !dbg !127, !tbaa !40
  %1 = load i64, i64* %vla.addr, align 8, !dbg !127, !tbaa !123
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !127, !tbaa !123
  %3 = load double*, double** %b.addr, align 8, !dbg !127, !tbaa !40
  %4 = load i32*, i32** %i.addr, align 8, !dbg !127, !tbaa !40
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !114, metadata !DIExpression()), !dbg !121
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !115, metadata !DIExpression()), !dbg !121
  %7 = load i32, i32* %0, align 4, !dbg !128, !tbaa !35
  store i32 %7, i32* %.capture_expr., align 4, !dbg !128, !tbaa !35
  %8 = bitcast i32* %.capture_expr.3 to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !115, metadata !DIExpression()), !dbg !121
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !128, !tbaa !35
  %sub = sub nsw i32 %9, 1, !dbg !127
  %div = sdiv i32 %sub, 1, !dbg !127
  %sub4 = sub nsw i32 %div, 1, !dbg !127
  store i32 %sub4, i32* %.capture_expr.3, align 4, !dbg !127, !tbaa !35
  %10 = bitcast i32* %j to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %j, metadata !116, metadata !DIExpression()), !dbg !121
  store i32 1, i32* %j, align 4, !dbg !129, !tbaa !35
  %11 = bitcast i32* %j to i8*, !dbg !127
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !127
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !128, !tbaa !35
  %cmp = icmp slt i32 1, %12, !dbg !127
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !127

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !117, metadata !DIExpression()), !dbg !121
  store i32 0, i32* %.omp.lb, align 4, !dbg !130, !tbaa !35
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !118, metadata !DIExpression()), !dbg !121
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !127, !tbaa !35
  store i32 %15, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !119, metadata !DIExpression()), !dbg !121
  store i32 1, i32* %.omp.stride, align 4, !dbg !130, !tbaa !35
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !120, metadata !DIExpression()), !dbg !121
  store i32 0, i32* %.omp.is_last, align 4, !dbg !130, !tbaa !35
  %18 = bitcast i32* %j5 to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %j5, metadata !116, metadata !DIExpression()), !dbg !121
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !127
  %20 = load i32, i32* %19, align 4, !dbg !127, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !131
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  %22 = load i32, i32* %.capture_expr.3, align 4, !dbg !127, !tbaa !35
  %cmp6 = icmp sgt i32 %21, %22, !dbg !130
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !130

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.3, align 4, !dbg !127, !tbaa !35
  br label %cond.end, !dbg !130

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  br label %cond.end, !dbg !130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !130
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !130, !tbaa !35
  store i32 %25, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  br label %omp.inner.for.cond, !dbg !127

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  %cmp7 = icmp sle i32 %26, %27, !dbg !127
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !127

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !127

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  %mul = mul nsw i32 %28, 1, !dbg !129
  %add = add nsw i32 1, %mul, !dbg !129
  store i32 %add, i32* %j5, align 4, !dbg !129, !tbaa !35
  %29 = load i32, i32* %4, align 4, !dbg !132, !tbaa !35
  %idxprom = sext i32 %29 to i64, !dbg !133
  %30 = mul nsw i64 %idxprom, %2, !dbg !133
  %arrayidx = getelementptr inbounds double, double* %3, i64 %30, !dbg !133
  %31 = load i32, i32* %j5, align 4, !dbg !134, !tbaa !35
  %sub8 = sub nsw i32 %31, 1, !dbg !135
  %idxprom9 = sext i32 %sub8 to i64, !dbg !133
  %arrayidx10 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom9, !dbg !133
  %32 = load double, double* %arrayidx10, align 8, !dbg !133, !tbaa !136
  %33 = load i32, i32* %4, align 4, !dbg !138, !tbaa !35
  %idxprom11 = sext i32 %33 to i64, !dbg !139
  %34 = mul nsw i64 %idxprom11, %2, !dbg !139
  %arrayidx12 = getelementptr inbounds double, double* %3, i64 %34, !dbg !139
  %35 = load i32, i32* %j5, align 4, !dbg !140, !tbaa !35
  %idxprom13 = sext i32 %35 to i64, !dbg !139
  %arrayidx14 = getelementptr inbounds double, double* %arrayidx12, i64 %idxprom13, !dbg !139
  store double %32, double* %arrayidx14, align 8, !dbg !141, !tbaa !136
  br label %omp.body.continue, !dbg !139

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !131

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  %add15 = add nsw i32 %36, 1, !dbg !127
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !127, !tbaa !35
  br label %omp.inner.for.cond, !dbg !131, !llvm.loop !142

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !131

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %38 = load i32, i32* %37, align 4, !dbg !131, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %38), !dbg !143
  %39 = bitcast i32* %j5 to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !131
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !131
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !131
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !131
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !131
  br label %omp.precond.end, !dbg !131

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = bitcast i32* %.capture_expr.3 to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !131
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !131
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !131
  ret void, !dbg !144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %m, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b, i32* nonnull align 4 dereferenceable(4) %i) #5 !dbg !145 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !147, metadata !DIExpression()), !dbg !154
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !148, metadata !DIExpression()), !dbg !154
  store i32* %m, i32** %m.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !149, metadata !DIExpression()), !dbg !154
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !123
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !150, metadata !DIExpression()), !dbg !154
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !123
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !151, metadata !DIExpression()), !dbg !154
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !152, metadata !DIExpression()), !dbg !154
  store i32* %i, i32** %i.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i32*, i32** %m.addr, align 8, !dbg !155, !tbaa !40
  %1 = load i64, i64* %vla.addr, align 8, !dbg !155, !tbaa !123
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !155, !tbaa !123
  %3 = load double*, double** %b.addr, align 8, !dbg !155, !tbaa !40
  %4 = load i32*, i32** %i.addr, align 8, !dbg !155, !tbaa !40
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !155, !tbaa !40
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !155, !tbaa !40
  %7 = load i32*, i32** %m.addr, align 8, !dbg !155, !tbaa !40
  %8 = load double*, double** %b.addr, align 8, !dbg !155, !tbaa !40
  %9 = load i32*, i32** %i.addr, align 8, !dbg !155, !tbaa !40
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i64 %2, double* %8, i32* %9) #4, !dbg !155
  ret void, !dbg !155
}

; Function Attrs: nounwind
declare !callback !156 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB038-truedepseconddimension-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !28, !29}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 52, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 52, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 54, type: !4)
!22 = !DILocalVariable(name: "j", scope: !15, file: !1, line: 54, type: !4)
!23 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 55, type: !4)
!24 = !DILocalVariable(name: "n", scope: !15, file: !1, line: 59, type: !4)
!25 = !DILocalVariable(name: "m", scope: !15, file: !1, line: 59, type: !4)
!26 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !27, flags: DIFlagArtificial)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocalVariable(name: "__vla_expr1", scope: !15, type: !27, flags: DIFlagArtificial)
!29 = !DILocalVariable(name: "b", scope: !15, file: !1, line: 60, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, elements: !32)
!31 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!32 = !{!33, !34}
!33 = !DISubrange(count: !26)
!34 = !DISubrange(count: !28)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 52, column: 14, scope: !15)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !DILocation(line: 52, column: 26, scope: !15)
!43 = !DILocation(line: 54, column: 3, scope: !15)
!44 = !DILocation(line: 54, column: 7, scope: !15)
!45 = !DILocation(line: 54, column: 9, scope: !15)
!46 = !DILocation(line: 55, column: 3, scope: !15)
!47 = !DILocation(line: 55, column: 7, scope: !15)
!48 = !DILocation(line: 56, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !15, file: !1, line: 56, column: 7)
!50 = !DILocation(line: 56, column: 11, scope: !49)
!51 = !DILocation(line: 56, column: 7, scope: !15)
!52 = !DILocation(line: 57, column: 16, scope: !49)
!53 = !DILocation(line: 57, column: 11, scope: !49)
!54 = !DILocation(line: 57, column: 9, scope: !49)
!55 = !DILocation(line: 57, column: 5, scope: !49)
!56 = !DILocation(line: 59, column: 3, scope: !15)
!57 = !DILocation(line: 59, column: 7, scope: !15)
!58 = !DILocation(line: 59, column: 9, scope: !15)
!59 = !DILocation(line: 59, column: 14, scope: !15)
!60 = !DILocation(line: 59, column: 16, scope: !15)
!61 = !DILocation(line: 60, column: 12, scope: !15)
!62 = !DILocation(line: 60, column: 3, scope: !15)
!63 = !DILocation(line: 60, column: 15, scope: !15)
!64 = !DILocation(line: 0, scope: !15)
!65 = !DILocation(line: 60, column: 10, scope: !15)
!66 = !DILocation(line: 62, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !15, file: !1, line: 62, column: 3)
!68 = !DILocation(line: 62, column: 8, scope: !67)
!69 = !DILocation(line: 62, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 62, column: 3)
!71 = !DILocation(line: 62, column: 14, scope: !70)
!72 = !DILocation(line: 62, column: 13, scope: !70)
!73 = !DILocation(line: 62, column: 3, scope: !67)
!74 = !DILocation(line: 63, column: 1, scope: !70)
!75 = !DILocation(line: 63, column: 25, scope: !76)
!76 = distinct !DILexicalBlock(scope: !70, file: !1, line: 63, column: 1)
!77 = !DILocation(line: 62, column: 17, scope: !70)
!78 = !DILocation(line: 62, column: 3, scope: !70)
!79 = distinct !{!79, !73, !80, !81}
!80 = !DILocation(line: 63, column: 25, scope: !67)
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !DILocation(line: 67, column: 3, scope: !15)
!83 = !DILocation(line: 68, column: 1, scope: !15)
!84 = distinct !DISubprogram(name: "atoi", scope: !85, file: !85, line: 361, type: !86, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !90)
!85 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!86 = !DISubroutineType(types: !87)
!87 = !{!4, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!90 = !{!91}
!91 = !DILocalVariable(name: "__nptr", arg: 1, scope: !84, file: !85, line: 361, type: !88)
!92 = !DILocation(line: 361, column: 1, scope: !84)
!93 = !DILocation(line: 363, column: 24, scope: !84)
!94 = !DILocation(line: 363, column: 16, scope: !84)
!95 = !DILocation(line: 363, column: 10, scope: !84)
!96 = !DILocation(line: 363, column: 3, scope: !84)
!97 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !98, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !106)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !100, !100, !104, !27, !27, !105, !104}
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!104 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !31, size: 64)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !115, !116, !117, !118, !119, !120, !116}
!107 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !97, type: !100, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !97, type: !100, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "m", arg: 3, scope: !97, file: !1, line: 59, type: !104)
!110 = !DILocalVariable(name: "vla", arg: 4, scope: !97, type: !27, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "vla", arg: 5, scope: !97, type: !27, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "b", arg: 6, scope: !97, file: !1, line: 60, type: !105)
!113 = !DILocalVariable(name: "i", arg: 7, scope: !97, file: !1, line: 54, type: !104)
!114 = !DILocalVariable(name: ".omp.iv", scope: !97, type: !4, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".capture_expr.", scope: !97, type: !4, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "j", scope: !97, type: !4, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".omp.lb", scope: !97, type: !4, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.ub", scope: !97, type: !4, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.stride", scope: !97, type: !4, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.is_last", scope: !97, type: !4, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !97)
!122 = !DILocation(line: 59, column: 14, scope: !97)
!123 = !{!124, !124, i64 0}
!124 = !{!"long", !37, i64 0}
!125 = !DILocation(line: 60, column: 10, scope: !97)
!126 = !DILocation(line: 54, column: 7, scope: !97)
!127 = !DILocation(line: 64, column: 5, scope: !97)
!128 = !DILocation(line: 64, column: 16, scope: !97)
!129 = !DILocation(line: 64, column: 18, scope: !97)
!130 = !DILocation(line: 64, column: 10, scope: !97)
!131 = !DILocation(line: 63, column: 1, scope: !97)
!132 = !DILocation(line: 65, column: 17, scope: !97)
!133 = !DILocation(line: 65, column: 15, scope: !97)
!134 = !DILocation(line: 65, column: 20, scope: !97)
!135 = !DILocation(line: 65, column: 21, scope: !97)
!136 = !{!137, !137, i64 0}
!137 = !{!"double", !37, i64 0}
!138 = !DILocation(line: 65, column: 9, scope: !97)
!139 = !DILocation(line: 65, column: 7, scope: !97)
!140 = !DILocation(line: 65, column: 12, scope: !97)
!141 = !DILocation(line: 65, column: 14, scope: !97)
!142 = distinct !{!142, !131, !143}
!143 = !DILocation(line: 63, column: 25, scope: !97)
!144 = !DILocation(line: 65, column: 23, scope: !97)
!145 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !98, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153}
!147 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !145, type: !100, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !145, type: !100, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "m", arg: 3, scope: !145, type: !104, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "vla", arg: 4, scope: !145, type: !27, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "vla", arg: 5, scope: !145, type: !27, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "b", arg: 6, scope: !145, type: !105, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: "i", arg: 7, scope: !145, type: !104, flags: DIFlagArtificial)
!154 = !DILocation(line: 0, scope: !145)
!155 = !DILocation(line: 63, column: 1, scope: !145)
!156 = !{!157}
!157 = !{i64 2, i64 -1, i64 -1, i1 true}
