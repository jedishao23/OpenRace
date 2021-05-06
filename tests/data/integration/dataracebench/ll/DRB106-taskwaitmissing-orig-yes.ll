; ModuleID = 'DRB106-taskwaitmissing-orig-yes.c'
source_filename = "DRB106-taskwaitmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }

@0 = private unnamed_addr constant [46 x i8] c";DRB106-taskwaitmissing-orig-yes.c;fib;60;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [46 x i8] c";DRB106-taskwaitmissing-orig-yes.c;fib;62;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [46 x i8] c";DRB106-taskwaitmissing-orig-yes.c;fib;72;1;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @4, i32 0, i32 0) }, align 8
@input = dso_local global i32 10, align 4, !dbg !0
@6 = private unnamed_addr constant [47 x i8] c";DRB106-taskwaitmissing-orig-yes.c;main;81;4;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @6, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @6, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant [47 x i8] c";DRB106-taskwaitmissing-orig-yes.c;main;79;1;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @9, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [42 x i8] c"Fib(%d)=%d (correct answer should be 55)\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fib(i32 %n) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %res = alloca i32, align 4
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 %n, i32* %n.addr, align 4, !tbaa !24
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !18, metadata !DIExpression()), !dbg !28
  %1 = load i32, i32* %n.addr, align 4, !dbg !29, !tbaa !24
  %cmp = icmp ult i32 %1, 2, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !dbg !32, !tbaa !24
  store i32 %2, i32* %retval, align 4, !dbg !33
  br label %return, !dbg !33

if.else:                                          ; preds = %entry
  %3 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !35
  %4 = bitcast i32* %j to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %j, metadata !22, metadata !DIExpression()), !dbg !36
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !37
  store i32* %i, i32** %5, align 8, !dbg !37, !tbaa !38
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %0, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !37
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !37
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !37
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !37
  %10 = load i8*, i8** %9, align 8, !dbg !37, !tbaa !40
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !37, !tbaa.struct !44
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 1, !dbg !37
  %13 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %12, i32 0, i32 0, !dbg !37
  %14 = load i32, i32* %n.addr, align 4, !dbg !45, !tbaa !24
  store i32 %14, i32* %13, align 8, !dbg !37, !tbaa !47
  %15 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %0, i8* %6), !dbg !37
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !48
  store i32* %j, i32** %16, align 8, !dbg !48, !tbaa !38
  %17 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %0, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !48
  %18 = bitcast i8* %17 to %struct.kmp_task_t_with_privates.1*, !dbg !48
  %19 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %18, i32 0, i32 0, !dbg !48
  %20 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %19, i32 0, i32 0, !dbg !48
  %21 = load i8*, i8** %20, align 8, !dbg !48, !tbaa !40
  %22 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false), !dbg !48, !tbaa.struct !44
  %23 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %18, i32 0, i32 1, !dbg !48
  %24 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %23, i32 0, i32 0, !dbg !48
  %25 = load i32, i32* %n.addr, align 4, !dbg !49, !tbaa !24
  store i32 %25, i32* %24, align 8, !dbg !48, !tbaa !47
  %26 = call i32 @__kmpc_omp_task(%struct.ident_t* @3, i32 %0, i8* %17), !dbg !48
  %27 = bitcast i32* %res to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %res, metadata !23, metadata !DIExpression()), !dbg !52
  %28 = load i32, i32* %i, align 4, !dbg !53, !tbaa !24
  %29 = load i32, i32* %j, align 4, !dbg !54, !tbaa !24
  %add = add nsw i32 %28, %29, !dbg !55
  store i32 %add, i32* %res, align 4, !dbg !52, !tbaa !24
  %30 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @5, i32 %0), !dbg !56
  %31 = load i32, i32* %res, align 4, !dbg !57, !tbaa !24
  store i32 %31, i32* %retval, align 4, !dbg !58
  %32 = bitcast i32* %res to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !59
  %33 = bitcast i32* %j to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !59
  %34 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !59
  br label %return

return:                                           ; preds = %if.else, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !60
  ret i32 %35, !dbg !60
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !61 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !24
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !82, metadata !DIExpression()), !dbg !88
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !83, metadata !DIExpression()), !dbg !88
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !84, metadata !DIExpression()), !dbg !88
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !85, metadata !DIExpression()), !dbg !88
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !86, metadata !DIExpression()), !dbg !88
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !87, metadata !DIExpression()), !dbg !88
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !89
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !89
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !89
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !90
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !89
  %4 = load i32, i32* %3, align 4, !dbg !91, !tbaa !24
  %sub = sub i32 %4, 1, !dbg !92
  %call = call i32 @fib(i32 %sub), !dbg !93
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !89
  %6 = load i32*, i32** %5, align 8, !dbg !89, !tbaa !94
  store i32 %call, i32* %6, align 4, !dbg !96, !tbaa !24
  ret void, !dbg !97
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !98 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !101, metadata !DIExpression()), !dbg !111
  store i32** %1, i32*** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !106, metadata !DIExpression()), !dbg !111
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !112
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !112
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !112
  store i32* %3, i32** %4, align 8, !dbg !112, !tbaa !38
  ret void, !dbg !112
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !113 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !24
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !115, metadata !DIExpression()), !dbg !128
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !116, metadata !DIExpression()), !dbg !128
  %2 = load i32, i32* %.addr, align 4, !dbg !129, !tbaa !24
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !129
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !129
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !129
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !129
  %7 = load i8*, i8** %6, align 8, !dbg !129, !tbaa !40
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !129
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !129
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !129
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !129
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #5, !dbg !129
  ret i32 0, !dbg !129
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #5

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #5

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #3 !dbg !130 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !24
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !138, metadata !DIExpression()), !dbg !144
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !139, metadata !DIExpression()), !dbg !144
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !140, metadata !DIExpression()), !dbg !144
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !141, metadata !DIExpression()), !dbg !144
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !142, metadata !DIExpression()), !dbg !144
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !143, metadata !DIExpression()), !dbg !144
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !145
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !145
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !145
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !146
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !145
  %4 = load i32, i32* %3, align 4, !dbg !147, !tbaa !24
  %sub = sub i32 %4, 2, !dbg !148
  %call = call i32 @fib(i32 %sub), !dbg !149
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !145
  %6 = load i32*, i32** %5, align 8, !dbg !145, !tbaa !94
  store i32 %call, i32* %6, align 4, !dbg !150, !tbaa !24
  ret void, !dbg !151
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #3 !dbg !152 {
entry:
  %.addr = alloca %struct..kmp_privates.t.2*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t.2** %.addr, metadata !154, metadata !DIExpression()), !dbg !160
  store i32** %1, i32*** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !159, metadata !DIExpression()), !dbg !160
  %2 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %.addr, align 8, !dbg !161
  %3 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %2, i32 0, i32 0, !dbg !161
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !161
  store i32* %3, i32** %4, align 8, !dbg !161, !tbaa !38
  ret void, !dbg !161
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !162 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !24
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !164, metadata !DIExpression()), !dbg !172
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !165, metadata !DIExpression()), !dbg !172
  %2 = load i32, i32* %.addr, align 4, !dbg !173, !tbaa !24
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !173
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !173
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !173
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !173
  %7 = load i8*, i8** %6, align 8, !dbg !173, !tbaa !40
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !173
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 1, !dbg !173
  %10 = bitcast %struct..kmp_privates.t.2* %9 to i8*, !dbg !173
  %11 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !173
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), i8* %11, %struct.anon.0* %8) #5, !dbg !173
  ret i32 0, !dbg !173
}

declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !174 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %result to i8*, !dbg !179
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !179
  call void @llvm.dbg.declare(metadata i32* %result, metadata !178, metadata !DIExpression()), !dbg !180
  store i32 0, i32* %result, align 4, !dbg !180, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @10, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* %result), !dbg !181
  %1 = load i32, i32* @input, align 4, !dbg !182, !tbaa !24
  %2 = load i32, i32* %result, align 4, !dbg !183, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2), !dbg !184
  %3 = bitcast i32* %result to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !185
  ret i32 0, !dbg !186
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %result) #4 !dbg !187 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !192, metadata !DIExpression()), !dbg !195
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !193, metadata !DIExpression()), !dbg !195
  store i32* %result, i32** %result.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !194, metadata !DIExpression()), !dbg !196
  %0 = load i32*, i32** %result.addr, align 8, !dbg !197, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !198
  %2 = load i32, i32* %1, align 4, !dbg !198, !tbaa !24
  %3 = call i32 @__kmpc_single(%struct.ident_t* @7, i32 %2), !dbg !198
  %4 = icmp ne i32 %3, 0, !dbg !198
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !198

omp_if.then:                                      ; preds = %entry
  %5 = load i32, i32* @input, align 4, !dbg !200, !tbaa !24
  %call = call i32 @fib(i32 %5), !dbg !203
  store i32 %call, i32* %0, align 4, !dbg !204, !tbaa !24
  call void @__kmpc_end_single(%struct.ident_t* @7, i32 %2), !dbg !205
  br label %omp_if.end, !dbg !205

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @8, i32 %2), !dbg !206
  ret void, !dbg !207
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #5

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..4(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %result) #4 !dbg !208 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !210, metadata !DIExpression()), !dbg !213
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !211, metadata !DIExpression()), !dbg !213
  store i32* %result, i32** %result.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !212, metadata !DIExpression()), !dbg !213
  %0 = load i32*, i32** %result.addr, align 8, !dbg !214, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !214, !tbaa !38
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !214, !tbaa !38
  %3 = load i32*, i32** %result.addr, align 8, !dbg !214, !tbaa !38
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !214
  ret void, !dbg !214
}

; Function Attrs: nounwind
declare !callback !215 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare i32 @printf(i8*, ...) #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 52, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB106-taskwaitmissing-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{!"clang version 11.1.0"}
!13 = distinct !DISubprogram(name: "fib", scope: !3, file: !3, line: 53, type: !14, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !6}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !22, !23}
!18 = !DILocalVariable(name: "n", arg: 1, scope: !13, file: !3, line: 53, type: !6)
!19 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 59, type: !16)
!20 = distinct !DILexicalBlock(scope: !21, file: !3, line: 58, column: 3)
!21 = distinct !DILexicalBlock(scope: !13, file: !3, line: 55, column: 7)
!22 = !DILocalVariable(name: "j", scope: !20, file: !3, line: 59, type: !16)
!23 = !DILocalVariable(name: "res", scope: !20, file: !3, line: 65, type: !16)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 53, column: 22, scope: !13)
!29 = !DILocation(line: 55, column: 7, scope: !21)
!30 = !DILocation(line: 55, column: 8, scope: !21)
!31 = !DILocation(line: 55, column: 7, scope: !13)
!32 = !DILocation(line: 56, column: 12, scope: !21)
!33 = !DILocation(line: 56, column: 5, scope: !21)
!34 = !DILocation(line: 59, column: 5, scope: !20)
!35 = !DILocation(line: 59, column: 9, scope: !20)
!36 = !DILocation(line: 59, column: 12, scope: !20)
!37 = !DILocation(line: 60, column: 1, scope: !20)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !26, i64 0}
!40 = !{!41, !39, i64 0}
!41 = !{!"kmp_task_t_with_privates", !42, i64 0, !43, i64 40}
!42 = !{!"kmp_task_t", !39, i64 0, !39, i64 8, !25, i64 16, !26, i64 24, !26, i64 32}
!43 = !{!".kmp_privates.t", !25, i64 0}
!44 = !{i64 0, i64 8, !38}
!45 = !DILocation(line: 61, column: 11, scope: !46)
!46 = distinct !DILexicalBlock(scope: !20, file: !3, line: 60, column: 1)
!47 = !{!41, !25, i64 40}
!48 = !DILocation(line: 62, column: 1, scope: !20)
!49 = !DILocation(line: 63, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !20, file: !3, line: 62, column: 1)
!51 = !DILocation(line: 65, column: 5, scope: !20)
!52 = !DILocation(line: 65, column: 9, scope: !20)
!53 = !DILocation(line: 65, column: 14, scope: !20)
!54 = !DILocation(line: 65, column: 16, scope: !20)
!55 = !DILocation(line: 65, column: 15, scope: !20)
!56 = !DILocation(line: 72, column: 1, scope: !20)
!57 = !DILocation(line: 73, column: 12, scope: !20)
!58 = !DILocation(line: 73, column: 5, scope: !20)
!59 = !DILocation(line: 74, column: 3, scope: !21)
!60 = !DILocation(line: 75, column: 1, scope: !13)
!61 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 61, type: !62, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !81)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !65, !68, !71, !76, !77}
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !68, null}
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !3, line: 60, size: 64, elements: !4)
!81 = !{!82, !83, !84, !85, !86, !87}
!82 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !61, type: !64, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !61, type: !65, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".privates.", arg: 3, scope: !61, type: !68, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !61, type: !71, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !61, type: !76, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "__context", arg: 6, scope: !61, type: !77, flags: DIFlagArtificial)
!88 = !DILocation(line: 0, scope: !61)
!89 = !DILocation(line: 61, column: 5, scope: !61)
!90 = !DILocation(line: 60, column: 1, scope: !61)
!91 = !DILocation(line: 61, column: 11, scope: !61)
!92 = !DILocation(line: 61, column: 12, scope: !61)
!93 = !DILocation(line: 61, column: 7, scope: !61)
!94 = !{!95, !39, i64 0}
!95 = !{!"", !39, i64 0}
!96 = !DILocation(line: 61, column: 6, scope: !61)
!97 = !DILocation(line: 61, column: 14, scope: !61)
!98 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 60, type: !99, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !100)
!99 = !DISubroutineType(types: !4)
!100 = !{!101, !106}
!101 = !DILocalVariable(arg: 1, scope: !98, type: !102, flags: DIFlagArtificial)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!106 = !DILocalVariable(arg: 2, scope: !98, type: !107, flags: DIFlagArtificial)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!111 = !DILocation(line: 0, scope: !98)
!112 = !DILocation(line: 60, column: 1, scope: !98)
!113 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 60, type: !99, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!114 = !{!115, !116}
!115 = !DILocalVariable(arg: 1, scope: !113, type: !16, flags: DIFlagArtificial)
!116 = !DILocalVariable(arg: 2, scope: !113, type: !117, flags: DIFlagArtificial)
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !120)
!120 = !{!121, !127}
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !3, baseType: !122, size: 320)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !123)
!123 = !{!124, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !3, baseType: !125, size: 64, offset: 192)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !3, baseType: !125, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !3, baseType: !105, size: 32, offset: 320)
!128 = !DILocation(line: 0, scope: !113)
!129 = !DILocation(line: 60, column: 1, scope: !113)
!130 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 63, type: !131, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !64, !65, !68, !71, !76, !133}
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !3, line: 62, size: 64, elements: !4)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !130, type: !64, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !130, type: !65, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".privates.", arg: 3, scope: !130, type: !68, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !130, type: !71, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !130, type: !76, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: "__context", arg: 6, scope: !130, type: !133, flags: DIFlagArtificial)
!144 = !DILocation(line: 0, scope: !130)
!145 = !DILocation(line: 63, column: 5, scope: !130)
!146 = !DILocation(line: 62, column: 1, scope: !130)
!147 = !DILocation(line: 63, column: 11, scope: !130)
!148 = !DILocation(line: 63, column: 12, scope: !130)
!149 = !DILocation(line: 63, column: 7, scope: !130)
!150 = !DILocation(line: 63, column: 6, scope: !130)
!151 = !DILocation(line: 63, column: 14, scope: !130)
!152 = distinct !DISubprogram(linkageName: ".omp_task_privates_map..2", scope: !3, file: !3, line: 62, type: !99, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!153 = !{!154, !159}
!154 = !DILocalVariable(arg: 1, scope: !152, type: !155, flags: DIFlagArtificial)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!159 = !DILocalVariable(arg: 2, scope: !152, type: !107, flags: DIFlagArtificial)
!160 = !DILocation(line: 0, scope: !152)
!161 = !DILocation(line: 62, column: 1, scope: !152)
!162 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 62, type: !99, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!163 = !{!164, !165}
!164 = !DILocalVariable(arg: 1, scope: !162, type: !16, flags: DIFlagArtificial)
!165 = !DILocalVariable(arg: 2, scope: !162, type: !166, flags: DIFlagArtificial)
!166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !3, baseType: !122, size: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !3, baseType: !158, size: 32, offset: 320)
!172 = !DILocation(line: 0, scope: !162)
!173 = !DILocation(line: 62, column: 1, scope: !162)
!174 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !175, scopeLine: 77, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{!16}
!177 = !{!178}
!178 = !DILocalVariable(name: "result", scope: !174, file: !3, line: 78, type: !16)
!179 = !DILocation(line: 78, column: 3, scope: !174)
!180 = !DILocation(line: 78, column: 7, scope: !174)
!181 = !DILocation(line: 79, column: 1, scope: !174)
!182 = !DILocation(line: 86, column: 57, scope: !174)
!183 = !DILocation(line: 86, column: 64, scope: !174)
!184 = !DILocation(line: 86, column: 3, scope: !174)
!185 = !DILocation(line: 88, column: 1, scope: !174)
!186 = !DILocation(line: 87, column: 3, scope: !174)
!187 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 80, type: !188, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !191)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !65, !65, !190}
!190 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!191 = !{!192, !193, !194}
!192 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !187, type: !65, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !187, type: !65, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "result", arg: 3, scope: !187, file: !3, line: 78, type: !190)
!195 = !DILocation(line: 0, scope: !187)
!196 = !DILocation(line: 78, column: 7, scope: !187)
!197 = !DILocation(line: 80, column: 3, scope: !187)
!198 = !DILocation(line: 81, column: 4, scope: !199)
!199 = distinct !DILexicalBlock(scope: !187, file: !3, line: 80, column: 3)
!200 = !DILocation(line: 83, column: 20, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 82, column: 5)
!202 = distinct !DILexicalBlock(scope: !199, file: !3, line: 81, column: 4)
!203 = !DILocation(line: 83, column: 16, scope: !201)
!204 = !DILocation(line: 83, column: 14, scope: !201)
!205 = !DILocation(line: 84, column: 5, scope: !201)
!206 = !DILocation(line: 81, column: 22, scope: !202)
!207 = !DILocation(line: 85, column: 3, scope: !187)
!208 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !3, file: !3, line: 79, type: !188, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!209 = !{!210, !211, !212}
!210 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !208, type: !65, flags: DIFlagArtificial)
!211 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !208, type: !65, flags: DIFlagArtificial)
!212 = !DILocalVariable(name: "result", arg: 3, scope: !208, type: !190, flags: DIFlagArtificial)
!213 = !DILocation(line: 0, scope: !208)
!214 = !DILocation(line: 79, column: 1, scope: !208)
!215 = !{!216}
!216 = !{i64 2, i64 -1, i64 -1, i1 true}
