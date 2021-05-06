; ModuleID = 'DRB138-simdsafelen-orig-yes.c'
source_filename = "DRB138-simdsafelen-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Expected: -1; Real: %d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %b = alloca [4 x i32], align 16
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %.capture_expr.2 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !28
  %1 = bitcast i32* %m to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %m, metadata !15, metadata !DIExpression()), !dbg !29
  store i32 1, i32* %m, align 4, !dbg !29, !tbaa !30
  %2 = bitcast i32* %n to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %n, metadata !16, metadata !DIExpression()), !dbg !34
  store i32 4, i32* %n, align 4, !dbg !34, !tbaa !30
  %3 = bitcast [4 x i32]* %b to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %3) #5, !dbg !35
  call void @llvm.dbg.declare(metadata [4 x i32]* %b, metadata !17, metadata !DIExpression()), !dbg !36
  %4 = bitcast [4 x i32]* %b to i8*, !dbg !36
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 16, i1 false), !dbg !36
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !21, metadata !DIExpression()), !dbg !38
  %6 = load i32, i32* %m, align 4, !dbg !39, !tbaa !30
  store i32 %6, i32* %.capture_expr., align 4, !dbg !39, !tbaa !30
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !21, metadata !DIExpression()), !dbg !38
  %8 = load i32, i32* %n, align 4, !dbg !40, !tbaa !30
  store i32 %8, i32* %.capture_expr.1, align 4, !dbg !40, !tbaa !30
  %9 = bitcast i32* %.capture_expr.2 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !23, metadata !DIExpression()), !dbg !38
  %10 = load i32, i32* %.capture_expr.1, align 4, !dbg !40, !tbaa !30
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !39, !tbaa !30
  %sub = sub i32 %10, %11, !dbg !41
  %sub3 = sub i32 %sub, 1, !dbg !41
  %add = add i32 %sub3, 1, !dbg !41
  %div = udiv i32 %add, 1, !dbg !41
  %sub4 = sub i32 %div, 1, !dbg !41
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !41, !tbaa !30
  %12 = bitcast i32* %i5 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !25, metadata !DIExpression()), !dbg !38
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !39, !tbaa !30
  store i32 %13, i32* %i5, align 4, !dbg !42, !tbaa !30
  %14 = bitcast i32* %i5 to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #5, !dbg !37
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !39, !tbaa !30
  %16 = load i32, i32* %.capture_expr.1, align 4, !dbg !40, !tbaa !30
  %cmp = icmp slt i32 %15, %16, !dbg !41
  br i1 %cmp, label %simd.if.then, label %simd.if.end, !dbg !37

simd.if.then:                                     ; preds = %entry
  %17 = bitcast i32* %.omp.iv to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !26, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %.omp.iv, align 4, !dbg !43, !tbaa !30
  %18 = bitcast i32* %i6 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !25, metadata !DIExpression()), !dbg !38
  br label %omp.inner.for.cond, !dbg !37

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !43, !tbaa !30
  %20 = load i32, i32* %.capture_expr.2, align 4, !dbg !41, !tbaa !30
  %add7 = add i32 %20, 1, !dbg !41
  %cmp8 = icmp ult i32 %19, %add7, !dbg !41
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !37

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !37

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.capture_expr., align 4, !dbg !39, !tbaa !30
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !43, !tbaa !30
  %mul = mul i32 %22, 1, !dbg !42
  %add9 = add i32 %21, %mul, !dbg !42
  store i32 %add9, i32* %i6, align 4, !dbg !42, !tbaa !30
  %23 = load i32, i32* %i6, align 4, !dbg !44, !tbaa !30
  %24 = load i32, i32* %m, align 4, !dbg !45, !tbaa !30
  %sub10 = sub nsw i32 %23, %24, !dbg !46
  %idxprom = sext i32 %sub10 to i64, !dbg !47
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 %idxprom, !dbg !47
  %25 = load i32, i32* %arrayidx, align 4, !dbg !47, !tbaa !30
  %conv = sitofp i32 %25 to float, !dbg !47
  %sub11 = fsub float %conv, 1.000000e+00, !dbg !48
  %conv12 = fptosi float %sub11 to i32, !dbg !47
  %26 = load i32, i32* %i6, align 4, !dbg !49, !tbaa !30
  %idxprom13 = sext i32 %26 to i64, !dbg !50
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 %idxprom13, !dbg !50
  store i32 %conv12, i32* %arrayidx14, align 4, !dbg !51, !tbaa !30
  br label %omp.body.continue, !dbg !50

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !52

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !43, !tbaa !30
  %add15 = add i32 %27, 1, !dbg !41
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !41, !tbaa !30
  br label %omp.inner.for.cond, !dbg !52, !llvm.loop !53

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %28 = load i32, i32* %.capture_expr., align 4, !dbg !39, !tbaa !30
  %29 = load i32, i32* %.capture_expr.1, align 4, !dbg !40, !tbaa !30
  %30 = load i32, i32* %.capture_expr., align 4, !dbg !39, !tbaa !30
  %sub16 = sub i32 %29, %30, !dbg !41
  %sub17 = sub i32 %sub16, 1, !dbg !41
  %add18 = add i32 %sub17, 1, !dbg !41
  %div19 = udiv i32 %add18, 1, !dbg !41
  %mul20 = mul i32 %div19, 1, !dbg !42
  %add21 = add i32 %28, %mul20, !dbg !42
  store i32 %add21, i32* %i, align 4, !dbg !42, !tbaa !30
  %31 = bitcast i32* %i6 to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !52
  br label %simd.if.end, !dbg !52

simd.if.end:                                      ; preds = %omp.inner.for.end, %entry
  %32 = bitcast i32* %.omp.iv to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !52
  %33 = bitcast i32* %.capture_expr.2 to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !52
  %34 = bitcast i32* %.capture_expr.1 to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !52
  %35 = bitcast i32* %.capture_expr. to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !52
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 3, !dbg !57
  %36 = load i32, i32* %arrayidx22, align 4, !dbg !57, !tbaa !30
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36), !dbg !58
  %37 = bitcast [4 x i32]* %b to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %37) #5, !dbg !59
  %38 = bitcast i32* %n to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !59
  %39 = bitcast i32* %m to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !59
  %40 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !59
  ret i32 0, !dbg !60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @printf(i8*, ...) #4

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn writeonly }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB138-simdsafelen-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !10, scopeLine: 19, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16, !17, !21, !21, !23, !25, !26, !25}
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 21, type: !12)
!15 = !DILocalVariable(name: "m", scope: !9, file: !1, line: 21, type: !12)
!16 = !DILocalVariable(name: "n", scope: !9, file: !1, line: 21, type: !12)
!17 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 22, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 4)
!21 = !DILocalVariable(name: ".capture_expr.", scope: !22, type: !12, flags: DIFlagArtificial)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 24, column: 3)
!23 = !DILocalVariable(name: ".capture_expr.", scope: !22, type: !24, flags: DIFlagArtificial)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "i", scope: !22, type: !12, flags: DIFlagArtificial)
!26 = !DILocalVariable(name: ".omp.iv", scope: !22, type: !24, flags: DIFlagArtificial)
!27 = !DILocation(line: 21, column: 3, scope: !9)
!28 = !DILocation(line: 21, column: 7, scope: !9)
!29 = !DILocation(line: 21, column: 10, scope: !9)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 21, column: 15, scope: !9)
!35 = !DILocation(line: 22, column: 3, scope: !9)
!36 = !DILocation(line: 22, column: 7, scope: !9)
!37 = !DILocation(line: 24, column: 3, scope: !9)
!38 = !DILocation(line: 0, scope: !22)
!39 = !DILocation(line: 25, column: 12, scope: !22)
!40 = !DILocation(line: 25, column: 17, scope: !22)
!41 = !DILocation(line: 25, column: 3, scope: !22)
!42 = !DILocation(line: 25, column: 20, scope: !22)
!43 = !DILocation(line: 25, column: 8, scope: !22)
!44 = !DILocation(line: 26, column: 14, scope: !22)
!45 = !DILocation(line: 26, column: 16, scope: !22)
!46 = !DILocation(line: 26, column: 15, scope: !22)
!47 = !DILocation(line: 26, column: 12, scope: !22)
!48 = !DILocation(line: 26, column: 19, scope: !22)
!49 = !DILocation(line: 26, column: 7, scope: !22)
!50 = !DILocation(line: 26, column: 5, scope: !22)
!51 = !DILocation(line: 26, column: 10, scope: !22)
!52 = !DILocation(line: 24, column: 3, scope: !22)
!53 = distinct !{!53, !52, !54, !55, !56}
!54 = !DILocation(line: 24, column: 30, scope: !22)
!55 = !{!"llvm.loop.vectorize.width", i32 2}
!56 = !{!"llvm.loop.vectorize.enable", i1 true}
!57 = !DILocation(line: 28, column: 37, scope: !9)
!58 = !DILocation(line: 28, column: 3, scope: !9)
!59 = !DILocation(line: 30, column: 1, scope: !9)
!60 = !DILocation(line: 29, column: 3, scope: !9)
