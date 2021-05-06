; ModuleID = 'DRB014-outofbounds-orig-yes.c'
source_filename = "DRB014-outofbounds-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [43 x i8] c";DRB014-outofbounds-orig-yes.c;main;72;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [44 x i8] c";DRB014-outofbounds-orig-yes.c;main;72;36;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"b[50][50]=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !32
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !36
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !39
  %0 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !41
  %1 = bitcast i32* %j to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !42
  %2 = bitcast i32* %n to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %n, metadata !21, metadata !DIExpression()), !dbg !44
  store i32 100, i32* %n, align 4, !dbg !44, !tbaa !32
  %3 = bitcast i32* %m to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %m, metadata !22, metadata !DIExpression()), !dbg !45
  store i32 100, i32* %m, align 4, !dbg !45, !tbaa !32
  %4 = load i32, i32* %n, align 4, !dbg !46, !tbaa !32
  %5 = zext i32 %4 to i64, !dbg !47
  %6 = load i32, i32* %m, align 4, !dbg !48, !tbaa !32
  %7 = zext i32 %6 to i64, !dbg !47
  %8 = call i8* @llvm.stacksave(), !dbg !47
  store i8* %8, i8** %saved_stack, align 8, !dbg !47
  %9 = mul nuw i64 %5, %7, !dbg !47
  %vla = alloca double, i64 %9, align 16, !dbg !47
  store i64 %5, i64* %__vla_expr0, align 8, !dbg !47
  store i64 %7, i64* %__vla_expr1, align 8, !dbg !47
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !23, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !25, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata double* %vla, metadata !26, metadata !DIExpression()), !dbg !50
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, i64 %5, i64 %7, double* %vla), !dbg !51
  %10 = mul nsw i64 50, %7, !dbg !52
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %10, !dbg !52
  %arrayidx1 = getelementptr inbounds double, double* %arrayidx, i64 50, !dbg !52
  %11 = load double, double* %arrayidx1, align 8, !dbg !52, !tbaa !53
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %11), !dbg !55
  store i32 0, i32* %retval, align 4, !dbg !56
  %12 = load i8*, i8** %saved_stack, align 8, !dbg !57
  call void @llvm.stackrestore(i8* %12), !dbg !57
  %13 = bitcast i32* %m to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !57
  %14 = bitcast i32* %n to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3, !dbg !57
  %15 = bitcast i32* %j to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3, !dbg !57
  %16 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !57
  %17 = load i32, i32* %retval, align 4, !dbg !57
  ret i32 %17, !dbg !57
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32* nonnull align 4 dereferenceable(4) %m, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !58 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !68, metadata !DIExpression()), !dbg !83
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !69, metadata !DIExpression()), !dbg !83
  store i32* %n, i32** %n.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !70, metadata !DIExpression()), !dbg !84
  store i32* %m, i32** %m.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !71, metadata !DIExpression()), !dbg !85
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !72, metadata !DIExpression()), !dbg !83
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !73, metadata !DIExpression()), !dbg !83
  store double* %b, double** %b.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !74, metadata !DIExpression()), !dbg !88
  %0 = load i32*, i32** %n.addr, align 8, !dbg !89, !tbaa !37
  %1 = load i32*, i32** %m.addr, align 8, !dbg !89, !tbaa !37
  %2 = load i64, i64* %vla.addr, align 8, !dbg !89, !tbaa !86
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !89, !tbaa !86
  %4 = load double*, double** %b.addr, align 8, !dbg !89, !tbaa !37
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !75, metadata !DIExpression()), !dbg !83
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !76, metadata !DIExpression()), !dbg !83
  %7 = load i32, i32* %0, align 4, !dbg !90, !tbaa !32
  store i32 %7, i32* %.capture_expr., align 4, !dbg !90, !tbaa !32
  %8 = bitcast i32* %.capture_expr.3 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !76, metadata !DIExpression()), !dbg !83
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !90, !tbaa !32
  %sub = sub nsw i32 %9, 1, !dbg !89
  %div = sdiv i32 %sub, 1, !dbg !89
  %sub4 = sub nsw i32 %div, 1, !dbg !89
  store i32 %sub4, i32* %.capture_expr.3, align 4, !dbg !89, !tbaa !32
  %10 = bitcast i32* %i to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %i, metadata !77, metadata !DIExpression()), !dbg !83
  store i32 1, i32* %i, align 4, !dbg !91, !tbaa !32
  %11 = bitcast i32* %i to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3, !dbg !89
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !90, !tbaa !32
  %cmp = icmp slt i32 1, %12, !dbg !89
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !89

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !78, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %.omp.lb, align 4, !dbg !92, !tbaa !32
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !79, metadata !DIExpression()), !dbg !83
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !89, !tbaa !32
  store i32 %15, i32* %.omp.ub, align 4, !dbg !92, !tbaa !32
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !80, metadata !DIExpression()), !dbg !83
  store i32 1, i32* %.omp.stride, align 4, !dbg !92, !tbaa !32
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !81, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %.omp.is_last, align 4, !dbg !92, !tbaa !32
  %18 = bitcast i32* %j to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %j, metadata !82, metadata !DIExpression()), !dbg !83
  %19 = bitcast i32* %i5 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !77, metadata !DIExpression()), !dbg !83
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %21 = load i32, i32* %20, align 4, !dbg !89, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !93
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !32
  %23 = load i32, i32* %.capture_expr.3, align 4, !dbg !89, !tbaa !32
  %cmp6 = icmp sgt i32 %22, %23, !dbg !92
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !92

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.3, align 4, !dbg !89, !tbaa !32
  br label %cond.end, !dbg !92

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !32
  br label %cond.end, !dbg !92

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !92
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !92, !tbaa !32
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !92, !tbaa !32
  store i32 %26, i32* %.omp.iv, align 4, !dbg !92, !tbaa !32
  br label %omp.inner.for.cond, !dbg !89

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !32
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !32
  %cmp7 = icmp sle i32 %27, %28, !dbg !89
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !89

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !89

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !32
  %mul = mul nsw i32 %29, 1, !dbg !91
  %add = add nsw i32 1, %mul, !dbg !91
  store i32 %add, i32* %i5, align 4, !dbg !91, !tbaa !32
  store i32 0, i32* %j, align 4, !dbg !94, !tbaa !32
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %30 = load i32, i32* %j, align 4, !dbg !97, !tbaa !32
  %31 = load i32, i32* %1, align 4, !dbg !99, !tbaa !32
  %cmp8 = icmp slt i32 %30, %31, !dbg !100
  br i1 %cmp8, label %for.body, label %for.end, !dbg !101

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i5, align 4, !dbg !102, !tbaa !32
  %idxprom = sext i32 %32 to i64, !dbg !103
  %33 = mul nsw i64 %idxprom, %3, !dbg !103
  %arrayidx = getelementptr inbounds double, double* %4, i64 %33, !dbg !103
  %34 = load i32, i32* %j, align 4, !dbg !104, !tbaa !32
  %sub9 = sub nsw i32 %34, 1, !dbg !105
  %idxprom10 = sext i32 %sub9 to i64, !dbg !103
  %arrayidx11 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom10, !dbg !103
  %35 = load double, double* %arrayidx11, align 8, !dbg !103, !tbaa !53
  %36 = load i32, i32* %i5, align 4, !dbg !106, !tbaa !32
  %idxprom12 = sext i32 %36 to i64, !dbg !107
  %37 = mul nsw i64 %idxprom12, %3, !dbg !107
  %arrayidx13 = getelementptr inbounds double, double* %4, i64 %37, !dbg !107
  %38 = load i32, i32* %j, align 4, !dbg !108, !tbaa !32
  %idxprom14 = sext i32 %38 to i64, !dbg !107
  %arrayidx15 = getelementptr inbounds double, double* %arrayidx13, i64 %idxprom14, !dbg !107
  store double %35, double* %arrayidx15, align 8, !dbg !109, !tbaa !53
  br label %for.inc, !dbg !107

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %j, align 4, !dbg !110, !tbaa !32
  %inc = add nsw i32 %39, 1, !dbg !110
  store i32 %inc, i32* %j, align 4, !dbg !110, !tbaa !32
  br label %for.cond, !dbg !111, !llvm.loop !112

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !113

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !93

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %40 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !32
  %add16 = add nsw i32 %40, 1, !dbg !89
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !89, !tbaa !32
  br label %omp.inner.for.cond, !dbg !93, !llvm.loop !115

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !93

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !93
  %42 = load i32, i32* %41, align 4, !dbg !93, !tbaa !32
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %42), !dbg !116
  %43 = bitcast i32* %i5 to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !93
  %44 = bitcast i32* %j to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3, !dbg !93
  %45 = bitcast i32* %.omp.is_last to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !93
  %46 = bitcast i32* %.omp.stride to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !93
  %47 = bitcast i32* %.omp.ub to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3, !dbg !93
  %48 = bitcast i32* %.omp.lb to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3, !dbg !93
  br label %omp.precond.end, !dbg !93

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %49 = bitcast i32* %.capture_expr.3 to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3, !dbg !93
  %50 = bitcast i32* %.capture_expr. to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3, !dbg !93
  %51 = bitcast i32* %.omp.iv to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3, !dbg !93
  ret void, !dbg !117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32* nonnull align 4 dereferenceable(4) %m, i64 %vla, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !118 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !127
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !121, metadata !DIExpression()), !dbg !127
  store i32* %n, i32** %n.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !122, metadata !DIExpression()), !dbg !127
  store i32* %m, i32** %m.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !123, metadata !DIExpression()), !dbg !127
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !124, metadata !DIExpression()), !dbg !127
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !125, metadata !DIExpression()), !dbg !127
  store double* %b, double** %b.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = load i32*, i32** %n.addr, align 8, !dbg !128, !tbaa !37
  %1 = load i32*, i32** %m.addr, align 8, !dbg !128, !tbaa !37
  %2 = load i64, i64* %vla.addr, align 8, !dbg !128, !tbaa !86
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !128, !tbaa !86
  %4 = load double*, double** %b.addr, align 8, !dbg !128, !tbaa !37
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !128, !tbaa !37
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !128, !tbaa !37
  %7 = load i32*, i32** %n.addr, align 8, !dbg !128, !tbaa !37
  %8 = load i32*, i32** %m.addr, align 8, !dbg !128, !tbaa !37
  %9 = load double*, double** %b.addr, align 8, !dbg !128, !tbaa !37
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i32* %8, i64 %2, i64 %3, double* %9) #3, !dbg !128
  ret void, !dbg !128
}

; Function Attrs: nounwind
declare !callback !129 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB014-outofbounds-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !10, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !25, !26}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 67, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 67, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 69, type: !12)
!20 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 69, type: !12)
!21 = !DILocalVariable(name: "n", scope: !9, file: !1, line: 70, type: !12)
!22 = !DILocalVariable(name: "m", scope: !9, file: !1, line: 70, type: !12)
!23 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !24, flags: DIFlagArtificial)
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "__vla_expr1", scope: !9, type: !24, flags: DIFlagArtificial)
!26 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 71, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, elements: !29)
!28 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!29 = !{!30, !31}
!30 = !DISubrange(count: !23)
!31 = !DISubrange(count: !25)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 67, column: 14, scope: !9)
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !34, i64 0}
!39 = !DILocation(line: 67, column: 26, scope: !9)
!40 = !DILocation(line: 69, column: 3, scope: !9)
!41 = !DILocation(line: 69, column: 7, scope: !9)
!42 = !DILocation(line: 69, column: 9, scope: !9)
!43 = !DILocation(line: 70, column: 3, scope: !9)
!44 = !DILocation(line: 70, column: 7, scope: !9)
!45 = !DILocation(line: 70, column: 14, scope: !9)
!46 = !DILocation(line: 71, column: 12, scope: !9)
!47 = !DILocation(line: 71, column: 3, scope: !9)
!48 = !DILocation(line: 71, column: 15, scope: !9)
!49 = !DILocation(line: 0, scope: !9)
!50 = !DILocation(line: 71, column: 10, scope: !9)
!51 = !DILocation(line: 72, column: 1, scope: !9)
!52 = !DILocation(line: 77, column: 28, scope: !9)
!53 = !{!54, !54, i64 0}
!54 = !{!"double", !34, i64 0}
!55 = !DILocation(line: 77, column: 3, scope: !9)
!56 = !DILocation(line: 79, column: 3, scope: !9)
!57 = !DILocation(line: 80, column: 1, scope: !9)
!58 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 73, type: !59, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !61, !65, !65, !24, !24, !66}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !28, size: 64)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !76, !77, !78, !79, !80, !81, !82, !77}
!68 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !61, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !58, type: !61, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "n", arg: 3, scope: !58, file: !1, line: 70, type: !65)
!71 = !DILocalVariable(name: "m", arg: 4, scope: !58, file: !1, line: 70, type: !65)
!72 = !DILocalVariable(name: "vla", arg: 5, scope: !58, type: !24, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "vla", arg: 6, scope: !58, type: !24, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "b", arg: 7, scope: !58, file: !1, line: 71, type: !66)
!75 = !DILocalVariable(name: ".omp.iv", scope: !58, type: !12, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".capture_expr.", scope: !58, type: !12, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "i", scope: !58, type: !12, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.lb", scope: !58, type: !12, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.ub", scope: !58, type: !12, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.stride", scope: !58, type: !12, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.is_last", scope: !58, type: !12, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "j", scope: !58, type: !12, flags: DIFlagArtificial)
!83 = !DILocation(line: 0, scope: !58)
!84 = !DILocation(line: 70, column: 7, scope: !58)
!85 = !DILocation(line: 70, column: 14, scope: !58)
!86 = !{!87, !87, i64 0}
!87 = !{!"long", !34, i64 0}
!88 = !DILocation(line: 71, column: 10, scope: !58)
!89 = !DILocation(line: 73, column: 3, scope: !58)
!90 = !DILocation(line: 73, column: 14, scope: !58)
!91 = !DILocation(line: 73, column: 16, scope: !58)
!92 = !DILocation(line: 73, column: 8, scope: !58)
!93 = !DILocation(line: 72, column: 1, scope: !58)
!94 = !DILocation(line: 74, column: 11, scope: !95)
!95 = distinct !DILexicalBlock(scope: !58, file: !1, line: 74, column: 5)
!96 = !DILocation(line: 74, column: 10, scope: !95)
!97 = !DILocation(line: 74, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 74, column: 5)
!99 = !DILocation(line: 74, column: 16, scope: !98)
!100 = !DILocation(line: 74, column: 15, scope: !98)
!101 = !DILocation(line: 74, column: 5, scope: !95)
!102 = !DILocation(line: 75, column: 17, scope: !98)
!103 = !DILocation(line: 75, column: 15, scope: !98)
!104 = !DILocation(line: 75, column: 20, scope: !98)
!105 = !DILocation(line: 75, column: 21, scope: !98)
!106 = !DILocation(line: 75, column: 9, scope: !98)
!107 = !DILocation(line: 75, column: 7, scope: !98)
!108 = !DILocation(line: 75, column: 12, scope: !98)
!109 = !DILocation(line: 75, column: 14, scope: !98)
!110 = !DILocation(line: 74, column: 19, scope: !98)
!111 = !DILocation(line: 74, column: 5, scope: !98)
!112 = distinct !{!112, !101, !113, !114}
!113 = !DILocation(line: 75, column: 23, scope: !95)
!114 = !{!"llvm.loop.unroll.disable"}
!115 = distinct !{!115, !93, !116}
!116 = !DILocation(line: 72, column: 36, scope: !58)
!117 = !DILocation(line: 75, column: 23, scope: !58)
!118 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 72, type: !59, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126}
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !118, type: !61, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !118, type: !61, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "n", arg: 3, scope: !118, type: !65, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "m", arg: 4, scope: !118, type: !65, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "vla", arg: 5, scope: !118, type: !24, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "vla", arg: 6, scope: !118, type: !24, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: "b", arg: 7, scope: !118, type: !66, flags: DIFlagArtificial)
!127 = !DILocation(line: 0, scope: !118)
!128 = !DILocation(line: 72, column: 1, scope: !118)
!129 = !{!130}
!130 = !{i64 2, i64 -1, i64 -1, i1 true}
