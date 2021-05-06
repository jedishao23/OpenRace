; ModuleID = 'DRB051-getthreadnum-orig-no.c'
source_filename = "DRB051-getthreadnum-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [43 x i8] c";DRB051-getthreadnum-orig-no.c;main;56;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"numThreads=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %numThreads = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %numThreads to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %numThreads, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %numThreads, align 4, !dbg !16, !tbaa !17
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numThreads), !dbg !21
  %1 = load i32, i32* %numThreads, align 4, !dbg !22, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !23
  %2 = bitcast i32* %numThreads to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %numThreads) #3 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !40
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !40
  store i32* %numThreads, i32** %numThreads.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !37, metadata !DIExpression()), !dbg !41
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !42, !tbaa !38
  %call = call i32 @omp_get_thread_num(), !dbg !43
  %cmp = icmp eq i32 %call, 0, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %call1 = call i32 @omp_get_num_threads(), !dbg !48
  store i32 %call1, i32* %0, align 4, !dbg !50, !tbaa !17
  br label %if.end, !dbg !51

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !52
}

declare !dbg !53 i32 @omp_get_thread_num() #4

declare !dbg !55 i32 @omp_get_num_threads() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %numThreads) #3 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !61
  store i32* %numThreads, i32** %numThreads.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !62, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !62, !tbaa !38
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !62, !tbaa !38
  %3 = load i32*, i32** %numThreads.addr, align 8, !dbg !62, !tbaa !38
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !62
  ret void, !dbg !62
}

; Function Attrs: nounwind
declare !callback !63 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB051-getthreadnum-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "numThreads", scope: !9, file: !1, line: 55, type: !12)
!15 = !DILocation(line: 55, column: 3, scope: !9)
!16 = !DILocation(line: 55, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 56, column: 1, scope: !9)
!22 = !DILocation(line: 62, column: 30, scope: !9)
!23 = !DILocation(line: 62, column: 3, scope: !9)
!24 = !DILocation(line: 64, column: 1, scope: !9)
!25 = !DILocation(line: 63, column: 3, scope: !9)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !27, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "numThreads", arg: 3, scope: !26, file: !1, line: 55, type: !33)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !19, i64 0}
!40 = !DILocation(line: 0, scope: !26)
!41 = !DILocation(line: 55, column: 7, scope: !26)
!42 = !DILocation(line: 57, column: 3, scope: !26)
!43 = !DILocation(line: 58, column: 10, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 58, column: 10)
!45 = distinct !DILexicalBlock(scope: !26, file: !1, line: 57, column: 3)
!46 = !DILocation(line: 58, column: 30, scope: !44)
!47 = !DILocation(line: 58, column: 10, scope: !45)
!48 = !DILocation(line: 59, column: 20, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !1, line: 58, column: 36)
!50 = !DILocation(line: 59, column: 18, scope: !49)
!51 = !DILocation(line: 60, column: 5, scope: !49)
!52 = !DILocation(line: 61, column: 3, scope: !26)
!53 = !DISubprogram(name: "omp_get_thread_num", scope: !54, file: !54, line: 68, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!54 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!55 = !DISubprogram(name: "omp_get_num_threads", scope: !54, file: !54, line: 64, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!56 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 56, type: !27, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!57 = !{!58, !59, !60}
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !29, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !29, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "numThreads", arg: 3, scope: !56, type: !33, flags: DIFlagArtificial)
!61 = !DILocation(line: 0, scope: !56)
!62 = !DILocation(line: 56, column: 1, scope: !56)
!63 = !{!64}
!64 = !{i64 2, i64 -1, i64 -1, i1 true}
