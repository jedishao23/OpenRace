; ModuleID = 'DRB127-tasking-threadprivate1-orig-no.c'
source_filename = "DRB127-tasking-threadprivate1-orig-no.c"
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
@0 = private unnamed_addr constant [53 x i8] c";DRB127-tasking-threadprivate1-orig-no.c;main;31;7;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [53 x i8] c";DRB127-tasking-threadprivate1-orig-no.c;main;28;5;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [53 x i8] c";DRB127-tasking-threadprivate1-orig-no.c;main;26;3;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %5 = load i32, i32* @var, align 4, !dbg !19, !tbaa !21
  %cmp = icmp eq i32 %5, 2, !dbg !25
  br i1 %cmp, label %if.then, label %if.end, !dbg !26

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @var, align 4, !dbg !27, !tbaa !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6), !dbg !28
  br label %if.end, !dbg !28

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !29
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #1 !dbg !30 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %agg.captured = alloca %struct.anon.0, align 1
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !51, metadata !DIExpression()), !dbg !57
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !52, metadata !DIExpression()), !dbg !57
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !53, metadata !DIExpression()), !dbg !57
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !54, metadata !DIExpression()), !dbg !57
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !55, metadata !DIExpression()), !dbg !57
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !56, metadata !DIExpression()), !dbg !57
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !60
  %1 = load i32, i32* %.global_tid..addr, align 4, !dbg !61, !tbaa !21
  %2 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %1, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.2*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !61
  %3 = bitcast i8* %2 to %struct.kmp_task_t_with_privates.2*, !dbg !61
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %3, i32 0, i32 0, !dbg !61
  %5 = call i32 @__kmpc_omp_task(%struct.ident_t* @3, i32 %1, i8* %2), !dbg !61
  store i32 2, i32* @tp, align 4, !dbg !63, !tbaa !21
  ret void, !dbg !64
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #1 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  %agg.captured = alloca %struct.anon.1, align 1
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !79
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !74, metadata !DIExpression()), !dbg !79
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !75, metadata !DIExpression()), !dbg !79
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !76, metadata !DIExpression()), !dbg !79
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !77, metadata !DIExpression()), !dbg !79
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !80
  store i32 1, i32* @tp, align 4, !dbg !81, !tbaa !21
  %1 = load i32, i32* %.global_tid..addr, align 4, !dbg !83, !tbaa !21
  %2 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %1, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !83
  %3 = bitcast i8* %2 to %struct.kmp_task_t_with_privates*, !dbg !83
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !83
  %5 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %1, i8* %2), !dbg !83
  %6 = load i32, i32* @tp, align 4, !dbg !84, !tbaa !21
  store i32 %6, i32* @var, align 4, !dbg !85, !tbaa !21
  ret void, !dbg !86
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.1* noalias %__context) #1 !dbg !87 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.1*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !95, metadata !DIExpression()), !dbg !101
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !96, metadata !DIExpression()), !dbg !101
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !97, metadata !DIExpression()), !dbg !101
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !98, metadata !DIExpression()), !dbg !101
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !99, metadata !DIExpression()), !dbg !101
  store %struct.anon.1* %__context, %struct.anon.1** %__context.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata %struct.anon.1** %__context.addr, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = load %struct.anon.1*, %struct.anon.1** %__context.addr, align 8, !dbg !102
  ret void, !dbg !103
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !104 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !107, metadata !DIExpression()), !dbg !119
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !108, metadata !DIExpression()), !dbg !119
  %2 = load i32, i32* %.addr, align 4, !dbg !120, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !120
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !120
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !120
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !120
  %7 = load i8*, i8** %6, align 8, !dbg !120, !tbaa !121
  %8 = bitcast i8* %7 to %struct.anon.1*, !dbg !120
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !120
  call void @.omp_outlined..2(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.1* %8) #4, !dbg !120
  ret i32 0, !dbg !120
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.2* noalias %1) #3 !dbg !124 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.2*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !126, metadata !DIExpression()), !dbg !133
  store %struct.kmp_task_t_with_privates.2* %1, %struct.kmp_task_t_with_privates.2** %.addr1, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.2** %.addr1, metadata !127, metadata !DIExpression()), !dbg !133
  %2 = load i32, i32* %.addr, align 4, !dbg !134, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates.2*, %struct.kmp_task_t_with_privates.2** %.addr1, align 8, !dbg !134
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %3, i32 0, i32 0, !dbg !134
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !134
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !134
  %7 = load i8*, i8** %6, align 8, !dbg !134, !tbaa !121
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !134
  %9 = bitcast %struct.kmp_task_t_with_privates.2* %3 to i8*, !dbg !134
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #4, !dbg !134
  ret i32 0, !dbg !134
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #3 !dbg !135 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !137, metadata !DIExpression()), !dbg !144
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !138, metadata !DIExpression()), !dbg !144
  %2 = load i32, i32* %.addr, align 4, !dbg !145, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !145
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !145
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !145
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !145
  %7 = load i8*, i8** %6, align 8, !dbg !145, !tbaa !121
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !145
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !145
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #4, !dbg !145
  ret i32 0, !dbg !145
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #4

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind sspstrong uwtable
define weak_odr hidden i32* @_ZTW2tp() #6 comdat {
  ret i32* @tp
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tp", scope: !2, file: !3, line: 21, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB127-tasking-threadprivate1-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 23, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 25, type: !16, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{!8}
!18 = !DILocation(line: 26, column: 3, scope: !15)
!19 = !DILocation(line: 39, column: 6, scope: !20)
!20 = distinct !DILexicalBlock(scope: !15, file: !3, line: 39, column: 6)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 39, column: 9, scope: !20)
!26 = !DILocation(line: 39, column: 6, scope: !15)
!27 = !DILocation(line: 39, column: 28, scope: !20)
!28 = !DILocation(line: 39, column: 14, scope: !20)
!29 = !DILocation(line: 40, column: 3, scope: !15)
!30 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 26, type: !31, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !34, !37, !40, !45, !46}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !37, null}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !15, file: !3, line: 26, elements: !4)
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !30, type: !33, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !30, type: !34, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".privates.", arg: 3, scope: !30, type: !37, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !30, type: !40, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !30, type: !45, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "__context", arg: 6, scope: !30, type: !46, flags: DIFlagArtificial)
!57 = !DILocation(line: 0, scope: !30)
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !23, i64 0}
!60 = !DILocation(line: 27, column: 3, scope: !30)
!61 = !DILocation(line: 28, column: 5, scope: !62)
!62 = distinct !DILexicalBlock(scope: !30, file: !3, line: 27, column: 3)
!63 = !DILocation(line: 36, column: 7, scope: !62)
!64 = !DILocation(line: 37, column: 3, scope: !30)
!65 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 28, type: !66, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !33, !34, !37, !40, !45, !68}
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !3, line: 28, elements: !4)
!72 = !{!73, !74, !75, !76, !77, !78}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !33, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !65, type: !34, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".privates.", arg: 3, scope: !65, type: !37, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !65, type: !40, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !65, type: !45, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "__context", arg: 6, scope: !65, type: !68, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !65)
!80 = !DILocation(line: 29, column: 5, scope: !65)
!81 = !DILocation(line: 30, column: 10, scope: !82)
!82 = distinct !DILexicalBlock(scope: !65, file: !3, line: 29, column: 5)
!83 = !DILocation(line: 31, column: 7, scope: !82)
!84 = !DILocation(line: 34, column: 13, scope: !82)
!85 = !DILocation(line: 34, column: 11, scope: !82)
!86 = !DILocation(line: 35, column: 5, scope: !65)
!87 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 31, type: !88, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !94)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !33, !34, !37, !40, !45, !90}
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !65, file: !3, line: 31, elements: !4)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !87, type: !33, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !87, type: !34, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".privates.", arg: 3, scope: !87, type: !37, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !87, type: !40, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !87, type: !45, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "__context", arg: 6, scope: !87, type: !90, flags: DIFlagArtificial)
!101 = !DILocation(line: 0, scope: !87)
!102 = !DILocation(line: 32, column: 7, scope: !87)
!103 = !DILocation(line: 33, column: 7, scope: !87)
!104 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 31, type: !105, scopeLine: 31, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!105 = !DISubroutineType(types: !4)
!106 = !{!107, !108}
!107 = !DILocalVariable(arg: 1, scope: !104, type: !8, flags: DIFlagArtificial)
!108 = !DILocalVariable(arg: 2, scope: !104, type: !109, flags: DIFlagArtificial)
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !111, file: !3, baseType: !114, size: 320)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !115)
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !3, baseType: !117, size: 64, offset: 192)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !3, baseType: !117, size: 64, offset: 256)
!119 = !DILocation(line: 0, scope: !104)
!120 = !DILocation(line: 31, column: 7, scope: !104)
!121 = !{!122, !59, i64 0}
!122 = !{!"kmp_task_t_with_privates", !123, i64 0}
!123 = !{!"kmp_task_t", !59, i64 0, !59, i64 8, !22, i64 16, !23, i64 24, !23, i64 32}
!124 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 28, type: !105, scopeLine: 28, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!125 = !{!126, !127}
!126 = !DILocalVariable(arg: 1, scope: !124, type: !8, flags: DIFlagArtificial)
!127 = !DILocalVariable(arg: 2, scope: !124, type: !128, flags: DIFlagArtificial)
!128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !3, baseType: !114, size: 320)
!133 = !DILocation(line: 0, scope: !124)
!134 = !DILocation(line: 28, column: 5, scope: !124)
!135 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !3, file: !3, line: 26, type: !105, scopeLine: 26, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !136)
!136 = !{!137, !138}
!137 = !DILocalVariable(arg: 1, scope: !135, type: !8, flags: DIFlagArtificial)
!138 = !DILocalVariable(arg: 2, scope: !135, type: !139, flags: DIFlagArtificial)
!139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !3, baseType: !114, size: 320)
!144 = !DILocation(line: 0, scope: !135)
!145 = !DILocation(line: 26, column: 3, scope: !135)
