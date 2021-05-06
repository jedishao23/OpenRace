; ModuleID = 'DRB066-pointernoaliasing-orig-no.c'
source_filename = "DRB066-pointernoaliasing-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [49 x i8] c";DRB066-pointernoaliasing-orig-no.c;setup;56;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [50 x i8] c";DRB066-pointernoaliasing-orig-no.c;setup;56;42;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @setup(i32 %N) #0 !dbg !12 {
entry:
  %N.addr = alloca i32, align 4
  %m_pdv_sum = alloca double*, align 8
  %m_nvol = alloca double*, align 8
  store i32 %N, i32* %N.addr, align 4, !tbaa !20
  call void @llvm.dbg.declare(metadata i32* %N.addr, metadata !17, metadata !DIExpression()), !dbg !24
  %0 = bitcast double** %m_pdv_sum to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !25
  call void @llvm.dbg.declare(metadata double** %m_pdv_sum, metadata !18, metadata !DIExpression()), !dbg !26
  %1 = load i32, i32* %N.addr, align 4, !dbg !27, !tbaa !20
  %conv = sext i32 %1 to i64, !dbg !27
  %mul = mul i64 8, %conv, !dbg !28
  %call = call noalias i8* @malloc(i64 %mul) #5, !dbg !29
  %2 = bitcast i8* %call to double*, !dbg !30
  store double* %2, double** %m_pdv_sum, align 8, !dbg !26, !tbaa !31
  %3 = bitcast double** %m_nvol to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #5, !dbg !33
  call void @llvm.dbg.declare(metadata double** %m_nvol, metadata !19, metadata !DIExpression()), !dbg !34
  %4 = load i32, i32* %N.addr, align 4, !dbg !35, !tbaa !20
  %conv1 = sext i32 %4 to i64, !dbg !35
  %mul2 = mul i64 8, %conv1, !dbg !36
  %call3 = call noalias i8* @malloc(i64 %mul2) #5, !dbg !37
  %5 = bitcast i8* %call3 to double*, !dbg !38
  store double* %5, double** %m_nvol, align 8, !dbg !34, !tbaa !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N.addr, double** %m_pdv_sum, double** %m_nvol), !dbg !39
  %6 = load double*, double** %m_pdv_sum, align 8, !dbg !40, !tbaa !31
  %7 = bitcast double* %6 to i8*, !dbg !40
  call void @free(i8* %7) #5, !dbg !41
  %8 = load double*, double** %m_nvol, align 8, !dbg !42, !tbaa !31
  %9 = bitcast double* %8 to i8*, !dbg !42
  call void @free(i8* %9) #5, !dbg !43
  %10 = bitcast double** %m_nvol to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #5, !dbg !44
  %11 = bitcast double** %m_pdv_sum to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #5, !dbg !44
  ret void, !dbg !44
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %N, double** nonnull align 8 dereferenceable(8) %m_pdv_sum, double** nonnull align 8 dereferenceable(8) %m_nvol) #4 !dbg !45 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %m_pdv_sum.addr = alloca double**, align 8
  %m_nvol.addr = alloca double**, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !55, metadata !DIExpression()), !dbg !67
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !56, metadata !DIExpression()), !dbg !67
  store i32* %N, i32** %N.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !57, metadata !DIExpression()), !dbg !68
  store double** %m_pdv_sum, double*** %m_pdv_sum.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata double*** %m_pdv_sum.addr, metadata !58, metadata !DIExpression()), !dbg !69
  store double** %m_nvol, double*** %m_nvol.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata double*** %m_nvol.addr, metadata !59, metadata !DIExpression()), !dbg !70
  %0 = load i32*, i32** %N.addr, align 8, !dbg !71, !tbaa !31
  %1 = load double**, double*** %m_pdv_sum.addr, align 8, !dbg !71, !tbaa !31
  %2 = load double**, double*** %m_nvol.addr, align 8, !dbg !71, !tbaa !31
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !60, metadata !DIExpression()), !dbg !67
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !61, metadata !DIExpression()), !dbg !67
  %5 = load i32, i32* %0, align 4, !dbg !72, !tbaa !20
  store i32 %5, i32* %.capture_expr., align 4, !dbg !72, !tbaa !20
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !61, metadata !DIExpression()), !dbg !67
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !72, !tbaa !20
  %sub = sub nsw i32 %7, 0, !dbg !71
  %div = sdiv i32 %sub, 1, !dbg !71
  %sub2 = sub nsw i32 %div, 1, !dbg !71
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !71, !tbaa !20
  %8 = bitcast i32* %i to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %i, align 4, !dbg !73, !tbaa !20
  %9 = bitcast i32* %i to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !71
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !72, !tbaa !20
  %cmp = icmp slt i32 0, %10, !dbg !71
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !71

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !63, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %.omp.lb, align 4, !dbg !74, !tbaa !20
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !64, metadata !DIExpression()), !dbg !67
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !71, !tbaa !20
  store i32 %13, i32* %.omp.ub, align 4, !dbg !74, !tbaa !20
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !65, metadata !DIExpression()), !dbg !67
  store i32 1, i32* %.omp.stride, align 4, !dbg !74, !tbaa !20
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !66, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %.omp.is_last, align 4, !dbg !74, !tbaa !20
  %16 = bitcast i32* %i3 to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !62, metadata !DIExpression()), !dbg !67
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %18 = load i32, i32* %17, align 4, !dbg !71, !tbaa !20
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !75
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !74, !tbaa !20
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !71, !tbaa !20
  %cmp4 = icmp sgt i32 %19, %20, !dbg !74
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !74

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !71, !tbaa !20
  br label %cond.end, !dbg !74

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !74, !tbaa !20
  br label %cond.end, !dbg !74

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !74
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !74, !tbaa !20
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !74, !tbaa !20
  store i32 %23, i32* %.omp.iv, align 4, !dbg !74, !tbaa !20
  br label %omp.inner.for.cond, !dbg !71

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !74, !tbaa !20
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !74, !tbaa !20
  %cmp5 = icmp sle i32 %24, %25, !dbg !71
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !71

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !71

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !74, !tbaa !20
  %mul = mul nsw i32 %26, 1, !dbg !73
  %add = add nsw i32 0, %mul, !dbg !73
  store i32 %add, i32* %i3, align 4, !dbg !73, !tbaa !20
  %27 = load double*, double** %1, align 8, !dbg !76, !tbaa !31
  %28 = load i32, i32* %i3, align 4, !dbg !78, !tbaa !20
  %idxprom = sext i32 %28 to i64, !dbg !76
  %arrayidx = getelementptr inbounds double, double* %27, i64 %idxprom, !dbg !76
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !79, !tbaa !80
  %29 = load i32, i32* %i3, align 4, !dbg !82, !tbaa !20
  %conv = sitofp i32 %29 to double, !dbg !82
  %mul6 = fmul double %conv, 2.500000e+00, !dbg !83
  %30 = load double*, double** %2, align 8, !dbg !84, !tbaa !31
  %31 = load i32, i32* %i3, align 4, !dbg !85, !tbaa !20
  %idxprom7 = sext i32 %31 to i64, !dbg !84
  %arrayidx8 = getelementptr inbounds double, double* %30, i64 %idxprom7, !dbg !84
  store double %mul6, double* %arrayidx8, align 8, !dbg !86, !tbaa !80
  br label %omp.body.continue, !dbg !87

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !75

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !74, !tbaa !20
  %add9 = add nsw i32 %32, 1, !dbg !71
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !71, !tbaa !20
  br label %omp.inner.for.cond, !dbg !75, !llvm.loop !88

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !75

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !75
  %34 = load i32, i32* %33, align 4, !dbg !75, !tbaa !20
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %34), !dbg !89
  %35 = bitcast i32* %i3 to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !75
  %36 = bitcast i32* %.omp.is_last to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !75
  %37 = bitcast i32* %.omp.stride to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !75
  %38 = bitcast i32* %.omp.ub to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !75
  %39 = bitcast i32* %.omp.lb to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !75
  br label %omp.precond.end, !dbg !75

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %40 = bitcast i32* %.capture_expr.1 to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !75
  %41 = bitcast i32* %.capture_expr. to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !75
  %42 = bitcast i32* %.omp.iv to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !75
  ret void, !dbg !90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %N, double** nonnull align 8 dereferenceable(8) %m_pdv_sum, double** nonnull align 8 dereferenceable(8) %m_nvol) #4 !dbg !91 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %m_pdv_sum.addr = alloca double**, align 8
  %m_nvol.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !98
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !98
  store i32* %N, i32** %N.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !95, metadata !DIExpression()), !dbg !98
  store double** %m_pdv_sum, double*** %m_pdv_sum.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata double*** %m_pdv_sum.addr, metadata !96, metadata !DIExpression()), !dbg !98
  store double** %m_nvol, double*** %m_nvol.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata double*** %m_nvol.addr, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = load i32*, i32** %N.addr, align 8, !dbg !99, !tbaa !31
  %1 = load double**, double*** %m_pdv_sum.addr, align 8, !dbg !99, !tbaa !31
  %2 = load double**, double*** %m_nvol.addr, align 8, !dbg !99, !tbaa !31
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !99, !tbaa !31
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !99, !tbaa !31
  %5 = load i32*, i32** %N.addr, align 8, !dbg !99, !tbaa !31
  %6 = load double**, double*** %m_pdv_sum.addr, align 8, !dbg !99, !tbaa !31
  %7 = load double**, double*** %m_nvol.addr, align 8, !dbg !99, !tbaa !31
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, double** %6, double** %7) #5, !dbg !99
  ret void, !dbg !99
}

; Function Attrs: nounwind
declare !callback !100 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: nounwind
declare !dbg !102 void @free(i8*) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !107 {
entry:
  %N = alloca i32, align 4
  %0 = bitcast i32* %N to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %N, metadata !111, metadata !DIExpression()), !dbg !113
  store i32 1000, i32* %N, align 4, !dbg !113, !tbaa !20
  %1 = load i32, i32* %N, align 4, !dbg !114, !tbaa !20
  call void @setup(i32 %1), !dbg !115
  %2 = bitcast i32* %N to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !116
  ret i32 0, !dbg !116
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB066-pointernoaliasing-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{!"clang version 11.1.0"}
!12 = distinct !DISubprogram(name: "setup", scope: !1, file: !1, line: 51, type: !13, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(name: "N", arg: 1, scope: !12, file: !1, line: 51, type: !15)
!18 = !DILocalVariable(name: "m_pdv_sum", scope: !12, file: !1, line: 53, type: !4)
!19 = !DILocalVariable(name: "m_nvol", scope: !12, file: !1, line: 54, type: !4)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 51, column: 16, scope: !12)
!25 = !DILocation(line: 53, column: 3, scope: !12)
!26 = !DILocation(line: 53, column: 12, scope: !12)
!27 = !DILocation(line: 53, column: 61, scope: !12)
!28 = !DILocation(line: 53, column: 59, scope: !12)
!29 = !DILocation(line: 53, column: 35, scope: !12)
!30 = !DILocation(line: 53, column: 24, scope: !12)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !22, i64 0}
!33 = !DILocation(line: 54, column: 3, scope: !12)
!34 = !DILocation(line: 54, column: 12, scope: !12)
!35 = !DILocation(line: 54, column: 58, scope: !12)
!36 = !DILocation(line: 54, column: 56, scope: !12)
!37 = !DILocation(line: 54, column: 32, scope: !12)
!38 = !DILocation(line: 54, column: 21, scope: !12)
!39 = !DILocation(line: 56, column: 1, scope: !12)
!40 = !DILocation(line: 63, column: 8, scope: !12)
!41 = !DILocation(line: 63, column: 3, scope: !12)
!42 = !DILocation(line: 64, column: 8, scope: !12)
!43 = !DILocation(line: 64, column: 3, scope: !12)
!44 = !DILocation(line: 65, column: 1, scope: !12)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !46, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !52, !53, !53}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !61, !62, !63, !64, !65, !66, !62}
!55 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "N", arg: 3, scope: !45, file: !1, line: 51, type: !52)
!58 = !DILocalVariable(name: "m_pdv_sum", arg: 4, scope: !45, file: !1, line: 53, type: !53)
!59 = !DILocalVariable(name: "m_nvol", arg: 5, scope: !45, file: !1, line: 54, type: !53)
!60 = !DILocalVariable(name: ".omp.iv", scope: !45, type: !15, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".capture_expr.", scope: !45, type: !15, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "i", scope: !45, type: !15, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.lb", scope: !45, type: !15, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".omp.ub", scope: !45, type: !15, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".omp.stride", scope: !45, type: !15, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".omp.is_last", scope: !45, type: !15, flags: DIFlagArtificial)
!67 = !DILocation(line: 0, scope: !45)
!68 = !DILocation(line: 51, column: 16, scope: !45)
!69 = !DILocation(line: 53, column: 12, scope: !45)
!70 = !DILocation(line: 54, column: 12, scope: !45)
!71 = !DILocation(line: 57, column: 3, scope: !45)
!72 = !DILocation(line: 57, column: 21, scope: !45)
!73 = !DILocation(line: 57, column: 24, scope: !45)
!74 = !DILocation(line: 57, column: 8, scope: !45)
!75 = !DILocation(line: 56, column: 1, scope: !45)
!76 = !DILocation(line: 59, column: 5, scope: !77)
!77 = distinct !DILexicalBlock(scope: !45, file: !1, line: 58, column: 3)
!78 = !DILocation(line: 59, column: 16, scope: !77)
!79 = !DILocation(line: 59, column: 20, scope: !77)
!80 = !{!81, !81, i64 0}
!81 = !{!"double", !22, i64 0}
!82 = !DILocation(line: 60, column: 21, scope: !77)
!83 = !DILocation(line: 60, column: 22, scope: !77)
!84 = !DILocation(line: 60, column: 5, scope: !77)
!85 = !DILocation(line: 60, column: 13, scope: !77)
!86 = !DILocation(line: 60, column: 19, scope: !77)
!87 = !DILocation(line: 61, column: 3, scope: !77)
!88 = distinct !{!88, !75, !89}
!89 = !DILocation(line: 56, column: 42, scope: !45)
!90 = !DILocation(line: 61, column: 3, scope: !45)
!91 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 56, type: !46, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!92 = !{!93, !94, !95, !96, !97}
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !91, type: !48, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !91, type: !48, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "N", arg: 3, scope: !91, type: !52, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "m_pdv_sum", arg: 4, scope: !91, type: !53, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "m_nvol", arg: 5, scope: !91, type: !53, flags: DIFlagArtificial)
!98 = !DILocation(line: 0, scope: !91)
!99 = !DILocation(line: 56, column: 1, scope: !91)
!100 = !{!101}
!101 = !{i64 2, i64 -1, i64 -1, i1 true}
!102 = !DISubprogram(name: "free", scope: !103, file: !103, line: 565, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!103 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !108, scopeLine: 68, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!15}
!110 = !{!111}
!111 = !DILocalVariable(name: "N", scope: !107, file: !1, line: 69, type: !15)
!112 = !DILocation(line: 69, column: 3, scope: !107)
!113 = !DILocation(line: 69, column: 7, scope: !107)
!114 = !DILocation(line: 70, column: 9, scope: !107)
!115 = !DILocation(line: 70, column: 3, scope: !107)
!116 = !DILocation(line: 71, column: 1, scope: !107)
