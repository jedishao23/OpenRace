; ModuleID = 'DRB075-getthreadnum-orig-yes.c'
source_filename = "DRB075-getthreadnum-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"numThreads=%d\0A\00", align 1
@0 = private unnamed_addr constant [44 x i8] c";DRB075-getthreadnum-orig-yes.c;main;57;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8

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
  %1 = bitcast i32* %numThreads to i8*, !dbg !22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #5, !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %numThreads) #3 !dbg !24 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !33, metadata !DIExpression()), !dbg !38
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !34, metadata !DIExpression()), !dbg !38
  store i32* %numThreads, i32** %numThreads.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !35, metadata !DIExpression()), !dbg !39
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !40, !tbaa !36
  %call = call i32 @omp_get_thread_num(), !dbg !41
  %cmp = icmp eq i32 %call, 0, !dbg !44
  br i1 %cmp, label %if.then, label %if.else, !dbg !45

if.then:                                          ; preds = %entry
  %call1 = call i32 @omp_get_num_threads(), !dbg !46
  store i32 %call1, i32* %0, align 4, !dbg !48, !tbaa !17
  br label %if.end, !dbg !49

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %0, align 4, !dbg !50, !tbaa !17
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !52
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !53
}

declare !dbg !54 i32 @omp_get_thread_num() #4

declare !dbg !56 i32 @omp_get_num_threads() #4

declare i32 @printf(i8*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %numThreads) #3 !dbg !57 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !59, metadata !DIExpression()), !dbg !62
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !60, metadata !DIExpression()), !dbg !62
  store i32* %numThreads, i32** %numThreads.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !63, !tbaa !36
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !63, !tbaa !36
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !63, !tbaa !36
  %3 = load i32*, i32** %numThreads.addr, align 8, !dbg !63, !tbaa !36
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !63
  ret void, !dbg !63
}

; Function Attrs: nounwind
declare !callback !64 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

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
!1 = !DIFile(filename: "DRB075-getthreadnum-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !10, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "numThreads", scope: !9, file: !1, line: 56, type: !12)
!15 = !DILocation(line: 56, column: 3, scope: !9)
!16 = !DILocation(line: 56, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 57, column: 1, scope: !9)
!22 = !DILocation(line: 68, column: 1, scope: !9)
!23 = !DILocation(line: 67, column: 3, scope: !9)
!24 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !25, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !27, !31}
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!31 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!32 = !{!33, !34, !35}
!33 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !24, type: !27, flags: DIFlagArtificial)
!34 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !24, type: !27, flags: DIFlagArtificial)
!35 = !DILocalVariable(name: "numThreads", arg: 3, scope: !24, file: !1, line: 56, type: !31)
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !19, i64 0}
!38 = !DILocation(line: 0, scope: !24)
!39 = !DILocation(line: 56, column: 7, scope: !24)
!40 = !DILocation(line: 58, column: 3, scope: !24)
!41 = !DILocation(line: 59, column: 10, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 59, column: 10)
!43 = distinct !DILexicalBlock(scope: !24, file: !1, line: 58, column: 3)
!44 = !DILocation(line: 59, column: 30, scope: !42)
!45 = !DILocation(line: 59, column: 10, scope: !43)
!46 = !DILocation(line: 60, column: 20, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 59, column: 36)
!48 = !DILocation(line: 60, column: 18, scope: !47)
!49 = !DILocation(line: 61, column: 5, scope: !47)
!50 = !DILocation(line: 64, column: 33, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 63, column: 5)
!52 = !DILocation(line: 64, column: 7, scope: !51)
!53 = !DILocation(line: 66, column: 3, scope: !24)
!54 = !DISubprogram(name: "omp_get_thread_num", scope: !55, file: !55, line: 68, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!55 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!56 = !DISubprogram(name: "omp_get_num_threads", scope: !55, file: !55, line: 64, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!57 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 57, type: !25, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!58 = !{!59, !60, !61}
!59 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !57, type: !27, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !57, type: !27, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "numThreads", arg: 3, scope: !57, type: !31, flags: DIFlagArtificial)
!62 = !DILocation(line: 0, scope: !57)
!63 = !DILocation(line: 57, column: 1, scope: !57)
!64 = !{!65}
!65 = !{i64 2, i64 -1, i64 -1, i1 true}
