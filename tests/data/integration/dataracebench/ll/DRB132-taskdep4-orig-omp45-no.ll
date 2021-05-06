; ModuleID = 'DRB132-taskdep4-orig-omp45-no.c'
source_filename = "DRB132-taskdep4-orig-omp45-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32* }
%struct.anon.2 = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [44 x i8] c";DRB132-taskdep4-orig-omp45-no.c;foo;22;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [44 x i8] c";DRB132-taskdep4-orig-omp45-no.c;foo;25;3;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [44 x i8] c";DRB132-taskdep4-orig-omp45-no.c;foo;28;3;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1
@6 = private unnamed_addr constant [44 x i8] c";DRB132-taskdep4-orig-omp45-no.c;foo;33;3;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @6, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"y=%d\0A\00", align 1
@8 = private unnamed_addr constant [45 x i8] c";DRB132-taskdep4-orig-omp45-no.c;main;41;3;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @8, i32 0, i32 0) }, align 8
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @8, i32 0, i32 0) }, align 8
@11 = private unnamed_addr constant [45 x i8] c";DRB132-taskdep4-orig-omp45-no.c;main;40;3;;\00", align 1
@12 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @11, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo() #0 !dbg !9 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr = alloca i64, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %agg.captured2 = alloca %struct.anon.2, align 1
  %.dep.arr.addr3 = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr4 = alloca i64, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  %1 = bitcast i32* %x to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %x, metadata !13, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %x, align 4, !dbg !17, !tbaa !18
  %2 = bitcast i32* %y to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %y, metadata !15, metadata !DIExpression()), !dbg !22
  store i32 2, i32* %y, align 4, !dbg !22, !tbaa !18
  %3 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !23
  store i32* %x, i32** %3, align 8, !dbg !23, !tbaa !24
  %4 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %0, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !23
  %5 = bitcast i8* %4 to %struct.kmp_task_t_with_privates*, !dbg !23
  %6 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %5, i32 0, i32 0, !dbg !23
  %7 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %6, i32 0, i32 0, !dbg !23
  %8 = load i8*, i8** %7, align 8, !dbg !23, !tbaa !26
  %9 = bitcast %struct.anon* %agg.captured to i8*, !dbg !23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 8, i1 false), !dbg !23, !tbaa.struct !29
  %10 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !23
  %11 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %10, i64 0, !dbg !23
  %12 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %11, i32 0, i32 0, !dbg !23
  %13 = ptrtoint i32* %x to i64, !dbg !23
  store i64 %13, i64* %12, align 8, !dbg !23, !tbaa !30
  %14 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %11, i32 0, i32 1, !dbg !23
  store i64 4, i64* %14, align 8, !dbg !23, !tbaa !33
  %15 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %11, i32 0, i32 2, !dbg !23
  store i8 3, i8* %15, align 8, !dbg !23, !tbaa !34
  store i64 1, i64* %dep.counter.addr, align 8, !dbg !23, !tbaa !35
  %16 = bitcast %struct.kmp_depend_info* %10 to i8*, !dbg !23
  %17 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %0, i8* %4, i32 1, i8* %16, i32 0, i8* null), !dbg !23
  %18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !36
  store i32* %y, i32** %18, align 8, !dbg !36, !tbaa !24
  %19 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %0, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !36
  %20 = bitcast i8* %19 to %struct.kmp_task_t_with_privates.1*, !dbg !36
  %21 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %20, i32 0, i32 0, !dbg !36
  %22 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %21, i32 0, i32 0, !dbg !36
  %23 = load i8*, i8** %22, align 8, !dbg !36, !tbaa !26
  %24 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false), !dbg !36, !tbaa.struct !29
  %25 = call i32 @__kmpc_omp_task(%struct.ident_t* @3, i32 %0, i8* %19), !dbg !36
  %26 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @5, i32 %0, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !37
  %27 = bitcast i8* %26 to %struct.kmp_task_t_with_privates.3*, !dbg !37
  %28 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %27, i32 0, i32 0, !dbg !37
  %29 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr3, i64 0, i64 0, !dbg !37
  %30 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %29, i64 0, !dbg !37
  %31 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %30, i32 0, i32 0, !dbg !37
  %32 = ptrtoint i32* %x to i64, !dbg !37
  store i64 %32, i64* %31, align 8, !dbg !37, !tbaa !30
  %33 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %30, i32 0, i32 1, !dbg !37
  store i64 4, i64* %33, align 8, !dbg !37, !tbaa !33
  %34 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %30, i32 0, i32 2, !dbg !37
  store i8 1, i8* %34, align 8, !dbg !37, !tbaa !34
  store i64 1, i64* %dep.counter.addr4, align 8, !dbg !37, !tbaa !35
  %35 = bitcast %struct.kmp_depend_info* %29 to i8*, !dbg !37
  call void @__kmpc_omp_wait_deps(%struct.ident_t* @5, i32 %0, i32 1, i8* %35, i32 0, i8* null), !dbg !38
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* @5, i32 %0, i8* %26), !dbg !38
  %36 = call i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* %27) #5, !dbg !40
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* @5, i32 %0, i8* %26), !dbg !38
  %37 = load i32, i32* %x, align 4, !dbg !42, !tbaa !18
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37), !dbg !43
  %38 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @7, i32 %0), !dbg !44
  %39 = load i32, i32* %y, align 4, !dbg !45, !tbaa !18
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %39), !dbg !46
  %40 = bitcast i32* %y to i8*, !dbg !47
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !47
  %41 = bitcast i32* %x to i8*, !dbg !47
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !47
  ret void, !dbg !47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !48 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !75
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !70, metadata !DIExpression()), !dbg !75
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !71, metadata !DIExpression()), !dbg !75
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !72, metadata !DIExpression()), !dbg !75
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !73, metadata !DIExpression()), !dbg !75
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !74, metadata !DIExpression()), !dbg !75
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !76
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !76
  %2 = load i32*, i32** %1, align 8, !dbg !76, !tbaa !77
  %3 = load i32, i32* %2, align 4, !dbg !79, !tbaa !18
  %inc = add nsw i32 %3, 1, !dbg !79
  store i32 %inc, i32* %2, align 4, !dbg !79, !tbaa !18
  ret void, !dbg !79
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !80 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !83, metadata !DIExpression()), !dbg !95
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !84, metadata !DIExpression()), !dbg !95
  %2 = load i32, i32* %.addr, align 4, !dbg !96, !tbaa !18
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !96
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !96
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !96
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !96
  %7 = load i8*, i8** %6, align 8, !dbg !96, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !96
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !96
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #5, !dbg !96
  ret i32 0, !dbg !96
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #5

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #5

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #3 !dbg !97 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !105, metadata !DIExpression()), !dbg !111
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !106, metadata !DIExpression()), !dbg !111
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !107, metadata !DIExpression()), !dbg !111
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !108, metadata !DIExpression()), !dbg !111
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !109, metadata !DIExpression()), !dbg !111
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !112
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !112
  %2 = load i32*, i32** %1, align 8, !dbg !112, !tbaa !77
  %3 = load i32, i32* %2, align 4, !dbg !113, !tbaa !18
  %dec = add nsw i32 %3, -1, !dbg !113
  store i32 %dec, i32* %2, align 4, !dbg !113, !tbaa !18
  ret void, !dbg !113
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !114 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !116, metadata !DIExpression()), !dbg !123
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !117, metadata !DIExpression()), !dbg !123
  %2 = load i32, i32* %.addr, align 4, !dbg !124, !tbaa !18
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !124
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !124
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !124
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !124
  %7 = load i8*, i8** %6, align 8, !dbg !124, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !124
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !124
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #5, !dbg !124
  ret i32 0, !dbg !124
}

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #5

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.2* noalias %__context) #3 !dbg !125 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.2*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !133, metadata !DIExpression()), !dbg !139
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !134, metadata !DIExpression()), !dbg !139
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !135, metadata !DIExpression()), !dbg !139
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !136, metadata !DIExpression()), !dbg !139
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !137, metadata !DIExpression()), !dbg !139
  store %struct.anon.2* %__context, %struct.anon.2** %__context.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = load %struct.anon.2*, %struct.anon.2** %__context.addr, align 8, !dbg !140
  ret void, !dbg !141
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #4 !dbg !142 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !144, metadata !DIExpression()), !dbg !151
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !145, metadata !DIExpression()), !dbg !151
  %2 = load i32, i32* %.addr, align 4, !dbg !152, !tbaa !18
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !152
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !152
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !152
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !152
  %7 = load i8*, i8** %6, align 8, !dbg !152, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !152
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !152
  call void @.omp_outlined..3(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.2* %8) #5, !dbg !152
  ret i32 0, !dbg !152
}

; Function Attrs: nounwind
declare void @__kmpc_omp_wait_deps(%struct.ident_t*, i32, i32, i8*, i32, i8*) #5

; Function Attrs: nounwind
declare void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*) #5

; Function Attrs: nounwind
declare void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*) #5

declare i32 @printf(i8*, ...) #6

declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !153 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @12, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..6 to void (i32*, i32*, ...)*)), !dbg !156
  ret i32 0, !dbg !157
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !158 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !162, metadata !DIExpression()), !dbg !164
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !165
  %1 = load i32, i32* %0, align 4, !dbg !165, !tbaa !18
  %2 = call i32 @__kmpc_single(%struct.ident_t* @9, i32 %1), !dbg !165
  %3 = icmp ne i32 %2, 0, !dbg !165
  br i1 %3, label %omp_if.then, label %omp_if.end, !dbg !165

omp_if.then:                                      ; preds = %entry
  call void @foo(), !dbg !166
  call void @__kmpc_end_single(%struct.ident_t* @9, i32 %1), !dbg !166
  br label %omp_if.end, !dbg !166

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @10, i32 %1), !dbg !168
  ret void, !dbg !169
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #5

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..6(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !170 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !172, metadata !DIExpression()), !dbg !174
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !175, !tbaa !24
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !175, !tbaa !24
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #5, !dbg !175
  ret void, !dbg !175
}

; Function Attrs: nounwind
declare !callback !176 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

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
!1 = !DIFile(filename: "DRB132-taskdep4-orig-omp45-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 18, type: !10, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{!13, !15}
!13 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 20, type: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "y", scope: !9, file: !1, line: 20, type: !14)
!16 = !DILocation(line: 20, column: 3, scope: !9)
!17 = !DILocation(line: 20, column: 7, scope: !9)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 20, column: 14, scope: !9)
!23 = !DILocation(line: 22, column: 3, scope: !9)
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !20, i64 0}
!26 = !{!27, !25, i64 0}
!27 = !{!"kmp_task_t_with_privates", !28, i64 0}
!28 = !{!"kmp_task_t", !25, i64 0, !25, i64 8, !19, i64 16, !20, i64 24, !20, i64 32}
!29 = !{i64 0, i64 8, !24}
!30 = !{!31, !32, i64 0}
!31 = !{!"kmp_depend_info", !32, i64 0, !32, i64 8, !20, i64 16}
!32 = !{!"long", !20, i64 0}
!33 = !{!31, !32, i64 8}
!34 = !{!31, !20, i64 16}
!35 = !{!32, !32, i64 0}
!36 = !DILocation(line: 25, column: 3, scope: !9)
!37 = !DILocation(line: 28, column: 3, scope: !9)
!38 = !DILocation(line: 28, column: 37, scope: !39)
!39 = distinct !DILexicalBlock(scope: !9, file: !1, line: 28, column: 3)
!40 = !DILocation(line: 28, column: 3, scope: !41)
!41 = distinct !DILexicalBlock(scope: !39, file: !1, line: 28, column: 37)
!42 = !DILocation(line: 31, column: 19, scope: !9)
!43 = !DILocation(line: 31, column: 3, scope: !9)
!44 = !DILocation(line: 33, column: 3, scope: !9)
!45 = !DILocation(line: 35, column: 19, scope: !9)
!46 = !DILocation(line: 35, column: 3, scope: !9)
!47 = !DILocation(line: 36, column: 1, scope: !9)
!48 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 23, type: !49, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !52, !55, !58, !63, !64}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !55, null}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !1, line: 22, size: 64, elements: !2)
!68 = !{!69, !70, !71, !72, !73, !74}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !51, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !48, type: !52, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".privates.", arg: 3, scope: !48, type: !55, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !48, type: !58, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !48, type: !63, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "__context", arg: 6, scope: !48, type: !64, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !48)
!76 = !DILocation(line: 23, column: 3, scope: !48)
!77 = !{!78, !25, i64 0}
!78 = !{!"", !25, i64 0}
!79 = !DILocation(line: 23, column: 4, scope: !48)
!80 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 22, type: !81, scopeLine: 22, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!81 = !DISubroutineType(types: !2)
!82 = !{!83, !84}
!83 = !DILocalVariable(arg: 1, scope: !80, type: !14, flags: DIFlagArtificial)
!84 = !DILocalVariable(arg: 2, scope: !80, type: !85, flags: DIFlagArtificial)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !87, file: !1, baseType: !90, size: 320)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !91)
!91 = !{!92, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !90, file: !1, baseType: !93, size: 64, offset: 192)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !90, file: !1, baseType: !93, size: 64, offset: 256)
!95 = !DILocation(line: 0, scope: !80)
!96 = !DILocation(line: 22, column: 3, scope: !80)
!97 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 26, type: !98, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !51, !52, !55, !58, !63, !100}
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !1, line: 25, size: 64, elements: !2)
!104 = !{!105, !106, !107, !108, !109, !110}
!105 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !97, type: !51, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !97, type: !52, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".privates.", arg: 3, scope: !97, type: !55, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !97, type: !58, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !97, type: !63, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "__context", arg: 6, scope: !97, type: !100, flags: DIFlagArtificial)
!111 = !DILocation(line: 0, scope: !97)
!112 = !DILocation(line: 26, column: 3, scope: !97)
!113 = !DILocation(line: 26, column: 4, scope: !97)
!114 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 25, type: !81, scopeLine: 25, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!115 = !{!116, !117}
!116 = !DILocalVariable(arg: 1, scope: !114, type: !14, flags: DIFlagArtificial)
!117 = !DILocalVariable(arg: 2, scope: !114, type: !118, flags: DIFlagArtificial)
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !1, baseType: !90, size: 320)
!123 = !DILocation(line: 0, scope: !114)
!124 = !DILocation(line: 25, column: 3, scope: !114)
!125 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 28, type: !126, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !132)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !51, !52, !55, !58, !63, !128}
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !1, line: 28, elements: !2)
!132 = !{!133, !134, !135, !136, !137, !138}
!133 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !125, type: !51, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !125, type: !52, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".privates.", arg: 3, scope: !125, type: !55, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !125, type: !58, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !125, type: !63, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: "__context", arg: 6, scope: !125, type: !128, flags: DIFlagArtificial)
!139 = !DILocation(line: 0, scope: !125)
!140 = !DILocation(line: 29, column: 3, scope: !125)
!141 = !DILocation(line: 29, column: 4, scope: !125)
!142 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 28, type: !81, scopeLine: 28, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !143)
!143 = !{!144, !145}
!144 = !DILocalVariable(arg: 1, scope: !142, type: !14, flags: DIFlagArtificial)
!145 = !DILocalVariable(arg: 2, scope: !142, type: !146, flags: DIFlagArtificial)
!146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !1, baseType: !90, size: 320)
!151 = !DILocation(line: 0, scope: !142)
!152 = !DILocation(line: 28, column: 3, scope: !142)
!153 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 39, type: !154, scopeLine: 39, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!154 = !DISubroutineType(types: !155)
!155 = !{!14}
!156 = !DILocation(line: 40, column: 3, scope: !153)
!157 = !DILocation(line: 44, column: 3, scope: !153)
!158 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 41, type: !159, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !52, !52}
!161 = !{!162, !163}
!162 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !158, type: !52, flags: DIFlagArtificial)
!163 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !158, type: !52, flags: DIFlagArtificial)
!164 = !DILocation(line: 0, scope: !158)
!165 = !DILocation(line: 41, column: 3, scope: !158)
!166 = !DILocation(line: 42, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !158, file: !1, line: 41, column: 3)
!168 = !DILocation(line: 41, column: 21, scope: !167)
!169 = !DILocation(line: 41, column: 21, scope: !158)
!170 = distinct !DISubprogram(name: ".omp_outlined..6", scope: !1, file: !1, line: 40, type: !159, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !171)
!171 = !{!172, !173}
!172 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !170, type: !52, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !170, type: !52, flags: DIFlagArtificial)
!174 = !DILocation(line: 0, scope: !170)
!175 = !DILocation(line: 40, column: 3, scope: !170)
!176 = !{!177}
!177 = !{i64 2, i64 -1, i64 -1, i1 true}
