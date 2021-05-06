; ModuleID = 'DRB172-critical2-orig-no.c'
source_filename = "DRB172-critical2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;27;5;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [41 x i8] c";DRB172-critical2-orig-no.c;main;27;31;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;31;5;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @5, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@7 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;35;5;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @7, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;36;5;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @9, i32 0, i32 0) }, align 8
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @9, i32 0, i32 0) }, align 8
@12 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;25;3;;\00", align 1
@13 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @12, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca [10 x double], align 16
  %qq = alloca [10 x double], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !23
  %1 = bitcast [10 x double]* %q to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %1) #4, !dbg !24
  call void @llvm.dbg.declare(metadata [10 x double]* %q, metadata !17, metadata !DIExpression()), !dbg !25
  %2 = bitcast [10 x double]* %qq to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %2) #4, !dbg !24
  call void @llvm.dbg.declare(metadata [10 x double]* %qq, metadata !21, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %i, align 4, !dbg !27, !tbaa !29
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !34, !tbaa !29
  %cmp = icmp slt i32 %3, 10, !dbg !36
  br i1 %cmp, label %for.body, label %for.end, !dbg !37

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !38, !tbaa !29
  %conv = sitofp i32 %4 to double, !dbg !39
  %5 = load i32, i32* %i, align 4, !dbg !40, !tbaa !29
  %idxprom = sext i32 %5 to i64, !dbg !41
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %qq, i64 0, i64 %idxprom, !dbg !41
  store double %conv, double* %arrayidx, align 8, !dbg !42, !tbaa !43
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !45, !tbaa !29
  %inc = add nsw i32 %6, 1, !dbg !45
  store i32 %inc, i32* %i, align 4, !dbg !45, !tbaa !29
  br label %for.cond, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !50, !tbaa !29
  br label %for.cond1, !dbg !52

for.cond1:                                        ; preds = %for.inc8, %for.end
  %7 = load i32, i32* %i, align 4, !dbg !53, !tbaa !29
  %cmp2 = icmp slt i32 %7, 10, !dbg !55
  br i1 %cmp2, label %for.body4, label %for.end10, !dbg !56

for.body4:                                        ; preds = %for.cond1
  %8 = load i32, i32* %i, align 4, !dbg !57, !tbaa !29
  %conv5 = sitofp i32 %8 to double, !dbg !58
  %9 = load i32, i32* %i, align 4, !dbg !59, !tbaa !29
  %idxprom6 = sext i32 %9 to i64, !dbg !60
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* %q, i64 0, i64 %idxprom6, !dbg !60
  store double %conv5, double* %arrayidx7, align 8, !dbg !61, !tbaa !43
  br label %for.inc8, !dbg !60

for.inc8:                                         ; preds = %for.body4
  %10 = load i32, i32* %i, align 4, !dbg !62, !tbaa !29
  %inc9 = add nsw i32 %10, 1, !dbg !62
  store i32 %inc9, i32* %i, align 4, !dbg !62, !tbaa !29
  br label %for.cond1, !dbg !63, !llvm.loop !64

for.end10:                                        ; preds = %for.cond1
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @13, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [10 x double]*, [10 x double]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [10 x double]* %q, [10 x double]* %qq), !dbg !66
  store i32 0, i32* %i, align 4, !dbg !67, !tbaa !29
  br label %for.cond11, !dbg !69

for.cond11:                                       ; preds = %for.inc19, %for.end10
  %11 = load i32, i32* %i, align 4, !dbg !70, !tbaa !29
  %cmp12 = icmp slt i32 %11, 10, !dbg !72
  br i1 %cmp12, label %for.body14, label %for.end21, !dbg !73

for.body14:                                       ; preds = %for.cond11
  %12 = load i32, i32* %i, align 4, !dbg !74, !tbaa !29
  %idxprom15 = sext i32 %12 to i64, !dbg !75
  %arrayidx16 = getelementptr inbounds [10 x double], [10 x double]* %qq, i64 0, i64 %idxprom15, !dbg !75
  %13 = load double, double* %arrayidx16, align 8, !dbg !75, !tbaa !43
  %14 = load i32, i32* %i, align 4, !dbg !76, !tbaa !29
  %idxprom17 = sext i32 %14 to i64, !dbg !77
  %arrayidx18 = getelementptr inbounds [10 x double], [10 x double]* %q, i64 0, i64 %idxprom17, !dbg !77
  %15 = load double, double* %arrayidx18, align 8, !dbg !77, !tbaa !43
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %13, double %15), !dbg !78
  br label %for.inc19, !dbg !78

for.inc19:                                        ; preds = %for.body14
  %16 = load i32, i32* %i, align 4, !dbg !79, !tbaa !29
  %inc20 = add nsw i32 %16, 1, !dbg !79
  store i32 %inc20, i32* %i, align 4, !dbg !79, !tbaa !29
  br label %for.cond11, !dbg !80, !llvm.loop !81

for.end21:                                        ; preds = %for.cond11
  %17 = bitcast [10 x double]* %qq to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %17) #4, !dbg !83
  %18 = bitcast [10 x double]* %q to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %18) #4, !dbg !83
  %19 = bitcast i32* %i to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !83
  ret i32 0, !dbg !84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [10 x double]* nonnull align 8 dereferenceable(80) %q, [10 x double]* nonnull align 8 dereferenceable(80) %qq) #3 !dbg !85 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %q.addr = alloca [10 x double]*, align 8
  %qq.addr = alloca [10 x double]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !108
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !108
  store [10 x double]* %q, [10 x double]** %q.addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata [10 x double]** %q.addr, metadata !96, metadata !DIExpression()), !dbg !109
  store [10 x double]* %qq, [10 x double]** %qq.addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata [10 x double]** %qq.addr, metadata !97, metadata !DIExpression()), !dbg !110
  %0 = load [10 x double]*, [10 x double]** %q.addr, align 8, !dbg !111, !tbaa !106
  %1 = load [10 x double]*, [10 x double]** %qq.addr, align 8, !dbg !111, !tbaa !106
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !98, metadata !DIExpression()), !dbg !113
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !101, metadata !DIExpression()), !dbg !113
  store i32 0, i32* %.omp.lb, align 4, !dbg !114, !tbaa !29
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !102, metadata !DIExpression()), !dbg !113
  store i32 9, i32* %.omp.ub, align 4, !dbg !114, !tbaa !29
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !103, metadata !DIExpression()), !dbg !113
  store i32 1, i32* %.omp.stride, align 4, !dbg !114, !tbaa !29
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !104, metadata !DIExpression()), !dbg !113
  store i32 0, i32* %.omp.is_last, align 4, !dbg !114, !tbaa !29
  %7 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i, metadata !105, metadata !DIExpression()), !dbg !113
  %8 = bitcast i32* %i1 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !105, metadata !DIExpression()), !dbg !113
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112
  %10 = load i32, i32* %9, align 4, !dbg !112, !tbaa !29
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !115
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !29
  %cmp = icmp sgt i32 %11, 9, !dbg !114
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !114

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !114

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !29
  br label %cond.end, !dbg !114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %12, %cond.false ], !dbg !114
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !114, !tbaa !29
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !114, !tbaa !29
  store i32 %13, i32* %.omp.iv, align 4, !dbg !114, !tbaa !29
  br label %omp.inner.for.cond, !dbg !112

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !29
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !29
  %cmp2 = icmp sle i32 %14, %15, !dbg !116
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !112

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !112

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !29
  %mul = mul nsw i32 %16, 1, !dbg !117
  %add = add nsw i32 0, %mul, !dbg !117
  store i32 %add, i32* %i, align 4, !dbg !117, !tbaa !29
  %17 = load i32, i32* %i, align 4, !dbg !118, !tbaa !29
  %idxprom = sext i32 %17 to i64, !dbg !119
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %1, i64 0, i64 %idxprom, !dbg !119
  %18 = load double, double* %arrayidx, align 8, !dbg !119, !tbaa !43
  %19 = load i32, i32* %i, align 4, !dbg !120, !tbaa !29
  %idxprom3 = sext i32 %19 to i64, !dbg !121
  %arrayidx4 = getelementptr inbounds [10 x double], [10 x double]* %0, i64 0, i64 %idxprom3, !dbg !121
  %20 = load double, double* %arrayidx4, align 8, !dbg !122, !tbaa !43
  %add5 = fadd double %20, %18, !dbg !122
  store double %add5, double* %arrayidx4, align 8, !dbg !122, !tbaa !43
  br label %omp.body.continue, !dbg !121

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !115

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !29
  %add6 = add nsw i32 %21, 1, !dbg !116
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !116, !tbaa !29
  br label %omp.inner.for.cond, !dbg !115, !llvm.loop !123

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !115

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %10), !dbg !124
  %22 = bitcast i32* %i1 to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !115
  %23 = bitcast i32* %i to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !115
  %24 = bitcast i32* %.omp.is_last to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !115
  %25 = bitcast i32* %.omp.stride to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !115
  %26 = bitcast i32* %.omp.ub to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !115
  %27 = bitcast i32* %.omp.lb to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !115
  %28 = bitcast i32* %.omp.iv to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !115
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %10), !dbg !124
  call void @__kmpc_critical(%struct.ident_t* @6, i32 %10, [8 x i32]* @.gomp_critical_user_.var), !dbg !125
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* %0, i64 0, i64 9, !dbg !126
  %29 = load double, double* %arrayidx7, align 8, !dbg !129, !tbaa !43
  %add8 = fadd double %29, 1.000000e+00, !dbg !129
  store double %add8, double* %arrayidx7, align 8, !dbg !129, !tbaa !43
  call void @__kmpc_end_critical(%struct.ident_t* @6, i32 %10, [8 x i32]* @.gomp_critical_user_.var), !dbg !130
  call void @__kmpc_barrier(%struct.ident_t* @8, i32 %10), !dbg !131
  %30 = call i32 @__kmpc_single(%struct.ident_t* @10, i32 %10), !dbg !132
  %31 = icmp ne i32 %30, 0, !dbg !132
  br i1 %31, label %omp_if.then, label %omp_if.end, !dbg !132

omp_if.then:                                      ; preds = %omp.loop.exit
  %arrayidx9 = getelementptr inbounds [10 x double], [10 x double]* %0, i64 0, i64 9, !dbg !133
  %32 = load double, double* %arrayidx9, align 8, !dbg !133, !tbaa !43
  %sub = fsub double %32, 1.000000e+00, !dbg !136
  %arrayidx10 = getelementptr inbounds [10 x double], [10 x double]* %0, i64 0, i64 9, !dbg !137
  store double %sub, double* %arrayidx10, align 8, !dbg !138, !tbaa !43
  call void @__kmpc_end_single(%struct.ident_t* @10, i32 %10), !dbg !139
  br label %omp_if.end, !dbg !139

omp_if.end:                                       ; preds = %omp_if.then, %omp.loop.exit
  call void @__kmpc_barrier(%struct.ident_t* @11, i32 %10), !dbg !140
  ret void, !dbg !141
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [10 x double]* nonnull align 8 dereferenceable(80) %q, [10 x double]* nonnull align 8 dereferenceable(80) %qq) #3 !dbg !142 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %q.addr = alloca [10 x double]*, align 8
  %qq.addr = alloca [10 x double]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !144, metadata !DIExpression()), !dbg !148
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !145, metadata !DIExpression()), !dbg !148
  store [10 x double]* %q, [10 x double]** %q.addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata [10 x double]** %q.addr, metadata !146, metadata !DIExpression()), !dbg !148
  store [10 x double]* %qq, [10 x double]** %qq.addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata [10 x double]** %qq.addr, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load [10 x double]*, [10 x double]** %q.addr, align 8, !dbg !149, !tbaa !106
  %1 = load [10 x double]*, [10 x double]** %qq.addr, align 8, !dbg !149, !tbaa !106
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !149, !tbaa !106
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !149, !tbaa !106
  %4 = load [10 x double]*, [10 x double]** %q.addr, align 8, !dbg !149, !tbaa !106
  %5 = load [10 x double]*, [10 x double]** %qq.addr, align 8, !dbg !149, !tbaa !106
  call void @.omp_outlined._debug__(i32* %2, i32* %3, [10 x double]* %4, [10 x double]* %5) #4, !dbg !149
  ret void, !dbg !149
}

; Function Attrs: nounwind
declare !callback !150 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblemem_or_argmemonly }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB172-critical2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"clang version 11.1.0"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !12, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !21}
!16 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 19, type: !14)
!17 = !DILocalVariable(name: "q", scope: !11, file: !1, line: 20, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 10)
!21 = !DILocalVariable(name: "qq", scope: !11, file: !1, line: 20, type: !18)
!22 = !DILocation(line: 19, column: 3, scope: !11)
!23 = !DILocation(line: 19, column: 7, scope: !11)
!24 = !DILocation(line: 20, column: 3, scope: !11)
!25 = !DILocation(line: 20, column: 10, scope: !11)
!26 = !DILocation(line: 20, column: 17, scope: !11)
!27 = !DILocation(line: 22, column: 10, scope: !28)
!28 = distinct !DILexicalBlock(scope: !11, file: !1, line: 22, column: 3)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 22, column: 8, scope: !28)
!34 = !DILocation(line: 22, column: 15, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 22, column: 3)
!36 = !DILocation(line: 22, column: 17, scope: !35)
!37 = !DILocation(line: 22, column: 3, scope: !28)
!38 = !DILocation(line: 22, column: 44, scope: !35)
!39 = !DILocation(line: 22, column: 36, scope: !35)
!40 = !DILocation(line: 22, column: 31, scope: !35)
!41 = !DILocation(line: 22, column: 28, scope: !35)
!42 = !DILocation(line: 22, column: 34, scope: !35)
!43 = !{!44, !44, i64 0}
!44 = !{!"double", !31, i64 0}
!45 = !DILocation(line: 22, column: 24, scope: !35)
!46 = !DILocation(line: 22, column: 3, scope: !35)
!47 = distinct !{!47, !37, !48, !49}
!48 = !DILocation(line: 22, column: 44, scope: !28)
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !DILocation(line: 23, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !11, file: !1, line: 23, column: 3)
!52 = !DILocation(line: 23, column: 8, scope: !51)
!53 = !DILocation(line: 23, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 23, column: 3)
!55 = !DILocation(line: 23, column: 17, scope: !54)
!56 = !DILocation(line: 23, column: 3, scope: !51)
!57 = !DILocation(line: 23, column: 43, scope: !54)
!58 = !DILocation(line: 23, column: 35, scope: !54)
!59 = !DILocation(line: 23, column: 30, scope: !54)
!60 = !DILocation(line: 23, column: 28, scope: !54)
!61 = !DILocation(line: 23, column: 33, scope: !54)
!62 = !DILocation(line: 23, column: 24, scope: !54)
!63 = !DILocation(line: 23, column: 3, scope: !54)
!64 = distinct !{!64, !56, !65, !49}
!65 = !DILocation(line: 23, column: 43, scope: !51)
!66 = !DILocation(line: 25, column: 3, scope: !11)
!67 = !DILocation(line: 43, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !11, file: !1, line: 43, column: 3)
!69 = !DILocation(line: 43, column: 8, scope: !68)
!70 = !DILocation(line: 43, column: 15, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 43, column: 3)
!72 = !DILocation(line: 43, column: 17, scope: !71)
!73 = !DILocation(line: 43, column: 3, scope: !68)
!74 = !DILocation(line: 43, column: 47, scope: !71)
!75 = !DILocation(line: 43, column: 44, scope: !71)
!76 = !DILocation(line: 43, column: 52, scope: !71)
!77 = !DILocation(line: 43, column: 50, scope: !71)
!78 = !DILocation(line: 43, column: 27, scope: !71)
!79 = !DILocation(line: 43, column: 24, scope: !71)
!80 = !DILocation(line: 43, column: 3, scope: !71)
!81 = distinct !{!81, !73, !82, !49}
!82 = !DILocation(line: 43, column: 54, scope: !68)
!83 = !DILocation(line: 46, column: 1, scope: !11)
!84 = !DILocation(line: 45, column: 3, scope: !11)
!85 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 26, type: !86, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88, !88, !92, !92}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!93 = !{!94, !95, !96, !97, !98, !101, !102, !103, !104, !105, !105}
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !88, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !88, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "q", arg: 3, scope: !85, file: !1, line: 20, type: !92)
!97 = !DILocalVariable(name: "qq", arg: 4, scope: !85, file: !1, line: 20, type: !92)
!98 = !DILocalVariable(name: ".omp.iv", scope: !99, type: !14, flags: DIFlagArtificial)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 27, column: 5)
!100 = distinct !DILexicalBlock(scope: !85, file: !1, line: 26, column: 3)
!101 = !DILocalVariable(name: ".omp.lb", scope: !99, type: !14, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.ub", scope: !99, type: !14, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.stride", scope: !99, type: !14, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.is_last", scope: !99, type: !14, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "i", scope: !99, type: !14, flags: DIFlagArtificial)
!106 = !{!107, !107, i64 0}
!107 = !{!"any pointer", !31, i64 0}
!108 = !DILocation(line: 0, scope: !85)
!109 = !DILocation(line: 20, column: 10, scope: !85)
!110 = !DILocation(line: 20, column: 17, scope: !85)
!111 = !DILocation(line: 26, column: 3, scope: !85)
!112 = !DILocation(line: 27, column: 5, scope: !100)
!113 = !DILocation(line: 0, scope: !99)
!114 = !DILocation(line: 28, column: 10, scope: !99)
!115 = !DILocation(line: 27, column: 5, scope: !99)
!116 = !DILocation(line: 28, column: 5, scope: !99)
!117 = !DILocation(line: 28, column: 25, scope: !99)
!118 = !DILocation(line: 29, column: 18, scope: !99)
!119 = !DILocation(line: 29, column: 15, scope: !99)
!120 = !DILocation(line: 29, column: 9, scope: !99)
!121 = !DILocation(line: 29, column: 7, scope: !99)
!122 = !DILocation(line: 29, column: 12, scope: !99)
!123 = distinct !{!123, !115, !124}
!124 = !DILocation(line: 27, column: 31, scope: !99)
!125 = !DILocation(line: 31, column: 5, scope: !100)
!126 = !DILocation(line: 33, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 32, column: 5)
!128 = distinct !DILexicalBlock(scope: !100, file: !1, line: 31, column: 5)
!129 = !DILocation(line: 33, column: 12, scope: !127)
!130 = !DILocation(line: 34, column: 5, scope: !127)
!131 = !DILocation(line: 35, column: 5, scope: !100)
!132 = !DILocation(line: 36, column: 5, scope: !100)
!133 = !DILocation(line: 38, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 37, column: 5)
!135 = distinct !DILexicalBlock(scope: !100, file: !1, line: 36, column: 5)
!136 = !DILocation(line: 38, column: 19, scope: !134)
!137 = !DILocation(line: 38, column: 7, scope: !134)
!138 = !DILocation(line: 38, column: 12, scope: !134)
!139 = !DILocation(line: 39, column: 5, scope: !134)
!140 = !DILocation(line: 36, column: 23, scope: !135)
!141 = !DILocation(line: 41, column: 3, scope: !85)
!142 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !86, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !143)
!143 = !{!144, !145, !146, !147}
!144 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !142, type: !88, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !142, type: !88, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: "q", arg: 3, scope: !142, type: !92, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: "qq", arg: 4, scope: !142, type: !92, flags: DIFlagArtificial)
!148 = !DILocation(line: 0, scope: !142)
!149 = !DILocation(line: 25, column: 3, scope: !142)
!150 = !{!151}
!151 = !{i64 2, i64 -1, i64 -1, i1 true}
