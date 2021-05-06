; ModuleID = 'DRB133-taskdep5-orig-omp45-no.c'
source_filename = "DRB133-taskdep5-orig-omp45-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32*, i32* }
%struct.anon.2 = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [44 x i8] c";DRB133-taskdep5-orig-omp45-no.c;foo;24;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [44 x i8] c";DRB133-taskdep5-orig-omp45-no.c;foo;27;3;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [44 x i8] c";DRB133-taskdep5-orig-omp45-no.c;foo;30;3;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1
@6 = private unnamed_addr constant [44 x i8] c";DRB133-taskdep5-orig-omp45-no.c;foo;35;3;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @6, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"y=%d\0A\00", align 1
@8 = private unnamed_addr constant [45 x i8] c";DRB133-taskdep5-orig-omp45-no.c;main;42;3;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @8, i32 0, i32 0) }, align 8
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @8, i32 0, i32 0) }, align 8
@11 = private unnamed_addr constant [45 x i8] c";DRB133-taskdep5-orig-omp45-no.c;main;41;3;;\00", align 1
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
  %.dep.arr.addr2 = alloca [2 x %struct.kmp_depend_info], align 8
  %dep.counter.addr3 = alloca i64, align 8
  %agg.captured4 = alloca %struct.anon.2, align 1
  %.dep.arr.addr5 = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr6 = alloca i64, align 8
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
  %19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !36
  store i32* %x, i32** %19, align 8, !dbg !36, !tbaa !24
  %20 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %0, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !36
  %21 = bitcast i8* %20 to %struct.kmp_task_t_with_privates.1*, !dbg !36
  %22 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %21, i32 0, i32 0, !dbg !36
  %23 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %22, i32 0, i32 0, !dbg !36
  %24 = load i8*, i8** %23, align 8, !dbg !36, !tbaa !26
  %25 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false), !dbg !36, !tbaa.struct !37
  %26 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !36
  %27 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %26, i64 0, !dbg !36
  %28 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %27, i32 0, i32 0, !dbg !36
  %29 = ptrtoint i32* %x to i64, !dbg !36
  store i64 %29, i64* %28, align 8, !dbg !36, !tbaa !30
  %30 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %27, i32 0, i32 1, !dbg !36
  store i64 4, i64* %30, align 8, !dbg !36, !tbaa !33
  %31 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %27, i32 0, i32 2, !dbg !36
  store i8 1, i8* %31, align 8, !dbg !36, !tbaa !34
  %32 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %26, i64 1, !dbg !36
  %33 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %32, i32 0, i32 0, !dbg !36
  %34 = ptrtoint i32* %y to i64, !dbg !36
  store i64 %34, i64* %33, align 8, !dbg !36, !tbaa !30
  %35 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %32, i32 0, i32 1, !dbg !36
  store i64 4, i64* %35, align 8, !dbg !36, !tbaa !33
  %36 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %32, i32 0, i32 2, !dbg !36
  store i8 3, i8* %36, align 8, !dbg !36, !tbaa !34
  store i64 2, i64* %dep.counter.addr3, align 8, !dbg !36, !tbaa !35
  %37 = bitcast %struct.kmp_depend_info* %26 to i8*, !dbg !36
  %38 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @3, i32 %0, i8* %20, i32 2, i8* %37, i32 0, i8* null), !dbg !36
  %39 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @5, i32 %0, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !38
  %40 = bitcast i8* %39 to %struct.kmp_task_t_with_privates.3*, !dbg !38
  %41 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %40, i32 0, i32 0, !dbg !38
  %42 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr5, i64 0, i64 0, !dbg !38
  %43 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %42, i64 0, !dbg !38
  %44 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %43, i32 0, i32 0, !dbg !38
  %45 = ptrtoint i32* %x to i64, !dbg !38
  store i64 %45, i64* %44, align 8, !dbg !38, !tbaa !30
  %46 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %43, i32 0, i32 1, !dbg !38
  store i64 4, i64* %46, align 8, !dbg !38, !tbaa !33
  %47 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %43, i32 0, i32 2, !dbg !38
  store i8 1, i8* %47, align 8, !dbg !38, !tbaa !34
  store i64 1, i64* %dep.counter.addr6, align 8, !dbg !38, !tbaa !35
  %48 = bitcast %struct.kmp_depend_info* %42 to i8*, !dbg !38
  call void @__kmpc_omp_wait_deps(%struct.ident_t* @5, i32 %0, i32 1, i8* %48, i32 0, i8* null), !dbg !39
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* @5, i32 %0, i8* %39), !dbg !39
  %49 = call i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* %40) #5, !dbg !41
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* @5, i32 %0, i8* %39), !dbg !39
  %50 = load i32, i32* %x, align 4, !dbg !43, !tbaa !18
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %50), !dbg !44
  %51 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @7, i32 %0), !dbg !45
  %52 = load i32, i32* %y, align 4, !dbg !46, !tbaa !18
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %52), !dbg !47
  %53 = bitcast i32* %y to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #5, !dbg !48
  %54 = bitcast i32* %x to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #5, !dbg !48
  ret void, !dbg !48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !49 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !70, metadata !DIExpression()), !dbg !76
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !71, metadata !DIExpression()), !dbg !76
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !72, metadata !DIExpression()), !dbg !76
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !73, metadata !DIExpression()), !dbg !76
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !74, metadata !DIExpression()), !dbg !76
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !77
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !77
  %2 = load i32*, i32** %1, align 8, !dbg !77, !tbaa !78
  %3 = load i32, i32* %2, align 4, !dbg !80, !tbaa !18
  %inc = add nsw i32 %3, 1, !dbg !80
  store i32 %inc, i32* %2, align 4, !dbg !80, !tbaa !18
  ret void, !dbg !80
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !81 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !84, metadata !DIExpression()), !dbg !96
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !85, metadata !DIExpression()), !dbg !96
  %2 = load i32, i32* %.addr, align 4, !dbg !97, !tbaa !18
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !97
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !97
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !97
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !97
  %7 = load i8*, i8** %6, align 8, !dbg !97, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !97
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !97
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #5, !dbg !97
  ret i32 0, !dbg !97
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
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #3 !dbg !98 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !106, metadata !DIExpression()), !dbg !112
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !107, metadata !DIExpression()), !dbg !112
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !108, metadata !DIExpression()), !dbg !112
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !109, metadata !DIExpression()), !dbg !112
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !110, metadata !DIExpression()), !dbg !112
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !111, metadata !DIExpression()), !dbg !112
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !113
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !114
  %2 = load i32*, i32** %1, align 8, !dbg !114, !tbaa !115
  %3 = load i32, i32* %2, align 4, !dbg !114, !tbaa !18
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 1, !dbg !117
  %5 = load i32*, i32** %4, align 8, !dbg !117, !tbaa !118
  %6 = load i32, i32* %5, align 4, !dbg !117, !tbaa !18
  %sub = sub nsw i32 %3, %6, !dbg !119
  %7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !113
  %8 = load i32*, i32** %7, align 8, !dbg !113, !tbaa !115
  store i32 %sub, i32* %8, align 4, !dbg !120, !tbaa !18
  ret void, !dbg !117
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !121 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !123, metadata !DIExpression()), !dbg !130
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !124, metadata !DIExpression()), !dbg !130
  %2 = load i32, i32* %.addr, align 4, !dbg !131, !tbaa !18
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !131
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !131
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !131
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !131
  %7 = load i8*, i8** %6, align 8, !dbg !131, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !131
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !131
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #5, !dbg !131
  ret i32 0, !dbg !131
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.2* noalias %__context) #3 !dbg !132 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.2*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !140, metadata !DIExpression()), !dbg !146
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !141, metadata !DIExpression()), !dbg !146
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !142, metadata !DIExpression()), !dbg !146
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !143, metadata !DIExpression()), !dbg !146
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !144, metadata !DIExpression()), !dbg !146
  store %struct.anon.2* %__context, %struct.anon.2** %__context.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = load %struct.anon.2*, %struct.anon.2** %__context.addr, align 8, !dbg !147
  ret void, !dbg !148
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #4 !dbg !149 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !151, metadata !DIExpression()), !dbg !158
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !152, metadata !DIExpression()), !dbg !158
  %2 = load i32, i32* %.addr, align 4, !dbg !159, !tbaa !18
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !159
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !159
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !159
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !159
  %7 = load i8*, i8** %6, align 8, !dbg !159, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !159
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !159
  call void @.omp_outlined..3(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.2* %8) #5, !dbg !159
  ret i32 0, !dbg !159
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
define dso_local i32 @main() #0 !dbg !160 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @12, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..6 to void (i32*, i32*, ...)*)), !dbg !163
  ret i32 0, !dbg !164
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !165 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !169, metadata !DIExpression()), !dbg !171
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !170, metadata !DIExpression()), !dbg !171
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !172
  %1 = load i32, i32* %0, align 4, !dbg !172, !tbaa !18
  %2 = call i32 @__kmpc_single(%struct.ident_t* @9, i32 %1), !dbg !172
  %3 = icmp ne i32 %2, 0, !dbg !172
  br i1 %3, label %omp_if.then, label %omp_if.end, !dbg !172

omp_if.then:                                      ; preds = %entry
  call void @foo(), !dbg !173
  call void @__kmpc_end_single(%struct.ident_t* @9, i32 %1), !dbg !173
  br label %omp_if.end, !dbg !173

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @10, i32 %1), !dbg !175
  ret void, !dbg !176
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #5

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..6(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !177 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !179, metadata !DIExpression()), !dbg !181
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !182, !tbaa !24
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !182, !tbaa !24
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #5, !dbg !182
  ret void, !dbg !182
}

; Function Attrs: nounwind
declare !callback !183 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

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
!1 = !DIFile(filename: "DRB133-taskdep5-orig-omp45-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 21, type: !10, scopeLine: 21, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{!13, !15}
!13 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 22, type: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "y", scope: !9, file: !1, line: 22, type: !14)
!16 = !DILocation(line: 22, column: 3, scope: !9)
!17 = !DILocation(line: 22, column: 7, scope: !9)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 22, column: 14, scope: !9)
!23 = !DILocation(line: 24, column: 3, scope: !9)
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
!36 = !DILocation(line: 27, column: 3, scope: !9)
!37 = !{i64 0, i64 8, !24, i64 8, i64 8, !24}
!38 = !DILocation(line: 30, column: 3, scope: !9)
!39 = !DILocation(line: 30, column: 37, scope: !40)
!40 = distinct !DILexicalBlock(scope: !9, file: !1, line: 30, column: 3)
!41 = !DILocation(line: 30, column: 3, scope: !42)
!42 = distinct !DILexicalBlock(scope: !40, file: !1, line: 30, column: 37)
!43 = !DILocation(line: 33, column: 19, scope: !9)
!44 = !DILocation(line: 33, column: 3, scope: !9)
!45 = !DILocation(line: 35, column: 3, scope: !9)
!46 = !DILocation(line: 37, column: 19, scope: !9)
!47 = !DILocation(line: 37, column: 3, scope: !9)
!48 = !DILocation(line: 38, column: 1, scope: !9)
!49 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !50, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !53, !56, !59, !64, !65}
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !56, null}
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !1, line: 24, size: 64, elements: !2)
!69 = !{!70, !71, !72, !73, !74, !75}
!70 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !49, type: !52, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !49, type: !53, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".privates.", arg: 3, scope: !49, type: !56, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !49, type: !59, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !49, type: !64, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "__context", arg: 6, scope: !49, type: !65, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !49)
!77 = !DILocation(line: 25, column: 3, scope: !49)
!78 = !{!79, !25, i64 0}
!79 = !{!"", !25, i64 0}
!80 = !DILocation(line: 25, column: 4, scope: !49)
!81 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 24, type: !82, scopeLine: 24, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !83)
!82 = !DISubroutineType(types: !2)
!83 = !{!84, !85}
!84 = !DILocalVariable(arg: 1, scope: !81, type: !14, flags: DIFlagArtificial)
!85 = !DILocalVariable(arg: 2, scope: !81, type: !86, flags: DIFlagArtificial)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !1, baseType: !91, size: 320)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !1, baseType: !94, size: 64, offset: 192)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !1, baseType: !94, size: 64, offset: 256)
!96 = !DILocation(line: 0, scope: !81)
!97 = !DILocation(line: 24, column: 3, scope: !81)
!98 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 28, type: !99, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !52, !53, !56, !59, !64, !101}
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !1, line: 27, size: 128, elements: !2)
!105 = !{!106, !107, !108, !109, !110, !111}
!106 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !98, type: !52, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !98, type: !53, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".privates.", arg: 3, scope: !98, type: !56, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !98, type: !59, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !98, type: !64, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "__context", arg: 6, scope: !98, type: !101, flags: DIFlagArtificial)
!112 = !DILocation(line: 0, scope: !98)
!113 = !DILocation(line: 28, column: 3, scope: !98)
!114 = !DILocation(line: 28, column: 7, scope: !98)
!115 = !{!116, !25, i64 0}
!116 = !{!"", !25, i64 0, !25, i64 8}
!117 = !DILocation(line: 28, column: 9, scope: !98)
!118 = !{!116, !25, i64 8}
!119 = !DILocation(line: 28, column: 8, scope: !98)
!120 = !DILocation(line: 28, column: 5, scope: !98)
!121 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 27, type: !82, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!122 = !{!123, !124}
!123 = !DILocalVariable(arg: 1, scope: !121, type: !14, flags: DIFlagArtificial)
!124 = !DILocalVariable(arg: 2, scope: !121, type: !125, flags: DIFlagArtificial)
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !127, file: !1, baseType: !91, size: 320)
!130 = !DILocation(line: 0, scope: !121)
!131 = !DILocation(line: 27, column: 3, scope: !121)
!132 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 30, type: !133, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !52, !53, !56, !59, !64, !135}
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !1, line: 30, elements: !2)
!139 = !{!140, !141, !142, !143, !144, !145}
!140 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !132, type: !52, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !132, type: !53, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: ".privates.", arg: 3, scope: !132, type: !56, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !132, type: !59, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !132, type: !64, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: "__context", arg: 6, scope: !132, type: !135, flags: DIFlagArtificial)
!146 = !DILocation(line: 0, scope: !132)
!147 = !DILocation(line: 31, column: 3, scope: !132)
!148 = !DILocation(line: 31, column: 4, scope: !132)
!149 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 30, type: !82, scopeLine: 30, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!150 = !{!151, !152}
!151 = !DILocalVariable(arg: 1, scope: !149, type: !14, flags: DIFlagArtificial)
!152 = !DILocalVariable(arg: 2, scope: !149, type: !153, flags: DIFlagArtificial)
!153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, scope: !155, file: !1, baseType: !91, size: 320)
!158 = !DILocation(line: 0, scope: !149)
!159 = !DILocation(line: 30, column: 3, scope: !149)
!160 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !161, scopeLine: 40, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!161 = !DISubroutineType(types: !162)
!162 = !{!14}
!163 = !DILocation(line: 41, column: 3, scope: !160)
!164 = !DILocation(line: 45, column: 3, scope: !160)
!165 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 42, type: !166, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !53, !53}
!168 = !{!169, !170}
!169 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !165, type: !53, flags: DIFlagArtificial)
!170 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !165, type: !53, flags: DIFlagArtificial)
!171 = !DILocation(line: 0, scope: !165)
!172 = !DILocation(line: 42, column: 3, scope: !165)
!173 = !DILocation(line: 43, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !165, file: !1, line: 42, column: 3)
!175 = !DILocation(line: 42, column: 21, scope: !174)
!176 = !DILocation(line: 42, column: 21, scope: !165)
!177 = distinct !DISubprogram(name: ".omp_outlined..6", scope: !1, file: !1, line: 41, type: !166, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !178)
!178 = !{!179, !180}
!179 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !177, type: !53, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !177, type: !53, flags: DIFlagArtificial)
!181 = !DILocation(line: 0, scope: !177)
!182 = !DILocation(line: 41, column: 3, scope: !177)
!183 = !{!184}
!184 = !{i64 2, i64 -1, i64 -1, i1 true}
