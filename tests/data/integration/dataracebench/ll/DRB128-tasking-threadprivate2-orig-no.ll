; ModuleID = 'DRB128-tasking-threadprivate2-orig-no.c'
source_filename = "DRB128-tasking-threadprivate2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.anon.0 = type {}
%struct.kmp_task_t_with_privates.2 = type { %struct.kmp_task_t }
%struct.anon.1 = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }

$_ZTW2tp = comdat any

@tp = dso_local thread_local global i32 0, align 4, !dbg !0
@var = dso_local global i32 0, align 4, !dbg !6
@0 = private unnamed_addr constant [53 x i8] c";DRB128-tasking-threadprivate2-orig-no.c;main;32;7;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [53 x i8] c";DRB128-tasking-threadprivate2-orig-no.c;main;29;5;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [53 x i8] c";DRB128-tasking-threadprivate2-orig-no.c;main;27;3;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @4, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 1
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @5)
  store i32 0, i32* %retval, align 4
  %1 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @5, i32 %0, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !18
  %2 = bitcast i8* %1 to %struct.kmp_task_t_with_privates.3*, !dbg !18
  %3 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %2, i32 0, i32 0, !dbg !18
  %4 = call i32 @__kmpc_omp_task(%struct.ident_t* @5, i32 %0, i8* %1), !dbg !18
  ret i32 0, !dbg !19
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #1 !dbg !20 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %agg.captured = alloca %struct.anon.0, align 1
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !47
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !41, metadata !DIExpression()), !dbg !51
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !42, metadata !DIExpression()), !dbg !51
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !43, metadata !DIExpression()), !dbg !51
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !44, metadata !DIExpression()), !dbg !51
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !45, metadata !DIExpression()), !dbg !51
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !46, metadata !DIExpression()), !dbg !51
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !54
  %1 = load i32, i32* %.global_tid..addr, align 4, !dbg !55, !tbaa !47
  %2 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %1, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.2*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !55
  %3 = bitcast i8* %2 to %struct.kmp_task_t_with_privates.2*, !dbg !55
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %3, i32 0, i32 0, !dbg !55
  %5 = call i32 @__kmpc_omp_task(%struct.ident_t* @3, i32 %1, i8* %2), !dbg !55
  ret void, !dbg !57
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #1 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  %agg.captured = alloca %struct.anon.1, align 1
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !47
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !72
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !67, metadata !DIExpression()), !dbg !72
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !68, metadata !DIExpression()), !dbg !72
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !69, metadata !DIExpression()), !dbg !72
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !70, metadata !DIExpression()), !dbg !72
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !71, metadata !DIExpression()), !dbg !72
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !73
  store i32 1, i32* @tp, align 4, !dbg !74, !tbaa !47
  %1 = load i32, i32* %.global_tid..addr, align 4, !dbg !76, !tbaa !47
  %2 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %1, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !76
  %3 = bitcast i8* %2 to %struct.kmp_task_t_with_privates*, !dbg !76
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !76
  %5 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %1, i8* %2), !dbg !76
  %6 = load i32, i32* @tp, align 4, !dbg !77, !tbaa !47
  store i32 %6, i32* @var, align 4, !dbg !78, !tbaa !47
  ret void, !dbg !79
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.1* noalias %__context) #1 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.1*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !47
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !94
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !89, metadata !DIExpression()), !dbg !94
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !90, metadata !DIExpression()), !dbg !94
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !91, metadata !DIExpression()), !dbg !94
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !92, metadata !DIExpression()), !dbg !94
  store %struct.anon.1* %__context, %struct.anon.1** %__context.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.anon.1** %__context.addr, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load %struct.anon.1*, %struct.anon.1** %__context.addr, align 8, !dbg !95
  ret void, !dbg !96
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !97 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !47
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !100, metadata !DIExpression()), !dbg !112
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !101, metadata !DIExpression()), !dbg !112
  %2 = load i32, i32* %.addr, align 4, !dbg !113, !tbaa !47
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !113
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !113
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !113
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !113
  %7 = load i8*, i8** %6, align 8, !dbg !113, !tbaa !114
  %8 = bitcast i8* %7 to %struct.anon.1*, !dbg !113
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !113
  call void @.omp_outlined..2(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.1* %8) #4, !dbg !113
  ret i32 0, !dbg !113
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.2* noalias %1) #3 !dbg !117 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.2*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !47
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !119, metadata !DIExpression()), !dbg !126
  store %struct.kmp_task_t_with_privates.2* %1, %struct.kmp_task_t_with_privates.2** %.addr1, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.2** %.addr1, metadata !120, metadata !DIExpression()), !dbg !126
  %2 = load i32, i32* %.addr, align 4, !dbg !127, !tbaa !47
  %3 = load %struct.kmp_task_t_with_privates.2*, %struct.kmp_task_t_with_privates.2** %.addr1, align 8, !dbg !127
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %3, i32 0, i32 0, !dbg !127
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !127
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !127
  %7 = load i8*, i8** %6, align 8, !dbg !127, !tbaa !114
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !127
  %9 = bitcast %struct.kmp_task_t_with_privates.2* %3 to i8*, !dbg !127
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #4, !dbg !127
  ret i32 0, !dbg !127
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #3 !dbg !128 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !47
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !130, metadata !DIExpression()), !dbg !137
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !131, metadata !DIExpression()), !dbg !137
  %2 = load i32, i32* %.addr, align 4, !dbg !138, !tbaa !47
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !138
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !138
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !138
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !138
  %7 = load i8*, i8** %6, align 8, !dbg !138, !tbaa !114
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !138
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !138
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #4, !dbg !138
  ret i32 0, !dbg !138
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #4

; Function Attrs: nounwind sspstrong uwtable
define weak_odr hidden i32* @_ZTW2tp() #5 comdat {
  ret i32* @tp
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tp", scope: !2, file: !3, line: 22, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB128-tasking-threadprivate2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 24, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 26, type: !16, scopeLine: 26, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{!8}
!18 = !DILocation(line: 27, column: 3, scope: !15)
!19 = !DILocation(line: 38, column: 3, scope: !15)
!20 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 27, type: !21, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !24, !27, !30, !35, !36}
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !27, null}
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !15, file: !3, line: 27, elements: !4)
!40 = !{!41, !42, !43, !44, !45, !46}
!41 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !20, type: !23, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !20, type: !24, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".privates.", arg: 3, scope: !20, type: !27, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !20, type: !30, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !20, type: !35, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "__context", arg: 6, scope: !20, type: !36, flags: DIFlagArtificial)
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 0, scope: !20)
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !49, i64 0}
!54 = !DILocation(line: 28, column: 3, scope: !20)
!55 = !DILocation(line: 29, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !20, file: !3, line: 28, column: 3)
!57 = !DILocation(line: 37, column: 3, scope: !20)
!58 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 29, type: !59, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !23, !24, !27, !30, !35, !61}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !20, file: !3, line: 29, elements: !4)
!65 = !{!66, !67, !68, !69, !70, !71}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !23, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !58, type: !24, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".privates.", arg: 3, scope: !58, type: !27, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !58, type: !30, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !58, type: !35, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "__context", arg: 6, scope: !58, type: !61, flags: DIFlagArtificial)
!72 = !DILocation(line: 0, scope: !58)
!73 = !DILocation(line: 30, column: 5, scope: !58)
!74 = !DILocation(line: 31, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !58, file: !3, line: 30, column: 5)
!76 = !DILocation(line: 32, column: 7, scope: !75)
!77 = !DILocation(line: 35, column: 13, scope: !75)
!78 = !DILocation(line: 35, column: 11, scope: !75)
!79 = !DILocation(line: 36, column: 5, scope: !58)
!80 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 32, type: !81, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !23, !24, !27, !30, !35, !83}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !58, file: !3, line: 32, elements: !4)
!87 = !{!88, !89, !90, !91, !92, !93}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !23, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !80, type: !24, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".privates.", arg: 3, scope: !80, type: !27, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !80, type: !30, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !80, type: !35, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "__context", arg: 6, scope: !80, type: !83, flags: DIFlagArtificial)
!94 = !DILocation(line: 0, scope: !80)
!95 = !DILocation(line: 33, column: 7, scope: !80)
!96 = !DILocation(line: 34, column: 7, scope: !80)
!97 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 32, type: !98, scopeLine: 32, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!98 = !DISubroutineType(types: !4)
!99 = !{!100, !101}
!100 = !DILocalVariable(arg: 1, scope: !97, type: !8, flags: DIFlagArtificial)
!101 = !DILocalVariable(arg: 2, scope: !97, type: !102, flags: DIFlagArtificial)
!102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !3, baseType: !107, size: 320)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !108)
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !3, baseType: !110, size: 64, offset: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !3, baseType: !110, size: 64, offset: 256)
!112 = !DILocation(line: 0, scope: !97)
!113 = !DILocation(line: 32, column: 7, scope: !97)
!114 = !{!115, !53, i64 0}
!115 = !{!"kmp_task_t_with_privates", !116, i64 0}
!116 = !{!"kmp_task_t", !53, i64 0, !53, i64 8, !48, i64 16, !49, i64 24, !49, i64 32}
!117 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 29, type: !98, scopeLine: 29, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!118 = !{!119, !120}
!119 = !DILocalVariable(arg: 1, scope: !117, type: !8, flags: DIFlagArtificial)
!120 = !DILocalVariable(arg: 2, scope: !117, type: !121, flags: DIFlagArtificial)
!121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !3, baseType: !107, size: 320)
!126 = !DILocation(line: 0, scope: !117)
!127 = !DILocation(line: 29, column: 5, scope: !117)
!128 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !3, file: !3, line: 27, type: !98, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!129 = !{!130, !131}
!130 = !DILocalVariable(arg: 1, scope: !128, type: !8, flags: DIFlagArtificial)
!131 = !DILocalVariable(arg: 2, scope: !128, type: !132, flags: DIFlagArtificial)
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !3, baseType: !107, size: 320)
!137 = !DILocation(line: 0, scope: !128)
!138 = !DILocation(line: 27, column: 3, scope: !128)
