; ModuleID = 'DRB070-simd1-orig-no.c'
source_filename = "DRB070-simd1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@b = dso_local global [100 x i32] zeroinitializer, align 16, !dbg !6
@c = dso_local global [100 x i32] zeroinitializer, align 16, !dbg !12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !29
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !25, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %.omp.iv, align 4, !dbg !32, !tbaa !33
  %2 = bitcast i32* %i1 to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !27, metadata !DIExpression()), !dbg !31
  br label %omp.inner.for.cond, !dbg !30

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %3 = load i32, i32* %.omp.iv, align 4, !dbg !32, !tbaa !33, !llvm.access.group !37
  %cmp = icmp slt i32 %3, 100, !dbg !38
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !30

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !30

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %4 = load i32, i32* %.omp.iv, align 4, !dbg !32, !tbaa !33, !llvm.access.group !37
  %mul = mul nsw i32 %4, 1, !dbg !39
  %add = add nsw i32 0, %mul, !dbg !39
  store i32 %add, i32* %i1, align 4, !dbg !39, !tbaa !33, !llvm.access.group !37
  %5 = load i32, i32* %i1, align 4, !dbg !40, !tbaa !33, !llvm.access.group !37
  %idxprom = sext i32 %5 to i64, !dbg !41
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @b, i64 0, i64 %idxprom, !dbg !41
  %6 = load i32, i32* %arrayidx, align 4, !dbg !41, !tbaa !33, !llvm.access.group !37
  %7 = load i32, i32* %i1, align 4, !dbg !42, !tbaa !33, !llvm.access.group !37
  %idxprom2 = sext i32 %7 to i64, !dbg !43
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @c, i64 0, i64 %idxprom2, !dbg !43
  %8 = load i32, i32* %arrayidx3, align 4, !dbg !43, !tbaa !33, !llvm.access.group !37
  %mul4 = mul nsw i32 %6, %8, !dbg !44
  %9 = load i32, i32* %i1, align 4, !dbg !45, !tbaa !33, !llvm.access.group !37
  %idxprom5 = sext i32 %9 to i64, !dbg !46
  %arrayidx6 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom5, !dbg !46
  store i32 %mul4, i32* %arrayidx6, align 4, !dbg !47, !tbaa !33, !llvm.access.group !37
  br label %omp.body.continue, !dbg !46

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !48

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !32, !tbaa !33, !llvm.access.group !37
  %add7 = add nsw i32 %10, 1, !dbg !38
  store i32 %add7, i32* %.omp.iv, align 4, !dbg !38, !tbaa !33, !llvm.access.group !37
  br label %omp.inner.for.cond, !dbg !48, !llvm.loop !49

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i32 100, i32* %i, align 4, !dbg !39, !tbaa !33
  %11 = bitcast i32* %i1 to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3, !dbg !48
  %12 = bitcast i32* %.omp.iv to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3, !dbg !48
  %13 = bitcast i32* %i to i8*, !dbg !53
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !53
  ret i32 0, !dbg !54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 50, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB070-simd1-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 50, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3200, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 50, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{!"clang version 11.1.0"}
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 51, type: !21, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!9}
!23 = !{!24, !25, !27}
!24 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 53, type: !9)
!25 = !DILocalVariable(name: ".omp.iv", scope: !26, type: !9, flags: DIFlagArtificial)
!26 = distinct !DILexicalBlock(scope: !20, file: !3, line: 54, column: 1)
!27 = !DILocalVariable(name: "i", scope: !26, type: !9, flags: DIFlagArtificial)
!28 = !DILocation(line: 53, column: 3, scope: !20)
!29 = !DILocation(line: 53, column: 7, scope: !20)
!30 = !DILocation(line: 54, column: 1, scope: !20)
!31 = !DILocation(line: 0, scope: !26)
!32 = !DILocation(line: 55, column: 8, scope: !26)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{}
!38 = !DILocation(line: 55, column: 3, scope: !26)
!39 = !DILocation(line: 55, column: 18, scope: !26)
!40 = !DILocation(line: 56, column: 12, scope: !26)
!41 = !DILocation(line: 56, column: 10, scope: !26)
!42 = !DILocation(line: 56, column: 17, scope: !26)
!43 = !DILocation(line: 56, column: 15, scope: !26)
!44 = !DILocation(line: 56, column: 14, scope: !26)
!45 = !DILocation(line: 56, column: 7, scope: !26)
!46 = !DILocation(line: 56, column: 5, scope: !26)
!47 = !DILocation(line: 56, column: 9, scope: !26)
!48 = !DILocation(line: 54, column: 1, scope: !26)
!49 = distinct !{!49, !48, !50, !51, !52}
!50 = !DILocation(line: 54, column: 17, scope: !26)
!51 = !{!"llvm.loop.parallel_accesses", !37}
!52 = !{!"llvm.loop.vectorize.enable", i1 true}
!53 = !DILocation(line: 58, column: 1, scope: !20)
!54 = !DILocation(line: 57, column: 3, scope: !20)
