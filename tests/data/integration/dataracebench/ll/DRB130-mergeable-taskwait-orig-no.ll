; ModuleID = 'DRB130-mergeable-taskwait-orig-no.c'
source_filename = "DRB130-mergeable-taskwait-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@0 = private unnamed_addr constant [49 x i8] c";DRB130-mergeable-taskwait-orig-no.c;main;23;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [49 x i8] c";DRB130-mergeable-taskwait-orig-no.c;main;27;3;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 0, i32* %retval, align 4
  %1 = bitcast i32* %x to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %x, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 2, i32* %x, align 4, !dbg !16, !tbaa !17
  %2 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !21
  store i32* %x, i32** %2, align 8, !dbg !21, !tbaa !22
  %3 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %0, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !21
  %4 = bitcast i8* %3 to %struct.kmp_task_t_with_privates*, !dbg !21
  %5 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %4, i32 0, i32 0, !dbg !21
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %5, i32 0, i32 0, !dbg !21
  %7 = load i8*, i8** %6, align 8, !dbg !21, !tbaa !24
  %8 = bitcast %struct.anon* %agg.captured to i8*, !dbg !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 8, i1 false), !dbg !21, !tbaa.struct !27
  %9 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %0, i8* %3), !dbg !21
  %10 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @3, i32 %0), !dbg !28
  %11 = load i32, i32* %x, align 4, !dbg !29, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11), !dbg !30
  %12 = bitcast i32* %x to i8*, !dbg !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !31
  ret i32 0, !dbg !32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !33 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !54, metadata !DIExpression()), !dbg !60
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !55, metadata !DIExpression()), !dbg !60
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !56, metadata !DIExpression()), !dbg !60
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !57, metadata !DIExpression()), !dbg !60
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !58, metadata !DIExpression()), !dbg !60
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !59, metadata !DIExpression()), !dbg !60
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !61
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !62
  %2 = load i32*, i32** %1, align 8, !dbg !62, !tbaa !64
  %3 = load i32, i32* %2, align 4, !dbg !66, !tbaa !17
  %inc = add nsw i32 %3, 1, !dbg !66
  store i32 %inc, i32* %2, align 4, !dbg !66, !tbaa !17
  ret void, !dbg !67
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !68 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !71, metadata !DIExpression()), !dbg !83
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !72, metadata !DIExpression()), !dbg !83
  %2 = load i32, i32* %.addr, align 4, !dbg !84, !tbaa !17
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !84
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !84
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !84
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !84
  %7 = load i8*, i8** %6, align 8, !dbg !84, !tbaa !24
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !84
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !84
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #5, !dbg !84
  ret i32 0, !dbg !84
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #5

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
!1 = !DIFile(filename: "DRB130-mergeable-taskwait-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !10, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 21, type: !12)
!15 = !DILocation(line: 21, column: 3, scope: !9)
!16 = !DILocation(line: 21, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 23, column: 3, scope: !9)
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !19, i64 0}
!24 = !{!25, !23, i64 0}
!25 = !{!"kmp_task_t_with_privates", !26, i64 0}
!26 = !{!"kmp_task_t", !23, i64 0, !23, i64 8, !18, i64 16, !19, i64 24, !19, i64 32}
!27 = !{i64 0, i64 8, !22}
!28 = !DILocation(line: 27, column: 3, scope: !9)
!29 = !DILocation(line: 29, column: 17, scope: !9)
!30 = !DILocation(line: 29, column: 3, scope: !9)
!31 = !DILocation(line: 31, column: 1, scope: !9)
!32 = !DILocation(line: 30, column: 3, scope: !9)
!33 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !34, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !37, !40, !43, !48, !49}
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !40, null}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !1, line: 23, size: 64, elements: !2)
!53 = !{!54, !55, !56, !57, !58, !59}
!54 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !33, type: !36, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !33, type: !37, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".privates.", arg: 3, scope: !33, type: !40, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !33, type: !43, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !33, type: !48, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "__context", arg: 6, scope: !33, type: !49, flags: DIFlagArtificial)
!60 = !DILocation(line: 0, scope: !33)
!61 = !DILocation(line: 24, column: 3, scope: !33)
!62 = !DILocation(line: 25, column: 5, scope: !63)
!63 = distinct !DILexicalBlock(scope: !33, file: !1, line: 24, column: 3)
!64 = !{!65, !23, i64 0}
!65 = !{!"", !23, i64 0}
!66 = !DILocation(line: 25, column: 6, scope: !63)
!67 = !DILocation(line: 26, column: 3, scope: !33)
!68 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 23, type: !69, scopeLine: 23, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !70)
!69 = !DISubroutineType(types: !2)
!70 = !{!71, !72}
!71 = !DILocalVariable(arg: 1, scope: !68, type: !12, flags: DIFlagArtificial)
!72 = !DILocalVariable(arg: 2, scope: !68, type: !73, flags: DIFlagArtificial)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !1, baseType: !78, size: 320)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !79)
!79 = !{!80, !82}
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !1, baseType: !81, size: 64, offset: 192)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !1, baseType: !81, size: 64, offset: 256)
!83 = !DILocation(line: 0, scope: !68)
!84 = !DILocation(line: 23, column: 3, scope: !68)
