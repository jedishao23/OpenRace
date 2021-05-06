; ModuleID = 'DRB024-simdtruedep-orig-yes.c'
source_filename = "DRB024-simdtruedep-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"i=%d a[%d]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %i8 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !34
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !37
  %0 = bitcast i32* %i to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !39
  %1 = bitcast i32* %len to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !41
  store i32 100, i32* %len, align 4, !dbg !41, !tbaa !30
  %2 = bitcast [100 x i32]* %a to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %2) #4, !dbg !42
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !21, metadata !DIExpression()), !dbg !43
  %3 = bitcast [100 x i32]* %b to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %3) #4, !dbg !42
  call void @llvm.dbg.declare(metadata [100 x i32]* %b, metadata !25, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i, align 4, !dbg !45, !tbaa !30
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !48, !tbaa !30
  %5 = load i32, i32* %len, align 4, !dbg !50, !tbaa !30
  %cmp = icmp slt i32 %4, %5, !dbg !51
  br i1 %cmp, label %for.body, label %for.end, !dbg !52

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !53, !tbaa !30
  %7 = load i32, i32* %i, align 4, !dbg !55, !tbaa !30
  %idxprom = sext i32 %7 to i64, !dbg !56
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !56
  store i32 %6, i32* %arrayidx, align 4, !dbg !57, !tbaa !30
  %8 = load i32, i32* %i, align 4, !dbg !58, !tbaa !30
  %add = add nsw i32 %8, 1, !dbg !59
  %9 = load i32, i32* %i, align 4, !dbg !60, !tbaa !30
  %idxprom1 = sext i32 %9 to i64, !dbg !61
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom1, !dbg !61
  store i32 %add, i32* %arrayidx2, align 4, !dbg !62, !tbaa !30
  br label %for.inc, !dbg !63

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !64, !tbaa !30
  %inc = add nsw i32 %10, 1, !dbg !64
  store i32 %inc, i32* %i, align 4, !dbg !64, !tbaa !30
  br label %for.cond, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %.capture_expr. to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !26, metadata !DIExpression()), !dbg !70
  %12 = load i32, i32* %len, align 4, !dbg !71, !tbaa !30
  %sub = sub nsw i32 %12, 1, !dbg !72
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !71, !tbaa !30
  %13 = bitcast i32* %.capture_expr.3 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !26, metadata !DIExpression()), !dbg !70
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !72, !tbaa !30
  %sub4 = sub nsw i32 %14, 0, !dbg !73
  %div = sdiv i32 %sub4, 1, !dbg !73
  %sub5 = sub nsw i32 %div, 1, !dbg !73
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !73, !tbaa !30
  %15 = bitcast i32* %i6 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !28, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %i6, align 4, !dbg !74, !tbaa !30
  %16 = bitcast i32* %i6 to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !69
  %17 = load i32, i32* %.capture_expr., align 4, !dbg !72, !tbaa !30
  %cmp7 = icmp slt i32 0, %17, !dbg !73
  br i1 %cmp7, label %simd.if.then, label %simd.if.end, !dbg !69

simd.if.then:                                     ; preds = %for.end
  %18 = bitcast i32* %.omp.iv to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !29, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %.omp.iv, align 4, !dbg !75, !tbaa !30
  %19 = bitcast i32* %i8 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !28, metadata !DIExpression()), !dbg !70
  br label %omp.inner.for.cond, !dbg !69

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !75, !tbaa !30, !llvm.access.group !76
  %21 = load i32, i32* %.capture_expr.3, align 4, !dbg !73, !tbaa !30, !llvm.access.group !76
  %add9 = add nsw i32 %21, 1, !dbg !73
  %cmp10 = icmp slt i32 %20, %add9, !dbg !73
  br i1 %cmp10, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !69

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !69

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !75, !tbaa !30, !llvm.access.group !76
  %mul = mul nsw i32 %22, 1, !dbg !74
  %add11 = add nsw i32 0, %mul, !dbg !74
  store i32 %add11, i32* %i8, align 4, !dbg !74, !tbaa !30, !llvm.access.group !76
  %23 = load i32, i32* %i8, align 4, !dbg !77, !tbaa !30, !llvm.access.group !76
  %idxprom12 = sext i32 %23 to i64, !dbg !78
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom12, !dbg !78
  %24 = load i32, i32* %arrayidx13, align 4, !dbg !78, !tbaa !30, !llvm.access.group !76
  %25 = load i32, i32* %i8, align 4, !dbg !79, !tbaa !30, !llvm.access.group !76
  %idxprom14 = sext i32 %25 to i64, !dbg !80
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom14, !dbg !80
  %26 = load i32, i32* %arrayidx15, align 4, !dbg !80, !tbaa !30, !llvm.access.group !76
  %add16 = add nsw i32 %24, %26, !dbg !81
  %27 = load i32, i32* %i8, align 4, !dbg !82, !tbaa !30, !llvm.access.group !76
  %add17 = add nsw i32 %27, 1, !dbg !83
  %idxprom18 = sext i32 %add17 to i64, !dbg !84
  %arrayidx19 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom18, !dbg !84
  store i32 %add16, i32* %arrayidx19, align 4, !dbg !85, !tbaa !30, !llvm.access.group !76
  br label %omp.body.continue, !dbg !84

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !86

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !75, !tbaa !30, !llvm.access.group !76
  %add20 = add nsw i32 %28, 1, !dbg !73
  store i32 %add20, i32* %.omp.iv, align 4, !dbg !73, !tbaa !30, !llvm.access.group !76
  br label %omp.inner.for.cond, !dbg !86, !llvm.loop !87

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %29 = load i32, i32* %.capture_expr., align 4, !dbg !72, !tbaa !30
  %sub21 = sub nsw i32 %29, 0, !dbg !73
  %div22 = sdiv i32 %sub21, 1, !dbg !73
  %mul23 = mul nsw i32 %div22, 1, !dbg !74
  %add24 = add nsw i32 0, %mul23, !dbg !74
  store i32 %add24, i32* %i, align 4, !dbg !74, !tbaa !30
  %30 = bitcast i32* %i8 to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !86
  br label %simd.if.end, !dbg !86

simd.if.end:                                      ; preds = %omp.inner.for.end, %for.end
  %31 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !86
  %32 = bitcast i32* %.capture_expr.3 to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !86
  %33 = bitcast i32* %.capture_expr. to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !86
  store i32 0, i32* %i, align 4, !dbg !91, !tbaa !30
  br label %for.cond25, !dbg !93

for.cond25:                                       ; preds = %for.inc30, %simd.if.end
  %34 = load i32, i32* %i, align 4, !dbg !94, !tbaa !30
  %35 = load i32, i32* %len, align 4, !dbg !96, !tbaa !30
  %cmp26 = icmp slt i32 %34, %35, !dbg !97
  br i1 %cmp26, label %for.body27, label %for.end32, !dbg !98

for.body27:                                       ; preds = %for.cond25
  %36 = load i32, i32* %i, align 4, !dbg !99, !tbaa !30
  %37 = load i32, i32* %i, align 4, !dbg !100, !tbaa !30
  %38 = load i32, i32* %i, align 4, !dbg !101, !tbaa !30
  %idxprom28 = sext i32 %38 to i64, !dbg !102
  %arrayidx29 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom28, !dbg !102
  %39 = load i32, i32* %arrayidx29, align 4, !dbg !102, !tbaa !30
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %39), !dbg !103
  br label %for.inc30, !dbg !103

for.inc30:                                        ; preds = %for.body27
  %40 = load i32, i32* %i, align 4, !dbg !104, !tbaa !30
  %inc31 = add nsw i32 %40, 1, !dbg !104
  store i32 %inc31, i32* %i, align 4, !dbg !104, !tbaa !30
  br label %for.cond25, !dbg !105, !llvm.loop !106

for.end32:                                        ; preds = %for.cond25
  %41 = bitcast [100 x i32]* %b to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %41) #4, !dbg !108
  %42 = bitcast [100 x i32]* %a to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %42) #4, !dbg !108
  %43 = bitcast i32* %len to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !108
  %44 = bitcast i32* %i to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !108
  ret i32 0, !dbg !109
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @printf(i8*, ...) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB024-simdtruedep-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !10, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !25, !26, !26, !28, !29, !28}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 52, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 52, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 54, type: !12)
!20 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 55, type: !12)
!21 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 56, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 56, type: !22)
!26 = !DILocalVariable(name: ".capture_expr.", scope: !27, type: !12, flags: DIFlagArtificial)
!27 = distinct !DILexicalBlock(scope: !9, file: !1, line: 64, column: 1)
!28 = !DILocalVariable(name: "i", scope: !27, type: !12, flags: DIFlagArtificial)
!29 = !DILocalVariable(name: ".omp.iv", scope: !27, type: !12, flags: DIFlagArtificial)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 52, column: 14, scope: !9)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !32, i64 0}
!37 = !DILocation(line: 52, column: 26, scope: !9)
!38 = !DILocation(line: 54, column: 3, scope: !9)
!39 = !DILocation(line: 54, column: 7, scope: !9)
!40 = !DILocation(line: 55, column: 3, scope: !9)
!41 = !DILocation(line: 55, column: 7, scope: !9)
!42 = !DILocation(line: 56, column: 3, scope: !9)
!43 = !DILocation(line: 56, column: 7, scope: !9)
!44 = !DILocation(line: 56, column: 15, scope: !9)
!45 = !DILocation(line: 58, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !9, file: !1, line: 58, column: 3)
!47 = !DILocation(line: 58, column: 8, scope: !46)
!48 = !DILocation(line: 58, column: 12, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 58, column: 3)
!50 = !DILocation(line: 58, column: 14, scope: !49)
!51 = !DILocation(line: 58, column: 13, scope: !49)
!52 = !DILocation(line: 58, column: 3, scope: !46)
!53 = !DILocation(line: 60, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 59, column: 3)
!55 = !DILocation(line: 60, column: 7, scope: !54)
!56 = !DILocation(line: 60, column: 5, scope: !54)
!57 = !DILocation(line: 60, column: 9, scope: !54)
!58 = !DILocation(line: 61, column: 10, scope: !54)
!59 = !DILocation(line: 61, column: 11, scope: !54)
!60 = !DILocation(line: 61, column: 7, scope: !54)
!61 = !DILocation(line: 61, column: 5, scope: !54)
!62 = !DILocation(line: 61, column: 9, scope: !54)
!63 = !DILocation(line: 62, column: 3, scope: !54)
!64 = !DILocation(line: 58, column: 19, scope: !49)
!65 = !DILocation(line: 58, column: 3, scope: !49)
!66 = distinct !{!66, !52, !67, !68}
!67 = !DILocation(line: 62, column: 3, scope: !46)
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !DILocation(line: 64, column: 1, scope: !9)
!70 = !DILocation(line: 0, scope: !27)
!71 = !DILocation(line: 65, column: 14, scope: !27)
!72 = !DILocation(line: 65, column: 17, scope: !27)
!73 = !DILocation(line: 65, column: 3, scope: !27)
!74 = !DILocation(line: 65, column: 20, scope: !27)
!75 = !DILocation(line: 65, column: 8, scope: !27)
!76 = distinct !{}
!77 = !DILocation(line: 66, column: 14, scope: !27)
!78 = !DILocation(line: 66, column: 12, scope: !27)
!79 = !DILocation(line: 66, column: 19, scope: !27)
!80 = !DILocation(line: 66, column: 17, scope: !27)
!81 = !DILocation(line: 66, column: 16, scope: !27)
!82 = !DILocation(line: 66, column: 7, scope: !27)
!83 = !DILocation(line: 66, column: 8, scope: !27)
!84 = !DILocation(line: 66, column: 5, scope: !27)
!85 = !DILocation(line: 66, column: 11, scope: !27)
!86 = !DILocation(line: 64, column: 1, scope: !27)
!87 = distinct !{!87, !86, !88, !89, !90}
!88 = !DILocation(line: 64, column: 18, scope: !27)
!89 = !{!"llvm.loop.parallel_accesses", !76}
!90 = !{!"llvm.loop.vectorize.enable", i1 true}
!91 = !DILocation(line: 68, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !9, file: !1, line: 68, column: 3)
!93 = !DILocation(line: 68, column: 8, scope: !92)
!94 = !DILocation(line: 68, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 68, column: 3)
!96 = !DILocation(line: 68, column: 14, scope: !95)
!97 = !DILocation(line: 68, column: 13, scope: !95)
!98 = !DILocation(line: 68, column: 3, scope: !92)
!99 = !DILocation(line: 69, column: 30, scope: !95)
!100 = !DILocation(line: 69, column: 32, scope: !95)
!101 = !DILocation(line: 69, column: 36, scope: !95)
!102 = !DILocation(line: 69, column: 34, scope: !95)
!103 = !DILocation(line: 69, column: 5, scope: !95)
!104 = !DILocation(line: 68, column: 19, scope: !95)
!105 = !DILocation(line: 68, column: 3, scope: !95)
!106 = distinct !{!106, !98, !107, !68}
!107 = !DILocation(line: 69, column: 38, scope: !92)
!108 = !DILocation(line: 71, column: 1, scope: !9)
!109 = !DILocation(line: 70, column: 3, scope: !9)
