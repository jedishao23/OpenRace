; ModuleID = 'DRB103-master-orig-no.c'
source_filename = "DRB103-master-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [37 x i8] c";DRB103-master-orig-no.c;main;53;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [34 x i8] c"Number of Threads requested = %i\0A\00", align 1
@2 = private unnamed_addr constant [37 x i8] c";DRB103-master-orig-no.c;main;51;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @2, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %k to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %k, metadata !14, metadata !DIExpression()), !dbg !16
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %k), !dbg !17
  %1 = bitcast i32* %k to i8*, !dbg !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #6, !dbg !18
  ret i32 0, !dbg !19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %k) #3 !dbg !20 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !29, metadata !DIExpression()), !dbg !36
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !30, metadata !DIExpression()), !dbg !36
  store i32* %k, i32** %k.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !31, metadata !DIExpression()), !dbg !37
  %0 = load i32*, i32** %k.addr, align 8, !dbg !38, !tbaa !32
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !39
  %2 = load i32, i32* %1, align 4, !dbg !39, !tbaa !41
  %3 = call i32 @__kmpc_master(%struct.ident_t* @1, i32 %2), !dbg !39
  %4 = icmp ne i32 %3, 0, !dbg !39
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !39

omp_if.then:                                      ; preds = %entry
  %call = call i32 @omp_get_num_threads(), !dbg !43
  store i32 %call, i32* %0, align 4, !dbg !46, !tbaa !41
  %5 = load i32, i32* %0, align 4, !dbg !47, !tbaa !41
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %5), !dbg !48
  call void @__kmpc_end_master(%struct.ident_t* @1, i32 %2), !dbg !49
  br label %omp_if.end, !dbg !49

omp_if.end:                                       ; preds = %omp_if.then, %entry
  ret void, !dbg !50
}

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_master(%struct.ident_t*, i32) #4

; Function Attrs: inaccessiblemem_or_argmemonly
declare i32 @__kmpc_master(%struct.ident_t*, i32) #4

declare !dbg !51 i32 @omp_get_num_threads() #5

declare i32 @printf(i8*, ...) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %k) #3 !dbg !53 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !55, metadata !DIExpression()), !dbg !58
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !56, metadata !DIExpression()), !dbg !58
  store i32* %k, i32** %k.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i32*, i32** %k.addr, align 8, !dbg !59, !tbaa !32
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !59, !tbaa !32
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !59, !tbaa !32
  %3 = load i32*, i32** %k.addr, align 8, !dbg !59, !tbaa !32
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !59
  ret void, !dbg !59
}

; Function Attrs: nounwind
declare !callback !60 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblemem_or_argmemonly }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB103-master-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !10, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "k", scope: !9, file: !1, line: 49, type: !12)
!15 = !DILocation(line: 49, column: 3, scope: !9)
!16 = !DILocation(line: 49, column: 7, scope: !9)
!17 = !DILocation(line: 51, column: 1, scope: !9)
!18 = !DILocation(line: 60, column: 1, scope: !9)
!19 = !DILocation(line: 59, column: 3, scope: !9)
!20 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 52, type: !21, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !23, !27}
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!28 = !{!29, !30, !31}
!29 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !20, type: !23, flags: DIFlagArtificial)
!30 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !20, type: !23, flags: DIFlagArtificial)
!31 = !DILocalVariable(name: "k", arg: 3, scope: !20, file: !1, line: 49, type: !27)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 0, scope: !20)
!37 = !DILocation(line: 49, column: 7, scope: !20)
!38 = !DILocation(line: 52, column: 3, scope: !20)
!39 = !DILocation(line: 53, column: 1, scope: !40)
!40 = distinct !DILexicalBlock(scope: !20, file: !1, line: 52, column: 3)
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !34, i64 0}
!43 = !DILocation(line: 55, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 54, column: 5)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 53, column: 1)
!46 = !DILocation(line: 55, column: 9, scope: !44)
!47 = !DILocation(line: 56, column: 52, scope: !44)
!48 = !DILocation(line: 56, column: 7, scope: !44)
!49 = !DILocation(line: 57, column: 5, scope: !44)
!50 = !DILocation(line: 58, column: 3, scope: !20)
!51 = !DISubprogram(name: "omp_get_num_threads", scope: !52, file: !52, line: 64, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!52 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!53 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 51, type: !21, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!54 = !{!55, !56, !57}
!55 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !53, type: !23, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !53, type: !23, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "k", arg: 3, scope: !53, type: !27, flags: DIFlagArtificial)
!58 = !DILocation(line: 0, scope: !53)
!59 = !DILocation(line: 51, column: 1, scope: !53)
!60 = !{!61}
!61 = !{i64 2, i64 -1, i64 -1, i1 true}
