; ModuleID = 'DRB016-outputdep-orig-yes.c'
source_filename = "DRB016-outputdep-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [41 x i8] c";DRB016-outputdep-orig-yes.c;main;70;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [42 x i8] c";DRB016-outputdep-orig-yes.c;main;70;26;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"x=%d\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %len to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !24
  store i32 100, i32* %len, align 4, !dbg !24, !tbaa !25
  %1 = bitcast i32* %i to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !30
  %2 = bitcast i32* %x to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %x, metadata !22, metadata !DIExpression()), !dbg !31
  store i32 10, i32* %x, align 4, !dbg !31, !tbaa !25
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %x), !dbg !32
  %3 = load i32, i32* %x, align 4, !dbg !33, !tbaa !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %3), !dbg !34
  %4 = bitcast i32* %x to i8*, !dbg !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !35
  %5 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !35
  %6 = bitcast i32* %len to i8*, !dbg !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !35
  ret i32 0, !dbg !36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %x) #3 !dbg !37 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !46, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !47, metadata !DIExpression()), !dbg !59
  store i32* %len, i32** %len.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !48, metadata !DIExpression()), !dbg !60
  store i32* %x, i32** %x.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !49, metadata !DIExpression()), !dbg !61
  %0 = load i32*, i32** %len.addr, align 8, !dbg !62, !tbaa !57
  %1 = load i32*, i32** %x.addr, align 8, !dbg !62, !tbaa !57
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !50, metadata !DIExpression()), !dbg !59
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !51, metadata !DIExpression()), !dbg !59
  %4 = load i32, i32* %0, align 4, !dbg !63, !tbaa !25
  store i32 %4, i32* %.capture_expr., align 4, !dbg !63, !tbaa !25
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !51, metadata !DIExpression()), !dbg !59
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !63, !tbaa !25
  %sub = sub nsw i32 %6, 0, !dbg !62
  %div = sdiv i32 %sub, 1, !dbg !62
  %sub2 = sub nsw i32 %div, 1, !dbg !62
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !62, !tbaa !25
  %7 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %i, align 4, !dbg !64, !tbaa !25
  %8 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !62
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !63, !tbaa !25
  %cmp = icmp slt i32 0, %9, !dbg !62
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !62

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !53, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.lb, align 4, !dbg !65, !tbaa !25
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !54, metadata !DIExpression()), !dbg !59
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !62, !tbaa !25
  store i32 %12, i32* %.omp.ub, align 4, !dbg !65, !tbaa !25
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !55, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !65, !tbaa !25
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !56, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !65, !tbaa !25
  %15 = bitcast i32* %i3 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !52, metadata !DIExpression()), !dbg !59
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !62
  %17 = load i32, i32* %16, align 4, !dbg !62, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !66
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !65, !tbaa !25
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !62, !tbaa !25
  %cmp4 = icmp sgt i32 %18, %19, !dbg !65
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !65

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !62, !tbaa !25
  br label %cond.end, !dbg !65

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !65, !tbaa !25
  br label %cond.end, !dbg !65

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !65
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !65, !tbaa !25
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !65, !tbaa !25
  store i32 %22, i32* %.omp.iv, align 4, !dbg !65, !tbaa !25
  br label %omp.inner.for.cond, !dbg !62

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !65, !tbaa !25
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !65, !tbaa !25
  %cmp5 = icmp sle i32 %23, %24, !dbg !62
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !62

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !62

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !65, !tbaa !25
  %mul = mul nsw i32 %25, 1, !dbg !64
  %add = add nsw i32 0, %mul, !dbg !64
  store i32 %add, i32* %i3, align 4, !dbg !64, !tbaa !25
  %26 = load i32, i32* %1, align 4, !dbg !67, !tbaa !25
  %27 = load i32, i32* %i3, align 4, !dbg !69, !tbaa !25
  %idxprom = sext i32 %27 to i64, !dbg !70
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !70
  store i32 %26, i32* %arrayidx, align 4, !dbg !71, !tbaa !25
  %28 = load i32, i32* %i3, align 4, !dbg !72, !tbaa !25
  store i32 %28, i32* %1, align 4, !dbg !73, !tbaa !25
  br label %omp.body.continue, !dbg !74

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !66

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !65, !tbaa !25
  %add6 = add nsw i32 %29, 1, !dbg !62
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !62, !tbaa !25
  br label %omp.inner.for.cond, !dbg !66, !llvm.loop !75

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !66

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %31 = load i32, i32* %30, align 4, !dbg !66, !tbaa !25
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %31), !dbg !76
  %32 = bitcast i32* %i3 to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !66
  %33 = bitcast i32* %.omp.is_last to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !66
  %34 = bitcast i32* %.omp.stride to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !66
  %35 = bitcast i32* %.omp.ub to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !66
  %36 = bitcast i32* %.omp.lb to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !66
  br label %omp.precond.end, !dbg !66

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %37 = bitcast i32* %.capture_expr.1 to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !66
  %38 = bitcast i32* %.capture_expr. to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !66
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !66
  ret void, !dbg !77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %x) #3 !dbg !78 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !84
  store i32* %len, i32** %len.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !82, metadata !DIExpression()), !dbg !84
  store i32* %x, i32** %x.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i32*, i32** %len.addr, align 8, !dbg !85, !tbaa !57
  %1 = load i32*, i32** %x.addr, align 8, !dbg !85, !tbaa !57
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !85, !tbaa !57
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !85, !tbaa !57
  %4 = load i32*, i32** %len.addr, align 8, !dbg !85, !tbaa !57
  %5 = load i32*, i32** %x.addr, align 8, !dbg !85, !tbaa !57
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #4, !dbg !85
  ret void, !dbg !85
}

; Function Attrs: nounwind
declare !callback !86 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 63, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB016-outputdep-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 65, type: !17, scopeLine: 66, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7}
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "len", scope: !16, file: !3, line: 67, type: !7)
!21 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 68, type: !7)
!22 = !DILocalVariable(name: "x", scope: !16, file: !3, line: 68, type: !7)
!23 = !DILocation(line: 67, column: 3, scope: !16)
!24 = !DILocation(line: 67, column: 7, scope: !16)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 68, column: 3, scope: !16)
!30 = !DILocation(line: 68, column: 7, scope: !16)
!31 = !DILocation(line: 68, column: 9, scope: !16)
!32 = !DILocation(line: 70, column: 1, scope: !16)
!33 = !DILocation(line: 76, column: 17, scope: !16)
!34 = !DILocation(line: 76, column: 3, scope: !16)
!35 = !DILocation(line: 78, column: 1, scope: !16)
!36 = !DILocation(line: 77, column: 3, scope: !16)
!37 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 71, type: !38, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !45)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, !40, !44, !44}
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!44 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!45 = !{!46, !47, !48, !49, !50, !51, !51, !52, !53, !54, !55, !56, !52}
!46 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !37, type: !40, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !37, type: !40, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "len", arg: 3, scope: !37, file: !3, line: 67, type: !44)
!49 = !DILocalVariable(name: "x", arg: 4, scope: !37, file: !3, line: 68, type: !44)
!50 = !DILocalVariable(name: ".omp.iv", scope: !37, type: !7, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".capture_expr.", scope: !37, type: !7, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "i", scope: !37, type: !7, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".omp.lb", scope: !37, type: !7, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".omp.ub", scope: !37, type: !7, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.stride", scope: !37, type: !7, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.is_last", scope: !37, type: !7, flags: DIFlagArtificial)
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !27, i64 0}
!59 = !DILocation(line: 0, scope: !37)
!60 = !DILocation(line: 67, column: 7, scope: !37)
!61 = !DILocation(line: 68, column: 9, scope: !37)
!62 = !DILocation(line: 71, column: 3, scope: !37)
!63 = !DILocation(line: 71, column: 14, scope: !37)
!64 = !DILocation(line: 71, column: 18, scope: !37)
!65 = !DILocation(line: 71, column: 8, scope: !37)
!66 = !DILocation(line: 70, column: 1, scope: !37)
!67 = !DILocation(line: 73, column: 12, scope: !68)
!68 = distinct !DILexicalBlock(scope: !37, file: !3, line: 72, column: 3)
!69 = !DILocation(line: 73, column: 7, scope: !68)
!70 = !DILocation(line: 73, column: 5, scope: !68)
!71 = !DILocation(line: 73, column: 10, scope: !68)
!72 = !DILocation(line: 74, column: 7, scope: !68)
!73 = !DILocation(line: 74, column: 6, scope: !68)
!74 = !DILocation(line: 75, column: 3, scope: !68)
!75 = distinct !{!75, !66, !76}
!76 = !DILocation(line: 70, column: 26, scope: !37)
!77 = !DILocation(line: 75, column: 3, scope: !37)
!78 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 70, type: !38, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !78, type: !40, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !78, type: !40, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "len", arg: 3, scope: !78, type: !44, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "x", arg: 4, scope: !78, type: !44, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !78)
!85 = !DILocation(line: 70, column: 1, scope: !78)
!86 = !{!87}
!87 = !{i64 2, i64 -1, i64 -1, i1 true}
