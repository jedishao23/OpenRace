; ModuleID = 'DRB079-taskdep3-orig-no.c'
source_filename = "DRB079-taskdep3-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32*, i32* }
%struct.anon.2 = type { i32*, i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;57;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;59;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;64;1;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;66;1;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @6, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;56;1;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @9, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"j=%d k=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"j==1 && k==1\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"DRB079-taskdep3-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %i, align 4, !dbg !18, !tbaa !19
  %1 = bitcast i32* %j to i8*, !dbg !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !23
  %2 = bitcast i32* %k to i8*, !dbg !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %k, metadata !16, metadata !DIExpression()), !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @10, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined..5 to void (i32*, i32*, ...)*), i32* %i, i32* %j, i32* %k), !dbg !25
  %3 = load i32, i32* %j, align 4, !dbg !26, !tbaa !19
  %4 = load i32, i32* %k, align 4, !dbg !27, !tbaa !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4), !dbg !28
  %5 = load i32, i32* %j, align 4, !dbg !29, !tbaa !19
  %cmp = icmp eq i32 %5, 1, !dbg !29
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !29

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %k, align 4, !dbg !29, !tbaa !19
  %cmp1 = icmp eq i32 %6, 1, !dbg !29
  br i1 %cmp1, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %land.lhs.true
  br label %if.end, !dbg !32

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !29
  unreachable, !dbg !29

if.end:                                           ; preds = %if.then
  %7 = bitcast i32* %k to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #4, !dbg !33
  %8 = bitcast i32* %j to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !33
  %9 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i, i32* nonnull align 4 dereferenceable(4) %j, i32* nonnull align 4 dereferenceable(4) %k) #3 !dbg !35 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr = alloca i64, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %.dep.arr.addr2 = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr3 = alloca i64, align 8
  %agg.captured4 = alloca %struct.anon.2, align 8
  %.dep.arr.addr5 = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr6 = alloca i64, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !51
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !51
  store i32* %i, i32** %i.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !46, metadata !DIExpression()), !dbg !52
  store i32* %j, i32** %j.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !47, metadata !DIExpression()), !dbg !53
  store i32* %k, i32** %k.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !48, metadata !DIExpression()), !dbg !54
  %0 = load i32*, i32** %i.addr, align 8, !dbg !55, !tbaa !49
  %1 = load i32*, i32** %j.addr, align 8, !dbg !55, !tbaa !49
  %2 = load i32*, i32** %k.addr, align 8, !dbg !55, !tbaa !49
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !55
  %4 = load i32, i32* %3, align 4, !dbg !55, !tbaa !19
  %5 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %4), !dbg !55
  %6 = icmp ne i32 %5, 0, !dbg !55
  br i1 %6, label %omp_if.then, label %omp_if.end, !dbg !55

omp_if.then:                                      ; preds = %entry
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !56
  store i32* %0, i32** %7, align 8, !dbg !56, !tbaa !49
  %8 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %4, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !56
  %9 = bitcast i8* %8 to %struct.kmp_task_t_with_privates*, !dbg !56
  %10 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %9, i32 0, i32 0, !dbg !56
  %11 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %10, i32 0, i32 0, !dbg !56
  %12 = load i8*, i8** %11, align 8, !dbg !56, !tbaa !59
  %13 = bitcast %struct.anon* %agg.captured to i8*, !dbg !56
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false), !dbg !56, !tbaa.struct !62
  %14 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !56
  %15 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %14, i64 0, !dbg !56
  %16 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %15, i32 0, i32 0, !dbg !56
  %17 = ptrtoint i32* %0 to i64, !dbg !56
  store i64 %17, i64* %16, align 8, !dbg !56, !tbaa !63
  %18 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %15, i32 0, i32 1, !dbg !56
  store i64 4, i64* %18, align 8, !dbg !56, !tbaa !66
  %19 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %15, i32 0, i32 2, !dbg !56
  store i8 3, i8* %19, align 8, !dbg !56, !tbaa !67
  store i64 1, i64* %dep.counter.addr, align 8, !dbg !56, !tbaa !68
  %20 = bitcast %struct.kmp_depend_info* %14 to i8*, !dbg !56
  %21 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @3, i32 %4, i8* %8, i32 1, i8* %20, i32 0, i8* null), !dbg !56
  %22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !69
  store i32* %1, i32** %22, align 8, !dbg !69, !tbaa !49
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !69
  store i32* %0, i32** %23, align 8, !dbg !69, !tbaa !49
  %24 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @5, i32 %4, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !69
  %25 = bitcast i8* %24 to %struct.kmp_task_t_with_privates.1*, !dbg !69
  %26 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %25, i32 0, i32 0, !dbg !69
  %27 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %26, i32 0, i32 0, !dbg !69
  %28 = load i8*, i8** %27, align 8, !dbg !69, !tbaa !59
  %29 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !69
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false), !dbg !69, !tbaa.struct !70
  %30 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !69
  %31 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %30, i64 0, !dbg !69
  %32 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %31, i32 0, i32 0, !dbg !69
  %33 = ptrtoint i32* %0 to i64, !dbg !69
  store i64 %33, i64* %32, align 8, !dbg !69, !tbaa !63
  %34 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %31, i32 0, i32 1, !dbg !69
  store i64 4, i64* %34, align 8, !dbg !69, !tbaa !66
  %35 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %31, i32 0, i32 2, !dbg !69
  store i8 1, i8* %35, align 8, !dbg !69, !tbaa !67
  store i64 1, i64* %dep.counter.addr3, align 8, !dbg !69, !tbaa !68
  %36 = bitcast %struct.kmp_depend_info* %30 to i8*, !dbg !69
  %37 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @5, i32 %4, i8* %24, i32 1, i8* %36, i32 0, i8* null), !dbg !69
  %38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured4, i32 0, i32 0, !dbg !71
  store i32* %2, i32** %38, align 8, !dbg !71, !tbaa !49
  %39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured4, i32 0, i32 1, !dbg !71
  store i32* %0, i32** %39, align 8, !dbg !71, !tbaa !49
  %40 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @7, i32 %4, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !71
  %41 = bitcast i8* %40 to %struct.kmp_task_t_with_privates.3*, !dbg !71
  %42 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %41, i32 0, i32 0, !dbg !71
  %43 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %42, i32 0, i32 0, !dbg !71
  %44 = load i8*, i8** %43, align 8, !dbg !71, !tbaa !59
  %45 = bitcast %struct.anon.2* %agg.captured4 to i8*, !dbg !71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false), !dbg !71, !tbaa.struct !70
  %46 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr5, i64 0, i64 0, !dbg !71
  %47 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %46, i64 0, !dbg !71
  %48 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %47, i32 0, i32 0, !dbg !71
  %49 = ptrtoint i32* %0 to i64, !dbg !71
  store i64 %49, i64* %48, align 8, !dbg !71, !tbaa !63
  %50 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %47, i32 0, i32 1, !dbg !71
  store i64 4, i64* %50, align 8, !dbg !71, !tbaa !66
  %51 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %47, i32 0, i32 2, !dbg !71
  store i8 1, i8* %51, align 8, !dbg !71, !tbaa !67
  store i64 1, i64* %dep.counter.addr6, align 8, !dbg !71, !tbaa !68
  %52 = bitcast %struct.kmp_depend_info* %46 to i8*, !dbg !71
  %53 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @7, i32 %4, i8* %40, i32 1, i8* %52, i32 0, i8* null), !dbg !71
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %4), !dbg !72
  br label %omp_if.end, !dbg !72

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @8, i32 %4), !dbg !73
  ret void, !dbg !74
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #5 !dbg !75 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !98
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !93, metadata !DIExpression()), !dbg !98
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !94, metadata !DIExpression()), !dbg !98
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !95, metadata !DIExpression()), !dbg !98
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !96, metadata !DIExpression()), !dbg !98
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !99
  %call = call i32 @sleep(i32 3), !dbg !100
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !102
  %2 = load i32*, i32** %1, align 8, !dbg !102, !tbaa !103
  store i32 1, i32* %2, align 4, !dbg !105, !tbaa !19
  ret void, !dbg !106
}

declare !dbg !107 i32 @sleep(i32) #6

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !112 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !115, metadata !DIExpression()), !dbg !127
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !116, metadata !DIExpression()), !dbg !127
  %2 = load i32, i32* %.addr, align 4, !dbg !128, !tbaa !19
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !128
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !128
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !128
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !128
  %7 = load i8*, i8** %6, align 8, !dbg !128, !tbaa !59
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !128
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !128
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #4, !dbg !128
  ret i32 0, !dbg !128
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #5 !dbg !129 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !137, metadata !DIExpression()), !dbg !143
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !138, metadata !DIExpression()), !dbg !143
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !139, metadata !DIExpression()), !dbg !143
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !140, metadata !DIExpression()), !dbg !143
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !141, metadata !DIExpression()), !dbg !143
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !144
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 1, !dbg !145
  %2 = load i32*, i32** %1, align 8, !dbg !145, !tbaa !146
  %3 = load i32, i32* %2, align 4, !dbg !145, !tbaa !19
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !144
  %5 = load i32*, i32** %4, align 8, !dbg !144, !tbaa !148
  store i32 %3, i32* %5, align 4, !dbg !149, !tbaa !19
  ret void, !dbg !145
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !150 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !152, metadata !DIExpression()), !dbg !159
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !153, metadata !DIExpression()), !dbg !159
  %2 = load i32, i32* %.addr, align 4, !dbg !160, !tbaa !19
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !160
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !160
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !160
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !160
  %7 = load i8*, i8** %6, align 8, !dbg !160, !tbaa !59
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !160
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !160
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #4, !dbg !160
  ret i32 0, !dbg !160
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.2* noalias %__context) #5 !dbg !161 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.2*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !169, metadata !DIExpression()), !dbg !175
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !170, metadata !DIExpression()), !dbg !175
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !171, metadata !DIExpression()), !dbg !175
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !172, metadata !DIExpression()), !dbg !175
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !173, metadata !DIExpression()), !dbg !175
  store %struct.anon.2* %__context, %struct.anon.2** %__context.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load %struct.anon.2*, %struct.anon.2** %__context.addr, align 8, !dbg !176
  %1 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %0, i32 0, i32 1, !dbg !177
  %2 = load i32*, i32** %1, align 8, !dbg !177, !tbaa !146
  %3 = load i32, i32* %2, align 4, !dbg !177, !tbaa !19
  %4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %0, i32 0, i32 0, !dbg !176
  %5 = load i32*, i32** %4, align 8, !dbg !176, !tbaa !148
  store i32 %3, i32* %5, align 4, !dbg !178, !tbaa !19
  ret void, !dbg !177
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #3 !dbg !179 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !181, metadata !DIExpression()), !dbg !188
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !182, metadata !DIExpression()), !dbg !188
  %2 = load i32, i32* %.addr, align 4, !dbg !189, !tbaa !19
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !189
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !189
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !189
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !189
  %7 = load i8*, i8** %6, align 8, !dbg !189, !tbaa !59
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !189
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !189
  call void @.omp_outlined..3(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.2* %8) #4, !dbg !189
  ret i32 0, !dbg !189
}

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..5(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i, i32* nonnull align 4 dereferenceable(4) %j, i32* nonnull align 4 dereferenceable(4) %k) #3 !dbg !190 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !192, metadata !DIExpression()), !dbg !197
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !193, metadata !DIExpression()), !dbg !197
  store i32* %i, i32** %i.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !194, metadata !DIExpression()), !dbg !197
  store i32* %j, i32** %j.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !195, metadata !DIExpression()), !dbg !197
  store i32* %k, i32** %k.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load i32*, i32** %i.addr, align 8, !dbg !198, !tbaa !49
  %1 = load i32*, i32** %j.addr, align 8, !dbg !198, !tbaa !49
  %2 = load i32*, i32** %k.addr, align 8, !dbg !198, !tbaa !49
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !198, !tbaa !49
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !198, !tbaa !49
  %5 = load i32*, i32** %i.addr, align 8, !dbg !198, !tbaa !49
  %6 = load i32*, i32** %j.addr, align 8, !dbg !198, !tbaa !49
  %7 = load i32*, i32** %k.addr, align 8, !dbg !198, !tbaa !49
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #4, !dbg !198
  ret void, !dbg !198
}

; Function Attrs: nounwind
declare !callback !199 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB079-taskdep3-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16}
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!15 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 55, type: !12)
!16 = !DILocalVariable(name: "k", scope: !9, file: !1, line: 55, type: !12)
!17 = !DILocation(line: 55, column: 3, scope: !9)
!18 = !DILocation(line: 55, column: 7, scope: !9)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 55, column: 12, scope: !9)
!24 = !DILocation(line: 55, column: 15, scope: !9)
!25 = !DILocation(line: 56, column: 1, scope: !9)
!26 = !DILocation(line: 69, column: 26, scope: !9)
!27 = !DILocation(line: 69, column: 29, scope: !9)
!28 = !DILocation(line: 69, column: 3, scope: !9)
!29 = !DILocation(line: 70, column: 3, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 70, column: 3)
!31 = distinct !DILexicalBlock(scope: !9, file: !1, line: 70, column: 3)
!32 = !DILocation(line: 70, column: 3, scope: !31)
!33 = !DILocation(line: 72, column: 1, scope: !9)
!34 = !DILocation(line: 71, column: 3, scope: !9)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !36, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38, !42, !42, !42}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!43 = !{!44, !45, !46, !47, !48}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "i", arg: 3, scope: !35, file: !1, line: 55, type: !42)
!47 = !DILocalVariable(name: "j", arg: 4, scope: !35, file: !1, line: 55, type: !42)
!48 = !DILocalVariable(name: "k", arg: 5, scope: !35, file: !1, line: 55, type: !42)
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !21, i64 0}
!51 = !DILocation(line: 0, scope: !35)
!52 = !DILocation(line: 55, column: 7, scope: !35)
!53 = !DILocation(line: 55, column: 12, scope: !35)
!54 = !DILocation(line: 55, column: 15, scope: !35)
!55 = !DILocation(line: 57, column: 1, scope: !35)
!56 = !DILocation(line: 59, column: 1, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 58, column: 3)
!58 = distinct !DILexicalBlock(scope: !35, file: !1, line: 57, column: 1)
!59 = !{!60, !50, i64 0}
!60 = !{!"kmp_task_t_with_privates", !61, i64 0}
!61 = !{!"kmp_task_t", !50, i64 0, !50, i64 8, !20, i64 16, !21, i64 24, !21, i64 32}
!62 = !{i64 0, i64 8, !49}
!63 = !{!64, !65, i64 0}
!64 = !{!"kmp_depend_info", !65, i64 0, !65, i64 8, !21, i64 16}
!65 = !{!"long", !21, i64 0}
!66 = !{!64, !65, i64 8}
!67 = !{!64, !21, i64 16}
!68 = !{!65, !65, i64 0}
!69 = !DILocation(line: 64, column: 1, scope: !57)
!70 = !{i64 0, i64 8, !49, i64 8, i64 8, !49}
!71 = !DILocation(line: 66, column: 1, scope: !57)
!72 = !DILocation(line: 68, column: 3, scope: !57)
!73 = !DILocation(line: 57, column: 19, scope: !58)
!74 = !DILocation(line: 57, column: 19, scope: !35)
!75 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !76, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !41, !38, !78, !81, !86, !87}
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !78, null}
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 59, size: 64, elements: !2)
!91 = !{!92, !93, !94, !95, !96, !97}
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !75, type: !41, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !75, type: !38, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".privates.", arg: 3, scope: !75, type: !78, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !75, type: !81, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !75, type: !86, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "__context", arg: 6, scope: !75, type: !87, flags: DIFlagArtificial)
!98 = !DILocation(line: 0, scope: !75)
!99 = !DILocation(line: 60, column: 5, scope: !75)
!100 = !DILocation(line: 61, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !75, file: !1, line: 60, column: 5)
!102 = !DILocation(line: 62, column: 7, scope: !101)
!103 = !{!104, !50, i64 0}
!104 = !{!"", !50, i64 0}
!105 = !DILocation(line: 62, column: 9, scope: !101)
!106 = !DILocation(line: 63, column: 5, scope: !75)
!107 = !DISubprogram(name: "sleep", scope: !108, file: !108, line: 453, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!108 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !111}
!111 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!112 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 59, type: !113, scopeLine: 59, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!113 = !DISubroutineType(types: !2)
!114 = !{!115, !116}
!115 = !DILocalVariable(arg: 1, scope: !112, type: !12, flags: DIFlagArtificial)
!116 = !DILocalVariable(arg: 2, scope: !112, type: !117, flags: DIFlagArtificial)
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !1, baseType: !122, size: 320)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !123)
!123 = !{!124, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !1, baseType: !125, size: 64, offset: 192)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !1, baseType: !125, size: 64, offset: 256)
!127 = !DILocation(line: 0, scope: !112)
!128 = !DILocation(line: 59, column: 1, scope: !112)
!129 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 65, type: !130, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !136)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !41, !38, !78, !81, !86, !132}
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 64, size: 128, elements: !2)
!136 = !{!137, !138, !139, !140, !141, !142}
!137 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !129, type: !41, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !129, type: !38, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".privates.", arg: 3, scope: !129, type: !78, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !129, type: !81, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !129, type: !86, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "__context", arg: 6, scope: !129, type: !132, flags: DIFlagArtificial)
!143 = !DILocation(line: 0, scope: !129)
!144 = !DILocation(line: 65, column: 5, scope: !129)
!145 = !DILocation(line: 65, column: 8, scope: !129)
!146 = !{!147, !50, i64 8}
!147 = !{!"", !50, i64 0, !50, i64 8}
!148 = !{!147, !50, i64 0}
!149 = !DILocation(line: 65, column: 7, scope: !129)
!150 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 64, type: !113, scopeLine: 64, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!151 = !{!152, !153}
!152 = !DILocalVariable(arg: 1, scope: !150, type: !12, flags: DIFlagArtificial)
!153 = !DILocalVariable(arg: 2, scope: !150, type: !154, flags: DIFlagArtificial)
!154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !1, baseType: !122, size: 320)
!159 = !DILocation(line: 0, scope: !150)
!160 = !DILocation(line: 64, column: 1, scope: !150)
!161 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 67, type: !162, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !41, !38, !78, !81, !86, !164}
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 66, size: 128, elements: !2)
!168 = !{!169, !170, !171, !172, !173, !174}
!169 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !161, type: !41, flags: DIFlagArtificial)
!170 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !161, type: !38, flags: DIFlagArtificial)
!171 = !DILocalVariable(name: ".privates.", arg: 3, scope: !161, type: !78, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !161, type: !81, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !161, type: !86, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: "__context", arg: 6, scope: !161, type: !164, flags: DIFlagArtificial)
!175 = !DILocation(line: 0, scope: !161)
!176 = !DILocation(line: 67, column: 5, scope: !161)
!177 = !DILocation(line: 67, column: 8, scope: !161)
!178 = !DILocation(line: 67, column: 7, scope: !161)
!179 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 66, type: !113, scopeLine: 66, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !180)
!180 = !{!181, !182}
!181 = !DILocalVariable(arg: 1, scope: !179, type: !12, flags: DIFlagArtificial)
!182 = !DILocalVariable(arg: 2, scope: !179, type: !183, flags: DIFlagArtificial)
!183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !1, baseType: !122, size: 320)
!188 = !DILocation(line: 0, scope: !179)
!189 = !DILocation(line: 66, column: 1, scope: !179)
!190 = distinct !DISubprogram(name: ".omp_outlined..5", scope: !1, file: !1, line: 56, type: !36, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !190, type: !38, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !190, type: !38, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "i", arg: 3, scope: !190, type: !42, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: "j", arg: 4, scope: !190, type: !42, flags: DIFlagArtificial)
!196 = !DILocalVariable(name: "k", arg: 5, scope: !190, type: !42, flags: DIFlagArtificial)
!197 = !DILocation(line: 0, scope: !190)
!198 = !DILocation(line: 56, column: 1, scope: !190)
!199 = !{!200}
!200 = !{i64 2, i64 -1, i64 -1, i1 true}
