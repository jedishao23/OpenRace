; ModuleID = 'DRB129-mergeable-taskwait-orig-yes.c'
source_filename = "DRB129-mergeable-taskwait-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }

@0 = private unnamed_addr constant [50 x i8] c";DRB129-mergeable-taskwait-orig-yes.c;main;25;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [50 x i8] c";DRB129-mergeable-taskwait-orig-yes.c;main;29;3;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 1
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 0, i32* %retval, align 4
  %1 = bitcast i32* %x to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %x, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 2, i32* %x, align 4, !dbg !16, !tbaa !17
  %2 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %0, i32 1, i64 48, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !21
  %3 = bitcast i8* %2 to %struct.kmp_task_t_with_privates*, !dbg !21
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !21
  %5 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !21
  %6 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %5, i32 0, i32 0, !dbg !21
  %7 = load i32, i32* %x, align 4, !dbg !22, !tbaa !17
  store i32 %7, i32* %6, align 8, !dbg !21, !tbaa !24
  %8 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %0, i8* %2), !dbg !21
  %9 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @3, i32 %0), !dbg !29
  %10 = load i32, i32* %x, align 4, !dbg !30, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10), !dbg !31
  %11 = bitcast i32* %x to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !32
  ret i32 0, !dbg !33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !34 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !55, metadata !DIExpression()), !dbg !61
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !56, metadata !DIExpression()), !dbg !61
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !57, metadata !DIExpression()), !dbg !61
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !58, metadata !DIExpression()), !dbg !61
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !59, metadata !DIExpression()), !dbg !61
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !63
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !63
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !63
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !64
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !63
  %4 = load i32, i32* %3, align 4, !dbg !65, !tbaa !17
  %inc = add nsw i32 %4, 1, !dbg !65
  store i32 %inc, i32* %3, align 4, !dbg !65, !tbaa !17
  ret void, !dbg !67
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !68 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !71, metadata !DIExpression()), !dbg !81
  store i32** %1, i32*** %.addr1, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !76, metadata !DIExpression()), !dbg !81
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !82
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !82
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !82
  store i32* %3, i32** %4, align 8, !dbg !82, !tbaa !62
  ret void, !dbg !82
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !83 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !85, metadata !DIExpression()), !dbg !98
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !86, metadata !DIExpression()), !dbg !98
  %2 = load i32, i32* %.addr, align 4, !dbg !99, !tbaa !17
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !99
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !99
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !99
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !99
  %7 = load i8*, i8** %6, align 8, !dbg !99, !tbaa !100
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !99
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !99
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !99
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !99
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #5, !dbg !99
  ret i32 0, !dbg !99
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #5

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #5

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #5

declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

declare i32 @printf(i8*, ...) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB129-mergeable-taskwait-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !10, scopeLine: 22, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 23, type: !12)
!15 = !DILocation(line: 23, column: 3, scope: !9)
!16 = !DILocation(line: 23, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 25, column: 3, scope: !9)
!22 = !DILocation(line: 27, column: 5, scope: !23)
!23 = distinct !DILexicalBlock(scope: !9, file: !1, line: 25, column: 3)
!24 = !{!25, !18, i64 40}
!25 = !{!"kmp_task_t_with_privates", !26, i64 0, !28, i64 40}
!26 = !{!"kmp_task_t", !27, i64 0, !27, i64 8, !18, i64 16, !19, i64 24, !19, i64 32}
!27 = !{!"any pointer", !19, i64 0}
!28 = !{!".kmp_privates.t", !18, i64 0}
!29 = !DILocation(line: 29, column: 3, scope: !9)
!30 = !DILocation(line: 31, column: 17, scope: !9)
!31 = !DILocation(line: 31, column: 3, scope: !9)
!32 = !DILocation(line: 33, column: 1, scope: !9)
!33 = !DILocation(line: 32, column: 3, scope: !9)
!34 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !35, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !38, !41, !44, !49, !50}
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !41, null}
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !1, line: 25, elements: !2)
!54 = !{!55, !56, !57, !58, !59, !60}
!55 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !34, type: !37, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !34, type: !38, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".privates.", arg: 3, scope: !34, type: !41, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !34, type: !44, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !34, type: !49, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "__context", arg: 6, scope: !34, type: !50, flags: DIFlagArtificial)
!61 = !DILocation(line: 0, scope: !34)
!62 = !{!27, !27, i64 0}
!63 = !DILocation(line: 26, column: 3, scope: !34)
!64 = !DILocation(line: 25, column: 3, scope: !34)
!65 = !DILocation(line: 27, column: 6, scope: !66)
!66 = distinct !DILexicalBlock(scope: !34, file: !1, line: 26, column: 3)
!67 = !DILocation(line: 28, column: 3, scope: !34)
!68 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !1, file: !1, line: 25, type: !69, scopeLine: 25, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !70)
!69 = !DISubroutineType(types: !2)
!70 = !{!71, !76}
!71 = !DILocalVariable(arg: 1, scope: !68, type: !72, flags: DIFlagArtificial)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !1, size: 32, elements: !2)
!76 = !DILocalVariable(arg: 2, scope: !68, type: !77, flags: DIFlagArtificial)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!81 = !DILocation(line: 0, scope: !68)
!82 = !DILocation(line: 25, column: 3, scope: !68)
!83 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 25, type: !69, scopeLine: 25, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!84 = !{!85, !86}
!85 = !DILocalVariable(arg: 1, scope: !83, type: !12, flags: DIFlagArtificial)
!86 = !DILocalVariable(arg: 2, scope: !83, type: !87, flags: DIFlagArtificial)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 384, elements: !90)
!90 = !{!91, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !1, baseType: !92, size: 320)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !93)
!93 = !{!94, !96}
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !1, baseType: !95, size: 64, offset: 192)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !1, baseType: !95, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !1, baseType: !75, size: 32, offset: 320)
!98 = !DILocation(line: 0, scope: !83)
!99 = !DILocation(line: 25, column: 3, scope: !83)
!100 = !{!25, !27, i64 0}
