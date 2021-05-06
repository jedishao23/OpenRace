; ModuleID = 'DRB015-outofbounds-var-yes.c'
source_filename = "DRB015-outofbounds-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [42 x i8] c";DRB015-outofbounds-var-yes.c;main;77;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [43 x i8] c";DRB015-outofbounds-var-yes.c;main;77;36;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8

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
  store i32 100, i32* %len, align 4, !dbg !47, !tbaa !35
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
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, i64 %11, i64 %13, double* %vla), !dbg !66
  store i32 0, i32* %retval, align 4, !dbg !67
  %16 = load i8*, i8** %saved_stack, align 8, !dbg !68
  call void @llvm.stackrestore(i8* %16), !dbg !68
  %17 = bitcast i32* %m to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !68
  %18 = bitcast i32* %n to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !68
  %19 = bitcast i32* %len to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !68
  %20 = bitcast i32* %j to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !68
  %21 = bitcast i32* %i to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !68
  %22 = load i32, i32* %retval, align 4, !dbg !68
  ret i32 %22, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !69 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !78, !tbaa !40
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !79
  %conv = trunc i64 %call to i32, !dbg !80
  ret i32 %conv, !dbg !81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32* nonnull align 4 dereferenceable(4) %m, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #5 !dbg !82 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
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
  %i5 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !107
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !93, metadata !DIExpression()), !dbg !107
  store i32* %n, i32** %n.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !94, metadata !DIExpression()), !dbg !108
  store i32* %m, i32** %m.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !95, metadata !DIExpression()), !dbg !109
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !96, metadata !DIExpression()), !dbg !107
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !97, metadata !DIExpression()), !dbg !107
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !98, metadata !DIExpression()), !dbg !112
  %0 = load i32*, i32** %n.addr, align 8, !dbg !113, !tbaa !40
  %1 = load i32*, i32** %m.addr, align 8, !dbg !113, !tbaa !40
  %2 = load i64, i64* %vla.addr, align 8, !dbg !113, !tbaa !110
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !113, !tbaa !110
  %4 = load double*, double** %b.addr, align 8, !dbg !113, !tbaa !40
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !99, metadata !DIExpression()), !dbg !107
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !100, metadata !DIExpression()), !dbg !107
  %7 = load i32, i32* %0, align 4, !dbg !114, !tbaa !35
  store i32 %7, i32* %.capture_expr., align 4, !dbg !114, !tbaa !35
  %8 = bitcast i32* %.capture_expr.3 to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !100, metadata !DIExpression()), !dbg !107
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !114, !tbaa !35
  %sub = sub nsw i32 %9, 1, !dbg !113
  %div = sdiv i32 %sub, 1, !dbg !113
  %sub4 = sub nsw i32 %div, 1, !dbg !113
  store i32 %sub4, i32* %.capture_expr.3, align 4, !dbg !113, !tbaa !35
  %10 = bitcast i32* %i to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %i, metadata !101, metadata !DIExpression()), !dbg !107
  store i32 1, i32* %i, align 4, !dbg !115, !tbaa !35
  %11 = bitcast i32* %i to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !113
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !114, !tbaa !35
  %cmp = icmp slt i32 1, %12, !dbg !113
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !113

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !102, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %.omp.lb, align 4, !dbg !116, !tbaa !35
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !103, metadata !DIExpression()), !dbg !107
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !113, !tbaa !35
  store i32 %15, i32* %.omp.ub, align 4, !dbg !116, !tbaa !35
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !104, metadata !DIExpression()), !dbg !107
  store i32 1, i32* %.omp.stride, align 4, !dbg !116, !tbaa !35
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !105, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %.omp.is_last, align 4, !dbg !116, !tbaa !35
  %18 = bitcast i32* %j to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %j, metadata !106, metadata !DIExpression()), !dbg !107
  %19 = bitcast i32* %i5 to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !101, metadata !DIExpression()), !dbg !107
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !113
  %21 = load i32, i32* %20, align 4, !dbg !113, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !117
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !35
  %23 = load i32, i32* %.capture_expr.3, align 4, !dbg !113, !tbaa !35
  %cmp6 = icmp sgt i32 %22, %23, !dbg !116
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !116

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.3, align 4, !dbg !113, !tbaa !35
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !35
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !116
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !116, !tbaa !35
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !116, !tbaa !35
  store i32 %26, i32* %.omp.iv, align 4, !dbg !116, !tbaa !35
  br label %omp.inner.for.cond, !dbg !113

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !35
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !35
  %cmp7 = icmp sle i32 %27, %28, !dbg !113
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !113

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !113

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !35
  %mul = mul nsw i32 %29, 1, !dbg !115
  %add = add nsw i32 1, %mul, !dbg !115
  store i32 %add, i32* %i5, align 4, !dbg !115, !tbaa !35
  store i32 0, i32* %j, align 4, !dbg !118, !tbaa !35
  br label %for.cond, !dbg !120

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %30 = load i32, i32* %j, align 4, !dbg !121, !tbaa !35
  %31 = load i32, i32* %1, align 4, !dbg !123, !tbaa !35
  %cmp8 = icmp slt i32 %30, %31, !dbg !124
  br i1 %cmp8, label %for.body, label %for.end, !dbg !125

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i5, align 4, !dbg !126, !tbaa !35
  %idxprom = sext i32 %32 to i64, !dbg !127
  %33 = mul nsw i64 %idxprom, %3, !dbg !127
  %arrayidx = getelementptr inbounds double, double* %4, i64 %33, !dbg !127
  %34 = load i32, i32* %j, align 4, !dbg !128, !tbaa !35
  %sub9 = sub nsw i32 %34, 1, !dbg !129
  %idxprom10 = sext i32 %sub9 to i64, !dbg !127
  %arrayidx11 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom10, !dbg !127
  %35 = load double, double* %arrayidx11, align 8, !dbg !127, !tbaa !130
  %36 = load i32, i32* %i5, align 4, !dbg !132, !tbaa !35
  %idxprom12 = sext i32 %36 to i64, !dbg !133
  %37 = mul nsw i64 %idxprom12, %3, !dbg !133
  %arrayidx13 = getelementptr inbounds double, double* %4, i64 %37, !dbg !133
  %38 = load i32, i32* %j, align 4, !dbg !134, !tbaa !35
  %idxprom14 = sext i32 %38 to i64, !dbg !133
  %arrayidx15 = getelementptr inbounds double, double* %arrayidx13, i64 %idxprom14, !dbg !133
  store double %35, double* %arrayidx15, align 8, !dbg !135, !tbaa !130
  br label %for.inc, !dbg !133

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %j, align 4, !dbg !136, !tbaa !35
  %inc = add nsw i32 %39, 1, !dbg !136
  store i32 %inc, i32* %j, align 4, !dbg !136, !tbaa !35
  br label %for.cond, !dbg !137, !llvm.loop !138

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !139

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !117

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %40 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !35
  %add16 = add nsw i32 %40, 1, !dbg !113
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !113, !tbaa !35
  br label %omp.inner.for.cond, !dbg !117, !llvm.loop !141

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !117

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !117
  %42 = load i32, i32* %41, align 4, !dbg !117, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %42), !dbg !142
  %43 = bitcast i32* %i5 to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !117
  %44 = bitcast i32* %j to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !117
  %45 = bitcast i32* %.omp.is_last to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !117
  %46 = bitcast i32* %.omp.stride to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !117
  %47 = bitcast i32* %.omp.ub to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !117
  %48 = bitcast i32* %.omp.lb to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !117
  br label %omp.precond.end, !dbg !117

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %49 = bitcast i32* %.capture_expr.3 to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !117
  %50 = bitcast i32* %.capture_expr. to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !117
  %51 = bitcast i32* %.omp.iv to i8*, !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !117
  ret void, !dbg !143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32* nonnull align 4 dereferenceable(4) %m, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #5 !dbg !144 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !146, metadata !DIExpression()), !dbg !153
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !147, metadata !DIExpression()), !dbg !153
  store i32* %n, i32** %n.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !148, metadata !DIExpression()), !dbg !153
  store i32* %m, i32** %m.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !149, metadata !DIExpression()), !dbg !153
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !150, metadata !DIExpression()), !dbg !153
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !151, metadata !DIExpression()), !dbg !153
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load i32*, i32** %n.addr, align 8, !dbg !154, !tbaa !40
  %1 = load i32*, i32** %m.addr, align 8, !dbg !154, !tbaa !40
  %2 = load i64, i64* %vla.addr, align 8, !dbg !154, !tbaa !110
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !154, !tbaa !110
  %4 = load double*, double** %b.addr, align 8, !dbg !154, !tbaa !40
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !154, !tbaa !40
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !154, !tbaa !40
  %7 = load i32*, i32** %n.addr, align 8, !dbg !154, !tbaa !40
  %8 = load i32*, i32** %m.addr, align 8, !dbg !154, !tbaa !40
  %9 = load double*, double** %b.addr, align 8, !dbg !154, !tbaa !40
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i32* %8, i64 %2, i64 %3, double* %9) #4, !dbg !154
  ret void, !dbg !154
}

; Function Attrs: nounwind
declare !callback !155 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB015-outofbounds-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !16, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !28, !29}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 68, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 68, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 70, type: !4)
!22 = !DILocalVariable(name: "j", scope: !15, file: !1, line: 70, type: !4)
!23 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 71, type: !4)
!24 = !DILocalVariable(name: "n", scope: !15, file: !1, line: 75, type: !4)
!25 = !DILocalVariable(name: "m", scope: !15, file: !1, line: 75, type: !4)
!26 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !27, flags: DIFlagArtificial)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocalVariable(name: "__vla_expr1", scope: !15, type: !27, flags: DIFlagArtificial)
!29 = !DILocalVariable(name: "b", scope: !15, file: !1, line: 76, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, elements: !32)
!31 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!32 = !{!33, !34}
!33 = !DISubrange(count: !26)
!34 = !DISubrange(count: !28)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 68, column: 14, scope: !15)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !DILocation(line: 68, column: 26, scope: !15)
!43 = !DILocation(line: 70, column: 3, scope: !15)
!44 = !DILocation(line: 70, column: 7, scope: !15)
!45 = !DILocation(line: 70, column: 9, scope: !15)
!46 = !DILocation(line: 71, column: 3, scope: !15)
!47 = !DILocation(line: 71, column: 7, scope: !15)
!48 = !DILocation(line: 72, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !15, file: !1, line: 72, column: 7)
!50 = !DILocation(line: 72, column: 11, scope: !49)
!51 = !DILocation(line: 72, column: 7, scope: !15)
!52 = !DILocation(line: 73, column: 16, scope: !49)
!53 = !DILocation(line: 73, column: 11, scope: !49)
!54 = !DILocation(line: 73, column: 9, scope: !49)
!55 = !DILocation(line: 73, column: 5, scope: !49)
!56 = !DILocation(line: 75, column: 3, scope: !15)
!57 = !DILocation(line: 75, column: 7, scope: !15)
!58 = !DILocation(line: 75, column: 9, scope: !15)
!59 = !DILocation(line: 75, column: 14, scope: !15)
!60 = !DILocation(line: 75, column: 16, scope: !15)
!61 = !DILocation(line: 76, column: 12, scope: !15)
!62 = !DILocation(line: 76, column: 3, scope: !15)
!63 = !DILocation(line: 76, column: 15, scope: !15)
!64 = !DILocation(line: 0, scope: !15)
!65 = !DILocation(line: 76, column: 10, scope: !15)
!66 = !DILocation(line: 77, column: 1, scope: !15)
!67 = !DILocation(line: 82, column: 2, scope: !15)
!68 = !DILocation(line: 83, column: 1, scope: !15)
!69 = distinct !DISubprogram(name: "atoi", scope: !70, file: !70, line: 361, type: !71, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !75)
!70 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!71 = !DISubroutineType(types: !72)
!72 = !{!4, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!75 = !{!76}
!76 = !DILocalVariable(name: "__nptr", arg: 1, scope: !69, file: !70, line: 361, type: !73)
!77 = !DILocation(line: 361, column: 1, scope: !69)
!78 = !DILocation(line: 363, column: 24, scope: !69)
!79 = !DILocation(line: 363, column: 16, scope: !69)
!80 = !DILocation(line: 363, column: 10, scope: !69)
!81 = !DILocation(line: 363, column: 3, scope: !69)
!82 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 78, type: !83, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !85, !89, !89, !27, !27, !90}
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!89 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !31, size: 64)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !100, !101, !102, !103, !104, !105, !106, !101}
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !85, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !82, type: !85, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "n", arg: 3, scope: !82, file: !1, line: 75, type: !89)
!95 = !DILocalVariable(name: "m", arg: 4, scope: !82, file: !1, line: 75, type: !89)
!96 = !DILocalVariable(name: "vla", arg: 5, scope: !82, type: !27, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "vla", arg: 6, scope: !82, type: !27, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "b", arg: 7, scope: !82, file: !1, line: 76, type: !90)
!99 = !DILocalVariable(name: ".omp.iv", scope: !82, type: !4, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".capture_expr.", scope: !82, type: !4, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "i", scope: !82, type: !4, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.lb", scope: !82, type: !4, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.ub", scope: !82, type: !4, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.stride", scope: !82, type: !4, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.is_last", scope: !82, type: !4, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "j", scope: !82, type: !4, flags: DIFlagArtificial)
!107 = !DILocation(line: 0, scope: !82)
!108 = !DILocation(line: 75, column: 7, scope: !82)
!109 = !DILocation(line: 75, column: 14, scope: !82)
!110 = !{!111, !111, i64 0}
!111 = !{!"long", !37, i64 0}
!112 = !DILocation(line: 76, column: 10, scope: !82)
!113 = !DILocation(line: 78, column: 3, scope: !82)
!114 = !DILocation(line: 78, column: 14, scope: !82)
!115 = !DILocation(line: 78, column: 16, scope: !82)
!116 = !DILocation(line: 78, column: 8, scope: !82)
!117 = !DILocation(line: 77, column: 1, scope: !82)
!118 = !DILocation(line: 79, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !82, file: !1, line: 79, column: 5)
!120 = !DILocation(line: 79, column: 10, scope: !119)
!121 = !DILocation(line: 79, column: 14, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 79, column: 5)
!123 = !DILocation(line: 79, column: 16, scope: !122)
!124 = !DILocation(line: 79, column: 15, scope: !122)
!125 = !DILocation(line: 79, column: 5, scope: !119)
!126 = !DILocation(line: 80, column: 17, scope: !122)
!127 = !DILocation(line: 80, column: 15, scope: !122)
!128 = !DILocation(line: 80, column: 20, scope: !122)
!129 = !DILocation(line: 80, column: 21, scope: !122)
!130 = !{!131, !131, i64 0}
!131 = !{!"double", !37, i64 0}
!132 = !DILocation(line: 80, column: 9, scope: !122)
!133 = !DILocation(line: 80, column: 7, scope: !122)
!134 = !DILocation(line: 80, column: 12, scope: !122)
!135 = !DILocation(line: 80, column: 14, scope: !122)
!136 = !DILocation(line: 79, column: 19, scope: !122)
!137 = !DILocation(line: 79, column: 5, scope: !122)
!138 = distinct !{!138, !125, !139, !140}
!139 = !DILocation(line: 80, column: 23, scope: !119)
!140 = !{!"llvm.loop.unroll.disable"}
!141 = distinct !{!141, !117, !142}
!142 = !DILocation(line: 77, column: 36, scope: !82)
!143 = !DILocation(line: 80, column: 23, scope: !82)
!144 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 77, type: !83, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152}
!146 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !144, type: !85, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !144, type: !85, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "n", arg: 3, scope: !144, type: !89, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "m", arg: 4, scope: !144, type: !89, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "vla", arg: 5, scope: !144, type: !27, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "vla", arg: 6, scope: !144, type: !27, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "b", arg: 7, scope: !144, type: !90, flags: DIFlagArtificial)
!153 = !DILocation(line: 0, scope: !144)
!154 = !DILocation(line: 77, column: 1, scope: !144)
!155 = !{!156}
!156 = !{i64 2, i64 -1, i64 -1, i1 true}
