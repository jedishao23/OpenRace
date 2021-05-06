; ModuleID = 'DRB057-jacobiinitialize-orig-no.c'
source_filename = "DRB057-jacobiinitialize-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@u = dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !0
@f = dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !8
@uold = dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !14
@dx = dso_local global double 0.000000e+00, align 8, !dbg !16
@dy = dso_local global double 0.000000e+00, align 8, !dbg !18
@n = dso_local global i32 200, align 4, !dbg !20
@m = dso_local global i32 200, align 4, !dbg !22
@alpha = dso_local global double 5.430000e-02, align 8, !dbg !24
@0 = private unnamed_addr constant [53 x i8] c";DRB057-jacobiinitialize-orig-no.c;initialize;68;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [54 x i8] c";DRB057-jacobiinitialize-orig-no.c;initialize;68;44;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @initialize() #0 !dbg !32 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %0 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %i, metadata !36, metadata !DIExpression()), !dbg !41
  %1 = bitcast i32* %j to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %j, metadata !37, metadata !DIExpression()), !dbg !42
  %2 = bitcast i32* %xx to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !38, metadata !DIExpression()), !dbg !43
  %3 = bitcast i32* %yy to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %yy, metadata !39, metadata !DIExpression()), !dbg !44
  %4 = load i32, i32* @n, align 4, !dbg !45, !tbaa !46
  %sub = sub nsw i32 %4, 1, !dbg !50
  %conv = sitofp i32 %sub to double, !dbg !51
  %div = fdiv double 2.000000e+00, %conv, !dbg !52
  store double %div, double* @dx, align 8, !dbg !53, !tbaa !54
  %5 = load i32, i32* @m, align 4, !dbg !56, !tbaa !46
  %sub1 = sub nsw i32 %5, 1, !dbg !57
  %conv2 = sitofp i32 %sub1 to double, !dbg !58
  %div3 = fdiv double 2.000000e+00, %conv2, !dbg !59
  store double %div3, double* @dy, align 8, !dbg !60, !tbaa !54
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !61
  %6 = bitcast i32* %yy to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !62
  %7 = bitcast i32* %xx to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #4, !dbg !62
  %8 = bitcast i32* %j to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !62
  %9 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !62
  ret void, !dbg !62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !63 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i3 = alloca i32, align 4
  %j = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %i4 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !71, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !72, metadata !DIExpression()), !dbg !85
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !73, metadata !DIExpression()), !dbg !85
  %1 = bitcast i32* %.capture_expr. to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !74, metadata !DIExpression()), !dbg !85
  %2 = load i32, i32* @n, align 4, !dbg !87, !tbaa !46
  store i32 %2, i32* %.capture_expr., align 4, !dbg !87, !tbaa !46
  %3 = bitcast i32* %.capture_expr.1 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !74, metadata !DIExpression()), !dbg !85
  %4 = load i32, i32* %.capture_expr., align 4, !dbg !87, !tbaa !46
  %sub = sub nsw i32 %4, 0, !dbg !86
  %div = sdiv i32 %sub, 1, !dbg !86
  %sub2 = sub nsw i32 %div, 1, !dbg !86
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !46
  %5 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i, metadata !75, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %i, align 4, !dbg !88, !tbaa !46
  %6 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !86
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !87, !tbaa !46
  %cmp = icmp slt i32 0, %7, !dbg !86
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !86

omp.precond.then:                                 ; preds = %entry
  %8 = bitcast i32* %.omp.lb to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !76, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.lb, align 4, !dbg !89, !tbaa !46
  %9 = bitcast i32* %.omp.ub to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !77, metadata !DIExpression()), !dbg !85
  %10 = load i32, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !46
  store i32 %10, i32* %.omp.ub, align 4, !dbg !89, !tbaa !46
  %11 = bitcast i32* %.omp.stride to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !78, metadata !DIExpression()), !dbg !85
  store i32 1, i32* %.omp.stride, align 4, !dbg !89, !tbaa !46
  %12 = bitcast i32* %.omp.is_last to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !79, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89, !tbaa !46
  %13 = bitcast i32* %i3 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !75, metadata !DIExpression()), !dbg !85
  %14 = bitcast i32* %j to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %j, metadata !80, metadata !DIExpression()), !dbg !85
  %15 = bitcast i32* %xx to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !81, metadata !DIExpression()), !dbg !85
  %16 = bitcast i32* %yy to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %yy, metadata !82, metadata !DIExpression()), !dbg !85
  %17 = bitcast i32* %i4 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !75, metadata !DIExpression()), !dbg !85
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !86
  %19 = load i32, i32* %18, align 4, !dbg !86, !tbaa !46
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !90
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !46
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !46
  %cmp5 = icmp sgt i32 %20, %21, !dbg !89
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !46
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !46
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89, !tbaa !46
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !89, !tbaa !46
  store i32 %24, i32* %.omp.iv, align 4, !dbg !89, !tbaa !46
  br label %omp.inner.for.cond, !dbg !86

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !46
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !46
  %cmp6 = icmp sle i32 %25, %26, !dbg !86
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !86

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !86

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !46
  %mul = mul nsw i32 %27, 1, !dbg !88
  %add = add nsw i32 0, %mul, !dbg !88
  store i32 %add, i32* %i3, align 4, !dbg !88, !tbaa !46
  store i32 0, i32* %j, align 4, !dbg !91, !tbaa !46
  br label %for.cond, !dbg !93

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %28 = load i32, i32* %j, align 4, !dbg !94, !tbaa !46
  %29 = load i32, i32* @m, align 4, !dbg !96, !tbaa !46
  %cmp7 = icmp slt i32 %28, %29, !dbg !97
  br i1 %cmp7, label %for.body, label %for.end, !dbg !98

for.body:                                         ; preds = %for.cond
  %30 = load double, double* @dx, align 8, !dbg !99, !tbaa !54
  %31 = load i32, i32* %i3, align 4, !dbg !101, !tbaa !46
  %sub8 = sub nsw i32 %31, 1, !dbg !102
  %conv = sitofp i32 %sub8 to double, !dbg !103
  %mul9 = fmul double %30, %conv, !dbg !104
  %add10 = fadd double -1.000000e+00, %mul9, !dbg !105
  %conv11 = fptosi double %add10 to i32, !dbg !106
  store i32 %conv11, i32* %xx, align 4, !dbg !107, !tbaa !46
  %32 = load double, double* @dy, align 8, !dbg !108, !tbaa !54
  %33 = load i32, i32* %j, align 4, !dbg !109, !tbaa !46
  %sub12 = sub nsw i32 %33, 1, !dbg !110
  %conv13 = sitofp i32 %sub12 to double, !dbg !111
  %mul14 = fmul double %32, %conv13, !dbg !112
  %add15 = fadd double -1.000000e+00, %mul14, !dbg !113
  %conv16 = fptosi double %add15 to i32, !dbg !114
  store i32 %conv16, i32* %yy, align 4, !dbg !115, !tbaa !46
  %34 = load i32, i32* %i3, align 4, !dbg !116, !tbaa !46
  %idxprom = sext i32 %34 to i64, !dbg !117
  %arrayidx = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom, !dbg !117
  %35 = load i32, i32* %j, align 4, !dbg !118, !tbaa !46
  %idxprom17 = sext i32 %35 to i64, !dbg !117
  %arrayidx18 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx, i64 0, i64 %idxprom17, !dbg !117
  store double 0.000000e+00, double* %arrayidx18, align 8, !dbg !119, !tbaa !54
  %36 = load double, double* @alpha, align 8, !dbg !120, !tbaa !54
  %mul19 = fmul double -1.000000e+00, %36, !dbg !121
  %37 = load i32, i32* %xx, align 4, !dbg !122, !tbaa !46
  %38 = load i32, i32* %xx, align 4, !dbg !123, !tbaa !46
  %mul20 = mul nsw i32 %37, %38, !dbg !124
  %conv21 = sitofp i32 %mul20 to double, !dbg !122
  %sub22 = fsub double 1.000000e+00, %conv21, !dbg !125
  %mul23 = fmul double %mul19, %sub22, !dbg !126
  %39 = load i32, i32* %yy, align 4, !dbg !127, !tbaa !46
  %40 = load i32, i32* %yy, align 4, !dbg !128, !tbaa !46
  %mul24 = mul nsw i32 %39, %40, !dbg !129
  %conv25 = sitofp i32 %mul24 to double, !dbg !127
  %sub26 = fsub double 1.000000e+00, %conv25, !dbg !130
  %mul27 = fmul double %mul23, %sub26, !dbg !131
  %41 = load i32, i32* %xx, align 4, !dbg !132, !tbaa !46
  %42 = load i32, i32* %xx, align 4, !dbg !133, !tbaa !46
  %mul28 = mul nsw i32 %41, %42, !dbg !134
  %conv29 = sitofp i32 %mul28 to double, !dbg !132
  %sub30 = fsub double 1.000000e+00, %conv29, !dbg !135
  %mul31 = fmul double 2.000000e+00, %sub30, !dbg !136
  %sub32 = fsub double %mul27, %mul31, !dbg !137
  %43 = load i32, i32* %yy, align 4, !dbg !138, !tbaa !46
  %44 = load i32, i32* %yy, align 4, !dbg !139, !tbaa !46
  %mul33 = mul nsw i32 %43, %44, !dbg !140
  %conv34 = sitofp i32 %mul33 to double, !dbg !138
  %sub35 = fsub double 1.000000e+00, %conv34, !dbg !141
  %mul36 = fmul double 2.000000e+00, %sub35, !dbg !142
  %sub37 = fsub double %sub32, %mul36, !dbg !143
  %45 = load i32, i32* %i3, align 4, !dbg !144, !tbaa !46
  %idxprom38 = sext i32 %45 to i64, !dbg !145
  %arrayidx39 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %idxprom38, !dbg !145
  %46 = load i32, i32* %j, align 4, !dbg !146, !tbaa !46
  %idxprom40 = sext i32 %46 to i64, !dbg !145
  %arrayidx41 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx39, i64 0, i64 %idxprom40, !dbg !145
  store double %sub37, double* %arrayidx41, align 8, !dbg !147, !tbaa !54
  br label %for.inc, !dbg !148

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %j, align 4, !dbg !149, !tbaa !46
  %inc = add nsw i32 %47, 1, !dbg !149
  store i32 %inc, i32* %j, align 4, !dbg !149, !tbaa !46
  br label %for.cond, !dbg !150, !llvm.loop !151

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !152

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !90

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %48 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !46
  %add42 = add nsw i32 %48, 1, !dbg !86
  store i32 %add42, i32* %.omp.iv, align 4, !dbg !86, !tbaa !46
  br label %omp.inner.for.cond, !dbg !90, !llvm.loop !154

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !90

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %49 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %50 = load i32, i32* %49, align 4, !dbg !90, !tbaa !46
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %50), !dbg !155
  %51 = bitcast i32* %i4 to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !90
  %52 = bitcast i32* %yy to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #4, !dbg !90
  %53 = bitcast i32* %xx to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #4, !dbg !90
  %54 = bitcast i32* %j to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !90
  %55 = bitcast i32* %i3 to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !90
  %56 = bitcast i32* %.omp.is_last to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !90
  %57 = bitcast i32* %.omp.stride to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #4, !dbg !90
  %58 = bitcast i32* %.omp.ub to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !90
  %59 = bitcast i32* %.omp.lb to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !90
  br label %omp.precond.end, !dbg !90

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %60 = bitcast i32* %.capture_expr.1 to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !90
  %61 = bitcast i32* %.capture_expr. to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4, !dbg !90
  %62 = bitcast i32* %.omp.iv to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #4, !dbg !90
  ret void, !dbg !156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !157 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !159, metadata !DIExpression()), !dbg !161
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !162, !tbaa !83
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !162, !tbaa !83
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !162
  ret void, !dbg !162
}

; Function Attrs: nounwind
declare !callback !163 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !165 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @initialize(), !dbg !167
  ret i32 0, !dbg !168
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "u", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB057-jacobiinitialize-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8, !14, !16, !18, !20, !22, !24}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "f", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2560000, elements: !12)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{!13, !13}
!13 = !DISubrange(count: 200)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "uold", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "dx", scope: !2, file: !3, line: 57, type: !11, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "dy", scope: !2, file: !3, line: 57, type: !11, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !3, line: 55, type: !11, isLocal: false, isDefinition: true)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{!"clang version 11.1.0"}
!32 = distinct !DISubprogram(name: "initialize", scope: !3, file: !3, line: 60, type: !33, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{null}
!35 = !{!36, !37, !38, !39}
!36 = !DILocalVariable(name: "i", scope: !32, file: !3, line: 62, type: !6)
!37 = !DILocalVariable(name: "j", scope: !32, file: !3, line: 62, type: !6)
!38 = !DILocalVariable(name: "xx", scope: !32, file: !3, line: 62, type: !6)
!39 = !DILocalVariable(name: "yy", scope: !32, file: !3, line: 62, type: !6)
!40 = !DILocation(line: 62, column: 3, scope: !32)
!41 = !DILocation(line: 62, column: 7, scope: !32)
!42 = !DILocation(line: 62, column: 10, scope: !32)
!43 = !DILocation(line: 62, column: 13, scope: !32)
!44 = !DILocation(line: 62, column: 17, scope: !32)
!45 = !DILocation(line: 64, column: 15, scope: !32)
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 64, column: 17, scope: !32)
!51 = !DILocation(line: 64, column: 14, scope: !32)
!52 = !DILocation(line: 64, column: 12, scope: !32)
!53 = !DILocation(line: 64, column: 6, scope: !32)
!54 = !{!55, !55, i64 0}
!55 = !{!"double", !48, i64 0}
!56 = !DILocation(line: 65, column: 15, scope: !32)
!57 = !DILocation(line: 65, column: 17, scope: !32)
!58 = !DILocation(line: 65, column: 14, scope: !32)
!59 = !DILocation(line: 65, column: 12, scope: !32)
!60 = !DILocation(line: 65, column: 6, scope: !32)
!61 = !DILocation(line: 68, column: 1, scope: !32)
!62 = !DILocation(line: 79, column: 1, scope: !32)
!63 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 69, type: !64, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !66}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!70 = !{!71, !72, !73, !74, !74, !75, !76, !77, !78, !79, !75, !80, !81, !82, !75}
!71 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !63, type: !66, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !63, type: !66, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.iv", scope: !63, type: !6, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".capture_expr.", scope: !63, type: !6, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "i", scope: !63, type: !6, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.lb", scope: !63, type: !6, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.ub", scope: !63, type: !6, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.stride", scope: !63, type: !6, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.is_last", scope: !63, type: !6, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "j", scope: !63, type: !6, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "xx", scope: !63, type: !6, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "yy", scope: !63, type: !6, flags: DIFlagArtificial)
!83 = !{!84, !84, i64 0}
!84 = !{!"any pointer", !48, i64 0}
!85 = !DILocation(line: 0, scope: !63)
!86 = !DILocation(line: 69, column: 3, scope: !63)
!87 = !DILocation(line: 69, column: 19, scope: !63)
!88 = !DILocation(line: 69, column: 22, scope: !63)
!89 = !DILocation(line: 69, column: 8, scope: !63)
!90 = !DILocation(line: 68, column: 1, scope: !63)
!91 = !DILocation(line: 70, column: 12, scope: !92)
!92 = distinct !DILexicalBlock(scope: !63, file: !3, line: 70, column: 5)
!93 = !DILocation(line: 70, column: 10, scope: !92)
!94 = !DILocation(line: 70, column: 17, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !3, line: 70, column: 5)
!96 = !DILocation(line: 70, column: 21, scope: !95)
!97 = !DILocation(line: 70, column: 19, scope: !95)
!98 = !DILocation(line: 70, column: 5, scope: !92)
!99 = !DILocation(line: 72, column: 26, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !3, line: 71, column: 5)
!101 = !DILocation(line: 72, column: 32, scope: !100)
!102 = !DILocation(line: 72, column: 34, scope: !100)
!103 = !DILocation(line: 72, column: 31, scope: !100)
!104 = !DILocation(line: 72, column: 29, scope: !100)
!105 = !DILocation(line: 72, column: 24, scope: !100)
!106 = !DILocation(line: 72, column: 12, scope: !100)
!107 = !DILocation(line: 72, column: 10, scope: !100)
!108 = !DILocation(line: 73, column: 26, scope: !100)
!109 = !DILocation(line: 73, column: 32, scope: !100)
!110 = !DILocation(line: 73, column: 34, scope: !100)
!111 = !DILocation(line: 73, column: 31, scope: !100)
!112 = !DILocation(line: 73, column: 29, scope: !100)
!113 = !DILocation(line: 73, column: 24, scope: !100)
!114 = !DILocation(line: 73, column: 12, scope: !100)
!115 = !DILocation(line: 73, column: 10, scope: !100)
!116 = !DILocation(line: 74, column: 9, scope: !100)
!117 = !DILocation(line: 74, column: 7, scope: !100)
!118 = !DILocation(line: 74, column: 12, scope: !100)
!119 = !DILocation(line: 74, column: 15, scope: !100)
!120 = !DILocation(line: 75, column: 24, scope: !100)
!121 = !DILocation(line: 75, column: 22, scope: !100)
!122 = !DILocation(line: 75, column: 39, scope: !100)
!123 = !DILocation(line: 75, column: 44, scope: !100)
!124 = !DILocation(line: 75, column: 42, scope: !100)
!125 = !DILocation(line: 75, column: 37, scope: !100)
!126 = !DILocation(line: 75, column: 30, scope: !100)
!127 = !DILocation(line: 75, column: 57, scope: !100)
!128 = !DILocation(line: 75, column: 62, scope: !100)
!129 = !DILocation(line: 75, column: 60, scope: !100)
!130 = !DILocation(line: 75, column: 55, scope: !100)
!131 = !DILocation(line: 75, column: 48, scope: !100)
!132 = !DILocation(line: 76, column: 24, scope: !100)
!133 = !DILocation(line: 76, column: 29, scope: !100)
!134 = !DILocation(line: 76, column: 27, scope: !100)
!135 = !DILocation(line: 76, column: 22, scope: !100)
!136 = !DILocation(line: 76, column: 15, scope: !100)
!137 = !DILocation(line: 76, column: 9, scope: !100)
!138 = !DILocation(line: 76, column: 48, scope: !100)
!139 = !DILocation(line: 76, column: 53, scope: !100)
!140 = !DILocation(line: 76, column: 51, scope: !100)
!141 = !DILocation(line: 76, column: 46, scope: !100)
!142 = !DILocation(line: 76, column: 39, scope: !100)
!143 = !DILocation(line: 76, column: 33, scope: !100)
!144 = !DILocation(line: 75, column: 9, scope: !100)
!145 = !DILocation(line: 75, column: 7, scope: !100)
!146 = !DILocation(line: 75, column: 12, scope: !100)
!147 = !DILocation(line: 75, column: 15, scope: !100)
!148 = !DILocation(line: 78, column: 5, scope: !100)
!149 = !DILocation(line: 70, column: 25, scope: !95)
!150 = !DILocation(line: 70, column: 5, scope: !95)
!151 = distinct !{!151, !98, !152, !153}
!152 = !DILocation(line: 78, column: 5, scope: !92)
!153 = !{!"llvm.loop.unroll.disable"}
!154 = distinct !{!154, !90, !155}
!155 = !DILocation(line: 68, column: 44, scope: !63)
!156 = !DILocation(line: 78, column: 5, scope: !63)
!157 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 68, type: !64, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!158 = !{!159, !160}
!159 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !157, type: !66, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !157, type: !66, flags: DIFlagArtificial)
!161 = !DILocation(line: 0, scope: !157)
!162 = !DILocation(line: 68, column: 1, scope: !157)
!163 = !{!164}
!164 = !{i64 2, i64 -1, i64 -1, i1 true}
!165 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !166, scopeLine: 82, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!166 = !DISubroutineType(types: !5)
!167 = !DILocation(line: 83, column: 3, scope: !165)
!168 = !DILocation(line: 84, column: 3, scope: !165)
