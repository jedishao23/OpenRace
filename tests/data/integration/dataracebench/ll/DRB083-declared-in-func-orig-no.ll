; ModuleID = 'DRB083-declared-in-func-orig-no.c'
source_filename = "DRB083-declared-in-func-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [47 x i8] c";DRB083-declared-in-func-orig-no.c;main;61;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo() #0 !dbg !9 {
entry:
  %q = alloca i32, align 4
  %0 = bitcast i32* %q to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %q, metadata !13, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %q, align 4, !dbg !16, !tbaa !17
  %1 = load i32, i32* %q, align 4, !dbg !21, !tbaa !17
  %add = add nsw i32 %1, 1, !dbg !21
  store i32 %add, i32* %q, align 4, !dbg !21, !tbaa !17
  %2 = bitcast i32* %q to i8*, !dbg !22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !22
  ret void, !dbg !22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !23 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !40
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !40
  call void @foo(), !dbg !41
  ret void, !dbg !43
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !44 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !46, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !49, !tbaa !38
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !49, !tbaa !38
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !49
  ret void, !dbg !49
}

; Function Attrs: nounwind
declare !callback !50 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB083-declared-in-func-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{!13}
!13 = !DILocalVariable(name: "q", scope: !9, file: !1, line: 55, type: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocation(line: 55, column: 3, scope: !9)
!16 = !DILocation(line: 55, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 56, column: 5, scope: !9)
!22 = !DILocation(line: 57, column: 1, scope: !9)
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 59, type: !24, scopeLine: 60, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!14}
!26 = !DILocation(line: 61, column: 3, scope: !23)
!27 = !DILocation(line: 65, column: 3, scope: !23)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !29, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!35 = !{!36, !37}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !19, i64 0}
!40 = !DILocation(line: 0, scope: !28)
!41 = !DILocation(line: 63, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !28, file: !1, line: 62, column: 3)
!43 = !DILocation(line: 64, column: 3, scope: !28)
!44 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !29, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!45 = !{!46, !47}
!46 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !44, type: !31, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !44, type: !31, flags: DIFlagArtificial)
!48 = !DILocation(line: 0, scope: !44)
!49 = !DILocation(line: 61, column: 3, scope: !44)
!50 = !{!51}
!51 = !{i64 2, i64 -1, i64 -1, i1 true}
