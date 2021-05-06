; ModuleID = 'DRB095-doall2-taskloop-orig-yes.c'
source_filename = "DRB095-doall2-taskloop-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t, i64, i64, i64, i32, i8* }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [47 x i8] c";DRB095-doall2-taskloop-orig-yes.c;main;65;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [47 x i8] c";DRB095-doall2-taskloop-orig-yes.c;main;67;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [47 x i8] c";DRB095-doall2-taskloop-orig-yes.c;main;63;1;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @5, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"a[50][50]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !23
  %1 = bitcast i32* %j to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %j, metadata !21, metadata !DIExpression()), !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @6, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %j), !dbg !25
  %2 = load i32, i32* getelementptr inbounds ([100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 50, i64 50), align 8, !dbg !26, !tbaa !27
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %2), !dbg !31
  %3 = bitcast i32* %j to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !32
  %4 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !32
  ret i32 0, !dbg !33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %j) #3 !dbg !34 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 8
  %tmp = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !43, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !44, metadata !DIExpression()), !dbg !48
  store i32* %j, i32** %j.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !45, metadata !DIExpression()), !dbg !49
  %0 = load i32*, i32** %j.addr, align 8, !dbg !50, !tbaa !46
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %2 = load i32, i32* %1, align 4, !dbg !51, !tbaa !27
  %3 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %2), !dbg !51
  %4 = icmp ne i32 %3, 0, !dbg !51
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !51

omp_if.then:                                      ; preds = %entry
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !53
  store i32* %0, i32** %5, align 8, !dbg !53, !tbaa !46
  call void @__kmpc_taskgroup(%struct.ident_t* @3, i32 %2), !dbg !56
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %2, i32 1, i64 80, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !53
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !53
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !53
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !53
  %10 = load i8*, i8** %9, align 8, !dbg !53, !tbaa !58
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !53, !tbaa.struct !62
  %12 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 5, !dbg !53
  store i64 0, i64* %12, align 8, !dbg !53, !tbaa !63
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 6, !dbg !53
  store i64 99, i64* %13, align 8, !dbg !53, !tbaa !63
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 7, !dbg !53
  store i64 1, i64* %14, align 8, !dbg !53, !tbaa !63
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 9, !dbg !53
  %16 = bitcast i8** %15 to i8*, !dbg !53
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false), !dbg !53
  %17 = load i64, i64* %14, align 8, !dbg !53, !tbaa !64
  call void @__kmpc_taskloop(%struct.ident_t* @3, i32 %2, i8* %6, i32 1, i64* %12, i64* %13, i64 %17, i32 1, i32 0, i64 0, i8* null), !dbg !53
  call void @__kmpc_end_taskgroup(%struct.ident_t* @3, i32 %2), !dbg !65
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %2), !dbg !67
  br label %omp_if.end, !dbg !67

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %2), !dbg !68
  ret void, !dbg !69
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare void @__kmpc_end_taskgroup(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare void @__kmpc_taskgroup(%struct.ident_t*, i32) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., i64 %.lb., i64 %.ub., i64 %.st., i32 %.liter., i8* noalias %.reductions., %struct.anon* noalias %__context) #5 !dbg !70 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %.lb..addr = alloca i64, align 8
  %.ub..addr = alloca i64, align 8
  %.st..addr = alloca i64, align 8
  %.liter..addr = alloca i32, align 4
  %.reductions..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !91, metadata !DIExpression()), !dbg !104
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !92, metadata !DIExpression()), !dbg !104
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !93, metadata !DIExpression()), !dbg !104
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !94, metadata !DIExpression()), !dbg !104
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !95, metadata !DIExpression()), !dbg !104
  store i64 %.lb., i64* %.lb..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i64* %.lb..addr, metadata !96, metadata !DIExpression()), !dbg !104
  store i64 %.ub., i64* %.ub..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i64* %.ub..addr, metadata !97, metadata !DIExpression()), !dbg !104
  store i64 %.st., i64* %.st..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i64* %.st..addr, metadata !98, metadata !DIExpression()), !dbg !104
  store i32 %.liter., i32* %.liter..addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.liter..addr, metadata !99, metadata !DIExpression()), !dbg !104
  store i8* %.reductions., i8** %.reductions..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i8** %.reductions..addr, metadata !100, metadata !DIExpression()), !dbg !104
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !101, metadata !DIExpression()), !dbg !104
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !105
  %1 = bitcast i32* %i to i8*, !dbg !105
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !104
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !105
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !103, metadata !DIExpression()), !dbg !104
  %3 = load i64, i64* %.lb..addr, align 8, !dbg !106, !tbaa !63
  %conv = trunc i64 %3 to i32, !dbg !106
  store i32 %conv, i32* %.omp.iv, align 4, !dbg !106, !tbaa !27
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !107
  %5 = load i32*, i32** %4, align 8, !dbg !107, !tbaa !109
  br label %omp.inner.for.cond, !dbg !111

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %6 = load i32, i32* %.omp.iv, align 4, !dbg !112, !tbaa !27
  %conv1 = sext i32 %6 to i64, !dbg !112
  %7 = load i64, i64* %.ub..addr, align 8, !dbg !112, !tbaa !63
  %cmp = icmp ule i64 %conv1, %7, !dbg !113
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !111

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !111

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !112, !tbaa !27
  %mul = mul nsw i32 %8, 1, !dbg !114
  %add = add nsw i32 0, %mul, !dbg !114
  store i32 %add, i32* %i, align 4, !dbg !114, !tbaa !27
  store i32 0, i32* %5, align 4, !dbg !115, !tbaa !27
  br label %for.cond, !dbg !117

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %9 = load i32, i32* %5, align 4, !dbg !118, !tbaa !27
  %cmp3 = icmp slt i32 %9, 100, !dbg !120
  br i1 %cmp3, label %for.body, label %for.end, !dbg !121

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !122, !tbaa !27
  %idxprom = sext i32 %10 to i64, !dbg !123
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !123
  %11 = load i32, i32* %5, align 4, !dbg !124, !tbaa !27
  %idxprom5 = sext i32 %11 to i64, !dbg !123
  %arrayidx6 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom5, !dbg !123
  %12 = load i32, i32* %arrayidx6, align 4, !dbg !125, !tbaa !27
  %add7 = add nsw i32 %12, 1, !dbg !125
  store i32 %add7, i32* %arrayidx6, align 4, !dbg !125, !tbaa !27
  br label %for.inc, !dbg !123

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %5, align 4, !dbg !126, !tbaa !27
  %inc = add nsw i32 %13, 1, !dbg !126
  store i32 %inc, i32* %5, align 4, !dbg !126, !tbaa !27
  br label %for.cond, !dbg !127, !llvm.loop !128

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !129

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !131

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !112, !tbaa !27
  %add8 = add nsw i32 %14, 1, !dbg !113
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !113, !tbaa !27
  br label %omp.inner.for.cond, !dbg !131, !llvm.loop !132

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %15 = bitcast i32* %.omp.iv to i8*, !dbg !133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4, !dbg !133
  %16 = bitcast i32* %i to i8*, !dbg !133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !133
  ret void, !dbg !134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !135 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !138, metadata !DIExpression()), !dbg !150
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !139, metadata !DIExpression()), !dbg !150
  %2 = load i32, i32* %.addr, align 4, !dbg !151, !tbaa !27
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !151
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !151
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !151
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !151
  %7 = load i8*, i8** %6, align 8, !dbg !151, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !151
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !151
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 5, !dbg !151
  %11 = load i64, i64* %10, align 8, !dbg !151, !tbaa !152
  %12 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 6, !dbg !151
  %13 = load i64, i64* %12, align 8, !dbg !151, !tbaa !153
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 7, !dbg !151
  %15 = load i64, i64* %14, align 8, !dbg !151, !tbaa !64
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 8, !dbg !151
  %17 = load i32, i32* %16, align 8, !dbg !151, !tbaa !154
  %18 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 9, !dbg !151
  %19 = load i8*, i8** %18, align 8, !dbg !151, !tbaa !155
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, i64 %11, i64 %13, i64 %15, i32 %17, i8* %19, %struct.anon* %8) #4, !dbg !151
  ret i32 0, !dbg !151
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*) #4

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %j) #3 !dbg !156 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !158, metadata !DIExpression()), !dbg !161
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !159, metadata !DIExpression()), !dbg !161
  store i32* %j, i32** %j.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = load i32*, i32** %j.addr, align 8, !dbg !162, !tbaa !46
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !162, !tbaa !46
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !162, !tbaa !46
  %3 = load i32*, i32** %j.addr, align 8, !dbg !162, !tbaa !46
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !162
  ret void, !dbg !162
}

; Function Attrs: nounwind
declare !callback !163 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #7

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn writeonly }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 59, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB095-doall2-taskloop-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320000, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !17, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7}
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 62, type: !7)
!21 = !DILocalVariable(name: "j", scope: !16, file: !3, line: 62, type: !7)
!22 = !DILocation(line: 62, column: 3, scope: !16)
!23 = !DILocation(line: 62, column: 7, scope: !16)
!24 = !DILocation(line: 62, column: 10, scope: !16)
!25 = !DILocation(line: 63, column: 1, scope: !16)
!26 = !DILocation(line: 73, column: 29, scope: !16)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 73, column: 3, scope: !16)
!32 = !DILocation(line: 75, column: 1, scope: !16)
!33 = !DILocation(line: 74, column: 3, scope: !16)
!34 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 64, type: !35, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37, !41}
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!41 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!42 = !{!43, !44, !45}
!43 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !34, type: !37, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !34, type: !37, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "j", arg: 3, scope: !34, file: !3, line: 62, type: !41)
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !29, i64 0}
!48 = !DILocation(line: 0, scope: !34)
!49 = !DILocation(line: 62, column: 10, scope: !34)
!50 = !DILocation(line: 64, column: 3, scope: !34)
!51 = !DILocation(line: 65, column: 1, scope: !52)
!52 = distinct !DILexicalBlock(scope: !34, file: !3, line: 64, column: 3)
!53 = !DILocation(line: 67, column: 1, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 66, column: 5)
!55 = distinct !DILexicalBlock(scope: !52, file: !3, line: 65, column: 1)
!56 = !DILocation(line: 67, column: 21, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !3, line: 67, column: 1)
!58 = !{!59, !47, i64 0}
!59 = !{!"kmp_task_t_with_privates", !60, i64 0}
!60 = !{!"kmp_task_t", !47, i64 0, !47, i64 8, !28, i64 16, !29, i64 24, !29, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !28, i64 64, !47, i64 72}
!61 = !{!"long", !29, i64 0}
!62 = !{i64 0, i64 8, !46}
!63 = !{!61, !61, i64 0}
!64 = !{!59, !61, i64 56}
!65 = !DILocation(line: 67, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !54, file: !3, line: 67, column: 1)
!67 = !DILocation(line: 71, column: 5, scope: !54)
!68 = !DILocation(line: 65, column: 19, scope: !55)
!69 = !DILocation(line: 72, column: 3, scope: !34)
!70 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 67, type: !71, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !40, !37, !73, !76, !81, !82, !82, !84, !40, !73, !86}
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !73, null}
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 67, size: 64, elements: !4)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!91 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !40, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !70, type: !37, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".privates.", arg: 3, scope: !70, type: !73, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !70, type: !76, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !70, type: !81, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".lb.", arg: 6, scope: !70, type: !82, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".ub.", arg: 7, scope: !70, type: !82, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".st.", arg: 8, scope: !70, type: !84, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".liter.", arg: 9, scope: !70, type: !40, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".reductions.", arg: 10, scope: !70, type: !73, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "__context", arg: 11, scope: !70, type: !86, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "i", scope: !70, type: !7, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.iv", scope: !70, type: !7, flags: DIFlagArtificial)
!104 = !DILocation(line: 0, scope: !70)
!105 = !DILocation(line: 68, column: 7, scope: !70)
!106 = !DILocation(line: 68, column: 12, scope: !70)
!107 = !DILocation(line: 69, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !70, file: !3, line: 67, column: 1)
!109 = !{!110, !47, i64 0}
!110 = !{!"", !47, i64 0}
!111 = !DILocation(line: 67, column: 1, scope: !70)
!112 = !DILocation(line: 68, column: 12, scope: !108)
!113 = !DILocation(line: 68, column: 7, scope: !108)
!114 = !DILocation(line: 68, column: 28, scope: !108)
!115 = !DILocation(line: 69, column: 16, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !3, line: 69, column: 9)
!117 = !DILocation(line: 69, column: 14, scope: !116)
!118 = !DILocation(line: 69, column: 21, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !3, line: 69, column: 9)
!120 = !DILocation(line: 69, column: 23, scope: !119)
!121 = !DILocation(line: 69, column: 9, scope: !116)
!122 = !DILocation(line: 70, column: 13, scope: !119)
!123 = !DILocation(line: 70, column: 11, scope: !119)
!124 = !DILocation(line: 70, column: 16, scope: !119)
!125 = !DILocation(line: 70, column: 18, scope: !119)
!126 = !DILocation(line: 69, column: 31, scope: !119)
!127 = !DILocation(line: 69, column: 9, scope: !119)
!128 = distinct !{!128, !121, !129, !130}
!129 = !DILocation(line: 70, column: 20, scope: !116)
!130 = !{!"llvm.loop.unroll.disable"}
!131 = !DILocation(line: 67, column: 1, scope: !108)
!132 = distinct !{!132, !131, !133}
!133 = !DILocation(line: 67, column: 21, scope: !108)
!134 = !DILocation(line: 70, column: 20, scope: !70)
!135 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 67, type: !136, scopeLine: 67, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!136 = !DISubroutineType(types: !4)
!137 = !{!138, !139}
!138 = !DILocalVariable(arg: 1, scope: !135, type: !7, flags: DIFlagArtificial)
!139 = !DILocalVariable(arg: 2, scope: !135, type: !140, flags: DIFlagArtificial)
!140 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 640, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !3, baseType: !145, size: 640)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 640, elements: !146)
!146 = !{!147, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !3, baseType: !148, size: 64, offset: 192)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !3, baseType: !148, size: 64, offset: 256)
!150 = !DILocation(line: 0, scope: !135)
!151 = !DILocation(line: 67, column: 1, scope: !135)
!152 = !{!59, !61, i64 40}
!153 = !{!59, !61, i64 48}
!154 = !{!59, !28, i64 64}
!155 = !{!59, !47, i64 72}
!156 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 63, type: !35, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!157 = !{!158, !159, !160}
!158 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !156, type: !37, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !156, type: !37, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: "j", arg: 3, scope: !156, type: !41, flags: DIFlagArtificial)
!161 = !DILocation(line: 0, scope: !156)
!162 = !DILocation(line: 63, column: 1, scope: !156)
!163 = !{!164}
!164 = !{i64 2, i64 -1, i64 -1, i1 true}
