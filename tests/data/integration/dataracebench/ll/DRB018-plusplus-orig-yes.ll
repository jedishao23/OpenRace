; ModuleID = 'DRB018-plusplus-orig-yes.c'
source_filename = "DRB018-plusplus-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@input = dso_local global [1000 x i32] zeroinitializer, align 16, !dbg !0
@output = dso_local global [1000 x i32] zeroinitializer, align 16, !dbg !6
@0 = private unnamed_addr constant [40 x i8] c";DRB018-plusplus-orig-yes.c;main;69;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [41 x i8] c";DRB018-plusplus-orig-yes.c;main;69;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"output[500]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %inLen = alloca i32, align 4
  %outLen = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !26
  %1 = bitcast i32* %inLen to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %inLen, metadata !23, metadata !DIExpression()), !dbg !28
  store i32 1000, i32* %inLen, align 4, !dbg !28, !tbaa !29
  %2 = bitcast i32* %outLen to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %outLen, metadata !24, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %outLen, align 4, !dbg !34, !tbaa !29
  store i32 0, i32* %i, align 4, !dbg !35, !tbaa !29
  br label %for.cond, !dbg !37

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !38, !tbaa !29
  %4 = load i32, i32* %inLen, align 4, !dbg !40, !tbaa !29
  %cmp = icmp slt i32 %3, %4, !dbg !41
  br i1 %cmp, label %for.body, label %for.end, !dbg !42

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !43, !tbaa !29
  %6 = load i32, i32* %i, align 4, !dbg !44, !tbaa !29
  %idxprom = sext i32 %6 to i64, !dbg !45
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @input, i64 0, i64 %idxprom, !dbg !45
  store i32 %5, i32* %arrayidx, align 4, !dbg !46, !tbaa !29
  br label %for.inc, !dbg !45

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !47, !tbaa !29
  %inc = add nsw i32 %7, 1, !dbg !47
  store i32 %inc, i32* %i, align 4, !dbg !47, !tbaa !29
  br label %for.cond, !dbg !48, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %inLen, i32* %outLen), !dbg !52
  %8 = load i32, i32* getelementptr inbounds ([1000 x i32], [1000 x i32]* @output, i64 0, i64 500), align 16, !dbg !53, !tbaa !29
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8), !dbg !54
  %9 = bitcast i32* %outLen to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !55
  %10 = bitcast i32* %inLen to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !55
  %11 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %inLen, i32* nonnull align 4 dereferenceable(4) %outLen) #3 !dbg !57 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !79
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !79
  store i32* %inLen, i32** %inLen.addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !68, metadata !DIExpression()), !dbg !80
  store i32* %outLen, i32** %outLen.addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !69, metadata !DIExpression()), !dbg !81
  %0 = load i32*, i32** %inLen.addr, align 8, !dbg !82, !tbaa !77
  %1 = load i32*, i32** %outLen.addr, align 8, !dbg !82, !tbaa !77
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !70, metadata !DIExpression()), !dbg !79
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !71, metadata !DIExpression()), !dbg !79
  %4 = load i32, i32* %0, align 4, !dbg !83, !tbaa !29
  store i32 %4, i32* %.capture_expr., align 4, !dbg !83, !tbaa !29
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !71, metadata !DIExpression()), !dbg !79
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !83, !tbaa !29
  %sub = sub nsw i32 %6, 0, !dbg !82
  %div = sdiv i32 %sub, 1, !dbg !82
  %sub2 = sub nsw i32 %div, 1, !dbg !82
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !82, !tbaa !29
  %7 = bitcast i32* %i to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %i, metadata !72, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %i, align 4, !dbg !84, !tbaa !29
  %8 = bitcast i32* %i to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !82
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !83, !tbaa !29
  %cmp = icmp slt i32 0, %9, !dbg !82
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !82

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !73, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.lb, align 4, !dbg !85, !tbaa !29
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !74, metadata !DIExpression()), !dbg !79
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !82, !tbaa !29
  store i32 %12, i32* %.omp.ub, align 4, !dbg !85, !tbaa !29
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !75, metadata !DIExpression()), !dbg !79
  store i32 1, i32* %.omp.stride, align 4, !dbg !85, !tbaa !29
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !76, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.is_last, align 4, !dbg !85, !tbaa !29
  %15 = bitcast i32* %i3 to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !72, metadata !DIExpression()), !dbg !79
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !82
  %17 = load i32, i32* %16, align 4, !dbg !82, !tbaa !29
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !86
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !85, !tbaa !29
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !82, !tbaa !29
  %cmp4 = icmp sgt i32 %18, %19, !dbg !85
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !85

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !82, !tbaa !29
  br label %cond.end, !dbg !85

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !85, !tbaa !29
  br label %cond.end, !dbg !85

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !85
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !85, !tbaa !29
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !85, !tbaa !29
  store i32 %22, i32* %.omp.iv, align 4, !dbg !85, !tbaa !29
  br label %omp.inner.for.cond, !dbg !82

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !85, !tbaa !29
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !85, !tbaa !29
  %cmp5 = icmp sle i32 %23, %24, !dbg !82
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !82

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !82

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !85, !tbaa !29
  %mul = mul nsw i32 %25, 1, !dbg !84
  %add = add nsw i32 0, %mul, !dbg !84
  store i32 %add, i32* %i3, align 4, !dbg !84, !tbaa !29
  %26 = load i32, i32* %i3, align 4, !dbg !87, !tbaa !29
  %idxprom = sext i32 %26 to i64, !dbg !89
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @input, i64 0, i64 %idxprom, !dbg !89
  %27 = load i32, i32* %arrayidx, align 4, !dbg !89, !tbaa !29
  %28 = load i32, i32* %1, align 4, !dbg !90, !tbaa !29
  %inc = add nsw i32 %28, 1, !dbg !90
  store i32 %inc, i32* %1, align 4, !dbg !90, !tbaa !29
  %idxprom6 = sext i32 %28 to i64, !dbg !91
  %arrayidx7 = getelementptr inbounds [1000 x i32], [1000 x i32]* @output, i64 0, i64 %idxprom6, !dbg !91
  store i32 %27, i32* %arrayidx7, align 4, !dbg !92, !tbaa !29
  br label %omp.body.continue, !dbg !93

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !86

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !85, !tbaa !29
  %add8 = add nsw i32 %29, 1, !dbg !82
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !82, !tbaa !29
  br label %omp.inner.for.cond, !dbg !86, !llvm.loop !94

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !86

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !86
  %31 = load i32, i32* %30, align 4, !dbg !86, !tbaa !29
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %31), !dbg !95
  %32 = bitcast i32* %i3 to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !86
  %33 = bitcast i32* %.omp.is_last to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !86
  %34 = bitcast i32* %.omp.stride to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !86
  %35 = bitcast i32* %.omp.ub to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !86
  %36 = bitcast i32* %.omp.lb to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !86
  br label %omp.precond.end, !dbg !86

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %37 = bitcast i32* %.capture_expr.1 to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !86
  %38 = bitcast i32* %.capture_expr. to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !86
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !86
  ret void, !dbg !96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %inLen, i32* nonnull align 4 dereferenceable(4) %outLen) #3 !dbg !97 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !99, metadata !DIExpression()), !dbg !103
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !100, metadata !DIExpression()), !dbg !103
  store i32* %inLen, i32** %inLen.addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !101, metadata !DIExpression()), !dbg !103
  store i32* %outLen, i32** %outLen.addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = load i32*, i32** %inLen.addr, align 8, !dbg !104, !tbaa !77
  %1 = load i32*, i32** %outLen.addr, align 8, !dbg !104, !tbaa !77
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !104, !tbaa !77
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !104, !tbaa !77
  %4 = load i32*, i32** %inLen.addr, align 8, !dbg !104, !tbaa !77
  %5 = load i32*, i32** %outLen.addr, align 8, !dbg !104, !tbaa !77
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #4, !dbg !104
  ret void, !dbg !104
}

; Function Attrs: nounwind
declare !callback !105 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 57, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB018-plusplus-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "output", scope: !2, file: !3, line: 58, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32000, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 1000)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{!"clang version 11.1.0"}
!18 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !19, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!9}
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "i", scope: !18, file: !3, line: 62, type: !9)
!23 = !DILocalVariable(name: "inLen", scope: !18, file: !3, line: 63, type: !9)
!24 = !DILocalVariable(name: "outLen", scope: !18, file: !3, line: 64, type: !9)
!25 = !DILocation(line: 62, column: 3, scope: !18)
!26 = !DILocation(line: 62, column: 7, scope: !18)
!27 = !DILocation(line: 63, column: 3, scope: !18)
!28 = !DILocation(line: 63, column: 7, scope: !18)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 64, column: 3, scope: !18)
!34 = !DILocation(line: 64, column: 7, scope: !18)
!35 = !DILocation(line: 66, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !18, file: !3, line: 66, column: 3)
!37 = !DILocation(line: 66, column: 8, scope: !36)
!38 = !DILocation(line: 66, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !3, line: 66, column: 3)
!40 = !DILocation(line: 66, column: 15, scope: !39)
!41 = !DILocation(line: 66, column: 14, scope: !39)
!42 = !DILocation(line: 66, column: 3, scope: !36)
!43 = !DILocation(line: 67, column: 15, scope: !39)
!44 = !DILocation(line: 67, column: 11, scope: !39)
!45 = !DILocation(line: 67, column: 5, scope: !39)
!46 = !DILocation(line: 67, column: 13, scope: !39)
!47 = !DILocation(line: 66, column: 22, scope: !39)
!48 = !DILocation(line: 66, column: 3, scope: !39)
!49 = distinct !{!49, !42, !50, !51}
!50 = !DILocation(line: 67, column: 15, scope: !36)
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !DILocation(line: 69, column: 1, scope: !18)
!53 = !DILocation(line: 75, column: 29, scope: !18)
!54 = !DILocation(line: 75, column: 3, scope: !18)
!55 = !DILocation(line: 78, column: 1, scope: !18)
!56 = !DILocation(line: 77, column: 3, scope: !18)
!57 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 70, type: !58, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !60, !64, !64}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!64 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 64)
!65 = !{!66, !67, !68, !69, !70, !71, !71, !72, !73, !74, !75, !76, !72}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !57, type: !60, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !57, type: !60, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "inLen", arg: 3, scope: !57, file: !3, line: 63, type: !64)
!69 = !DILocalVariable(name: "outLen", arg: 4, scope: !57, file: !3, line: 64, type: !64)
!70 = !DILocalVariable(name: ".omp.iv", scope: !57, type: !9, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".capture_expr.", scope: !57, type: !9, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "i", scope: !57, type: !9, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.lb", scope: !57, type: !9, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.ub", scope: !57, type: !9, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.stride", scope: !57, type: !9, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.is_last", scope: !57, type: !9, flags: DIFlagArtificial)
!77 = !{!78, !78, i64 0}
!78 = !{!"any pointer", !31, i64 0}
!79 = !DILocation(line: 0, scope: !57)
!80 = !DILocation(line: 63, column: 7, scope: !57)
!81 = !DILocation(line: 64, column: 7, scope: !57)
!82 = !DILocation(line: 70, column: 3, scope: !57)
!83 = !DILocation(line: 70, column: 15, scope: !57)
!84 = !DILocation(line: 70, column: 22, scope: !57)
!85 = !DILocation(line: 70, column: 8, scope: !57)
!86 = !DILocation(line: 69, column: 1, scope: !57)
!87 = !DILocation(line: 72, column: 30, scope: !88)
!88 = distinct !DILexicalBlock(scope: !57, file: !3, line: 71, column: 3)
!89 = !DILocation(line: 72, column: 24, scope: !88)
!90 = !DILocation(line: 72, column: 18, scope: !88)
!91 = !DILocation(line: 72, column: 5, scope: !88)
!92 = !DILocation(line: 72, column: 22, scope: !88)
!93 = !DILocation(line: 73, column: 3, scope: !88)
!94 = distinct !{!94, !86, !95}
!95 = !DILocation(line: 69, column: 25, scope: !57)
!96 = !DILocation(line: 73, column: 3, scope: !57)
!97 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 69, type: !58, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!98 = !{!99, !100, !101, !102}
!99 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !97, type: !60, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !97, type: !60, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "inLen", arg: 3, scope: !97, type: !64, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "outLen", arg: 4, scope: !97, type: !64, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !97)
!104 = !DILocation(line: 69, column: 1, scope: !97)
!105 = !{!106}
!106 = !{i64 2, i64 -1, i64 -1, i1 true}
