; ModuleID = 'DRB158-missingtaskbarrier-orig-gpu-no.c'
source_filename = "DRB158-missingtaskbarrier-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }

@a = dso_local global float 0.000000e+00, align 4, !dbg !0
@x = dso_local global [64 x float] zeroinitializer, align 16, !dbg !6
@y = dso_local global [64 x float] zeroinitializer, align 16, !dbg !12
@0 = private unnamed_addr constant [53 x i8] c";DRB158-missingtaskbarrier-orig-gpu-no.c;main;33;7;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [53 x i8] c";DRB158-missingtaskbarrier-orig-gpu-no.c;main;37;7;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [20 x i8] c"Data Race Detected\0A\00", align 1
@4 = private unnamed_addr constant [53 x i8] c";DRB158-missingtaskbarrier-orig-gpu-no.c;main;51;3;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @4, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @5)
  store i32 0, i32* %retval, align 4
  %1 = bitcast i32* %i to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %i, metadata !25, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %i, align 4, !dbg !30, !tbaa !31
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !35, !tbaa !31
  %cmp = icmp slt i32 %2, 64, !dbg !37
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !38

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !39
  br label %for.end

for.body:                                         ; preds = %for.cond
  store float 5.000000e+00, float* @a, align 4, !dbg !40, !tbaa !42
  %4 = load i32, i32* %i, align 4, !dbg !44, !tbaa !31
  %idxprom = sext i32 %4 to i64, !dbg !45
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom, !dbg !45
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !46, !tbaa !42
  %5 = load i32, i32* %i, align 4, !dbg !47, !tbaa !31
  %idxprom1 = sext i32 %5 to i64, !dbg !48
  %arrayidx2 = getelementptr inbounds [64 x float], [64 x float]* @y, i64 0, i64 %idxprom1, !dbg !48
  store float 3.000000e+00, float* %arrayidx2, align 4, !dbg !49, !tbaa !42
  br label %for.inc, !dbg !50

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !51, !tbaa !31
  %inc = add nsw i32 %6, 1, !dbg !51
  store i32 %inc, i32* %i, align 4, !dbg !51, !tbaa !31
  br label %for.cond, !dbg !39, !llvm.loop !52

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_10308_be0486_main_l30([64 x float]* @x) #5, !dbg !55
  %7 = bitcast i32* %i3 to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !27, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %i3, align 4, !dbg !58, !tbaa !31
  br label %for.cond4, !dbg !57

for.cond4:                                        ; preds = %for.inc11, %for.end
  %8 = load i32, i32* %i3, align 4, !dbg !59, !tbaa !31
  %cmp5 = icmp slt i32 %8, 64, !dbg !61
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !62

for.cond.cleanup6:                                ; preds = %for.cond4
  store i32 5, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !62

for.body7:                                        ; preds = %for.cond4
  %9 = load i32, i32* %i3, align 4, !dbg !63, !tbaa !31
  %idxprom8 = sext i32 %9 to i64, !dbg !66
  %arrayidx9 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom8, !dbg !66
  %10 = load float, float* %arrayidx9, align 4, !dbg !66, !tbaa !42
  %cmp10 = fcmp une float %10, 3.000000e+00, !dbg !67
  br i1 %cmp10, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %for.body7
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)), !dbg !69
  store i32 0, i32* %retval, align 4, !dbg !71
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !71

if.end:                                           ; preds = %for.body7
  br label %for.inc11, !dbg !72

for.inc11:                                        ; preds = %if.end
  %11 = load i32, i32* %i3, align 4, !dbg !73, !tbaa !31
  %inc12 = add nsw i32 %11, 1, !dbg !73
  store i32 %inc12, i32* %i3, align 4, !dbg !73, !tbaa !31
  br label %for.cond4, !dbg !74, !llvm.loop !75

cleanup:                                          ; preds = %if.then, %for.cond.cleanup6
  %12 = bitcast i32* %i3 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !74
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 5, label %for.end13
    i32 1, label %return
  ]

for.end13:                                        ; preds = %cleanup
  %13 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @5, i32 %0), !dbg !77
  store i32 0, i32* %retval, align 4, !dbg !78
  br label %return, !dbg !78

return:                                           ; preds = %for.end13, %cleanup
  %14 = load i32, i32* %retval, align 4, !dbg !79
  ret i32 %14, !dbg !79

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0486_main_l30_debug__([64 x float]* nonnull align 4 dereferenceable(256) %x) #3 !dbg !80 {
entry:
  %x.addr = alloca [64 x float]*, align 8
  %i = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 1
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr = alloca i64, align 8
  %agg.captured1 = alloca %struct.anon.0, align 1
  %.dep.arr.addr2 = alloca [1 x %struct.kmp_depend_info], align 8
  %dep.counter.addr5 = alloca i64, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store [64 x float]* %x, [64 x float]** %x.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata [64 x float]** %x.addr, metadata !85, metadata !DIExpression()), !dbg !91
  %1 = load [64 x float]*, [64 x float]** %x.addr, align 8, !dbg !92, !tbaa !89
  %2 = bitcast i32* %i to i8*, !dbg !93
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %i, metadata !86, metadata !DIExpression()), !dbg !94
  store i32 0, i32* %i, align 4, !dbg !94, !tbaa !31
  br label %for.cond, !dbg !93

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !95, !tbaa !31
  %cmp = icmp slt i32 %3, 64, !dbg !97
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !98

for.cond.cleanup:                                 ; preds = %for.cond
  %4 = bitcast i32* %i to i8*, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !99
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %0, i32 1, i64 48, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !100
  %6 = bitcast i8* %5 to %struct.kmp_task_t_with_privates*, !dbg !100
  %7 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %6, i32 0, i32 0, !dbg !100
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %6, i32 0, i32 1, !dbg !100
  %9 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %8, i32 0, i32 0, !dbg !100
  %10 = load i32, i32* %i, align 4, !dbg !102, !tbaa !31
  store i32 %10, i32* %9, align 8, !dbg !100, !tbaa !104
  %11 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !100
  %12 = load i32, i32* %i, align 4, !dbg !108, !tbaa !31
  %idxprom = sext i32 %12 to i64, !dbg !109
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %1, i64 0, i64 %idxprom, !dbg !109
  %13 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %11, i64 0, !dbg !100
  %14 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %13, i32 0, i32 0, !dbg !100
  %15 = ptrtoint float* %arrayidx to i64, !dbg !100
  store i64 %15, i64* %14, align 8, !dbg !100, !tbaa !110
  %16 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %13, i32 0, i32 1, !dbg !100
  store i64 4, i64* %16, align 8, !dbg !100, !tbaa !113
  %17 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %13, i32 0, i32 2, !dbg !100
  store i8 3, i8* %17, align 8, !dbg !100, !tbaa !114
  store i64 1, i64* %dep.counter.addr, align 8, !dbg !100, !tbaa !115
  %18 = bitcast %struct.kmp_depend_info* %11 to i8*, !dbg !100
  %19 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %0, i8* %5, i32 1, i8* %18, i32 0, i8* null), !dbg !100
  %20 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %0, i32 1, i64 48, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !116
  %21 = bitcast i8* %20 to %struct.kmp_task_t_with_privates.1*, !dbg !116
  %22 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %21, i32 0, i32 0, !dbg !116
  %23 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %21, i32 0, i32 1, !dbg !116
  %24 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %23, i32 0, i32 0, !dbg !116
  %25 = load i32, i32* %i, align 4, !dbg !117, !tbaa !31
  store i32 %25, i32* %24, align 8, !dbg !116, !tbaa !104
  %26 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !116
  %27 = load i32, i32* %i, align 4, !dbg !119, !tbaa !31
  %idxprom3 = sext i32 %27 to i64, !dbg !120
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %1, i64 0, i64 %idxprom3, !dbg !120
  %28 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %26, i64 0, !dbg !116
  %29 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %28, i32 0, i32 0, !dbg !116
  %30 = ptrtoint float* %arrayidx4 to i64, !dbg !116
  store i64 %30, i64* %29, align 8, !dbg !116, !tbaa !110
  %31 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %28, i32 0, i32 1, !dbg !116
  store i64 4, i64* %31, align 8, !dbg !116, !tbaa !113
  %32 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %28, i32 0, i32 2, !dbg !116
  store i8 3, i8* %32, align 8, !dbg !116, !tbaa !114
  store i64 1, i64* %dep.counter.addr5, align 8, !dbg !116, !tbaa !115
  %33 = bitcast %struct.kmp_depend_info* %26 to i8*, !dbg !116
  %34 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @3, i32 %0, i8* %20, i32 1, i8* %33, i32 0, i8* null), !dbg !116
  br label %for.inc, !dbg !121

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !dbg !122, !tbaa !31
  %inc = add nsw i32 %35, 1, !dbg !122
  store i32 %inc, i32* %i, align 4, !dbg !122, !tbaa !31
  br label %for.cond, !dbg !99, !llvm.loop !123

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !125
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !126 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !147, metadata !DIExpression()), !dbg !153
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !148, metadata !DIExpression()), !dbg !153
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !149, metadata !DIExpression()), !dbg !153
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !150, metadata !DIExpression()), !dbg !153
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !151, metadata !DIExpression()), !dbg !153
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !154
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !154
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !154
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !155
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !154
  %4 = load float, float* @a, align 4, !dbg !156, !tbaa !42
  %5 = load i32, i32* %3, align 4, !dbg !158, !tbaa !31
  %idxprom = sext i32 %5 to i64, !dbg !159
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom, !dbg !159
  %6 = load float, float* %arrayidx, align 4, !dbg !159, !tbaa !42
  %mul = fmul float %4, %6, !dbg !160
  %7 = load i32, i32* %3, align 4, !dbg !161, !tbaa !31
  %idxprom1 = sext i32 %7 to i64, !dbg !162
  %arrayidx2 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom1, !dbg !162
  store float %mul, float* %arrayidx2, align 4, !dbg !163, !tbaa !42
  ret void, !dbg !164
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #4 !dbg !165 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !168, metadata !DIExpression()), !dbg !178
  store i32** %1, i32*** %.addr1, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !173, metadata !DIExpression()), !dbg !178
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !179
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !179
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !179
  store i32* %3, i32** %4, align 8, !dbg !179, !tbaa !89
  ret void, !dbg !179
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !180 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !182, metadata !DIExpression()), !dbg !195
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !183, metadata !DIExpression()), !dbg !195
  %2 = load i32, i32* %.addr, align 4, !dbg !196, !tbaa !31
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !196
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !196
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !196
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !196
  %7 = load i8*, i8** %6, align 8, !dbg !196, !tbaa !197
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !196
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !196
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !196
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !196
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #5, !dbg !196
  ret i32 0, !dbg !196
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #5

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #5

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #5

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #4 !dbg !198 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !206, metadata !DIExpression()), !dbg !212
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !207, metadata !DIExpression()), !dbg !212
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !208, metadata !DIExpression()), !dbg !212
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !209, metadata !DIExpression()), !dbg !212
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !210, metadata !DIExpression()), !dbg !212
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !213
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !213
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !213
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !214
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !213
  %4 = load i32, i32* %3, align 4, !dbg !215, !tbaa !31
  %idxprom = sext i32 %4 to i64, !dbg !217
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom, !dbg !217
  %5 = load float, float* %arrayidx, align 4, !dbg !217, !tbaa !42
  %6 = load i32, i32* %3, align 4, !dbg !218, !tbaa !31
  %idxprom1 = sext i32 %6 to i64, !dbg !219
  %arrayidx2 = getelementptr inbounds [64 x float], [64 x float]* @y, i64 0, i64 %idxprom1, !dbg !219
  %7 = load float, float* %arrayidx2, align 4, !dbg !219, !tbaa !42
  %add = fadd float %5, %7, !dbg !220
  %8 = load i32, i32* %3, align 4, !dbg !221, !tbaa !31
  %idxprom3 = sext i32 %8 to i64, !dbg !222
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom3, !dbg !222
  store float %add, float* %arrayidx4, align 4, !dbg !223, !tbaa !42
  ret void, !dbg !224
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #4 !dbg !225 {
entry:
  %.addr = alloca %struct..kmp_privates.t.2*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t.2** %.addr, metadata !227, metadata !DIExpression()), !dbg !233
  store i32** %1, i32*** %.addr1, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !232, metadata !DIExpression()), !dbg !233
  %2 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %.addr, align 8, !dbg !234
  %3 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %2, i32 0, i32 0, !dbg !234
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !234
  store i32* %3, i32** %4, align 8, !dbg !234, !tbaa !89
  ret void, !dbg !234
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !235 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !237, metadata !DIExpression()), !dbg !245
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !238, metadata !DIExpression()), !dbg !245
  %2 = load i32, i32* %.addr, align 4, !dbg !246, !tbaa !31
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !246
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !246
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !246
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !246
  %7 = load i8*, i8** %6, align 8, !dbg !246, !tbaa !197
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !246
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 1, !dbg !246
  %10 = bitcast %struct..kmp_privates.t.2* %9 to i8*, !dbg !246
  %11 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !246
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), i8* %11, %struct.anon.0* %8) #5, !dbg !246
  ret i32 0, !dbg !246
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0486_main_l30([64 x float]* nonnull align 4 dereferenceable(256) %x) #3 !dbg !247 {
entry:
  %x.addr = alloca [64 x float]*, align 8
  store [64 x float]* %x, [64 x float]** %x.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata [64 x float]** %x.addr, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = load [64 x float]*, [64 x float]** %x.addr, align 8, !dbg !251, !tbaa !89
  %1 = load [64 x float]*, [64 x float]** %x.addr, align 8, !dbg !251, !tbaa !89
  call void @__omp_offloading_10308_be0486_main_l30_debug__([64 x float]* %1) #5, !dbg !251
  ret void, !dbg !251
}

declare i32 @printf(i8*, ...) #6

declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 19, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB158-missingtaskbarrier-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 20, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !10)
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 64)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 21, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{!"clang version 11.1.0"}
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 23, type: !21, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !27}
!25 = !DILocalVariable(name: "i", scope: !26, file: !3, line: 24, type: !23)
!26 = distinct !DILexicalBlock(scope: !20, file: !3, line: 24, column: 3)
!27 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 44, type: !23)
!28 = distinct !DILexicalBlock(scope: !20, file: !3, line: 44, column: 3)
!29 = !DILocation(line: 24, column: 7, scope: !26)
!30 = !DILocation(line: 24, column: 11, scope: !26)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 24, column: 16, scope: !36)
!36 = distinct !DILexicalBlock(scope: !26, file: !3, line: 24, column: 3)
!37 = !DILocation(line: 24, column: 17, scope: !36)
!38 = !DILocation(line: 24, column: 3, scope: !26)
!39 = !DILocation(line: 24, column: 3, scope: !36)
!40 = !DILocation(line: 25, column: 6, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !3, line: 24, column: 25)
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !33, i64 0}
!44 = !DILocation(line: 26, column: 7, scope: !41)
!45 = !DILocation(line: 26, column: 5, scope: !41)
!46 = !DILocation(line: 26, column: 9, scope: !41)
!47 = !DILocation(line: 27, column: 7, scope: !41)
!48 = !DILocation(line: 27, column: 5, scope: !41)
!49 = !DILocation(line: 27, column: 9, scope: !41)
!50 = !DILocation(line: 28, column: 3, scope: !41)
!51 = !DILocation(line: 24, column: 22, scope: !36)
!52 = distinct !{!52, !38, !53, !54}
!53 = !DILocation(line: 28, column: 3, scope: !26)
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !DILocation(line: 30, column: 3, scope: !56)
!56 = distinct !DILexicalBlock(scope: !20, file: !3, line: 30, column: 3)
!57 = !DILocation(line: 44, column: 7, scope: !28)
!58 = !DILocation(line: 44, column: 11, scope: !28)
!59 = !DILocation(line: 44, column: 16, scope: !60)
!60 = distinct !DILexicalBlock(scope: !28, file: !3, line: 44, column: 3)
!61 = !DILocation(line: 44, column: 17, scope: !60)
!62 = !DILocation(line: 44, column: 3, scope: !28)
!63 = !DILocation(line: 45, column: 10, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 45, column: 8)
!65 = distinct !DILexicalBlock(scope: !60, file: !3, line: 44, column: 25)
!66 = !DILocation(line: 45, column: 8, scope: !64)
!67 = !DILocation(line: 45, column: 12, scope: !64)
!68 = !DILocation(line: 45, column: 8, scope: !65)
!69 = !DILocation(line: 46, column: 7, scope: !70)
!70 = distinct !DILexicalBlock(scope: !64, file: !3, line: 45, column: 16)
!71 = !DILocation(line: 47, column: 7, scope: !70)
!72 = !DILocation(line: 49, column: 3, scope: !65)
!73 = !DILocation(line: 44, column: 22, scope: !60)
!74 = !DILocation(line: 44, column: 3, scope: !60)
!75 = distinct !{!75, !62, !76, !54}
!76 = !DILocation(line: 49, column: 3, scope: !28)
!77 = !DILocation(line: 51, column: 3, scope: !20)
!78 = !DILocation(line: 52, column: 3, scope: !20)
!79 = !DILocation(line: 53, column: 1, scope: !20)
!80 = distinct !DISubprogram(name: "__omp_offloading_10308_be0486_main_l30_debug__", scope: !3, file: !3, line: 31, type: !81, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83}
!83 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!84 = !{!85, !86}
!85 = !DILocalVariable(name: "x", arg: 1, scope: !80, file: !3, line: 20, type: !83)
!86 = !DILocalVariable(name: "i", scope: !87, file: !3, line: 32, type: !23)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 32, column: 5)
!88 = distinct !DILexicalBlock(scope: !80, file: !3, line: 31, column: 3)
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !33, i64 0}
!91 = !DILocation(line: 20, column: 7, scope: !80)
!92 = !DILocation(line: 31, column: 3, scope: !80)
!93 = !DILocation(line: 32, column: 9, scope: !87)
!94 = !DILocation(line: 32, column: 13, scope: !87)
!95 = !DILocation(line: 32, column: 18, scope: !96)
!96 = distinct !DILexicalBlock(scope: !87, file: !3, line: 32, column: 5)
!97 = !DILocation(line: 32, column: 19, scope: !96)
!98 = !DILocation(line: 32, column: 5, scope: !87)
!99 = !DILocation(line: 32, column: 5, scope: !96)
!100 = !DILocation(line: 33, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !3, line: 32, column: 27)
!102 = !DILocation(line: 35, column: 11, scope: !103)
!103 = distinct !DILexicalBlock(scope: !101, file: !3, line: 33, column: 7)
!104 = !{!105, !32, i64 40}
!105 = !{!"kmp_task_t_with_privates", !106, i64 0, !107, i64 40}
!106 = !{!"kmp_task_t", !90, i64 0, !90, i64 8, !32, i64 16, !33, i64 24, !33, i64 32}
!107 = !{!".kmp_privates.t", !32, i64 0}
!108 = !DILocation(line: 33, column: 39, scope: !103)
!109 = !DILocation(line: 33, column: 37, scope: !103)
!110 = !{!111, !112, i64 0}
!111 = !{!"kmp_depend_info", !112, i64 0, !112, i64 8, !33, i64 16}
!112 = !{!"long", !33, i64 0}
!113 = !{!111, !112, i64 8}
!114 = !{!111, !33, i64 16}
!115 = !{!112, !112, i64 0}
!116 = !DILocation(line: 37, column: 7, scope: !101)
!117 = !DILocation(line: 39, column: 11, scope: !118)
!118 = distinct !DILexicalBlock(scope: !101, file: !3, line: 37, column: 7)
!119 = !DILocation(line: 37, column: 39, scope: !118)
!120 = !DILocation(line: 37, column: 37, scope: !118)
!121 = !DILocation(line: 41, column: 5, scope: !101)
!122 = !DILocation(line: 32, column: 24, scope: !96)
!123 = distinct !{!123, !98, !124, !54}
!124 = !DILocation(line: 41, column: 5, scope: !87)
!125 = !DILocation(line: 42, column: 3, scope: !80)
!126 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 33, type: !127, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !130, !133, !136, !141, !142}
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !133, null}
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !3, line: 33, elements: !4)
!146 = !{!147, !148, !149, !150, !151, !152}
!147 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !126, type: !129, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !126, type: !130, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: ".privates.", arg: 3, scope: !126, type: !133, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !126, type: !136, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !126, type: !141, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "__context", arg: 6, scope: !126, type: !142, flags: DIFlagArtificial)
!153 = !DILocation(line: 0, scope: !126)
!154 = !DILocation(line: 34, column: 7, scope: !126)
!155 = !DILocation(line: 33, column: 7, scope: !126)
!156 = !DILocation(line: 35, column: 16, scope: !157)
!157 = distinct !DILexicalBlock(scope: !126, file: !3, line: 34, column: 7)
!158 = !DILocation(line: 35, column: 22, scope: !157)
!159 = !DILocation(line: 35, column: 20, scope: !157)
!160 = !DILocation(line: 35, column: 18, scope: !157)
!161 = !DILocation(line: 35, column: 11, scope: !157)
!162 = !DILocation(line: 35, column: 9, scope: !157)
!163 = !DILocation(line: 35, column: 14, scope: !157)
!164 = !DILocation(line: 36, column: 7, scope: !126)
!165 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 33, type: !166, scopeLine: 33, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!166 = !DISubroutineType(types: !4)
!167 = !{!168, !173}
!168 = !DILocalVariable(arg: 1, scope: !165, type: !169, flags: DIFlagArtificial)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!173 = !DILocalVariable(arg: 2, scope: !165, type: !174, flags: DIFlagArtificial)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!178 = !DILocation(line: 0, scope: !165)
!179 = !DILocation(line: 33, column: 7, scope: !165)
!180 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 33, type: !166, scopeLine: 33, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!181 = !{!182, !183}
!182 = !DILocalVariable(arg: 1, scope: !180, type: !23, flags: DIFlagArtificial)
!183 = !DILocalVariable(arg: 2, scope: !180, type: !184, flags: DIFlagArtificial)
!184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !187)
!187 = !{!188, !194}
!188 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !3, baseType: !189, size: 320)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !190)
!190 = !{!191, !193}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !3, baseType: !192, size: 64, offset: 192)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !3, baseType: !192, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !3, baseType: !172, size: 32, offset: 320)
!195 = !DILocation(line: 0, scope: !180)
!196 = !DILocation(line: 33, column: 7, scope: !180)
!197 = !{!105, !90, i64 0}
!198 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 37, type: !199, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !205)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !129, !130, !133, !136, !141, !201}
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !3, line: 37, elements: !4)
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !198, type: !129, flags: DIFlagArtificial)
!207 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !198, type: !130, flags: DIFlagArtificial)
!208 = !DILocalVariable(name: ".privates.", arg: 3, scope: !198, type: !133, flags: DIFlagArtificial)
!209 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !198, type: !136, flags: DIFlagArtificial)
!210 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !198, type: !141, flags: DIFlagArtificial)
!211 = !DILocalVariable(name: "__context", arg: 6, scope: !198, type: !201, flags: DIFlagArtificial)
!212 = !DILocation(line: 0, scope: !198)
!213 = !DILocation(line: 38, column: 7, scope: !198)
!214 = !DILocation(line: 37, column: 7, scope: !198)
!215 = !DILocation(line: 39, column: 18, scope: !216)
!216 = distinct !DILexicalBlock(scope: !198, file: !3, line: 38, column: 7)
!217 = !DILocation(line: 39, column: 16, scope: !216)
!218 = !DILocation(line: 39, column: 25, scope: !216)
!219 = !DILocation(line: 39, column: 23, scope: !216)
!220 = !DILocation(line: 39, column: 21, scope: !216)
!221 = !DILocation(line: 39, column: 11, scope: !216)
!222 = !DILocation(line: 39, column: 9, scope: !216)
!223 = !DILocation(line: 39, column: 14, scope: !216)
!224 = !DILocation(line: 40, column: 7, scope: !198)
!225 = distinct !DISubprogram(linkageName: ".omp_task_privates_map..2", scope: !3, file: !3, line: 37, type: !166, scopeLine: 37, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!226 = !{!227, !232}
!227 = !DILocalVariable(arg: 1, scope: !225, type: !228, flags: DIFlagArtificial)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!232 = !DILocalVariable(arg: 2, scope: !225, type: !174, flags: DIFlagArtificial)
!233 = !DILocation(line: 0, scope: !225)
!234 = !DILocation(line: 37, column: 7, scope: !225)
!235 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 37, type: !166, scopeLine: 37, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!236 = !{!237, !238}
!237 = !DILocalVariable(arg: 1, scope: !235, type: !23, flags: DIFlagArtificial)
!238 = !DILocalVariable(arg: 2, scope: !235, type: !239, flags: DIFlagArtificial)
!239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !3, baseType: !189, size: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !3, baseType: !231, size: 32, offset: 320)
!245 = !DILocation(line: 0, scope: !235)
!246 = !DILocation(line: 37, column: 7, scope: !235)
!247 = distinct !DISubprogram(name: "__omp_offloading_10308_be0486_main_l30", scope: !3, file: !3, line: 30, type: !81, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !248)
!248 = !{!249}
!249 = !DILocalVariable(name: "x", arg: 1, scope: !247, type: !83, flags: DIFlagArtificial)
!250 = !DILocation(line: 0, scope: !247)
!251 = !DILocation(line: 30, column: 3, scope: !247)
