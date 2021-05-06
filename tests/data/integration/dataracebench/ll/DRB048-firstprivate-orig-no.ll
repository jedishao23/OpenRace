; ModuleID = 'DRB048-firstprivate-orig-no.c'
source_filename = "DRB048-firstprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [42 x i8] c";DRB048-firstprivate-orig-no.c;foo;54;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [43 x i8] c";DRB048-firstprivate-orig-no.c;foo;54;42;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo(i32* %a, i32 %n, i32 %g) #0 !dbg !16 {
entry:
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %g.casted = alloca i64, align 8
  store i32* %a, i32** %a.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !21, metadata !DIExpression()), !dbg !29
  store i32 %n, i32* %n.addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !22, metadata !DIExpression()), !dbg !32
  store i32 %g, i32* %g.addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %g.addr, metadata !23, metadata !DIExpression()), !dbg !33
  %0 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !35
  %1 = load i32, i32* %g.addr, align 4, !dbg !36, !tbaa !30
  %conv = bitcast i64* %g.casted to i32*, !dbg !36
  store i32 %1, i32* %conv, align 4, !dbg !36, !tbaa !30
  %2 = load i64, i64* %g.casted, align 8, !dbg !36, !tbaa !37
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32**, i64)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n.addr, i32** %a.addr, i64 %2), !dbg !36
  %3 = bitcast i32* %i to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !39
  ret void, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32** nonnull align 8 dereferenceable(8) %a, i32 %g) #3 !dbg !40 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %g.addr = alloca i32, align 4
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !50, metadata !DIExpression()), !dbg !62
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !51, metadata !DIExpression()), !dbg !62
  store i32* %n, i32** %n.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !52, metadata !DIExpression()), !dbg !63
  store i32** %a, i32*** %a.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !53, metadata !DIExpression()), !dbg !64
  store i32 %g, i32* %g.addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %g.addr, metadata !54, metadata !DIExpression()), !dbg !65
  %0 = load i32*, i32** %n.addr, align 8, !dbg !66, !tbaa !25
  %1 = load i32**, i32*** %a.addr, align 8, !dbg !66, !tbaa !25
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !55, metadata !DIExpression()), !dbg !62
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !56, metadata !DIExpression()), !dbg !62
  %4 = load i32, i32* %0, align 4, !dbg !67, !tbaa !30
  store i32 %4, i32* %.capture_expr., align 4, !dbg !67, !tbaa !30
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !56, metadata !DIExpression()), !dbg !62
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !67, !tbaa !30
  %sub = sub nsw i32 %6, 0, !dbg !66
  %div = sdiv i32 %sub, 1, !dbg !66
  %sub2 = sub nsw i32 %div, 1, !dbg !66
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !66, !tbaa !30
  %7 = bitcast i32* %i to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i, metadata !57, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %i, align 4, !dbg !68, !tbaa !30
  %8 = bitcast i32* %i to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !66
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !67, !tbaa !30
  %cmp = icmp slt i32 0, %9, !dbg !66
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !66

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !58, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %.omp.lb, align 4, !dbg !69, !tbaa !30
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !59, metadata !DIExpression()), !dbg !62
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !66, !tbaa !30
  store i32 %12, i32* %.omp.ub, align 4, !dbg !69, !tbaa !30
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !60, metadata !DIExpression()), !dbg !62
  store i32 1, i32* %.omp.stride, align 4, !dbg !69, !tbaa !30
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %.omp.is_last, align 4, !dbg !69, !tbaa !30
  %15 = bitcast i32* %i3 to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !57, metadata !DIExpression()), !dbg !62
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %17 = load i32, i32* %16, align 4, !dbg !66, !tbaa !30
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !70
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !69, !tbaa !30
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !66, !tbaa !30
  %cmp4 = icmp sgt i32 %18, %19, !dbg !69
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !69

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !66, !tbaa !30
  br label %cond.end, !dbg !69

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !69, !tbaa !30
  br label %cond.end, !dbg !69

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !69
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !69, !tbaa !30
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !69, !tbaa !30
  store i32 %22, i32* %.omp.iv, align 4, !dbg !69, !tbaa !30
  br label %omp.inner.for.cond, !dbg !66

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !69, !tbaa !30
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !69, !tbaa !30
  %cmp5 = icmp sle i32 %23, %24, !dbg !66
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !66

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !66

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !69, !tbaa !30
  %mul = mul nsw i32 %25, 1, !dbg !68
  %add = add nsw i32 0, %mul, !dbg !68
  store i32 %add, i32* %i3, align 4, !dbg !68, !tbaa !30
  %26 = load i32*, i32** %1, align 8, !dbg !71, !tbaa !25
  %27 = load i32, i32* %i3, align 4, !dbg !73, !tbaa !30
  %idxprom = sext i32 %27 to i64, !dbg !71
  %arrayidx = getelementptr inbounds i32, i32* %26, i64 %idxprom, !dbg !71
  %28 = load i32, i32* %arrayidx, align 4, !dbg !71, !tbaa !30
  %29 = load i32, i32* %g.addr, align 4, !dbg !74, !tbaa !30
  %add6 = add nsw i32 %28, %29, !dbg !75
  %30 = load i32*, i32** %1, align 8, !dbg !76, !tbaa !25
  %31 = load i32, i32* %i3, align 4, !dbg !77, !tbaa !30
  %idxprom7 = sext i32 %31 to i64, !dbg !76
  %arrayidx8 = getelementptr inbounds i32, i32* %30, i64 %idxprom7, !dbg !76
  store i32 %add6, i32* %arrayidx8, align 4, !dbg !78, !tbaa !30
  br label %omp.body.continue, !dbg !79

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !70

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !69, !tbaa !30
  %add9 = add nsw i32 %32, 1, !dbg !66
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !66, !tbaa !30
  br label %omp.inner.for.cond, !dbg !70, !llvm.loop !80

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !70

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !70
  %34 = load i32, i32* %33, align 4, !dbg !70, !tbaa !30
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %34), !dbg !81
  %35 = bitcast i32* %i3 to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !70
  %36 = bitcast i32* %.omp.is_last to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !70
  %37 = bitcast i32* %.omp.stride to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !70
  %38 = bitcast i32* %.omp.ub to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !70
  %39 = bitcast i32* %.omp.lb to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !70
  br label %omp.precond.end, !dbg !70

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %40 = bitcast i32* %.capture_expr.1 to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !70
  %41 = bitcast i32* %.capture_expr. to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !70
  %42 = bitcast i32* %.omp.iv to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !70
  ret void, !dbg !82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %n, i32** nonnull align 8 dereferenceable(8) %a, i64 %g) #3 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %g.addr = alloca i64, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !93
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !89, metadata !DIExpression()), !dbg !93
  store i32* %n, i32** %n.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !90, metadata !DIExpression()), !dbg !93
  store i32** %a, i32*** %a.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !91, metadata !DIExpression()), !dbg !93
  store i64 %g, i64* %g.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i64* %g.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load i32*, i32** %n.addr, align 8, !dbg !94, !tbaa !25
  %1 = load i32**, i32*** %a.addr, align 8, !dbg !94, !tbaa !25
  %conv = bitcast i64* %g.addr to i32*, !dbg !94
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !94, !tbaa !25
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !94, !tbaa !25
  %4 = load i32*, i32** %n.addr, align 8, !dbg !94, !tbaa !25
  %5 = load i32**, i32*** %a.addr, align 8, !dbg !94, !tbaa !25
  %6 = load i32, i32* %conv, align 8, !dbg !94, !tbaa !30
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32** %5, i32 %6) #4, !dbg !94
  ret void, !dbg !94
}

; Function Attrs: nounwind
declare !callback !95 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo(i32* getelementptr inbounds ([100 x i32], [100 x i32]* @a, i64 0, i64 0), i32 100, i32 7), !dbg !100
  ret i32 0, !dbg !101
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 61, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB048-firstprivate-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 51, type: !17, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !7, !7}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !16, file: !3, line: 51, type: !19)
!22 = !DILocalVariable(name: "n", arg: 2, scope: !16, file: !3, line: 51, type: !7)
!23 = !DILocalVariable(name: "g", arg: 3, scope: !16, file: !3, line: 51, type: !7)
!24 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 53, type: !7)
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 51, column: 16, scope: !16)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !27, i64 0}
!32 = !DILocation(line: 51, column: 23, scope: !16)
!33 = !DILocation(line: 51, column: 30, scope: !16)
!34 = !DILocation(line: 53, column: 3, scope: !16)
!35 = !DILocation(line: 53, column: 7, scope: !16)
!36 = !DILocation(line: 54, column: 1, scope: !16)
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !27, i64 0}
!39 = !DILocation(line: 59, column: 1, scope: !16)
!40 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 55, type: !41, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !49)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43, !47, !48, !7}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!47 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !56, !57, !58, !59, !60, !61, !57}
!50 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !40, type: !43, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !40, type: !43, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "n", arg: 3, scope: !40, file: !3, line: 51, type: !47)
!53 = !DILocalVariable(name: "a", arg: 4, scope: !40, file: !3, line: 51, type: !48)
!54 = !DILocalVariable(name: "g", arg: 5, scope: !40, file: !3, line: 51, type: !7)
!55 = !DILocalVariable(name: ".omp.iv", scope: !40, type: !7, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".capture_expr.", scope: !40, type: !7, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "i", scope: !40, type: !7, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.lb", scope: !40, type: !7, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.ub", scope: !40, type: !7, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.stride", scope: !40, type: !7, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.is_last", scope: !40, type: !7, flags: DIFlagArtificial)
!62 = !DILocation(line: 0, scope: !40)
!63 = !DILocation(line: 51, column: 23, scope: !40)
!64 = !DILocation(line: 51, column: 16, scope: !40)
!65 = !DILocation(line: 51, column: 30, scope: !40)
!66 = !DILocation(line: 55, column: 3, scope: !40)
!67 = !DILocation(line: 55, column: 14, scope: !40)
!68 = !DILocation(line: 55, column: 16, scope: !40)
!69 = !DILocation(line: 55, column: 8, scope: !40)
!70 = !DILocation(line: 54, column: 1, scope: !40)
!71 = !DILocation(line: 57, column: 12, scope: !72)
!72 = distinct !DILexicalBlock(scope: !40, file: !3, line: 56, column: 3)
!73 = !DILocation(line: 57, column: 14, scope: !72)
!74 = !DILocation(line: 57, column: 17, scope: !72)
!75 = !DILocation(line: 57, column: 16, scope: !72)
!76 = !DILocation(line: 57, column: 5, scope: !72)
!77 = !DILocation(line: 57, column: 7, scope: !72)
!78 = !DILocation(line: 57, column: 10, scope: !72)
!79 = !DILocation(line: 58, column: 3, scope: !72)
!80 = distinct !{!80, !70, !81}
!81 = !DILocation(line: 54, column: 42, scope: !40)
!82 = !DILocation(line: 58, column: 3, scope: !40)
!83 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 54, type: !84, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !43, !43, !47, !48, !86}
!86 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!87 = !{!88, !89, !90, !91, !92}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !43, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !43, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "n", arg: 3, scope: !83, type: !47, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "a", arg: 4, scope: !83, type: !48, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "g", arg: 5, scope: !83, type: !86, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !83)
!94 = !DILocation(line: 54, column: 1, scope: !83)
!95 = !{!96}
!96 = !{i64 2, i64 -1, i64 -1, i1 true}
!97 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !98, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!98 = !DISubroutineType(types: !99)
!99 = !{!7}
!100 = !DILocation(line: 64, column: 3, scope: !97)
!101 = !DILocation(line: 65, column: 3, scope: !97)
