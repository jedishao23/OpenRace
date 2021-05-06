; ModuleID = 'DRB135-taskdep-mutexinoutset-orig-no.c'
source_filename = "DRB135-taskdep-mutexinoutset-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32* }
%struct.anon.2 = type { i32* }
%struct.anon.4 = type { i32*, i32* }
%struct.anon.6 = type { i32*, i32* }
%struct.anon.8 = type { i32*, i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.5 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.7 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.9 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [52 x i8] c";DRB135-taskdep-mutexinoutset-orig-no.c;main;24;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [52 x i8] c";DRB135-taskdep-mutexinoutset-orig-no.c;main;26;5;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [52 x i8] c";DRB135-taskdep-mutexinoutset-orig-no.c;main;28;5;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [52 x i8] c";DRB135-taskdep-mutexinoutset-orig-no.c;main;30;5;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @6, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant [52 x i8] c";DRB135-taskdep-mutexinoutset-orig-no.c;main;32;5;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @8, i32 0, i32 0) }, align 8
@10 = private unnamed_addr constant [52 x i8] c";DRB135-taskdep-mutexinoutset-orig-no.c;main;34;5;;\00", align 1
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @10, i32 0, i32 0) }, align 8
@12 = private unnamed_addr constant [52 x i8] c";DRB135-taskdep-mutexinoutset-orig-no.c;main;36;5;;\00", align 1
@13 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @12, i32 0, i32 0) }, align 8
@14 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i32 0, i32 0) }, align 8
@15 = private unnamed_addr constant [52 x i8] c";DRB135-taskdep-mutexinoutset-orig-no.c;main;23;3;;\00", align 1
@16 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @15, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %a to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %a, metadata !14, metadata !DIExpression()), !dbg !19
  %1 = bitcast i32* %b to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %b, metadata !15, metadata !DIExpression()), !dbg !20
  %2 = bitcast i32* %c to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %c, metadata !16, metadata !DIExpression()), !dbg !21
  %3 = bitcast i32* %d to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %d, metadata !17, metadata !DIExpression()), !dbg !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @16, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*)* @.omp_outlined..11 to void (i32*, i32*, ...)*), i32* %c, i32* %a, i32* %b, i32* %d), !dbg !23
  %4 = load i32, i32* %d, align 4, !dbg !24, !tbaa !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4), !dbg !29
  %5 = bitcast i32* %d to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !30
  %6 = bitcast i32* %c to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !30
  %7 = bitcast i32* %b to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #4, !dbg !30
  %8 = bitcast i32* %a to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !30
  ret i32 0, !dbg !31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %c, i32* nonnull align 4 dereferenceable(4) %a, i32* nonnull align 4 dereferenceable(4) %b, i32* nonnull align 4 dereferenceable(4) %d) #3 !dbg !32 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %d.addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr = alloca i64, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %.dep.arr.addr2 = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr3 = alloca i64, align 8
  %agg.captured4 = alloca %struct.anon.2, align 8
  %.dep.arr.addr5 = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr6 = alloca i64, align 8
  %agg.captured7 = alloca %struct.anon.4, align 8
  %.dep.arr.addr8 = alloca [2 x %struct.kmp_depend_info], align 8
  %dep.counter.addr9 = alloca i64, align 8
  %agg.captured10 = alloca %struct.anon.6, align 8
  %.dep.arr.addr11 = alloca [2 x %struct.kmp_depend_info], align 8
  %dep.counter.addr12 = alloca i64, align 8
  %agg.captured13 = alloca %struct.anon.8, align 8
  %.dep.arr.addr14 = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr15 = alloca i64, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !41, metadata !DIExpression()), !dbg !49
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !42, metadata !DIExpression()), !dbg !49
  store i32* %c, i32** %c.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !43, metadata !DIExpression()), !dbg !50
  store i32* %a, i32** %a.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !44, metadata !DIExpression()), !dbg !51
  store i32* %b, i32** %b.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !45, metadata !DIExpression()), !dbg !52
  store i32* %d, i32** %d.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %d.addr, metadata !46, metadata !DIExpression()), !dbg !53
  %0 = load i32*, i32** %c.addr, align 8, !dbg !54, !tbaa !47
  %1 = load i32*, i32** %a.addr, align 8, !dbg !54, !tbaa !47
  %2 = load i32*, i32** %b.addr, align 8, !dbg !54, !tbaa !47
  %3 = load i32*, i32** %d.addr, align 8, !dbg !54, !tbaa !47
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !54
  %5 = load i32, i32* %4, align 4, !dbg !54, !tbaa !25
  %6 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %5), !dbg !54
  %7 = icmp ne i32 %6, 0, !dbg !54
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !54

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !55
  store i32* %0, i32** %8, align 8, !dbg !55, !tbaa !47
  %9 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !55
  %10 = bitcast i8* %9 to %struct.kmp_task_t_with_privates*, !dbg !55
  %11 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %10, i32 0, i32 0, !dbg !55
  %12 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 0, !dbg !55
  %13 = load i8*, i8** %12, align 8, !dbg !55, !tbaa !58
  %14 = bitcast %struct.anon* %agg.captured to i8*, !dbg !55
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false), !dbg !55, !tbaa.struct !61
  %15 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !55
  %16 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %15, i64 0, !dbg !55
  %17 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 0, !dbg !55
  %18 = ptrtoint i32* %0 to i64, !dbg !55
  store i64 %18, i64* %17, align 8, !dbg !55, !tbaa !62
  %19 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 1, !dbg !55
  store i64 4, i64* %19, align 8, !dbg !55, !tbaa !65
  %20 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 2, !dbg !55
  store i8 3, i8* %20, align 8, !dbg !55, !tbaa !66
  store i64 1, i64* %dep.counter.addr, align 8, !dbg !55, !tbaa !67
  %21 = bitcast %struct.kmp_depend_info* %15 to i8*, !dbg !55
  %22 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @3, i32 %5, i8* %9, i32 1, i8* %21, i32 0, i8* null), !dbg !55
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !68
  store i32* %1, i32** %23, align 8, !dbg !68, !tbaa !47
  %24 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @5, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !68
  %25 = bitcast i8* %24 to %struct.kmp_task_t_with_privates.1*, !dbg !68
  %26 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %25, i32 0, i32 0, !dbg !68
  %27 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %26, i32 0, i32 0, !dbg !68
  %28 = load i8*, i8** %27, align 8, !dbg !68, !tbaa !58
  %29 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !68
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false), !dbg !68, !tbaa.struct !61
  %30 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !68
  %31 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %30, i64 0, !dbg !68
  %32 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %31, i32 0, i32 0, !dbg !68
  %33 = ptrtoint i32* %1 to i64, !dbg !68
  store i64 %33, i64* %32, align 8, !dbg !68, !tbaa !62
  %34 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %31, i32 0, i32 1, !dbg !68
  store i64 4, i64* %34, align 8, !dbg !68, !tbaa !65
  %35 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %31, i32 0, i32 2, !dbg !68
  store i8 3, i8* %35, align 8, !dbg !68, !tbaa !66
  store i64 1, i64* %dep.counter.addr3, align 8, !dbg !68, !tbaa !67
  %36 = bitcast %struct.kmp_depend_info* %30 to i8*, !dbg !68
  %37 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @5, i32 %5, i8* %24, i32 1, i8* %36, i32 0, i8* null), !dbg !68
  %38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured4, i32 0, i32 0, !dbg !69
  store i32* %2, i32** %38, align 8, !dbg !69, !tbaa !47
  %39 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @7, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !69
  %40 = bitcast i8* %39 to %struct.kmp_task_t_with_privates.3*, !dbg !69
  %41 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %40, i32 0, i32 0, !dbg !69
  %42 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %41, i32 0, i32 0, !dbg !69
  %43 = load i8*, i8** %42, align 8, !dbg !69, !tbaa !58
  %44 = bitcast %struct.anon.2* %agg.captured4 to i8*, !dbg !69
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false), !dbg !69, !tbaa.struct !61
  %45 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr5, i64 0, i64 0, !dbg !69
  %46 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %45, i64 0, !dbg !69
  %47 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %46, i32 0, i32 0, !dbg !69
  %48 = ptrtoint i32* %2 to i64, !dbg !69
  store i64 %48, i64* %47, align 8, !dbg !69, !tbaa !62
  %49 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %46, i32 0, i32 1, !dbg !69
  store i64 4, i64* %49, align 8, !dbg !69, !tbaa !65
  %50 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %46, i32 0, i32 2, !dbg !69
  store i8 3, i8* %50, align 8, !dbg !69, !tbaa !66
  store i64 1, i64* %dep.counter.addr6, align 8, !dbg !69, !tbaa !67
  %51 = bitcast %struct.kmp_depend_info* %45 to i8*, !dbg !69
  %52 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @7, i32 %5, i8* %39, i32 1, i8* %51, i32 0, i8* null), !dbg !69
  %53 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured7, i32 0, i32 0, !dbg !70
  store i32* %0, i32** %53, align 8, !dbg !70, !tbaa !47
  %54 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured7, i32 0, i32 1, !dbg !70
  store i32* %1, i32** %54, align 8, !dbg !70, !tbaa !47
  %55 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @9, i32 %5, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.5*)* @.omp_task_entry..6 to i32 (i32, i8*)*)), !dbg !70
  %56 = bitcast i8* %55 to %struct.kmp_task_t_with_privates.5*, !dbg !70
  %57 = getelementptr inbounds %struct.kmp_task_t_with_privates.5, %struct.kmp_task_t_with_privates.5* %56, i32 0, i32 0, !dbg !70
  %58 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %57, i32 0, i32 0, !dbg !70
  %59 = load i8*, i8** %58, align 8, !dbg !70, !tbaa !58
  %60 = bitcast %struct.anon.4* %agg.captured7 to i8*, !dbg !70
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false), !dbg !70, !tbaa.struct !71
  %61 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr8, i64 0, i64 0, !dbg !70
  %62 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %61, i64 0, !dbg !70
  %63 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %62, i32 0, i32 0, !dbg !70
  %64 = ptrtoint i32* %1 to i64, !dbg !70
  store i64 %64, i64* %63, align 8, !dbg !70, !tbaa !62
  %65 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %62, i32 0, i32 1, !dbg !70
  store i64 4, i64* %65, align 8, !dbg !70, !tbaa !65
  %66 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %62, i32 0, i32 2, !dbg !70
  store i8 1, i8* %66, align 8, !dbg !70, !tbaa !66
  %67 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %61, i64 1, !dbg !70
  %68 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %67, i32 0, i32 0, !dbg !70
  %69 = ptrtoint i32* %0 to i64, !dbg !70
  store i64 %69, i64* %68, align 8, !dbg !70, !tbaa !62
  %70 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %67, i32 0, i32 1, !dbg !70
  store i64 4, i64* %70, align 8, !dbg !70, !tbaa !65
  %71 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %67, i32 0, i32 2, !dbg !70
  store i8 4, i8* %71, align 8, !dbg !70, !tbaa !66
  store i64 2, i64* %dep.counter.addr9, align 8, !dbg !70, !tbaa !67
  %72 = bitcast %struct.kmp_depend_info* %61 to i8*, !dbg !70
  %73 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @9, i32 %5, i8* %55, i32 2, i8* %72, i32 0, i8* null), !dbg !70
  %74 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured10, i32 0, i32 0, !dbg !72
  store i32* %0, i32** %74, align 8, !dbg !72, !tbaa !47
  %75 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured10, i32 0, i32 1, !dbg !72
  store i32* %2, i32** %75, align 8, !dbg !72, !tbaa !47
  %76 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @11, i32 %5, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.7*)* @.omp_task_entry..8 to i32 (i32, i8*)*)), !dbg !72
  %77 = bitcast i8* %76 to %struct.kmp_task_t_with_privates.7*, !dbg !72
  %78 = getelementptr inbounds %struct.kmp_task_t_with_privates.7, %struct.kmp_task_t_with_privates.7* %77, i32 0, i32 0, !dbg !72
  %79 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %78, i32 0, i32 0, !dbg !72
  %80 = load i8*, i8** %79, align 8, !dbg !72, !tbaa !58
  %81 = bitcast %struct.anon.6* %agg.captured10 to i8*, !dbg !72
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false), !dbg !72, !tbaa.struct !71
  %82 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr11, i64 0, i64 0, !dbg !72
  %83 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %82, i64 0, !dbg !72
  %84 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %83, i32 0, i32 0, !dbg !72
  %85 = ptrtoint i32* %2 to i64, !dbg !72
  store i64 %85, i64* %84, align 8, !dbg !72, !tbaa !62
  %86 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %83, i32 0, i32 1, !dbg !72
  store i64 4, i64* %86, align 8, !dbg !72, !tbaa !65
  %87 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %83, i32 0, i32 2, !dbg !72
  store i8 1, i8* %87, align 8, !dbg !72, !tbaa !66
  %88 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %82, i64 1, !dbg !72
  %89 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %88, i32 0, i32 0, !dbg !72
  %90 = ptrtoint i32* %0 to i64, !dbg !72
  store i64 %90, i64* %89, align 8, !dbg !72, !tbaa !62
  %91 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %88, i32 0, i32 1, !dbg !72
  store i64 4, i64* %91, align 8, !dbg !72, !tbaa !65
  %92 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %88, i32 0, i32 2, !dbg !72
  store i8 4, i8* %92, align 8, !dbg !72, !tbaa !66
  store i64 2, i64* %dep.counter.addr12, align 8, !dbg !72, !tbaa !67
  %93 = bitcast %struct.kmp_depend_info* %82 to i8*, !dbg !72
  %94 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @11, i32 %5, i8* %76, i32 2, i8* %93, i32 0, i8* null), !dbg !72
  %95 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %agg.captured13, i32 0, i32 0, !dbg !73
  store i32* %3, i32** %95, align 8, !dbg !73, !tbaa !47
  %96 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %agg.captured13, i32 0, i32 1, !dbg !73
  store i32* %0, i32** %96, align 8, !dbg !73, !tbaa !47
  %97 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @13, i32 %5, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.9*)* @.omp_task_entry..10 to i32 (i32, i8*)*)), !dbg !73
  %98 = bitcast i8* %97 to %struct.kmp_task_t_with_privates.9*, !dbg !73
  %99 = getelementptr inbounds %struct.kmp_task_t_with_privates.9, %struct.kmp_task_t_with_privates.9* %98, i32 0, i32 0, !dbg !73
  %100 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %99, i32 0, i32 0, !dbg !73
  %101 = load i8*, i8** %100, align 8, !dbg !73, !tbaa !58
  %102 = bitcast %struct.anon.8* %agg.captured13 to i8*, !dbg !73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false), !dbg !73, !tbaa.struct !71
  %103 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr14, i64 0, i64 0, !dbg !73
  %104 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %103, i64 0, !dbg !73
  %105 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %104, i32 0, i32 0, !dbg !73
  %106 = ptrtoint i32* %0 to i64, !dbg !73
  store i64 %106, i64* %105, align 8, !dbg !73, !tbaa !62
  %107 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %104, i32 0, i32 1, !dbg !73
  store i64 4, i64* %107, align 8, !dbg !73, !tbaa !65
  %108 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %104, i32 0, i32 2, !dbg !73
  store i8 1, i8* %108, align 8, !dbg !73, !tbaa !66
  store i64 1, i64* %dep.counter.addr15, align 8, !dbg !73, !tbaa !67
  %109 = bitcast %struct.kmp_depend_info* %103 to i8*, !dbg !73
  %110 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @13, i32 %5, i8* %97, i32 1, i8* %109, i32 0, i8* null), !dbg !73
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %5), !dbg !74
  br label %omp_if.end, !dbg !74

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @14, i32 %5), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #5 !dbg !77 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !100
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !95, metadata !DIExpression()), !dbg !100
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !96, metadata !DIExpression()), !dbg !100
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !97, metadata !DIExpression()), !dbg !100
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !98, metadata !DIExpression()), !dbg !100
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !101
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !101
  %2 = load i32*, i32** %1, align 8, !dbg !101, !tbaa !102
  store i32 1, i32* %2, align 4, !dbg !104, !tbaa !25
  ret void, !dbg !105
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !106 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !109, metadata !DIExpression()), !dbg !121
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !110, metadata !DIExpression()), !dbg !121
  %2 = load i32, i32* %.addr, align 4, !dbg !122, !tbaa !25
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !122
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !122
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !122
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !122
  %7 = load i8*, i8** %6, align 8, !dbg !122, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !122
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !122
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #4, !dbg !122
  ret i32 0, !dbg !122
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #5 !dbg !123 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !131, metadata !DIExpression()), !dbg !137
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !132, metadata !DIExpression()), !dbg !137
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !133, metadata !DIExpression()), !dbg !137
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !134, metadata !DIExpression()), !dbg !137
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !135, metadata !DIExpression()), !dbg !137
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !138
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !138
  %2 = load i32*, i32** %1, align 8, !dbg !138, !tbaa !102
  store i32 2, i32* %2, align 4, !dbg !139, !tbaa !25
  ret void, !dbg !140
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !141 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !143, metadata !DIExpression()), !dbg !150
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !144, metadata !DIExpression()), !dbg !150
  %2 = load i32, i32* %.addr, align 4, !dbg !151, !tbaa !25
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !151
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !151
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !151
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !151
  %7 = load i8*, i8** %6, align 8, !dbg !151, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !151
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !151
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #4, !dbg !151
  ret i32 0, !dbg !151
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.2* noalias %__context) #5 !dbg !152 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.2*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !160, metadata !DIExpression()), !dbg !166
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !161, metadata !DIExpression()), !dbg !166
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !162, metadata !DIExpression()), !dbg !166
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !163, metadata !DIExpression()), !dbg !166
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !164, metadata !DIExpression()), !dbg !166
  store %struct.anon.2* %__context, %struct.anon.2** %__context.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = load %struct.anon.2*, %struct.anon.2** %__context.addr, align 8, !dbg !167
  %1 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %0, i32 0, i32 0, !dbg !167
  %2 = load i32*, i32** %1, align 8, !dbg !167, !tbaa !102
  store i32 3, i32* %2, align 4, !dbg !168, !tbaa !25
  ret void, !dbg !169
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #3 !dbg !170 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !172, metadata !DIExpression()), !dbg !179
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !173, metadata !DIExpression()), !dbg !179
  %2 = load i32, i32* %.addr, align 4, !dbg !180, !tbaa !25
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !180
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !180
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !180
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !180
  %7 = load i8*, i8** %6, align 8, !dbg !180, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !180
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !180
  call void @.omp_outlined..3(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.2* %8) #4, !dbg !180
  ret i32 0, !dbg !180
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..5(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.4* noalias %__context) #5 !dbg !181 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.4*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !189, metadata !DIExpression()), !dbg !195
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !190, metadata !DIExpression()), !dbg !195
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !191, metadata !DIExpression()), !dbg !195
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !192, metadata !DIExpression()), !dbg !195
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !193, metadata !DIExpression()), !dbg !195
  store %struct.anon.4* %__context, %struct.anon.4** %__context.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.anon.4** %__context.addr, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = load %struct.anon.4*, %struct.anon.4** %__context.addr, align 8, !dbg !196
  %1 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %0, i32 0, i32 1, !dbg !197
  %2 = load i32*, i32** %1, align 8, !dbg !197, !tbaa !198
  %3 = load i32, i32* %2, align 4, !dbg !197, !tbaa !25
  %4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %0, i32 0, i32 0, !dbg !196
  %5 = load i32*, i32** %4, align 8, !dbg !196, !tbaa !200
  %6 = load i32, i32* %5, align 4, !dbg !201, !tbaa !25
  %add = add nsw i32 %6, %3, !dbg !201
  store i32 %add, i32* %5, align 4, !dbg !201, !tbaa !25
  ret void, !dbg !197
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..6(i32 %0, %struct.kmp_task_t_with_privates.5* noalias %1) #3 !dbg !202 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.5*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !204, metadata !DIExpression()), !dbg !211
  store %struct.kmp_task_t_with_privates.5* %1, %struct.kmp_task_t_with_privates.5** %.addr1, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.5** %.addr1, metadata !205, metadata !DIExpression()), !dbg !211
  %2 = load i32, i32* %.addr, align 4, !dbg !212, !tbaa !25
  %3 = load %struct.kmp_task_t_with_privates.5*, %struct.kmp_task_t_with_privates.5** %.addr1, align 8, !dbg !212
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.5, %struct.kmp_task_t_with_privates.5* %3, i32 0, i32 0, !dbg !212
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !212
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !212
  %7 = load i8*, i8** %6, align 8, !dbg !212, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.4*, !dbg !212
  %9 = bitcast %struct.kmp_task_t_with_privates.5* %3 to i8*, !dbg !212
  call void @.omp_outlined..5(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.4* %8) #4, !dbg !212
  ret i32 0, !dbg !212
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..7(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.6* noalias %__context) #5 !dbg !213 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.6*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !221, metadata !DIExpression()), !dbg !227
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !222, metadata !DIExpression()), !dbg !227
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !223, metadata !DIExpression()), !dbg !227
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !224, metadata !DIExpression()), !dbg !227
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !225, metadata !DIExpression()), !dbg !227
  store %struct.anon.6* %__context, %struct.anon.6** %__context.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.anon.6** %__context.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load %struct.anon.6*, %struct.anon.6** %__context.addr, align 8, !dbg !228
  %1 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %0, i32 0, i32 1, !dbg !229
  %2 = load i32*, i32** %1, align 8, !dbg !229, !tbaa !198
  %3 = load i32, i32* %2, align 4, !dbg !229, !tbaa !25
  %4 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %0, i32 0, i32 0, !dbg !228
  %5 = load i32*, i32** %4, align 8, !dbg !228, !tbaa !200
  %6 = load i32, i32* %5, align 4, !dbg !230, !tbaa !25
  %add = add nsw i32 %6, %3, !dbg !230
  store i32 %add, i32* %5, align 4, !dbg !230, !tbaa !25
  ret void, !dbg !229
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..8(i32 %0, %struct.kmp_task_t_with_privates.7* noalias %1) #3 !dbg !231 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.7*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !233, metadata !DIExpression()), !dbg !240
  store %struct.kmp_task_t_with_privates.7* %1, %struct.kmp_task_t_with_privates.7** %.addr1, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.7** %.addr1, metadata !234, metadata !DIExpression()), !dbg !240
  %2 = load i32, i32* %.addr, align 4, !dbg !241, !tbaa !25
  %3 = load %struct.kmp_task_t_with_privates.7*, %struct.kmp_task_t_with_privates.7** %.addr1, align 8, !dbg !241
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.7, %struct.kmp_task_t_with_privates.7* %3, i32 0, i32 0, !dbg !241
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !241
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !241
  %7 = load i8*, i8** %6, align 8, !dbg !241, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.6*, !dbg !241
  %9 = bitcast %struct.kmp_task_t_with_privates.7* %3 to i8*, !dbg !241
  call void @.omp_outlined..7(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.6* %8) #4, !dbg !241
  ret i32 0, !dbg !241
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..9(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.8* noalias %__context) #5 !dbg !242 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.8*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !250, metadata !DIExpression()), !dbg !256
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !251, metadata !DIExpression()), !dbg !256
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !252, metadata !DIExpression()), !dbg !256
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !253, metadata !DIExpression()), !dbg !256
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !254, metadata !DIExpression()), !dbg !256
  store %struct.anon.8* %__context, %struct.anon.8** %__context.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.anon.8** %__context.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load %struct.anon.8*, %struct.anon.8** %__context.addr, align 8, !dbg !257
  %1 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %0, i32 0, i32 1, !dbg !258
  %2 = load i32*, i32** %1, align 8, !dbg !258, !tbaa !198
  %3 = load i32, i32* %2, align 4, !dbg !258, !tbaa !25
  %4 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %0, i32 0, i32 0, !dbg !257
  %5 = load i32*, i32** %4, align 8, !dbg !257, !tbaa !200
  store i32 %3, i32* %5, align 4, !dbg !259, !tbaa !25
  ret void, !dbg !258
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..10(i32 %0, %struct.kmp_task_t_with_privates.9* noalias %1) #3 !dbg !260 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.9*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !262, metadata !DIExpression()), !dbg !269
  store %struct.kmp_task_t_with_privates.9* %1, %struct.kmp_task_t_with_privates.9** %.addr1, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.9** %.addr1, metadata !263, metadata !DIExpression()), !dbg !269
  %2 = load i32, i32* %.addr, align 4, !dbg !270, !tbaa !25
  %3 = load %struct.kmp_task_t_with_privates.9*, %struct.kmp_task_t_with_privates.9** %.addr1, align 8, !dbg !270
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.9, %struct.kmp_task_t_with_privates.9* %3, i32 0, i32 0, !dbg !270
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !270
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !270
  %7 = load i8*, i8** %6, align 8, !dbg !270, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.8*, !dbg !270
  %9 = bitcast %struct.kmp_task_t_with_privates.9* %3 to i8*, !dbg !270
  call void @.omp_outlined..9(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.8* %8) #4, !dbg !270
  ret i32 0, !dbg !270
}

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..11(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %c, i32* nonnull align 4 dereferenceable(4) %a, i32* nonnull align 4 dereferenceable(4) %b, i32* nonnull align 4 dereferenceable(4) %d) #3 !dbg !271 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %d.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !273, metadata !DIExpression()), !dbg !279
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !274, metadata !DIExpression()), !dbg !279
  store i32* %c, i32** %c.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !275, metadata !DIExpression()), !dbg !279
  store i32* %a, i32** %a.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !276, metadata !DIExpression()), !dbg !279
  store i32* %b, i32** %b.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !277, metadata !DIExpression()), !dbg !279
  store i32* %d, i32** %d.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %d.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i32*, i32** %c.addr, align 8, !dbg !280, !tbaa !47
  %1 = load i32*, i32** %a.addr, align 8, !dbg !280, !tbaa !47
  %2 = load i32*, i32** %b.addr, align 8, !dbg !280, !tbaa !47
  %3 = load i32*, i32** %d.addr, align 8, !dbg !280, !tbaa !47
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !280, !tbaa !47
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !280, !tbaa !47
  %6 = load i32*, i32** %c.addr, align 8, !dbg !280, !tbaa !47
  %7 = load i32*, i32** %a.addr, align 8, !dbg !280, !tbaa !47
  %8 = load i32*, i32** %b.addr, align 8, !dbg !280, !tbaa !47
  %9 = load i32*, i32** %d.addr, align 8, !dbg !280, !tbaa !47
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #4, !dbg !280
  ret void, !dbg !280
}

; Function Attrs: nounwind
declare !callback !281 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB135-taskdep-mutexinoutset-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!13 = !{!14, !15, !16, !17}
!14 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 21, type: !12)
!15 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 21, type: !12)
!16 = !DILocalVariable(name: "c", scope: !9, file: !1, line: 21, type: !12)
!17 = !DILocalVariable(name: "d", scope: !9, file: !1, line: 21, type: !12)
!18 = !DILocation(line: 21, column: 3, scope: !9)
!19 = !DILocation(line: 21, column: 7, scope: !9)
!20 = !DILocation(line: 21, column: 10, scope: !9)
!21 = !DILocation(line: 21, column: 13, scope: !9)
!22 = !DILocation(line: 21, column: 16, scope: !9)
!23 = !DILocation(line: 23, column: 3, scope: !9)
!24 = !DILocation(line: 40, column: 17, scope: !9)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 40, column: 3, scope: !9)
!30 = !DILocation(line: 42, column: 1, scope: !9)
!31 = !DILocation(line: 41, column: 3, scope: !9)
!32 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 24, type: !33, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !35, !39, !39, !39, !39}
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!39 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!40 = !{!41, !42, !43, !44, !45, !46}
!41 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !32, type: !35, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !32, type: !35, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: "c", arg: 3, scope: !32, file: !1, line: 21, type: !39)
!44 = !DILocalVariable(name: "a", arg: 4, scope: !32, file: !1, line: 21, type: !39)
!45 = !DILocalVariable(name: "b", arg: 5, scope: !32, file: !1, line: 21, type: !39)
!46 = !DILocalVariable(name: "d", arg: 6, scope: !32, file: !1, line: 21, type: !39)
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !27, i64 0}
!49 = !DILocation(line: 0, scope: !32)
!50 = !DILocation(line: 21, column: 13, scope: !32)
!51 = !DILocation(line: 21, column: 7, scope: !32)
!52 = !DILocation(line: 21, column: 10, scope: !32)
!53 = !DILocation(line: 21, column: 16, scope: !32)
!54 = !DILocation(line: 24, column: 3, scope: !32)
!55 = !DILocation(line: 26, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 25, column: 3)
!57 = distinct !DILexicalBlock(scope: !32, file: !1, line: 24, column: 3)
!58 = !{!59, !48, i64 0}
!59 = !{!"kmp_task_t_with_privates", !60, i64 0}
!60 = !{!"kmp_task_t", !48, i64 0, !48, i64 8, !26, i64 16, !27, i64 24, !27, i64 32}
!61 = !{i64 0, i64 8, !47}
!62 = !{!63, !64, i64 0}
!63 = !{!"kmp_depend_info", !64, i64 0, !64, i64 8, !27, i64 16}
!64 = !{!"long", !27, i64 0}
!65 = !{!63, !64, i64 8}
!66 = !{!63, !27, i64 16}
!67 = !{!64, !64, i64 0}
!68 = !DILocation(line: 28, column: 5, scope: !56)
!69 = !DILocation(line: 30, column: 5, scope: !56)
!70 = !DILocation(line: 32, column: 5, scope: !56)
!71 = !{i64 0, i64 8, !47, i64 8, i64 8, !47}
!72 = !DILocation(line: 34, column: 5, scope: !56)
!73 = !DILocation(line: 36, column: 5, scope: !56)
!74 = !DILocation(line: 38, column: 3, scope: !56)
!75 = !DILocation(line: 24, column: 21, scope: !57)
!76 = !DILocation(line: 24, column: 21, scope: !32)
!77 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !78, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !38, !35, !80, !83, !88, !89}
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !80, null}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 26, size: 64, elements: !2)
!93 = !{!94, !95, !96, !97, !98, !99}
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !77, type: !38, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !77, type: !35, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".privates.", arg: 3, scope: !77, type: !80, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !77, type: !83, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !77, type: !88, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "__context", arg: 6, scope: !77, type: !89, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !77)
!101 = !DILocation(line: 27, column: 7, scope: !77)
!102 = !{!103, !48, i64 0}
!103 = !{!"", !48, i64 0}
!104 = !DILocation(line: 27, column: 9, scope: !77)
!105 = !DILocation(line: 27, column: 11, scope: !77)
!106 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 26, type: !107, scopeLine: 26, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !108)
!107 = !DISubroutineType(types: !2)
!108 = !{!109, !110}
!109 = !DILocalVariable(arg: 1, scope: !106, type: !12, flags: DIFlagArtificial)
!110 = !DILocalVariable(arg: 2, scope: !106, type: !111, flags: DIFlagArtificial)
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !1, baseType: !116, size: 320)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !117)
!117 = !{!118, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !1, baseType: !119, size: 64, offset: 192)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !1, baseType: !119, size: 64, offset: 256)
!121 = !DILocation(line: 0, scope: !106)
!122 = !DILocation(line: 26, column: 5, scope: !106)
!123 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 29, type: !124, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !38, !35, !80, !83, !88, !126}
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 28, size: 64, elements: !2)
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !123, type: !38, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !123, type: !35, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".privates.", arg: 3, scope: !123, type: !80, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !123, type: !83, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !123, type: !88, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: "__context", arg: 6, scope: !123, type: !126, flags: DIFlagArtificial)
!137 = !DILocation(line: 0, scope: !123)
!138 = !DILocation(line: 29, column: 7, scope: !123)
!139 = !DILocation(line: 29, column: 9, scope: !123)
!140 = !DILocation(line: 29, column: 11, scope: !123)
!141 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 28, type: !107, scopeLine: 28, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !142)
!142 = !{!143, !144}
!143 = !DILocalVariable(arg: 1, scope: !141, type: !12, flags: DIFlagArtificial)
!144 = !DILocalVariable(arg: 2, scope: !141, type: !145, flags: DIFlagArtificial)
!145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !1, baseType: !116, size: 320)
!150 = !DILocation(line: 0, scope: !141)
!151 = !DILocation(line: 28, column: 5, scope: !141)
!152 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 31, type: !153, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !159)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !38, !35, !80, !83, !88, !155}
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 30, size: 64, elements: !2)
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !152, type: !38, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !152, type: !35, flags: DIFlagArtificial)
!162 = !DILocalVariable(name: ".privates.", arg: 3, scope: !152, type: !80, flags: DIFlagArtificial)
!163 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !152, type: !83, flags: DIFlagArtificial)
!164 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !152, type: !88, flags: DIFlagArtificial)
!165 = !DILocalVariable(name: "__context", arg: 6, scope: !152, type: !155, flags: DIFlagArtificial)
!166 = !DILocation(line: 0, scope: !152)
!167 = !DILocation(line: 31, column: 7, scope: !152)
!168 = !DILocation(line: 31, column: 9, scope: !152)
!169 = !DILocation(line: 31, column: 11, scope: !152)
!170 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 30, type: !107, scopeLine: 30, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !171)
!171 = !{!172, !173}
!172 = !DILocalVariable(arg: 1, scope: !170, type: !12, flags: DIFlagArtificial)
!173 = !DILocalVariable(arg: 2, scope: !170, type: !174, flags: DIFlagArtificial)
!174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !1, baseType: !116, size: 320)
!179 = !DILocation(line: 0, scope: !170)
!180 = !DILocation(line: 30, column: 5, scope: !170)
!181 = distinct !DISubprogram(name: ".omp_outlined..5", scope: !1, file: !1, line: 33, type: !182, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !188)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !38, !35, !80, !83, !88, !184}
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 32, size: 128, elements: !2)
!188 = !{!189, !190, !191, !192, !193, !194}
!189 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !181, type: !38, flags: DIFlagArtificial)
!190 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !181, type: !35, flags: DIFlagArtificial)
!191 = !DILocalVariable(name: ".privates.", arg: 3, scope: !181, type: !80, flags: DIFlagArtificial)
!192 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !181, type: !83, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !181, type: !88, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "__context", arg: 6, scope: !181, type: !184, flags: DIFlagArtificial)
!195 = !DILocation(line: 0, scope: !181)
!196 = !DILocation(line: 33, column: 7, scope: !181)
!197 = !DILocation(line: 33, column: 12, scope: !181)
!198 = !{!199, !48, i64 8}
!199 = !{!"", !48, i64 0, !48, i64 8}
!200 = !{!199, !48, i64 0}
!201 = !DILocation(line: 33, column: 9, scope: !181)
!202 = distinct !DISubprogram(linkageName: ".omp_task_entry..6", scope: !1, file: !1, line: 32, type: !107, scopeLine: 32, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !203)
!203 = !{!204, !205}
!204 = !DILocalVariable(arg: 1, scope: !202, type: !12, flags: DIFlagArtificial)
!205 = !DILocalVariable(arg: 2, scope: !202, type: !206, flags: DIFlagArtificial)
!206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !1, baseType: !116, size: 320)
!211 = !DILocation(line: 0, scope: !202)
!212 = !DILocation(line: 32, column: 5, scope: !202)
!213 = distinct !DISubprogram(name: ".omp_outlined..7", scope: !1, file: !1, line: 35, type: !214, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !220)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !38, !35, !80, !83, !88, !216}
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 34, size: 128, elements: !2)
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !213, type: !38, flags: DIFlagArtificial)
!222 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !213, type: !35, flags: DIFlagArtificial)
!223 = !DILocalVariable(name: ".privates.", arg: 3, scope: !213, type: !80, flags: DIFlagArtificial)
!224 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !213, type: !83, flags: DIFlagArtificial)
!225 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !213, type: !88, flags: DIFlagArtificial)
!226 = !DILocalVariable(name: "__context", arg: 6, scope: !213, type: !216, flags: DIFlagArtificial)
!227 = !DILocation(line: 0, scope: !213)
!228 = !DILocation(line: 35, column: 7, scope: !213)
!229 = !DILocation(line: 35, column: 12, scope: !213)
!230 = !DILocation(line: 35, column: 9, scope: !213)
!231 = distinct !DISubprogram(linkageName: ".omp_task_entry..8", scope: !1, file: !1, line: 34, type: !107, scopeLine: 34, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!232 = !{!233, !234}
!233 = !DILocalVariable(arg: 1, scope: !231, type: !12, flags: DIFlagArtificial)
!234 = !DILocalVariable(arg: 2, scope: !231, type: !235, flags: DIFlagArtificial)
!235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !1, baseType: !116, size: 320)
!240 = !DILocation(line: 0, scope: !231)
!241 = !DILocation(line: 34, column: 5, scope: !231)
!242 = distinct !DISubprogram(name: ".omp_outlined..9", scope: !1, file: !1, line: 37, type: !243, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !38, !35, !80, !83, !88, !245}
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 36, size: 128, elements: !2)
!249 = !{!250, !251, !252, !253, !254, !255}
!250 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !242, type: !38, flags: DIFlagArtificial)
!251 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !242, type: !35, flags: DIFlagArtificial)
!252 = !DILocalVariable(name: ".privates.", arg: 3, scope: !242, type: !80, flags: DIFlagArtificial)
!253 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !242, type: !83, flags: DIFlagArtificial)
!254 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !242, type: !88, flags: DIFlagArtificial)
!255 = !DILocalVariable(name: "__context", arg: 6, scope: !242, type: !245, flags: DIFlagArtificial)
!256 = !DILocation(line: 0, scope: !242)
!257 = !DILocation(line: 37, column: 7, scope: !242)
!258 = !DILocation(line: 37, column: 11, scope: !242)
!259 = !DILocation(line: 37, column: 9, scope: !242)
!260 = distinct !DISubprogram(linkageName: ".omp_task_entry..10", scope: !1, file: !1, line: 36, type: !107, scopeLine: 36, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !261)
!261 = !{!262, !263}
!262 = !DILocalVariable(arg: 1, scope: !260, type: !12, flags: DIFlagArtificial)
!263 = !DILocalVariable(arg: 2, scope: !260, type: !264, flags: DIFlagArtificial)
!264 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !1, baseType: !116, size: 320)
!269 = !DILocation(line: 0, scope: !260)
!270 = !DILocation(line: 36, column: 5, scope: !260)
!271 = distinct !DISubprogram(name: ".omp_outlined..11", scope: !1, file: !1, line: 23, type: !33, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!272 = !{!273, !274, !275, !276, !277, !278}
!273 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !271, type: !35, flags: DIFlagArtificial)
!274 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !271, type: !35, flags: DIFlagArtificial)
!275 = !DILocalVariable(name: "c", arg: 3, scope: !271, type: !39, flags: DIFlagArtificial)
!276 = !DILocalVariable(name: "a", arg: 4, scope: !271, type: !39, flags: DIFlagArtificial)
!277 = !DILocalVariable(name: "b", arg: 5, scope: !271, type: !39, flags: DIFlagArtificial)
!278 = !DILocalVariable(name: "d", arg: 6, scope: !271, type: !39, flags: DIFlagArtificial)
!279 = !DILocation(line: 0, scope: !271)
!280 = !DILocation(line: 23, column: 3, scope: !271)
!281 = !{!282}
!282 = !{i64 2, i64 -1, i64 -1, i1 true}
