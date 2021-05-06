; ModuleID = 'DRB170-nestedloops-orig-no.c'
source_filename = "DRB170-nestedloops-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [42 x i8] c";DRB170-nestedloops-orig-no.c;main;26;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [43 x i8] c";DRB170-nestedloops-orig-no.c;main;26;48;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %tmp1 = alloca double, align 8
  %a = alloca [12 x [12 x [12 x double]]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !25
  %1 = bitcast i32* %j to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !26
  %2 = bitcast i32* %k to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %k, metadata !16, metadata !DIExpression()), !dbg !27
  %3 = bitcast i32* %m to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %m, metadata !17, metadata !DIExpression()), !dbg !28
  %4 = bitcast double* %tmp1 to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4, !dbg !29
  call void @llvm.dbg.declare(metadata double* %tmp1, metadata !18, metadata !DIExpression()), !dbg !30
  %5 = bitcast [12 x [12 x [12 x double]]]* %a to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 13824, i8* %5) #4, !dbg !31
  call void @llvm.dbg.declare(metadata [12 x [12 x [12 x double]]]* %a, metadata !20, metadata !DIExpression()), !dbg !32
  store i32 3, i32* %m, align 4, !dbg !33, !tbaa !34
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [12 x [12 x [12 x double]]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, [12 x [12 x [12 x double]]]* %a), !dbg !38
  %6 = bitcast [12 x [12 x [12 x double]]]* %a to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 13824, i8* %6) #4, !dbg !39
  %7 = bitcast double* %tmp1 to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #4, !dbg !39
  %8 = bitcast i32* %m to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !39
  %9 = bitcast i32* %k to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !39
  %10 = bitcast i32* %j to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !39
  %11 = bitcast i32* %i to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !39
  ret i32 0, !dbg !40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %m, [12 x [12 x [12 x double]]]* nonnull align 8 dereferenceable(13824) %a) #3 !dbg !41 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %a.addr = alloca [12 x [12 x [12 x double]]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp1 = alloca double, align 8
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !51, metadata !DIExpression()), !dbg !66
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !52, metadata !DIExpression()), !dbg !66
  store i32* %m, i32** %m.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !53, metadata !DIExpression()), !dbg !67
  store [12 x [12 x [12 x double]]]* %a, [12 x [12 x [12 x double]]]** %a.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata [12 x [12 x [12 x double]]]** %a.addr, metadata !54, metadata !DIExpression()), !dbg !68
  %0 = load i32*, i32** %m.addr, align 8, !dbg !69, !tbaa !64
  %1 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %a.addr, align 8, !dbg !69, !tbaa !64
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !55, metadata !DIExpression()), !dbg !66
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !56, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.lb, align 4, !dbg !70, !tbaa !34
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !57, metadata !DIExpression()), !dbg !66
  store i32 11, i32* %.omp.ub, align 4, !dbg !70, !tbaa !34
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !58, metadata !DIExpression()), !dbg !66
  store i32 1, i32* %.omp.stride, align 4, !dbg !70, !tbaa !34
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !59, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.is_last, align 4, !dbg !70, !tbaa !34
  %7 = bitcast i32* %j to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %j, metadata !60, metadata !DIExpression()), !dbg !66
  %8 = bitcast i32* %k to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %k, metadata !61, metadata !DIExpression()), !dbg !66
  %9 = bitcast double* %tmp1 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #4, !dbg !69
  call void @llvm.dbg.declare(metadata double* %tmp1, metadata !62, metadata !DIExpression()), !dbg !66
  %10 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !63, metadata !DIExpression()), !dbg !66
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !69
  %12 = load i32, i32* %11, align 4, !dbg !69, !tbaa !34
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !71
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !70, !tbaa !34
  %cmp = icmp sgt i32 %13, 11, !dbg !70
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !70

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !70

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !70, !tbaa !34
  br label %cond.end, !dbg !70

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 11, %cond.true ], [ %14, %cond.false ], !dbg !70
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !70, !tbaa !34
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !70, !tbaa !34
  store i32 %15, i32* %.omp.iv, align 4, !dbg !70, !tbaa !34
  br label %omp.inner.for.cond, !dbg !69

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !70, !tbaa !34
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !70, !tbaa !34
  %cmp1 = icmp sle i32 %16, %17, !dbg !69
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !69

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !69

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !70, !tbaa !34
  %mul = mul nsw i32 %18, 1, !dbg !72
  %add = add nsw i32 0, %mul, !dbg !72
  store i32 %add, i32* %i, align 4, !dbg !72, !tbaa !34
  store i32 0, i32* %j, align 4, !dbg !73, !tbaa !34
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc11, %omp.inner.for.body
  %19 = load i32, i32* %j, align 4, !dbg !77, !tbaa !34
  %cmp2 = icmp slt i32 %19, 12, !dbg !79
  br i1 %cmp2, label %for.body, label %for.end13, !dbg !80

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !81, !tbaa !34
  br label %for.cond3, !dbg !84

for.cond3:                                        ; preds = %for.inc, %for.body
  %20 = load i32, i32* %k, align 4, !dbg !85, !tbaa !34
  %cmp4 = icmp slt i32 %20, 12, !dbg !87
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !88

for.body5:                                        ; preds = %for.cond3
  %21 = load i32, i32* %0, align 4, !dbg !89, !tbaa !34
  %conv = sitofp i32 %21 to double, !dbg !89
  %div = fdiv double 6.000000e+00, %conv, !dbg !91
  store double %div, double* %tmp1, align 8, !dbg !92, !tbaa !93
  %22 = load double, double* %tmp1, align 8, !dbg !95, !tbaa !93
  %add6 = fadd double %22, 4.000000e+00, !dbg !96
  %23 = load i32, i32* %i, align 4, !dbg !97, !tbaa !34
  %idxprom = sext i32 %23 to i64, !dbg !98
  %arrayidx = getelementptr inbounds [12 x [12 x [12 x double]]], [12 x [12 x [12 x double]]]* %1, i64 0, i64 %idxprom, !dbg !98
  %24 = load i32, i32* %j, align 4, !dbg !99, !tbaa !34
  %idxprom7 = sext i32 %24 to i64, !dbg !98
  %arrayidx8 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %arrayidx, i64 0, i64 %idxprom7, !dbg !98
  %25 = load i32, i32* %k, align 4, !dbg !100, !tbaa !34
  %idxprom9 = sext i32 %25 to i64, !dbg !98
  %arrayidx10 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !98
  store double %add6, double* %arrayidx10, align 8, !dbg !101, !tbaa !93
  br label %for.inc, !dbg !102

for.inc:                                          ; preds = %for.body5
  %26 = load i32, i32* %k, align 4, !dbg !103, !tbaa !34
  %inc = add nsw i32 %26, 1, !dbg !103
  store i32 %inc, i32* %k, align 4, !dbg !103, !tbaa !34
  br label %for.cond3, !dbg !104, !llvm.loop !105

for.end:                                          ; preds = %for.cond3
  br label %for.inc11, !dbg !108

for.inc11:                                        ; preds = %for.end
  %27 = load i32, i32* %j, align 4, !dbg !109, !tbaa !34
  %inc12 = add nsw i32 %27, 1, !dbg !109
  store i32 %inc12, i32* %j, align 4, !dbg !109, !tbaa !34
  br label %for.cond, !dbg !110, !llvm.loop !111

for.end13:                                        ; preds = %for.cond
  br label %omp.body.continue, !dbg !113

omp.body.continue:                                ; preds = %for.end13
  br label %omp.inner.for.inc, !dbg !71

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !70, !tbaa !34
  %add14 = add nsw i32 %28, 1, !dbg !69
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !69, !tbaa !34
  br label %omp.inner.for.cond, !dbg !71, !llvm.loop !114

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !71

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %12), !dbg !115
  %29 = bitcast i32* %i to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !71
  %30 = bitcast double* %tmp1 to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #4, !dbg !71
  %31 = bitcast i32* %k to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !71
  %32 = bitcast i32* %j to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !71
  %33 = bitcast i32* %.omp.is_last to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !71
  %34 = bitcast i32* %.omp.stride to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !71
  %35 = bitcast i32* %.omp.ub to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !71
  %36 = bitcast i32* %.omp.lb to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !71
  %37 = bitcast i32* %.omp.iv to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !71
  ret void, !dbg !116
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %m, [12 x [12 x [12 x double]]]* nonnull align 8 dereferenceable(13824) %a) #3 !dbg !117 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %a.addr = alloca [12 x [12 x [12 x double]]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !119, metadata !DIExpression()), !dbg !123
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !120, metadata !DIExpression()), !dbg !123
  store i32* %m, i32** %m.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !121, metadata !DIExpression()), !dbg !123
  store [12 x [12 x [12 x double]]]* %a, [12 x [12 x [12 x double]]]** %a.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata [12 x [12 x [12 x double]]]** %a.addr, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = load i32*, i32** %m.addr, align 8, !dbg !124, !tbaa !64
  %1 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %a.addr, align 8, !dbg !124, !tbaa !64
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !124, !tbaa !64
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !124, !tbaa !64
  %4 = load i32*, i32** %m.addr, align 8, !dbg !124, !tbaa !64
  %5 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %a.addr, align 8, !dbg !124, !tbaa !64
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [12 x [12 x [12 x double]]]* %5) #4, !dbg !124
  ret void, !dbg !124
}

; Function Attrs: nounwind
declare !callback !125 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB170-nestedloops-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !10, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16, !17, !18, !20}
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 19, type: !12)
!15 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 19, type: !12)
!16 = !DILocalVariable(name: "k", scope: !9, file: !1, line: 19, type: !12)
!17 = !DILocalVariable(name: "m", scope: !9, file: !1, line: 19, type: !12)
!18 = !DILocalVariable(name: "tmp1", scope: !9, file: !1, line: 20, type: !19)
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 22, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 110592, elements: !22)
!22 = !{!23, !23, !23}
!23 = !DISubrange(count: 12)
!24 = !DILocation(line: 19, column: 3, scope: !9)
!25 = !DILocation(line: 19, column: 7, scope: !9)
!26 = !DILocation(line: 19, column: 9, scope: !9)
!27 = !DILocation(line: 19, column: 11, scope: !9)
!28 = !DILocation(line: 19, column: 13, scope: !9)
!29 = !DILocation(line: 20, column: 3, scope: !9)
!30 = !DILocation(line: 20, column: 10, scope: !9)
!31 = !DILocation(line: 22, column: 3, scope: !9)
!32 = !DILocation(line: 22, column: 10, scope: !9)
!33 = !DILocation(line: 24, column: 5, scope: !9)
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 26, column: 3, scope: !9)
!39 = !DILocation(line: 37, column: 1, scope: !9)
!40 = !DILocation(line: 36, column: 3, scope: !9)
!41 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !42, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !50)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !44, !48, !49}
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!51 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !41, type: !44, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !41, type: !44, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "m", arg: 3, scope: !41, file: !1, line: 19, type: !48)
!54 = !DILocalVariable(name: "a", arg: 4, scope: !41, file: !1, line: 22, type: !49)
!55 = !DILocalVariable(name: ".omp.iv", scope: !41, type: !12, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.lb", scope: !41, type: !12, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".omp.ub", scope: !41, type: !12, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.stride", scope: !41, type: !12, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.is_last", scope: !41, type: !12, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "j", scope: !41, type: !12, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "k", scope: !41, type: !12, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "tmp1", scope: !41, type: !19, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "i", scope: !41, type: !12, flags: DIFlagArtificial)
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !36, i64 0}
!66 = !DILocation(line: 0, scope: !41)
!67 = !DILocation(line: 19, column: 13, scope: !41)
!68 = !DILocation(line: 22, column: 10, scope: !41)
!69 = !DILocation(line: 27, column: 3, scope: !41)
!70 = !DILocation(line: 27, column: 8, scope: !41)
!71 = !DILocation(line: 26, column: 3, scope: !41)
!72 = !DILocation(line: 27, column: 23, scope: !41)
!73 = !DILocation(line: 28, column: 12, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 28, column: 5)
!75 = distinct !DILexicalBlock(scope: !41, file: !1, line: 27, column: 28)
!76 = !DILocation(line: 28, column: 10, scope: !74)
!77 = !DILocation(line: 28, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 28, column: 5)
!79 = !DILocation(line: 28, column: 19, scope: !78)
!80 = !DILocation(line: 28, column: 5, scope: !74)
!81 = !DILocation(line: 29, column: 14, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 29, column: 7)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 28, column: 30)
!84 = !DILocation(line: 29, column: 12, scope: !82)
!85 = !DILocation(line: 29, column: 19, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 29, column: 7)
!87 = !DILocation(line: 29, column: 21, scope: !86)
!88 = !DILocation(line: 29, column: 7, scope: !82)
!89 = !DILocation(line: 30, column: 20, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 29, column: 32)
!91 = !DILocation(line: 30, column: 19, scope: !90)
!92 = !DILocation(line: 30, column: 14, scope: !90)
!93 = !{!94, !94, i64 0}
!94 = !{!"double", !36, i64 0}
!95 = !DILocation(line: 31, column: 22, scope: !90)
!96 = !DILocation(line: 31, column: 26, scope: !90)
!97 = !DILocation(line: 31, column: 11, scope: !90)
!98 = !DILocation(line: 31, column: 9, scope: !90)
!99 = !DILocation(line: 31, column: 14, scope: !90)
!100 = !DILocation(line: 31, column: 17, scope: !90)
!101 = !DILocation(line: 31, column: 20, scope: !90)
!102 = !DILocation(line: 32, column: 7, scope: !90)
!103 = !DILocation(line: 29, column: 28, scope: !86)
!104 = !DILocation(line: 29, column: 7, scope: !86)
!105 = distinct !{!105, !88, !106, !107}
!106 = !DILocation(line: 32, column: 7, scope: !82)
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !DILocation(line: 33, column: 5, scope: !83)
!109 = !DILocation(line: 28, column: 26, scope: !78)
!110 = !DILocation(line: 28, column: 5, scope: !78)
!111 = distinct !{!111, !80, !112, !107}
!112 = !DILocation(line: 33, column: 5, scope: !74)
!113 = !DILocation(line: 34, column: 3, scope: !75)
!114 = distinct !{!114, !71, !115}
!115 = !DILocation(line: 26, column: 48, scope: !41)
!116 = !DILocation(line: 34, column: 3, scope: !41)
!117 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 26, type: !42, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!118 = !{!119, !120, !121, !122}
!119 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !117, type: !44, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !117, type: !44, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "m", arg: 3, scope: !117, type: !48, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "a", arg: 4, scope: !117, type: !49, flags: DIFlagArtificial)
!123 = !DILocation(line: 0, scope: !117)
!124 = !DILocation(line: 26, column: 3, scope: !117)
!125 = !{!126}
!126 = !{i64 2, i64 -1, i64 -1, i1 true}
