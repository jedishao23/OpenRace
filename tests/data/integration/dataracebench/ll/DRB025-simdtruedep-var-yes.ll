; ModuleID = 'DRB025-simdtruedep-var-yes.c'
source_filename = "DRB025-simdtruedep-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.6 = alloca i32, align 4
  %i9 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %i11 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !38
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !42
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !45
  %0 = bitcast i32* %i to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !47
  %1 = bitcast i32* %len to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !49
  store i32 100, i32* %len, align 4, !dbg !49, !tbaa !38
  %2 = load i32, i32* %argc.addr, align 4, !dbg !50, !tbaa !38
  %cmp = icmp sgt i32 %2, 1, !dbg !52
  br i1 %cmp, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !54, !tbaa !43
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !54
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !54, !tbaa !43
  %call = call i32 @atoi(i8* %4) #6, !dbg !55
  store i32 %call, i32* %len, align 4, !dbg !56, !tbaa !38
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %len, align 4, !dbg !58, !tbaa !38
  %6 = zext i32 %5 to i64, !dbg !59
  %7 = call i8* @llvm.stacksave(), !dbg !59
  store i8* %7, i8** %saved_stack, align 8, !dbg !59
  %vla = alloca i32, i64 %6, align 16, !dbg !59
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !23, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !25, metadata !DIExpression()), !dbg !61
  %8 = load i32, i32* %len, align 4, !dbg !62, !tbaa !38
  %9 = zext i32 %8 to i64, !dbg !59
  %vla1 = alloca i32, i64 %9, align 16, !dbg !59
  store i64 %9, i64* %__vla_expr1, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !29, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !30, metadata !DIExpression()), !dbg !63
  store i32 0, i32* %i, align 4, !dbg !64, !tbaa !38
  br label %for.cond, !dbg !66

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !67, !tbaa !38
  %11 = load i32, i32* %len, align 4, !dbg !69, !tbaa !38
  %cmp2 = icmp slt i32 %10, %11, !dbg !70
  br i1 %cmp2, label %for.body, label %for.end, !dbg !71

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !72, !tbaa !38
  %13 = load i32, i32* %i, align 4, !dbg !74, !tbaa !38
  %idxprom = sext i32 %13 to i64, !dbg !75
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !75
  store i32 %12, i32* %arrayidx3, align 4, !dbg !76, !tbaa !38
  %14 = load i32, i32* %i, align 4, !dbg !77, !tbaa !38
  %add = add nsw i32 %14, 1, !dbg !78
  %15 = load i32, i32* %i, align 4, !dbg !79, !tbaa !38
  %idxprom4 = sext i32 %15 to i64, !dbg !80
  %arrayidx5 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom4, !dbg !80
  store i32 %add, i32* %arrayidx5, align 4, !dbg !81, !tbaa !38
  br label %for.inc, !dbg !82

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !83, !tbaa !38
  %inc = add nsw i32 %16, 1, !dbg !83
  store i32 %inc, i32* %i, align 4, !dbg !83, !tbaa !38
  br label %for.cond, !dbg !84, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  %17 = bitcast i32* %.capture_expr. to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !34, metadata !DIExpression()), !dbg !89
  %18 = load i32, i32* %len, align 4, !dbg !90, !tbaa !38
  %sub = sub nsw i32 %18, 1, !dbg !91
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !90, !tbaa !38
  %19 = bitcast i32* %.capture_expr.6 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.6, metadata !34, metadata !DIExpression()), !dbg !89
  %20 = load i32, i32* %.capture_expr., align 4, !dbg !91, !tbaa !38
  %sub7 = sub nsw i32 %20, 0, !dbg !92
  %div = sdiv i32 %sub7, 1, !dbg !92
  %sub8 = sub nsw i32 %div, 1, !dbg !92
  store i32 %sub8, i32* %.capture_expr.6, align 4, !dbg !92, !tbaa !38
  %21 = bitcast i32* %i9 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i9, metadata !36, metadata !DIExpression()), !dbg !89
  store i32 0, i32* %i9, align 4, !dbg !93, !tbaa !38
  %22 = bitcast i32* %i9 to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !88
  %23 = load i32, i32* %.capture_expr., align 4, !dbg !91, !tbaa !38
  %cmp10 = icmp slt i32 0, %23, !dbg !92
  br i1 %cmp10, label %simd.if.then, label %simd.if.end, !dbg !88

simd.if.then:                                     ; preds = %for.end
  %24 = bitcast i32* %.omp.iv to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !37, metadata !DIExpression()), !dbg !89
  store i32 0, i32* %.omp.iv, align 4, !dbg !94, !tbaa !38
  %25 = bitcast i32* %i11 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i11, metadata !36, metadata !DIExpression()), !dbg !89
  br label %omp.inner.for.cond, !dbg !88

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !94, !tbaa !38, !llvm.access.group !95
  %27 = load i32, i32* %.capture_expr.6, align 4, !dbg !92, !tbaa !38, !llvm.access.group !95
  %add12 = add nsw i32 %27, 1, !dbg !92
  %cmp13 = icmp slt i32 %26, %add12, !dbg !92
  br i1 %cmp13, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !88

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !88

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !94, !tbaa !38, !llvm.access.group !95
  %mul = mul nsw i32 %28, 1, !dbg !93
  %add14 = add nsw i32 0, %mul, !dbg !93
  store i32 %add14, i32* %i11, align 4, !dbg !93, !tbaa !38, !llvm.access.group !95
  %29 = load i32, i32* %i11, align 4, !dbg !96, !tbaa !38, !llvm.access.group !95
  %idxprom15 = sext i32 %29 to i64, !dbg !97
  %arrayidx16 = getelementptr inbounds i32, i32* %vla, i64 %idxprom15, !dbg !97
  %30 = load i32, i32* %arrayidx16, align 4, !dbg !97, !tbaa !38, !llvm.access.group !95
  %31 = load i32, i32* %i11, align 4, !dbg !98, !tbaa !38, !llvm.access.group !95
  %idxprom17 = sext i32 %31 to i64, !dbg !99
  %arrayidx18 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom17, !dbg !99
  %32 = load i32, i32* %arrayidx18, align 4, !dbg !99, !tbaa !38, !llvm.access.group !95
  %mul19 = mul nsw i32 %30, %32, !dbg !100
  %33 = load i32, i32* %i11, align 4, !dbg !101, !tbaa !38, !llvm.access.group !95
  %add20 = add nsw i32 %33, 1, !dbg !102
  %idxprom21 = sext i32 %add20 to i64, !dbg !103
  %arrayidx22 = getelementptr inbounds i32, i32* %vla, i64 %idxprom21, !dbg !103
  store i32 %mul19, i32* %arrayidx22, align 4, !dbg !104, !tbaa !38, !llvm.access.group !95
  br label %omp.body.continue, !dbg !103

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !105

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !94, !tbaa !38, !llvm.access.group !95
  %add23 = add nsw i32 %34, 1, !dbg !92
  store i32 %add23, i32* %.omp.iv, align 4, !dbg !92, !tbaa !38, !llvm.access.group !95
  br label %omp.inner.for.cond, !dbg !105, !llvm.loop !106

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %35 = load i32, i32* %.capture_expr., align 4, !dbg !91, !tbaa !38
  %sub24 = sub nsw i32 %35, 0, !dbg !92
  %div25 = sdiv i32 %sub24, 1, !dbg !92
  %mul26 = mul nsw i32 %div25, 1, !dbg !93
  %add27 = add nsw i32 0, %mul26, !dbg !93
  store i32 %add27, i32* %i, align 4, !dbg !93, !tbaa !38
  %36 = bitcast i32* %i11 to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !105
  br label %simd.if.end, !dbg !105

simd.if.end:                                      ; preds = %omp.inner.for.end, %for.end
  %37 = bitcast i32* %.omp.iv to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !105
  %38 = bitcast i32* %.capture_expr.6 to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !105
  %39 = bitcast i32* %.capture_expr. to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !105
  store i32 0, i32* %retval, align 4, !dbg !110
  %40 = load i8*, i8** %saved_stack, align 8, !dbg !111
  call void @llvm.stackrestore(i8* %40), !dbg !111
  %41 = bitcast i32* %len to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !111
  %42 = bitcast i32* %i to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !111
  %43 = load i32, i32* %retval, align 4, !dbg !111
  ret i32 %43, !dbg !111
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !112 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !119, metadata !DIExpression()), !dbg !120
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !121, !tbaa !43
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !122
  %conv = trunc i64 %call to i32, !dbg !123
  ret i32 %conv, !dbg !124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB025-simdtruedep-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !16, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !25, !29, !30, !34, !34, !36, !37, !36}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 52, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 52, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 54, type: !4)
!22 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 55, type: !4)
!23 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !24, flags: DIFlagArtificial)
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "a", scope: !15, file: !1, line: 60, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: !23)
!29 = !DILocalVariable(name: "__vla_expr1", scope: !15, type: !24, flags: DIFlagArtificial)
!30 = !DILocalVariable(name: "b", scope: !15, file: !1, line: 60, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: !29)
!34 = !DILocalVariable(name: ".capture_expr.", scope: !35, type: !4, flags: DIFlagArtificial)
!35 = distinct !DILexicalBlock(scope: !15, file: !1, line: 66, column: 1)
!36 = !DILocalVariable(name: "i", scope: !35, type: !4, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".omp.iv", scope: !35, type: !4, flags: DIFlagArtificial)
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 52, column: 14, scope: !15)
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !40, i64 0}
!45 = !DILocation(line: 52, column: 26, scope: !15)
!46 = !DILocation(line: 54, column: 3, scope: !15)
!47 = !DILocation(line: 54, column: 7, scope: !15)
!48 = !DILocation(line: 55, column: 3, scope: !15)
!49 = !DILocation(line: 55, column: 7, scope: !15)
!50 = !DILocation(line: 57, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !15, file: !1, line: 57, column: 7)
!52 = !DILocation(line: 57, column: 11, scope: !51)
!53 = !DILocation(line: 57, column: 7, scope: !15)
!54 = !DILocation(line: 58, column: 16, scope: !51)
!55 = !DILocation(line: 58, column: 11, scope: !51)
!56 = !DILocation(line: 58, column: 9, scope: !51)
!57 = !DILocation(line: 58, column: 5, scope: !51)
!58 = !DILocation(line: 60, column: 9, scope: !15)
!59 = !DILocation(line: 60, column: 3, scope: !15)
!60 = !DILocation(line: 0, scope: !15)
!61 = !DILocation(line: 60, column: 7, scope: !15)
!62 = !DILocation(line: 60, column: 17, scope: !15)
!63 = !DILocation(line: 60, column: 15, scope: !15)
!64 = !DILocation(line: 61, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !15, file: !1, line: 61, column: 3)
!66 = !DILocation(line: 61, column: 8, scope: !65)
!67 = !DILocation(line: 61, column: 12, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 61, column: 3)
!69 = !DILocation(line: 61, column: 14, scope: !68)
!70 = !DILocation(line: 61, column: 13, scope: !68)
!71 = !DILocation(line: 61, column: 3, scope: !65)
!72 = !DILocation(line: 63, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 62, column: 3)
!74 = !DILocation(line: 63, column: 7, scope: !73)
!75 = !DILocation(line: 63, column: 5, scope: !73)
!76 = !DILocation(line: 63, column: 9, scope: !73)
!77 = !DILocation(line: 64, column: 10, scope: !73)
!78 = !DILocation(line: 64, column: 11, scope: !73)
!79 = !DILocation(line: 64, column: 7, scope: !73)
!80 = !DILocation(line: 64, column: 5, scope: !73)
!81 = !DILocation(line: 64, column: 9, scope: !73)
!82 = !DILocation(line: 65, column: 3, scope: !73)
!83 = !DILocation(line: 61, column: 19, scope: !68)
!84 = !DILocation(line: 61, column: 3, scope: !68)
!85 = distinct !{!85, !71, !86, !87}
!86 = !DILocation(line: 65, column: 3, scope: !65)
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !DILocation(line: 66, column: 1, scope: !15)
!89 = !DILocation(line: 0, scope: !35)
!90 = !DILocation(line: 67, column: 14, scope: !35)
!91 = !DILocation(line: 67, column: 17, scope: !35)
!92 = !DILocation(line: 67, column: 3, scope: !35)
!93 = !DILocation(line: 67, column: 20, scope: !35)
!94 = !DILocation(line: 67, column: 8, scope: !35)
!95 = distinct !{}
!96 = !DILocation(line: 68, column: 14, scope: !35)
!97 = !DILocation(line: 68, column: 12, scope: !35)
!98 = !DILocation(line: 68, column: 19, scope: !35)
!99 = !DILocation(line: 68, column: 17, scope: !35)
!100 = !DILocation(line: 68, column: 16, scope: !35)
!101 = !DILocation(line: 68, column: 7, scope: !35)
!102 = !DILocation(line: 68, column: 8, scope: !35)
!103 = !DILocation(line: 68, column: 5, scope: !35)
!104 = !DILocation(line: 68, column: 11, scope: !35)
!105 = !DILocation(line: 66, column: 1, scope: !35)
!106 = distinct !{!106, !105, !107, !108, !109}
!107 = !DILocation(line: 66, column: 17, scope: !35)
!108 = !{!"llvm.loop.parallel_accesses", !95}
!109 = !{!"llvm.loop.vectorize.enable", i1 true}
!110 = !DILocation(line: 69, column: 3, scope: !15)
!111 = !DILocation(line: 70, column: 1, scope: !15)
!112 = distinct !DISubprogram(name: "atoi", scope: !113, file: !113, line: 361, type: !114, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!113 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!114 = !DISubroutineType(types: !115)
!115 = !{!4, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!118 = !{!119}
!119 = !DILocalVariable(name: "__nptr", arg: 1, scope: !112, file: !113, line: 361, type: !116)
!120 = !DILocation(line: 361, column: 1, scope: !112)
!121 = !DILocation(line: 363, column: 24, scope: !112)
!122 = !DILocation(line: 363, column: 16, scope: !112)
!123 = !DILocation(line: 363, column: 10, scope: !112)
!124 = !DILocation(line: 363, column: 3, scope: !112)
