; ModuleID = 'DRB105-taskwait-orig-no.c'
source_filename = "DRB105-taskwait-orig-no.c"
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

@0 = private unnamed_addr constant [38 x i8] c";DRB105-taskwait-orig-no.c;fib;60;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [38 x i8] c";DRB105-taskwait-orig-no.c;fib;62;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [38 x i8] c";DRB105-taskwait-orig-no.c;fib;64;1;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @4, i32 0, i32 0) }, align 8
@input = dso_local global i32 30, align 4, !dbg !0
@6 = private unnamed_addr constant [39 x i8] c";DRB105-taskwait-orig-no.c;main;73;4;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @6, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @6, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant [39 x i8] c";DRB105-taskwait-orig-no.c;main;71;1;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @9, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [12 x i8] c"Fib(%d)=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"result==832040\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"DRB105-taskwait-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fib(i32 %n) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 %n, i32* %n.addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !18, metadata !DIExpression()), !dbg !27
  %1 = load i32, i32* %n.addr, align 4, !dbg !28, !tbaa !23
  %cmp = icmp ult i32 %1, 2, !dbg !29
  br i1 %cmp, label %if.then, label %if.else, !dbg !30

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !dbg !31, !tbaa !23
  store i32 %2, i32* %retval, align 4, !dbg !32
  br label %return, !dbg !32

if.else:                                          ; preds = %entry
  %3 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !34
  %4 = bitcast i32* %j to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %j, metadata !22, metadata !DIExpression()), !dbg !35
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !36
  store i32* %i, i32** %5, align 8, !dbg !36, !tbaa !37
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %0, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !36
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !36
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !36
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !36
  %10 = load i8*, i8** %9, align 8, !dbg !36, !tbaa !39
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !36, !tbaa.struct !43
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 1, !dbg !36
  %13 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %12, i32 0, i32 0, !dbg !36
  %14 = load i32, i32* %n.addr, align 4, !dbg !44, !tbaa !23
  store i32 %14, i32* %13, align 8, !dbg !36, !tbaa !46
  %15 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %0, i8* %6), !dbg !36
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !47
  store i32* %j, i32** %16, align 8, !dbg !47, !tbaa !37
  %17 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %0, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !47
  %18 = bitcast i8* %17 to %struct.kmp_task_t_with_privates.1*, !dbg !47
  %19 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %18, i32 0, i32 0, !dbg !47
  %20 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %19, i32 0, i32 0, !dbg !47
  %21 = load i8*, i8** %20, align 8, !dbg !47, !tbaa !39
  %22 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false), !dbg !47, !tbaa.struct !43
  %23 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %18, i32 0, i32 1, !dbg !47
  %24 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %23, i32 0, i32 0, !dbg !47
  %25 = load i32, i32* %n.addr, align 4, !dbg !48, !tbaa !23
  store i32 %25, i32* %24, align 8, !dbg !47, !tbaa !46
  %26 = call i32 @__kmpc_omp_task(%struct.ident_t* @3, i32 %0, i8* %17), !dbg !47
  %27 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @5, i32 %0), !dbg !50
  %28 = load i32, i32* %i, align 4, !dbg !51, !tbaa !23
  %29 = load i32, i32* %j, align 4, !dbg !52, !tbaa !23
  %add = add nsw i32 %28, %29, !dbg !53
  store i32 %add, i32* %retval, align 4, !dbg !54
  %30 = bitcast i32* %j to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !55
  %31 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !55
  br label %return

return:                                           ; preds = %if.else, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !56
  ret i32 %32, !dbg !56
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !57 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !78, metadata !DIExpression()), !dbg !84
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !79, metadata !DIExpression()), !dbg !84
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !80, metadata !DIExpression()), !dbg !84
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !81, metadata !DIExpression()), !dbg !84
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !82, metadata !DIExpression()), !dbg !84
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !85
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !85
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !85
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !86
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !85
  %4 = load i32, i32* %3, align 4, !dbg !87, !tbaa !23
  %sub = sub i32 %4, 1, !dbg !88
  %call = call i32 @fib(i32 %sub), !dbg !89
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !85
  %6 = load i32*, i32** %5, align 8, !dbg !85, !tbaa !90
  store i32 %call, i32* %6, align 4, !dbg !92, !tbaa !23
  ret void, !dbg !93
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !94 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !97, metadata !DIExpression()), !dbg !107
  store i32** %1, i32*** %.addr1, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !102, metadata !DIExpression()), !dbg !107
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !108
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !108
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !108
  store i32* %3, i32** %4, align 8, !dbg !108, !tbaa !37
  ret void, !dbg !108
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !109 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !111, metadata !DIExpression()), !dbg !124
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !112, metadata !DIExpression()), !dbg !124
  %2 = load i32, i32* %.addr, align 4, !dbg !125, !tbaa !23
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !125
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !125
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !125
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !125
  %7 = load i8*, i8** %6, align 8, !dbg !125, !tbaa !39
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !125
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !125
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !125
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !125
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #5, !dbg !125
  ret i32 0, !dbg !125
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
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #3 !dbg !126 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !134, metadata !DIExpression()), !dbg !140
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !135, metadata !DIExpression()), !dbg !140
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !136, metadata !DIExpression()), !dbg !140
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !137, metadata !DIExpression()), !dbg !140
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !138, metadata !DIExpression()), !dbg !140
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !141
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !141
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !141
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !142
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !141
  %4 = load i32, i32* %3, align 4, !dbg !143, !tbaa !23
  %sub = sub i32 %4, 2, !dbg !144
  %call = call i32 @fib(i32 %sub), !dbg !145
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !141
  %6 = load i32*, i32** %5, align 8, !dbg !141, !tbaa !90
  store i32 %call, i32* %6, align 4, !dbg !146, !tbaa !23
  ret void, !dbg !147
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #3 !dbg !148 {
entry:
  %.addr = alloca %struct..kmp_privates.t.2*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t.2** %.addr, metadata !150, metadata !DIExpression()), !dbg !156
  store i32** %1, i32*** %.addr1, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !155, metadata !DIExpression()), !dbg !156
  %2 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %.addr, align 8, !dbg !157
  %3 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %2, i32 0, i32 0, !dbg !157
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !157
  store i32* %3, i32** %4, align 8, !dbg !157, !tbaa !37
  ret void, !dbg !157
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !158 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !160, metadata !DIExpression()), !dbg !168
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !161, metadata !DIExpression()), !dbg !168
  %2 = load i32, i32* %.addr, align 4, !dbg !169, !tbaa !23
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !169
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !169
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !169
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !169
  %7 = load i8*, i8** %6, align 8, !dbg !169, !tbaa !39
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !169
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 1, !dbg !169
  %10 = bitcast %struct..kmp_privates.t.2* %9 to i8*, !dbg !169
  %11 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !169
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), i8* %11, %struct.anon.0* %8) #5, !dbg !169
  ret i32 0, !dbg !169
}

declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !170 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %result to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %result, metadata !174, metadata !DIExpression()), !dbg !176
  store i32 0, i32* %result, align 4, !dbg !176, !tbaa !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @10, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* %result), !dbg !177
  %1 = load i32, i32* @input, align 4, !dbg !178, !tbaa !23
  %2 = load i32, i32* %result, align 4, !dbg !179, !tbaa !23
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2), !dbg !180
  %3 = load i32, i32* %result, align 4, !dbg !181, !tbaa !23
  %cmp = icmp eq i32 %3, 832040, !dbg !181
  br i1 %cmp, label %if.then, label %if.else, !dbg !184

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !184

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !181
  unreachable, !dbg !181

if.end:                                           ; preds = %if.then
  %4 = bitcast i32* %result to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !185
  ret i32 0, !dbg !186
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %result) #4 !dbg !187 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !192, metadata !DIExpression()), !dbg !195
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !193, metadata !DIExpression()), !dbg !195
  store i32* %result, i32** %result.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !194, metadata !DIExpression()), !dbg !196
  %0 = load i32*, i32** %result.addr, align 8, !dbg !197, !tbaa !37
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !198
  %2 = load i32, i32* %1, align 4, !dbg !198, !tbaa !23
  %3 = call i32 @__kmpc_single(%struct.ident_t* @7, i32 %2), !dbg !198
  %4 = icmp ne i32 %3, 0, !dbg !198
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !198

omp_if.then:                                      ; preds = %entry
  %5 = load i32, i32* @input, align 4, !dbg !200, !tbaa !23
  %call = call i32 @fib(i32 %5), !dbg !203
  store i32 %call, i32* %0, align 4, !dbg !204, !tbaa !23
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !210, metadata !DIExpression()), !dbg !213
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !211, metadata !DIExpression()), !dbg !213
  store i32* %result, i32** %result.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !212, metadata !DIExpression()), !dbg !213
  %0 = load i32*, i32** %result.addr, align 8, !dbg !214, !tbaa !37
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !214, !tbaa !37
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !214, !tbaa !37
  %3 = load i32*, i32** %result.addr, align 8, !dbg !214, !tbaa !37
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !214
  ret void, !dbg !214
}

; Function Attrs: nounwind
declare !callback !215 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare i32 @printf(i8*, ...) #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #7

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 52, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB105-taskwait-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!17 = !{!18, !19, !22}
!18 = !DILocalVariable(name: "n", arg: 1, scope: !13, file: !3, line: 53, type: !6)
!19 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 59, type: !16)
!20 = distinct !DILexicalBlock(scope: !21, file: !3, line: 58, column: 3)
!21 = distinct !DILexicalBlock(scope: !13, file: !3, line: 55, column: 7)
!22 = !DILocalVariable(name: "j", scope: !20, file: !3, line: 59, type: !16)
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 53, column: 22, scope: !13)
!28 = !DILocation(line: 55, column: 7, scope: !21)
!29 = !DILocation(line: 55, column: 8, scope: !21)
!30 = !DILocation(line: 55, column: 7, scope: !13)
!31 = !DILocation(line: 56, column: 12, scope: !21)
!32 = !DILocation(line: 56, column: 5, scope: !21)
!33 = !DILocation(line: 59, column: 5, scope: !20)
!34 = !DILocation(line: 59, column: 9, scope: !20)
!35 = !DILocation(line: 59, column: 12, scope: !20)
!36 = !DILocation(line: 60, column: 1, scope: !20)
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !25, i64 0}
!39 = !{!40, !38, i64 0}
!40 = !{!"kmp_task_t_with_privates", !41, i64 0, !42, i64 40}
!41 = !{!"kmp_task_t", !38, i64 0, !38, i64 8, !24, i64 16, !25, i64 24, !25, i64 32}
!42 = !{!".kmp_privates.t", !24, i64 0}
!43 = !{i64 0, i64 8, !37}
!44 = !DILocation(line: 61, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !20, file: !3, line: 60, column: 1)
!46 = !{!40, !24, i64 40}
!47 = !DILocation(line: 62, column: 1, scope: !20)
!48 = !DILocation(line: 63, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !20, file: !3, line: 62, column: 1)
!50 = !DILocation(line: 64, column: 1, scope: !20)
!51 = !DILocation(line: 65, column: 12, scope: !20)
!52 = !DILocation(line: 65, column: 14, scope: !20)
!53 = !DILocation(line: 65, column: 13, scope: !20)
!54 = !DILocation(line: 65, column: 5, scope: !20)
!55 = !DILocation(line: 66, column: 3, scope: !21)
!56 = !DILocation(line: 67, column: 1, scope: !13)
!57 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 61, type: !58, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !61, !64, !67, !72, !73}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !64, null}
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !3, line: 60, size: 64, elements: !4)
!77 = !{!78, !79, !80, !81, !82, !83}
!78 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !57, type: !60, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !57, type: !61, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".privates.", arg: 3, scope: !57, type: !64, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !57, type: !67, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !57, type: !72, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "__context", arg: 6, scope: !57, type: !73, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !57)
!85 = !DILocation(line: 61, column: 5, scope: !57)
!86 = !DILocation(line: 60, column: 1, scope: !57)
!87 = !DILocation(line: 61, column: 11, scope: !57)
!88 = !DILocation(line: 61, column: 12, scope: !57)
!89 = !DILocation(line: 61, column: 7, scope: !57)
!90 = !{!91, !38, i64 0}
!91 = !{!"", !38, i64 0}
!92 = !DILocation(line: 61, column: 6, scope: !57)
!93 = !DILocation(line: 61, column: 14, scope: !57)
!94 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 60, type: !95, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!95 = !DISubroutineType(types: !4)
!96 = !{!97, !102}
!97 = !DILocalVariable(arg: 1, scope: !94, type: !98, flags: DIFlagArtificial)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!102 = !DILocalVariable(arg: 2, scope: !94, type: !103, flags: DIFlagArtificial)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!107 = !DILocation(line: 0, scope: !94)
!108 = !DILocation(line: 60, column: 1, scope: !94)
!109 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 60, type: !95, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!110 = !{!111, !112}
!111 = !DILocalVariable(arg: 1, scope: !109, type: !16, flags: DIFlagArtificial)
!112 = !DILocalVariable(arg: 2, scope: !109, type: !113, flags: DIFlagArtificial)
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !116)
!116 = !{!117, !123}
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !3, baseType: !118, size: 320)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !119)
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !3, baseType: !121, size: 64, offset: 192)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !3, baseType: !121, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !3, baseType: !101, size: 32, offset: 320)
!124 = !DILocation(line: 0, scope: !109)
!125 = !DILocation(line: 60, column: 1, scope: !109)
!126 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 63, type: !127, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !60, !61, !64, !67, !72, !129}
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !3, line: 62, size: 64, elements: !4)
!133 = !{!134, !135, !136, !137, !138, !139}
!134 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !126, type: !60, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !126, type: !61, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".privates.", arg: 3, scope: !126, type: !64, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !126, type: !67, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !126, type: !72, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: "__context", arg: 6, scope: !126, type: !129, flags: DIFlagArtificial)
!140 = !DILocation(line: 0, scope: !126)
!141 = !DILocation(line: 63, column: 5, scope: !126)
!142 = !DILocation(line: 62, column: 1, scope: !126)
!143 = !DILocation(line: 63, column: 11, scope: !126)
!144 = !DILocation(line: 63, column: 12, scope: !126)
!145 = !DILocation(line: 63, column: 7, scope: !126)
!146 = !DILocation(line: 63, column: 6, scope: !126)
!147 = !DILocation(line: 63, column: 14, scope: !126)
!148 = distinct !DISubprogram(linkageName: ".omp_task_privates_map..2", scope: !3, file: !3, line: 62, type: !95, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!149 = !{!150, !155}
!150 = !DILocalVariable(arg: 1, scope: !148, type: !151, flags: DIFlagArtificial)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!155 = !DILocalVariable(arg: 2, scope: !148, type: !103, flags: DIFlagArtificial)
!156 = !DILocation(line: 0, scope: !148)
!157 = !DILocation(line: 62, column: 1, scope: !148)
!158 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 62, type: !95, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!159 = !{!160, !161}
!160 = !DILocalVariable(arg: 1, scope: !158, type: !16, flags: DIFlagArtificial)
!161 = !DILocalVariable(arg: 2, scope: !158, type: !162, flags: DIFlagArtificial)
!162 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !3, baseType: !118, size: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !3, baseType: !154, size: 32, offset: 320)
!168 = !DILocation(line: 0, scope: !158)
!169 = !DILocation(line: 62, column: 1, scope: !158)
!170 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !171, scopeLine: 69, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{!16}
!173 = !{!174}
!174 = !DILocalVariable(name: "result", scope: !170, file: !3, line: 70, type: !16)
!175 = !DILocation(line: 70, column: 3, scope: !170)
!176 = !DILocation(line: 70, column: 7, scope: !170)
!177 = !DILocation(line: 71, column: 1, scope: !170)
!178 = !DILocation(line: 78, column: 27, scope: !170)
!179 = !DILocation(line: 78, column: 34, scope: !170)
!180 = !DILocation(line: 78, column: 3, scope: !170)
!181 = !DILocation(line: 79, column: 3, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 79, column: 3)
!183 = distinct !DILexicalBlock(scope: !170, file: !3, line: 79, column: 3)
!184 = !DILocation(line: 79, column: 3, scope: !183)
!185 = !DILocation(line: 81, column: 1, scope: !170)
!186 = !DILocation(line: 80, column: 3, scope: !170)
!187 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 72, type: !188, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !191)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !61, !61, !190}
!190 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!191 = !{!192, !193, !194}
!192 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !187, type: !61, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !187, type: !61, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "result", arg: 3, scope: !187, file: !3, line: 70, type: !190)
!195 = !DILocation(line: 0, scope: !187)
!196 = !DILocation(line: 70, column: 7, scope: !187)
!197 = !DILocation(line: 72, column: 3, scope: !187)
!198 = !DILocation(line: 73, column: 4, scope: !199)
!199 = distinct !DILexicalBlock(scope: !187, file: !3, line: 72, column: 3)
!200 = !DILocation(line: 75, column: 20, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 74, column: 5)
!202 = distinct !DILexicalBlock(scope: !199, file: !3, line: 73, column: 4)
!203 = !DILocation(line: 75, column: 16, scope: !201)
!204 = !DILocation(line: 75, column: 14, scope: !201)
!205 = !DILocation(line: 76, column: 5, scope: !201)
!206 = !DILocation(line: 73, column: 22, scope: !202)
!207 = !DILocation(line: 77, column: 3, scope: !187)
!208 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !3, file: !3, line: 71, type: !188, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!209 = !{!210, !211, !212}
!210 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !208, type: !61, flags: DIFlagArtificial)
!211 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !208, type: !61, flags: DIFlagArtificial)
!212 = !DILocalVariable(name: "result", arg: 3, scope: !208, type: !190, flags: DIFlagArtificial)
!213 = !DILocation(line: 0, scope: !208)
!214 = !DILocation(line: 71, column: 1, scope: !208)
!215 = !{!216}
!216 = !{i64 2, i64 -1, i64 -1, i1 true}
