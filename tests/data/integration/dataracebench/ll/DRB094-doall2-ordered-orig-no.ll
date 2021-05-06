; ModuleID = 'DRB094-doall2-ordered-orig-no.c'
source_filename = "DRB094-doall2-ordered-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_dim = type { i64, i64, i64 }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [45 x i8] c";DRB094-doall2-ordered-orig-no.c;main;62;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [46 x i8] c";DRB094-doall2-ordered-orig-no.c;main;62;36;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [46 x i8] c";DRB094-doall2-ordered-orig-no.c;main;67;21;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @5, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [46 x i8] c";DRB094-doall2-ordered-orig-no.c;main;67;40;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @7, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"test i=%d j=%d\0A\00", align 1
@9 = private unnamed_addr constant [46 x i8] c";DRB094-doall2-ordered-orig-no.c;main;69;21;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @9, i32 0, i32 0) }, align 8
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !23
  %1 = bitcast i32* %j to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %j, metadata !21, metadata !DIExpression()), !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !25
  %2 = bitcast i32* %j to i8*, !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !26
  %3 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dims = alloca [2 x %struct.kmp_dim], align 8
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.cnt.addr = alloca [2 x i64], align 8
  %.cnt.addr15 = alloca [2 x i64], align 8
  %.cnt.addr23 = alloca [2 x i64], align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !48
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !38, metadata !DIExpression()), !dbg !48
  %1 = bitcast [2 x %struct.kmp_dim]* %dims to i8*, !dbg !49
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 48, i1 false), !dbg !49
  %2 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %dims, i64 0, i64 0, !dbg !49
  %3 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %2, i32 0, i32 1, !dbg !49
  store i64 100, i64* %3, align 8, !dbg !49, !tbaa !50
  %4 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %2, i32 0, i32 2, !dbg !49
  store i64 1, i64* %4, align 8, !dbg !49, !tbaa !53
  %5 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %dims, i64 0, i64 1, !dbg !49
  %6 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %5, i32 0, i32 1, !dbg !49
  store i64 100, i64* %6, align 8, !dbg !49, !tbaa !50
  %7 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %5, i32 0, i32 2, !dbg !49
  store i64 1, i64* %7, align 8, !dbg !49, !tbaa !53
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !49
  %9 = load i32, i32* %8, align 4, !dbg !49, !tbaa !54
  %10 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %dims, i64 0, i64 0, !dbg !49
  %11 = bitcast %struct.kmp_dim* %10 to i8*, !dbg !49
  call void @__kmpc_doacross_init(%struct.ident_t* @1, i32 %9, i32 2, i8* %11), !dbg !49
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !39, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %.omp.lb, align 4, !dbg !56, !tbaa !54
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !40, metadata !DIExpression()), !dbg !48
  store i32 99, i32* %.omp.ub, align 4, !dbg !56, !tbaa !54
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !41, metadata !DIExpression()), !dbg !48
  store i32 1, i32* %.omp.stride, align 4, !dbg !56, !tbaa !54
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !42, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %.omp.is_last, align 4, !dbg !56, !tbaa !54
  %16 = bitcast i32* %i to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !43, metadata !DIExpression()), !dbg !48
  call void @__kmpc_for_static_init_4(%struct.ident_t* @4, i32 %9, i32 33, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !57
  br label %omp.dispatch.cond, !dbg !49

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !54
  %cmp = icmp sgt i32 %17, 99, !dbg !56
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !56

cond.true:                                        ; preds = %omp.dispatch.cond
  br label %cond.end, !dbg !56

cond.false:                                       ; preds = %omp.dispatch.cond
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !54
  br label %cond.end, !dbg !56

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %18, %cond.false ], !dbg !56
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !56, !tbaa !54
  %19 = load i32, i32* %.omp.lb, align 4, !dbg !56, !tbaa !54
  store i32 %19, i32* %.omp.iv, align 4, !dbg !56, !tbaa !54
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !54
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !54
  %cmp1 = icmp sle i32 %20, %21, !dbg !49
  br i1 %cmp1, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !49

omp.dispatch.cleanup:                             ; preds = %cond.end
  br label %omp.dispatch.end, !dbg !49

omp.dispatch.body:                                ; preds = %cond.end
  br label %omp.inner.for.cond, !dbg !49

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !54
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !54
  %cmp2 = icmp sle i32 %22, %23, !dbg !49
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !49

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !49

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !54
  %mul = mul nsw i32 %24, 1, !dbg !58
  %add = add nsw i32 0, %mul, !dbg !58
  store i32 %add, i32* %i, align 4, !dbg !58, !tbaa !54
  store i32 0, i32* %j, align 4, !dbg !59, !tbaa !54
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %25 = load i32, i32* %j, align 4, !dbg !62, !tbaa !54
  %cmp3 = icmp slt i32 %25, 100, !dbg !64
  br i1 %cmp3, label %for.body, label %for.end, !dbg !65

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !dbg !66, !tbaa !54
  %idxprom = sext i32 %26 to i64, !dbg !68
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !68
  %27 = load i32, i32* %j, align 4, !dbg !69, !tbaa !54
  %idxprom4 = sext i32 %27 to i64, !dbg !68
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !68
  %28 = load i32, i32* %arrayidx5, align 4, !dbg !68, !tbaa !54
  %add6 = add nsw i32 %28, 1, !dbg !70
  %29 = load i32, i32* %i, align 4, !dbg !71, !tbaa !54
  %idxprom7 = sext i32 %29 to i64, !dbg !72
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom7, !dbg !72
  %30 = load i32, i32* %j, align 4, !dbg !73, !tbaa !54
  %idxprom9 = sext i32 %30 to i64, !dbg !72
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !72
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !74, !tbaa !54
  %31 = load i32, i32* %i, align 4, !dbg !75, !tbaa !54
  %sub = sub nsw i32 %31, 1, !dbg !76
  %sub11 = sub nsw i32 %sub, 0, !dbg !77
  %div = sdiv i32 %sub11, 1, !dbg !77
  %conv = sext i32 %div to i64, !dbg !78
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr, i64 0, i64 0, !dbg !78
  store i64 %conv, i64* %32, align 8, !dbg !78, !tbaa !79
  %33 = load i32, i32* %j, align 4, !dbg !80, !tbaa !54
  %sub12 = sub nsw i32 %33, 0, !dbg !81
  %div13 = sdiv i32 %sub12, 1, !dbg !81
  %conv14 = sext i32 %div13 to i64, !dbg !78
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr, i64 0, i64 1, !dbg !78
  store i64 %conv14, i64* %34, align 8, !dbg !78, !tbaa !79
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr, i64 0, i64 0, !dbg !78
  call void @__kmpc_doacross_wait(%struct.ident_t* @6, i32 %9, i64* %35), !dbg !78
  %36 = load i32, i32* %i, align 4, !dbg !75, !tbaa !54
  %sub16 = sub nsw i32 %36, 0, !dbg !77
  %div17 = sdiv i32 %sub16, 1, !dbg !77
  %conv18 = sext i32 %div17 to i64, !dbg !78
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr15, i64 0, i64 0, !dbg !78
  store i64 %conv18, i64* %37, align 8, !dbg !78, !tbaa !79
  %38 = load i32, i32* %j, align 4, !dbg !80, !tbaa !54
  %sub19 = sub nsw i32 %38, 1, !dbg !82
  %sub20 = sub nsw i32 %sub19, 0, !dbg !81
  %div21 = sdiv i32 %sub20, 1, !dbg !81
  %conv22 = sext i32 %div21 to i64, !dbg !78
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr15, i64 0, i64 1, !dbg !78
  store i64 %conv22, i64* %39, align 8, !dbg !78, !tbaa !79
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr15, i64 0, i64 0, !dbg !78
  call void @__kmpc_doacross_wait(%struct.ident_t* @8, i32 %9, i64* %40), !dbg !78
  %41 = load i32, i32* %i, align 4, !dbg !83, !tbaa !54
  %42 = load i32, i32* %j, align 4, !dbg !84, !tbaa !54
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42), !dbg !85
  %43 = load i32, i32* %i, align 4, !dbg !75, !tbaa !54
  %sub24 = sub nsw i32 %43, 0, !dbg !77
  %div25 = sdiv i32 %sub24, 1, !dbg !77
  %conv26 = sext i32 %div25 to i64, !dbg !86
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr23, i64 0, i64 0, !dbg !86
  store i64 %conv26, i64* %44, align 8, !dbg !86, !tbaa !79
  %45 = load i32, i32* %j, align 4, !dbg !80, !tbaa !54
  %sub27 = sub nsw i32 %45, 0, !dbg !81
  %div28 = sdiv i32 %sub27, 1, !dbg !81
  %conv29 = sext i32 %div28 to i64, !dbg !86
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr23, i64 0, i64 1, !dbg !86
  store i64 %conv29, i64* %46, align 8, !dbg !86, !tbaa !79
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr23, i64 0, i64 0, !dbg !86
  call void @__kmpc_doacross_post(%struct.ident_t* @10, i32 %9, i64* %47), !dbg !86
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %j, align 4, !dbg !88, !tbaa !54
  %inc = add nsw i32 %48, 1, !dbg !88
  store i32 %inc, i32* %j, align 4, !dbg !88, !tbaa !54
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !91

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !57

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %49 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !54
  %add30 = add nsw i32 %49, 1, !dbg !49
  store i32 %add30, i32* %.omp.iv, align 4, !dbg !49, !tbaa !54
  br label %omp.inner.for.cond, !dbg !57, !llvm.loop !93

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !57

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  %50 = load i32, i32* %.omp.lb, align 4, !dbg !56, !tbaa !54
  %51 = load i32, i32* %.omp.stride, align 4, !dbg !56, !tbaa !54
  %add31 = add nsw i32 %50, %51, !dbg !49
  store i32 %add31, i32* %.omp.lb, align 4, !dbg !49, !tbaa !54
  %52 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !54
  %53 = load i32, i32* %.omp.stride, align 4, !dbg !56, !tbaa !54
  %add32 = add nsw i32 %52, %53, !dbg !49
  store i32 %add32, i32* %.omp.ub, align 4, !dbg !49, !tbaa !54
  br label %omp.dispatch.cond, !dbg !57, !llvm.loop !95

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  call void @__kmpc_for_static_fini(%struct.ident_t* @11, i32 %9), !dbg !94
  %54 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #5, !dbg !57
  %55 = bitcast i32* %.omp.is_last to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #5, !dbg !57
  %56 = bitcast i32* %.omp.stride to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #5, !dbg !57
  %57 = bitcast i32* %.omp.ub to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #5, !dbg !57
  %58 = bitcast i32* %.omp.lb to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #5, !dbg !57
  call void @__kmpc_doacross_fini(%struct.ident_t* @3, i32 %9), !dbg !57
  %59 = bitcast i32* %.omp.iv to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #5, !dbg !57
  ret void, !dbg !96
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @__kmpc_doacross_init(%struct.ident_t*, i32, i32, i8*) #5

; Function Attrs: nounwind
declare void @__kmpc_doacross_fini(%struct.ident_t*, i32) #5

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_doacross_wait(%struct.ident_t*, i32, i64*) #5

declare i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @__kmpc_doacross_post(%struct.ident_t*, i32, i64*) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !97 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !99, metadata !DIExpression()), !dbg !101
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102, !tbaa !44
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !102, !tbaa !44
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #5, !dbg !102
  ret void, !dbg !102
}

; Function Attrs: nounwind
declare !callback !103 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 58, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB094-doall2-ordered-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320000, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 59, type: !17, scopeLine: 60, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7}
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 61, type: !7)
!21 = !DILocalVariable(name: "j", scope: !16, file: !3, line: 61, type: !7)
!22 = !DILocation(line: 61, column: 3, scope: !16)
!23 = !DILocation(line: 61, column: 7, scope: !16)
!24 = !DILocation(line: 61, column: 10, scope: !16)
!25 = !DILocation(line: 62, column: 1, scope: !16)
!26 = !DILocation(line: 72, column: 1, scope: !16)
!27 = !DILocation(line: 71, column: 3, scope: !16)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 63, type: !29, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.iv", scope: !28, type: !7, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".omp.lb", scope: !28, type: !7, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.ub", scope: !28, type: !7, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.stride", scope: !28, type: !7, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.is_last", scope: !28, type: !7, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: "i", scope: !28, type: !7, flags: DIFlagArtificial)
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 0, scope: !28)
!49 = !DILocation(line: 63, column: 3, scope: !28)
!50 = !{!51, !52, i64 8}
!51 = !{!"kmp_dim", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"long", !46, i64 0}
!53 = !{!51, !52, i64 16}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !46, i64 0}
!56 = !DILocation(line: 63, column: 8, scope: !28)
!57 = !DILocation(line: 62, column: 1, scope: !28)
!58 = !DILocation(line: 63, column: 24, scope: !28)
!59 = !DILocation(line: 64, column: 12, scope: !60)
!60 = distinct !DILexicalBlock(scope: !28, file: !3, line: 64, column: 5)
!61 = !DILocation(line: 64, column: 10, scope: !60)
!62 = !DILocation(line: 64, column: 17, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !3, line: 64, column: 5)
!64 = !DILocation(line: 64, column: 19, scope: !63)
!65 = !DILocation(line: 64, column: 5, scope: !60)
!66 = !DILocation(line: 66, column: 19, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !3, line: 65, column: 5)
!68 = !DILocation(line: 66, column: 17, scope: !67)
!69 = !DILocation(line: 66, column: 22, scope: !67)
!70 = !DILocation(line: 66, column: 25, scope: !67)
!71 = !DILocation(line: 66, column: 9, scope: !67)
!72 = !DILocation(line: 66, column: 7, scope: !67)
!73 = !DILocation(line: 66, column: 12, scope: !67)
!74 = !DILocation(line: 66, column: 15, scope: !67)
!75 = !DILocation(line: 63, column: 8, scope: !67)
!76 = !DILocation(line: 67, column: 28, scope: !67)
!77 = !DILocation(line: 63, column: 3, scope: !67)
!78 = !DILocation(line: 67, column: 1, scope: !67)
!79 = !{!52, !52, i64 0}
!80 = !DILocation(line: 64, column: 10, scope: !67)
!81 = !DILocation(line: 64, column: 5, scope: !67)
!82 = !DILocation(line: 67, column: 48, scope: !67)
!83 = !DILocation(line: 68, column: 34, scope: !67)
!84 = !DILocation(line: 68, column: 36, scope: !67)
!85 = !DILocation(line: 68, column: 7, scope: !67)
!86 = !DILocation(line: 69, column: 1, scope: !67)
!87 = !DILocation(line: 70, column: 5, scope: !67)
!88 = !DILocation(line: 64, column: 27, scope: !63)
!89 = !DILocation(line: 64, column: 5, scope: !63)
!90 = distinct !{!90, !65, !91, !92}
!91 = !DILocation(line: 70, column: 5, scope: !60)
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !57, !94}
!94 = !DILocation(line: 62, column: 36, scope: !28)
!95 = distinct !{!95, !57, !94}
!96 = !DILocation(line: 70, column: 5, scope: !28)
!97 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 62, type: !29, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!98 = !{!99, !100}
!99 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !97, type: !31, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !97, type: !31, flags: DIFlagArtificial)
!101 = !DILocation(line: 0, scope: !97)
!102 = !DILocation(line: 62, column: 1, scope: !97)
!103 = !{!104}
!104 = !{i64 2, i64 -1, i64 -1, i1 true}
