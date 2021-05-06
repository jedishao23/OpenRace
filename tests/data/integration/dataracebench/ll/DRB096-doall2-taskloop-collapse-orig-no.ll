; ModuleID = 'DRB096-doall2-taskloop-collapse-orig-no.c'
source_filename = "DRB096-doall2-taskloop-collapse-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t, i64, i64, i64, i32, i8* }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [55 x i8] c";DRB096-doall2-taskloop-collapse-orig-no.c;main;63;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [55 x i8] c";DRB096-doall2-taskloop-collapse-orig-no.c;main;65;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [55 x i8] c";DRB096-doall2-taskloop-collapse-orig-no.c;main;61;1;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @5, i32 0, i32 0) }, align 8
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
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @6, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*)), !dbg !25
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
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !34 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 1
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !42, metadata !DIExpression()), !dbg !46
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !43, metadata !DIExpression()), !dbg !46
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !47
  %1 = load i32, i32* %0, align 4, !dbg !47, !tbaa !27
  %2 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %1), !dbg !47
  %3 = icmp ne i32 %2, 0, !dbg !47
  br i1 %3, label %omp_if.then, label %omp_if.end, !dbg !47

omp_if.then:                                      ; preds = %entry
  call void @__kmpc_taskgroup(%struct.ident_t* @3, i32 %1), !dbg !49
  %4 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %1, i32 1, i64 80, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !53
  %5 = bitcast i8* %4 to %struct.kmp_task_t_with_privates*, !dbg !53
  %6 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %5, i32 0, i32 0, !dbg !53
  %7 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %6, i32 0, i32 5, !dbg !53
  store i64 0, i64* %7, align 8, !dbg !53, !tbaa !54
  %8 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %6, i32 0, i32 6, !dbg !53
  store i64 9999, i64* %8, align 8, !dbg !53, !tbaa !54
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %6, i32 0, i32 7, !dbg !53
  store i64 1, i64* %9, align 8, !dbg !53, !tbaa !54
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %6, i32 0, i32 9, !dbg !53
  %11 = bitcast i8** %10 to i8*, !dbg !53
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false), !dbg !53
  %12 = load i64, i64* %9, align 8, !dbg !53, !tbaa !56
  call void @__kmpc_taskloop(%struct.ident_t* @3, i32 %1, i8* %4, i32 1, i64* %7, i64* %8, i64 %12, i32 1, i32 0, i64 0, i8* null), !dbg !53
  call void @__kmpc_end_taskgroup(%struct.ident_t* @3, i32 %1), !dbg !59
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %1), !dbg !61
  br label %omp_if.end, !dbg !61

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %1), !dbg !62
  ret void, !dbg !63
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
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., i64 %.lb., i64 %.ub., i64 %.st., i32 %.liter., i8* noalias %.reductions., %struct.anon* noalias %__context) #5 !dbg !64 {
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
  %tmp1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !85, metadata !DIExpression()), !dbg !99
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !86, metadata !DIExpression()), !dbg !99
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !87, metadata !DIExpression()), !dbg !99
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !88, metadata !DIExpression()), !dbg !99
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !89, metadata !DIExpression()), !dbg !99
  store i64 %.lb., i64* %.lb..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i64* %.lb..addr, metadata !90, metadata !DIExpression()), !dbg !99
  store i64 %.ub., i64* %.ub..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i64* %.ub..addr, metadata !91, metadata !DIExpression()), !dbg !99
  store i64 %.st., i64* %.st..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i64* %.st..addr, metadata !92, metadata !DIExpression()), !dbg !99
  store i32 %.liter., i32* %.liter..addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.liter..addr, metadata !93, metadata !DIExpression()), !dbg !99
  store i8* %.reductions., i8** %.reductions..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i8** %.reductions..addr, metadata !94, metadata !DIExpression()), !dbg !99
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !95, metadata !DIExpression()), !dbg !99
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !100
  %1 = bitcast i32* %i to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !99
  %2 = bitcast i32* %j to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %j, metadata !97, metadata !DIExpression()), !dbg !99
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !98, metadata !DIExpression()), !dbg !99
  %4 = load i64, i64* %.lb..addr, align 8, !dbg !101, !tbaa !54
  %conv = trunc i64 %4 to i32, !dbg !101
  store i32 %conv, i32* %.omp.iv, align 4, !dbg !101, !tbaa !27
  br label %omp.inner.for.cond, !dbg !102

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i32, i32* %.omp.iv, align 4, !dbg !103, !tbaa !27
  %conv2 = sext i32 %5 to i64, !dbg !103
  %6 = load i64, i64* %.ub..addr, align 8, !dbg !103, !tbaa !54
  %cmp = icmp ule i64 %conv2, %6, !dbg !105
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !102

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !102

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %7 = load i32, i32* %.omp.iv, align 4, !dbg !103, !tbaa !27
  %div = sdiv i32 %7, 100, !dbg !106
  %mul = mul nsw i32 %div, 1, !dbg !106
  %add = add nsw i32 0, %mul, !dbg !106
  store i32 %add, i32* %i, align 4, !dbg !106, !tbaa !27
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !103, !tbaa !27
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !103, !tbaa !27
  %div4 = sdiv i32 %9, 100, !dbg !106
  %mul5 = mul nsw i32 %div4, 100, !dbg !106
  %sub = sub nsw i32 %8, %mul5, !dbg !106
  %mul6 = mul nsw i32 %sub, 1, !dbg !107
  %add7 = add nsw i32 0, %mul6, !dbg !107
  store i32 %add7, i32* %j, align 4, !dbg !107, !tbaa !27
  %10 = load i32, i32* %i, align 4, !dbg !108, !tbaa !27
  %idxprom = sext i32 %10 to i64, !dbg !109
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !109
  %11 = load i32, i32* %j, align 4, !dbg !110, !tbaa !27
  %idxprom8 = sext i32 %11 to i64, !dbg !109
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom8, !dbg !109
  %12 = load i32, i32* %arrayidx9, align 4, !dbg !111, !tbaa !27
  %add10 = add nsw i32 %12, 1, !dbg !111
  store i32 %add10, i32* %arrayidx9, align 4, !dbg !111, !tbaa !27
  br label %omp.body.continue, !dbg !109

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !112

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !103, !tbaa !27
  %add11 = add nsw i32 %13, 1, !dbg !105
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !105, !tbaa !27
  br label %omp.inner.for.cond, !dbg !112, !llvm.loop !113

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %14 = bitcast i32* %.omp.iv to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !114
  %15 = bitcast i32* %j to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4, !dbg !114
  %16 = bitcast i32* %i to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !114
  ret void, !dbg !115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !116 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !119, metadata !DIExpression()), !dbg !131
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !120, metadata !DIExpression()), !dbg !131
  %2 = load i32, i32* %.addr, align 4, !dbg !132, !tbaa !27
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !132
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !132
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !132
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !132
  %7 = load i8*, i8** %6, align 8, !dbg !132, !tbaa !133
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !132
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !132
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 5, !dbg !132
  %11 = load i64, i64* %10, align 8, !dbg !132, !tbaa !134
  %12 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 6, !dbg !132
  %13 = load i64, i64* %12, align 8, !dbg !132, !tbaa !135
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 7, !dbg !132
  %15 = load i64, i64* %14, align 8, !dbg !132, !tbaa !56
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 8, !dbg !132
  %17 = load i32, i32* %16, align 8, !dbg !132, !tbaa !136
  %18 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 9, !dbg !132
  %19 = load i8*, i8** %18, align 8, !dbg !132, !tbaa !137
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, i64 %11, i64 %13, i64 %15, i32 %17, i8* %19, %struct.anon* %8) #4, !dbg !132
  ret i32 0, !dbg !132
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*) #4

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !138 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !140, metadata !DIExpression()), !dbg !142
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !143, !tbaa !44
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !143, !tbaa !44
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !143
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare !callback !144 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 57, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB096-doall2-taskloop-collapse-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !17, scopeLine: 59, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7}
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 60, type: !7)
!21 = !DILocalVariable(name: "j", scope: !16, file: !3, line: 60, type: !7)
!22 = !DILocation(line: 60, column: 3, scope: !16)
!23 = !DILocation(line: 60, column: 7, scope: !16)
!24 = !DILocation(line: 60, column: 10, scope: !16)
!25 = !DILocation(line: 61, column: 1, scope: !16)
!26 = !DILocation(line: 71, column: 29, scope: !16)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 71, column: 3, scope: !16)
!32 = !DILocation(line: 73, column: 1, scope: !16)
!33 = !DILocation(line: 72, column: 3, scope: !16)
!34 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 62, type: !35, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37}
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!41 = !{!42, !43}
!42 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !34, type: !37, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !34, type: !37, flags: DIFlagArtificial)
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !29, i64 0}
!46 = !DILocation(line: 0, scope: !34)
!47 = !DILocation(line: 63, column: 1, scope: !48)
!48 = distinct !DILexicalBlock(scope: !34, file: !3, line: 62, column: 3)
!49 = !DILocation(line: 65, column: 33, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 65, column: 1)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 64, column: 5)
!52 = distinct !DILexicalBlock(scope: !48, file: !3, line: 63, column: 1)
!53 = !DILocation(line: 65, column: 1, scope: !51)
!54 = !{!55, !55, i64 0}
!55 = !{!"long", !29, i64 0}
!56 = !{!57, !55, i64 56}
!57 = !{!"kmp_task_t_with_privates", !58, i64 0}
!58 = !{!"kmp_task_t", !45, i64 0, !45, i64 8, !28, i64 16, !29, i64 24, !29, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !28, i64 64, !45, i64 72}
!59 = !DILocation(line: 65, column: 33, scope: !60)
!60 = distinct !DILexicalBlock(scope: !51, file: !3, line: 65, column: 1)
!61 = !DILocation(line: 69, column: 5, scope: !51)
!62 = !DILocation(line: 63, column: 19, scope: !52)
!63 = !DILocation(line: 70, column: 3, scope: !34)
!64 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 65, type: !65, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !40, !37, !67, !70, !75, !76, !76, !78, !40, !67, !80}
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !67, null}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 65, elements: !4)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!85 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !40, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !64, type: !37, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".privates.", arg: 3, scope: !64, type: !67, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !64, type: !70, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !64, type: !75, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".lb.", arg: 6, scope: !64, type: !76, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".ub.", arg: 7, scope: !64, type: !76, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".st.", arg: 8, scope: !64, type: !78, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".liter.", arg: 9, scope: !64, type: !40, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".reductions.", arg: 10, scope: !64, type: !67, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "__context", arg: 11, scope: !64, type: !80, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "i", scope: !64, type: !7, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "j", scope: !64, type: !7, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.iv", scope: !64, type: !7, flags: DIFlagArtificial)
!99 = !DILocation(line: 0, scope: !64)
!100 = !DILocation(line: 66, column: 7, scope: !64)
!101 = !DILocation(line: 66, column: 12, scope: !64)
!102 = !DILocation(line: 65, column: 1, scope: !64)
!103 = !DILocation(line: 66, column: 12, scope: !104)
!104 = distinct !DILexicalBlock(scope: !64, file: !3, line: 65, column: 1)
!105 = !DILocation(line: 66, column: 7, scope: !104)
!106 = !DILocation(line: 66, column: 28, scope: !104)
!107 = !DILocation(line: 67, column: 30, scope: !104)
!108 = !DILocation(line: 68, column: 13, scope: !104)
!109 = !DILocation(line: 68, column: 11, scope: !104)
!110 = !DILocation(line: 68, column: 16, scope: !104)
!111 = !DILocation(line: 68, column: 18, scope: !104)
!112 = !DILocation(line: 65, column: 1, scope: !104)
!113 = distinct !{!113, !112, !114}
!114 = !DILocation(line: 65, column: 33, scope: !104)
!115 = !DILocation(line: 68, column: 20, scope: !64)
!116 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 65, type: !117, scopeLine: 65, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!117 = !DISubroutineType(types: !4)
!118 = !{!119, !120}
!119 = !DILocalVariable(arg: 1, scope: !116, type: !7, flags: DIFlagArtificial)
!120 = !DILocalVariable(arg: 2, scope: !116, type: !121, flags: DIFlagArtificial)
!121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 640, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !3, baseType: !126, size: 640)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 640, elements: !127)
!127 = !{!128, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !3, baseType: !129, size: 64, offset: 192)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !3, baseType: !129, size: 64, offset: 256)
!131 = !DILocation(line: 0, scope: !116)
!132 = !DILocation(line: 65, column: 1, scope: !116)
!133 = !{!57, !45, i64 0}
!134 = !{!57, !55, i64 40}
!135 = !{!57, !55, i64 48}
!136 = !{!57, !28, i64 64}
!137 = !{!57, !45, i64 72}
!138 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 61, type: !35, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !139)
!139 = !{!140, !141}
!140 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !138, type: !37, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !138, type: !37, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !138)
!143 = !DILocation(line: 61, column: 1, scope: !138)
!144 = !{!145}
!145 = !{i64 2, i64 -1, i64 -1, i1 true}
