; ModuleID = 'DRB078-taskdep2-orig-no.c'
source_filename = "DRB078-taskdep2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [39 x i8] c";DRB078-taskdep2-orig-no.c;main;57;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [39 x i8] c";DRB078-taskdep2-orig-no.c;main;59;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [39 x i8] c";DRB078-taskdep2-orig-no.c;main;64;1;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [39 x i8] c";DRB078-taskdep2-orig-no.c;main;56;1;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @7, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"i==2\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"DRB078-taskdep2-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %i, align 4, !dbg !16, !tbaa !17
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @8, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %i), !dbg !21
  %1 = load i32, i32* %i, align 4, !dbg !22, !tbaa !17
  %cmp = icmp eq i32 %1, 2, !dbg !22
  br i1 %cmp, label %if.then, label %if.else, !dbg !25

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !25

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !22
  unreachable, !dbg !22

if.end:                                           ; preds = %if.then
  %2 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr = alloca i64, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %.dep.arr.addr2 = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr3 = alloca i64, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !37, metadata !DIExpression()), !dbg !42
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !38, metadata !DIExpression()), !dbg !42
  store i32* %i, i32** %i.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !39, metadata !DIExpression()), !dbg !43
  %0 = load i32*, i32** %i.addr, align 8, !dbg !44, !tbaa !40
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !44
  %2 = load i32, i32* %1, align 4, !dbg !44, !tbaa !17
  %3 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %2), !dbg !44
  %4 = icmp ne i32 %3, 0, !dbg !44
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !44

omp_if.then:                                      ; preds = %entry
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !45
  store i32* %0, i32** %5, align 8, !dbg !45, !tbaa !40
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %2, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !45
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !45
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !45
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !45
  %10 = load i8*, i8** %9, align 8, !dbg !45, !tbaa !48
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !45, !tbaa.struct !51
  %12 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !45
  %13 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %12, i64 0, !dbg !45
  %14 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %13, i32 0, i32 0, !dbg !45
  %15 = ptrtoint i32* %0 to i64, !dbg !45
  store i64 %15, i64* %14, align 8, !dbg !45, !tbaa !52
  %16 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %13, i32 0, i32 1, !dbg !45
  store i64 4, i64* %16, align 8, !dbg !45, !tbaa !55
  %17 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %13, i32 0, i32 2, !dbg !45
  store i8 3, i8* %17, align 8, !dbg !45, !tbaa !56
  store i64 1, i64* %dep.counter.addr, align 8, !dbg !45, !tbaa !57
  %18 = bitcast %struct.kmp_depend_info* %12 to i8*, !dbg !45
  %19 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @3, i32 %2, i8* %6, i32 1, i8* %18, i32 0, i8* null), !dbg !45
  %20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !58
  store i32* %0, i32** %20, align 8, !dbg !58, !tbaa !40
  %21 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @5, i32 %2, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !58
  %22 = bitcast i8* %21 to %struct.kmp_task_t_with_privates.1*, !dbg !58
  %23 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %22, i32 0, i32 0, !dbg !58
  %24 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %23, i32 0, i32 0, !dbg !58
  %25 = load i8*, i8** %24, align 8, !dbg !58, !tbaa !48
  %26 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false), !dbg !58, !tbaa.struct !51
  %27 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !58
  %28 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %27, i64 0, !dbg !58
  %29 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %28, i32 0, i32 0, !dbg !58
  %30 = ptrtoint i32* %0 to i64, !dbg !58
  store i64 %30, i64* %29, align 8, !dbg !58, !tbaa !52
  %31 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %28, i32 0, i32 1, !dbg !58
  store i64 4, i64* %31, align 8, !dbg !58, !tbaa !55
  %32 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %28, i32 0, i32 2, !dbg !58
  store i8 3, i8* %32, align 8, !dbg !58, !tbaa !56
  store i64 1, i64* %dep.counter.addr3, align 8, !dbg !58, !tbaa !57
  %33 = bitcast %struct.kmp_depend_info* %27 to i8*, !dbg !58
  %34 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @5, i32 %2, i8* %21, i32 1, i8* %33, i32 0, i8* null), !dbg !58
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %2), !dbg !59
  br label %omp_if.end, !dbg !59

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @6, i32 %2), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #5 !dbg !62 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !79, metadata !DIExpression()), !dbg !85
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !80, metadata !DIExpression()), !dbg !85
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !81, metadata !DIExpression()), !dbg !85
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !82, metadata !DIExpression()), !dbg !85
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !83, metadata !DIExpression()), !dbg !85
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !86
  %call = call i32 @sleep(i32 3), !dbg !87
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !89
  %2 = load i32*, i32** %1, align 8, !dbg !89, !tbaa !90
  store i32 1, i32* %2, align 4, !dbg !92, !tbaa !17
  ret void, !dbg !93
}

declare !dbg !94 i32 @sleep(i32) #6

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !99 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !102, metadata !DIExpression()), !dbg !114
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !103, metadata !DIExpression()), !dbg !114
  %2 = load i32, i32* %.addr, align 4, !dbg !115, !tbaa !17
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !115
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !115
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !115
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !115
  %7 = load i8*, i8** %6, align 8, !dbg !115, !tbaa !48
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !115
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !115
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #4, !dbg !115
  ret i32 0, !dbg !115
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #5 !dbg !116 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !124, metadata !DIExpression()), !dbg !130
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !125, metadata !DIExpression()), !dbg !130
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !126, metadata !DIExpression()), !dbg !130
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !127, metadata !DIExpression()), !dbg !130
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !128, metadata !DIExpression()), !dbg !130
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !131
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !131
  %2 = load i32*, i32** %1, align 8, !dbg !131, !tbaa !90
  store i32 2, i32* %2, align 4, !dbg !132, !tbaa !17
  ret void, !dbg !133
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !134 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !136, metadata !DIExpression()), !dbg !143
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !137, metadata !DIExpression()), !dbg !143
  %2 = load i32, i32* %.addr, align 4, !dbg !144, !tbaa !17
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !144
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !144
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !144
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !144
  %7 = load i8*, i8** %6, align 8, !dbg !144, !tbaa !48
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !144
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !144
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #4, !dbg !144
  ret i32 0, !dbg !144
}

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !145 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !147, metadata !DIExpression()), !dbg !150
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !148, metadata !DIExpression()), !dbg !150
  store i32* %i, i32** %i.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load i32*, i32** %i.addr, align 8, !dbg !151, !tbaa !40
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !151, !tbaa !40
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !151, !tbaa !40
  %3 = load i32*, i32** %i.addr, align 8, !dbg !151, !tbaa !40
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !151
  ret void, !dbg !151
}

; Function Attrs: nounwind
declare !callback !152 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB078-taskdep2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!13 = !{!14}
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!15 = !DILocation(line: 55, column: 3, scope: !9)
!16 = !DILocation(line: 55, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 56, column: 1, scope: !9)
!22 = !DILocation(line: 68, column: 3, scope: !23)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 68, column: 3)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 68, column: 3)
!25 = !DILocation(line: 68, column: 3, scope: !24)
!26 = !DILocation(line: 70, column: 1, scope: !9)
!27 = !DILocation(line: 69, column: 3, scope: !9)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !29, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !35}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!35 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!36 = !{!37, !38, !39}
!37 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: "i", arg: 3, scope: !28, file: !1, line: 55, type: !35)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !19, i64 0}
!42 = !DILocation(line: 0, scope: !28)
!43 = !DILocation(line: 55, column: 7, scope: !28)
!44 = !DILocation(line: 57, column: 1, scope: !28)
!45 = !DILocation(line: 59, column: 1, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 58, column: 3)
!47 = distinct !DILexicalBlock(scope: !28, file: !1, line: 57, column: 1)
!48 = !{!49, !41, i64 0}
!49 = !{!"kmp_task_t_with_privates", !50, i64 0}
!50 = !{!"kmp_task_t", !41, i64 0, !41, i64 8, !18, i64 16, !19, i64 24, !19, i64 32}
!51 = !{i64 0, i64 8, !40}
!52 = !{!53, !54, i64 0}
!53 = !{!"kmp_depend_info", !54, i64 0, !54, i64 8, !19, i64 16}
!54 = !{!"long", !19, i64 0}
!55 = !{!53, !54, i64 8}
!56 = !{!53, !19, i64 16}
!57 = !{!54, !54, i64 0}
!58 = !DILocation(line: 64, column: 1, scope: !46)
!59 = !DILocation(line: 66, column: 3, scope: !46)
!60 = !DILocation(line: 57, column: 19, scope: !47)
!61 = !DILocation(line: 57, column: 19, scope: !28)
!62 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !63, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !34, !31, !65, !68, !73, !74}
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !65, null}
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 59, size: 64, elements: !2)
!78 = !{!79, !80, !81, !82, !83, !84}
!79 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !62, type: !34, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !62, type: !31, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".privates.", arg: 3, scope: !62, type: !65, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !62, type: !68, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !62, type: !73, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "__context", arg: 6, scope: !62, type: !74, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !62)
!86 = !DILocation(line: 60, column: 5, scope: !62)
!87 = !DILocation(line: 61, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !62, file: !1, line: 60, column: 5)
!89 = !DILocation(line: 62, column: 7, scope: !88)
!90 = !{!91, !41, i64 0}
!91 = !{!"", !41, i64 0}
!92 = !DILocation(line: 62, column: 9, scope: !88)
!93 = !DILocation(line: 63, column: 5, scope: !62)
!94 = !DISubprogram(name: "sleep", scope: !95, file: !95, line: 453, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!95 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !98}
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 59, type: !100, scopeLine: 59, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!100 = !DISubroutineType(types: !2)
!101 = !{!102, !103}
!102 = !DILocalVariable(arg: 1, scope: !99, type: !12, flags: DIFlagArtificial)
!103 = !DILocalVariable(arg: 2, scope: !99, type: !104, flags: DIFlagArtificial)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !1, baseType: !109, size: 320)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !1, baseType: !112, size: 64, offset: 192)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !1, baseType: !112, size: 64, offset: 256)
!114 = !DILocation(line: 0, scope: !99)
!115 = !DILocation(line: 59, column: 1, scope: !99)
!116 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 65, type: !117, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !34, !31, !65, !68, !73, !119}
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 64, size: 64, elements: !2)
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !116, type: !34, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !116, type: !31, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".privates.", arg: 3, scope: !116, type: !65, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !116, type: !68, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !116, type: !73, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "__context", arg: 6, scope: !116, type: !119, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !116)
!131 = !DILocation(line: 65, column: 5, scope: !116)
!132 = !DILocation(line: 65, column: 7, scope: !116)
!133 = !DILocation(line: 65, column: 9, scope: !116)
!134 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 64, type: !100, scopeLine: 64, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !135)
!135 = !{!136, !137}
!136 = !DILocalVariable(arg: 1, scope: !134, type: !12, flags: DIFlagArtificial)
!137 = !DILocalVariable(arg: 2, scope: !134, type: !138, flags: DIFlagArtificial)
!138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !1, baseType: !109, size: 320)
!143 = !DILocation(line: 0, scope: !134)
!144 = !DILocation(line: 64, column: 1, scope: !134)
!145 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 56, type: !29, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!146 = !{!147, !148, !149}
!147 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !145, type: !31, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !145, type: !31, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "i", arg: 3, scope: !145, type: !35, flags: DIFlagArtificial)
!150 = !DILocation(line: 0, scope: !145)
!151 = !DILocation(line: 56, column: 1, scope: !145)
!152 = !{!153}
!153 = !{i64 2, i64 -1, i64 -1, i1 true}
