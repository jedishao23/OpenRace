; ModuleID = 'DRB080-func-arg-orig-yes.c'
source_filename = "DRB080-func-arg-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [40 x i8] c";DRB080-func-arg-orig-yes.c;main;65;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"i=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @f1(i32* %q) #0 !dbg !9 {
entry:
  %q.addr = alloca i32*, align 8
  store i32* %q, i32** %q.addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %q.addr, metadata !15, metadata !DIExpression()), !dbg !20
  %0 = load i32*, i32** %q.addr, align 8, !dbg !21, !tbaa !16
  %1 = load i32, i32* %0, align 4, !dbg !22, !tbaa !23
  %add = add nsw i32 %1, 1, !dbg !22
  store i32 %add, i32* %0, align 4, !dbg !22, !tbaa !23
  ret void, !dbg !25
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !26 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !30, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !32, !tbaa !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i), !dbg !33
  %1 = load i32, i32* %i, align 4, !dbg !34, !tbaa !23
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !35
  %2 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !38 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !50
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !50
  store i32* %i, i32** %i.addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !49, metadata !DIExpression()), !dbg !51
  %0 = load i32*, i32** %i.addr, align 8, !dbg !52, !tbaa !16
  call void @f1(i32* %0), !dbg !53
  ret void, !dbg !55
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !61
  store i32* %i, i32** %i.addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load i32*, i32** %i.addr, align 8, !dbg !62, !tbaa !16
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !62, !tbaa !16
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !62, !tbaa !16
  %3 = load i32*, i32** %i.addr, align 8, !dbg !62, !tbaa !16
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !62
  ret void, !dbg !62
}

; Function Attrs: nounwind
declare !callback !63 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB080-func-arg-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "f1", scope: !1, file: !1, line: 57, type: !10, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15}
!15 = !DILocalVariable(name: "q", arg: 1, scope: !9, file: !1, line: 57, type: !12)
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 57, column: 14, scope: !9)
!21 = !DILocation(line: 59, column: 4, scope: !9)
!22 = !DILocation(line: 59, column: 6, scope: !9)
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !18, i64 0}
!25 = !DILocation(line: 60, column: 1, scope: !9)
!26 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 62, type: !27, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!13}
!29 = !{!30}
!30 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 64, type: !13)
!31 = !DILocation(line: 64, column: 3, scope: !26)
!32 = !DILocation(line: 64, column: 7, scope: !26)
!33 = !DILocation(line: 65, column: 3, scope: !26)
!34 = !DILocation(line: 69, column: 20, scope: !26)
!35 = !DILocation(line: 69, column: 3, scope: !26)
!36 = !DILocation(line: 71, column: 1, scope: !26)
!37 = !DILocation(line: 70, column: 3, scope: !26)
!38 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 66, type: !39, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !46)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !45}
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!46 = !{!47, !48, !49}
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !38, type: !41, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !38, type: !41, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "i", arg: 3, scope: !38, file: !1, line: 64, type: !45)
!50 = !DILocation(line: 0, scope: !38)
!51 = !DILocation(line: 64, column: 7, scope: !38)
!52 = !DILocation(line: 66, column: 3, scope: !38)
!53 = !DILocation(line: 67, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !38, file: !1, line: 66, column: 3)
!55 = !DILocation(line: 68, column: 3, scope: !38)
!56 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !39, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!57 = !{!58, !59, !60}
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !41, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !41, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "i", arg: 3, scope: !56, type: !45, flags: DIFlagArtificial)
!61 = !DILocation(line: 0, scope: !56)
!62 = !DILocation(line: 65, column: 3, scope: !56)
!63 = !{!64}
!64 = !{i64 2, i64 -1, i64 -1, i1 true}
