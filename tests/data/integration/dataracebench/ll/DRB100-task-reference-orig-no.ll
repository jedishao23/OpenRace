; ModuleID = 'DRB100-task-reference-orig-no.cpp'
source_filename = "DRB100-task-reference-orig-no.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i8 }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }

$__clang_call_terminate = comdat any

@a = dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [51 x i8] c";DRB100-task-reference-orig-no.cpp;gen_task;62;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [47 x i8] c";DRB100-task-reference-orig-no.cpp;main;73;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [47 x i8] c";DRB100-task-reference-orig-no.cpp;main;71;1;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @5, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [38 x i8] c"warning: a[%d] = %d, not expected %d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_Z8gen_taskRi(i32* nonnull align 4 dereferenceable(4) %i) #0 !dbg !16 {
entry:
  %i.addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 1
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32* %i, i32** %i.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !21, metadata !DIExpression()), !dbg !26
  %1 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %0, i32 1, i64 48, i64 1, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !27
  %2 = bitcast i8* %1 to %struct.kmp_task_t_with_privates*, !dbg !27
  %3 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %2, i32 0, i32 0, !dbg !27
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %2, i32 0, i32 1, !dbg !27
  %5 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %4, i32 0, i32 0, !dbg !27
  %6 = load i32*, i32** %i.addr, align 8, !dbg !28, !tbaa !22
  %7 = load i32, i32* %6, align 4, !dbg !28, !tbaa !30
  store i32 %7, i32* %5, align 8, !dbg !27, !tbaa !32
  %8 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %0, i8* %1), !dbg !27
  ret void, !dbg !36
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #2 !dbg !37 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  %tmp = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !64
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !59, metadata !DIExpression()), !dbg !64
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !60, metadata !DIExpression()), !dbg !64
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !61, metadata !DIExpression()), !dbg !64
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !62, metadata !DIExpression()), !dbg !64
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !65
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !65
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !65
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !66
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !65
  store i32* %3, i32** %tmp, align 8, !dbg !65
  %4 = load i32*, i32** %tmp, align 8, !dbg !67, !tbaa !22
  %5 = load i32, i32* %4, align 4, !dbg !67, !tbaa !30
  %add = add nsw i32 %5, 1, !dbg !69
  %6 = load i32*, i32** %tmp, align 8, !dbg !70, !tbaa !22
  %7 = load i32, i32* %6, align 4, !dbg !70, !tbaa !30
  %idxprom = sext i32 %7 to i64, !dbg !71
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !71
  store i32 %add, i32* %arrayidx, align 4, !dbg !72, !tbaa !30
  ret void, !dbg !73
}

; Function Attrs: alwaysinline sspstrong uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !74 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !77, metadata !DIExpression()), !dbg !87
  store i32** %1, i32*** %.addr1, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !82, metadata !DIExpression()), !dbg !87
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !88
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !88
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !88
  store i32* %3, i32** %4, align 8, !dbg !88, !tbaa !22
  ret void, !dbg !88
}

; Function Attrs: norecurse sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !89 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !91, metadata !DIExpression()), !dbg !96
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !92, metadata !DIExpression()), !dbg !96
  %2 = load i32, i32* %.addr, align 4, !dbg !97, !tbaa !30
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !97
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !97
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !97
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !97
  %7 = load i8*, i8** %6, align 8, !dbg !97, !tbaa !98
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !97
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !97
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !97
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !97
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #5, !dbg !97
  ret i32 0, !dbg !97
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #5

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #5

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #5

; Function Attrs: norecurse sspstrong uwtable
define dso_local i32 @main() #4 !dbg !99 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %i, metadata !103, metadata !DIExpression()), !dbg !105
  store i32 0, i32* %i, align 4, !dbg !105, !tbaa !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @6, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %i), !dbg !106
  store i32 0, i32* %i, align 4, !dbg !107, !tbaa !30
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !110, !tbaa !30
  %cmp = icmp slt i32 %1, 100, !dbg !112
  br i1 %cmp, label %for.body, label %for.end, !dbg !113

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !114, !tbaa !30
  %idxprom = sext i32 %2 to i64, !dbg !117
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !117
  %3 = load i32, i32* %arrayidx, align 4, !dbg !117, !tbaa !30
  %4 = load i32, i32* %i, align 4, !dbg !118, !tbaa !30
  %add = add nsw i32 %4, 1, !dbg !119
  %cmp1 = icmp ne i32 %3, %add, !dbg !120
  br i1 %cmp1, label %if.then, label %if.end, !dbg !121

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !122, !tbaa !30
  %6 = load i32, i32* %i, align 4, !dbg !124, !tbaa !30
  %idxprom2 = sext i32 %6 to i64, !dbg !125
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom2, !dbg !125
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !125, !tbaa !30
  %8 = load i32, i32* %i, align 4, !dbg !126, !tbaa !30
  %add4 = add nsw i32 %8, 1, !dbg !127
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7, i32 %add4), !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !130

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !131, !tbaa !30
  %inc = add nsw i32 %9, 1, !dbg !131
  store i32 %inc, i32* %i, align 4, !dbg !131, !tbaa !30
  br label %for.cond, !dbg !132, !llvm.loop !133

for.end:                                          ; preds = %for.cond
  %10 = bitcast i32* %i to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !136
  ret i32 0, !dbg !137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !138 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !142, metadata !DIExpression()), !dbg !145
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !143, metadata !DIExpression()), !dbg !145
  store i32* %i, i32** %i.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !144, metadata !DIExpression()), !dbg !146
  %0 = load i32*, i32** %i.addr, align 8, !dbg !147, !tbaa !22
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !148
  %2 = load i32, i32* %1, align 4, !dbg !148, !tbaa !30
  %3 = call i32 @__kmpc_single(%struct.ident_t* @3, i32 %2), !dbg !148
  %4 = icmp ne i32 %3, 0, !dbg !148
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !148

omp_if.then:                                      ; preds = %entry
  store i32 0, i32* %0, align 4, !dbg !150, !tbaa !30
  br label %for.cond, !dbg !154

for.cond:                                         ; preds = %for.inc, %omp_if.then
  %5 = load i32, i32* %0, align 4, !dbg !155, !tbaa !30
  %cmp = icmp slt i32 %5, 100, !dbg !157
  br i1 %cmp, label %for.body, label %for.end, !dbg !158

for.body:                                         ; preds = %for.cond
  invoke void @_Z8gen_taskRi(i32* nonnull align 4 dereferenceable(4) %0)
          to label %invoke.cont unwind label %lpad, !dbg !159

invoke.cont:                                      ; preds = %for.body
  br label %for.inc, !dbg !161

for.inc:                                          ; preds = %invoke.cont
  %6 = load i32, i32* %0, align 4, !dbg !162, !tbaa !30
  %inc = add nsw i32 %6, 1, !dbg !162
  store i32 %inc, i32* %0, align 4, !dbg !162, !tbaa !30
  br label %for.cond, !dbg !163, !llvm.loop !164

lpad:                                             ; preds = %for.body
  %7 = landingpad { i8*, i32 }
          catch i8* null, !dbg !166
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !166
  store i8* %8, i8** %exn.slot, align 8, !dbg !166
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !166
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !166
  call void @__kmpc_end_single(%struct.ident_t* @3, i32 %2), !dbg !167
  br label %terminate.handler, !dbg !167

for.end:                                          ; preds = %for.cond
  call void @__kmpc_end_single(%struct.ident_t* @3, i32 %2), !dbg !167
  br label %omp_if.end, !dbg !167

omp_if.end:                                       ; preds = %for.end, %entry
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %2), !dbg !168
  ret void, !dbg !169

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !167
  call void @__clang_call_terminate(i8* %exn) #10, !dbg !167
  unreachable, !dbg !167
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #8 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #5
  call void @_ZSt9terminatev() #10
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #7 !dbg !170 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !172, metadata !DIExpression()), !dbg !175
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !173, metadata !DIExpression()), !dbg !175
  store i32* %i, i32** %i.addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load i32*, i32** %i.addr, align 8, !dbg !176, !tbaa !22
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !176, !tbaa !22
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !176, !tbaa !22
  %3 = load i32*, i32** %i.addr, align 8, !dbg !176, !tbaa !22
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !176
  ret void, !dbg !176
}

; Function Attrs: nounwind
declare !callback !177 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare i32 @printf(i8*, ...) #9

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 58, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB100-task-reference-orig-no.cpp", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "gen_task", linkageName: "_Z8gen_taskRi", scope: !3, file: !3, line: 60, type: !17, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!20 = !{!21}
!21 = !DILocalVariable(name: "i", arg: 1, scope: !16, file: !3, line: 60, type: !19)
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C++ TBAA"}
!26 = !DILocation(line: 60, column: 20, scope: !16)
!27 = !DILocation(line: 62, column: 1, scope: !16)
!28 = !DILocation(line: 64, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !16, file: !3, line: 62, column: 1)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !24, i64 0}
!32 = !{!33, !31, i64 40}
!33 = !{!"_ZTS24kmp_task_t_with_privates", !34, i64 0, !35, i64 40}
!34 = !{!"_ZTS10kmp_task_t", !23, i64 0, !23, i64 8, !31, i64 16, !24, i64 24, !24, i64 32}
!35 = !{!"_ZTS15.kmp_privates.t", !31, i64 0}
!36 = !DILocation(line: 66, column: 1, scope: !16)
!37 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 62, type: !38, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, !41, !44, !47, !52, !53}
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !44, null}
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, scope: !16, file: !3, line: 62, flags: DIFlagFwdDecl)
!57 = !{!58, !59, !60, !61, !62, !63}
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !37, type: !40, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !37, type: !41, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".privates.", arg: 3, scope: !37, type: !44, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !37, type: !47, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !37, type: !52, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "__context", arg: 6, scope: !37, type: !53, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !37)
!65 = !DILocation(line: 63, column: 3, scope: !37)
!66 = !DILocation(line: 62, column: 1, scope: !37)
!67 = !DILocation(line: 64, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !37, file: !3, line: 63, column: 3)
!69 = !DILocation(line: 64, column: 12, scope: !68)
!70 = !DILocation(line: 64, column: 7, scope: !68)
!71 = !DILocation(line: 64, column: 5, scope: !68)
!72 = !DILocation(line: 64, column: 9, scope: !68)
!73 = !DILocation(line: 65, column: 3, scope: !37)
!74 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 62, type: !75, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!75 = !DISubroutineType(types: !4)
!76 = !{!77, !82}
!77 = !DILocalVariable(arg: 1, scope: !74, type: !78, flags: DIFlagArtificial)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS15.kmp_privates.t")
!82 = !DILocalVariable(arg: 2, scope: !74, type: !83, flags: DIFlagArtificial)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!87 = !DILocation(line: 0, scope: !74)
!88 = !DILocation(line: 62, column: 1, scope: !74)
!89 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 62, type: !75, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!90 = !{!91, !92}
!91 = !DILocalVariable(arg: 1, scope: !89, type: !7, flags: DIFlagArtificial)
!92 = !DILocalVariable(arg: 2, scope: !89, type: !93, flags: DIFlagArtificial)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS24kmp_task_t_with_privates")
!96 = !DILocation(line: 0, scope: !89)
!97 = !DILocation(line: 62, column: 1, scope: !89)
!98 = !{!33, !23, i64 0}
!99 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !100, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!7}
!102 = !{!103}
!103 = !DILocalVariable(name: "i", scope: !99, file: !3, line: 70, type: !7)
!104 = !DILocation(line: 70, column: 3, scope: !99)
!105 = !DILocation(line: 70, column: 7, scope: !99)
!106 = !DILocation(line: 71, column: 1, scope: !99)
!107 = !DILocation(line: 83, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !99, file: !3, line: 83, column: 3)
!109 = !DILocation(line: 83, column: 8, scope: !108)
!110 = !DILocation(line: 83, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !3, line: 83, column: 3)
!112 = !DILocation(line: 83, column: 14, scope: !111)
!113 = !DILocation(line: 83, column: 3, scope: !108)
!114 = !DILocation(line: 86, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 86, column: 9)
!116 = distinct !DILexicalBlock(scope: !111, file: !3, line: 84, column: 3)
!117 = !DILocation(line: 86, column: 9, scope: !115)
!118 = !DILocation(line: 86, column: 16, scope: !115)
!119 = !DILocation(line: 86, column: 17, scope: !115)
!120 = !DILocation(line: 86, column: 13, scope: !115)
!121 = !DILocation(line: 86, column: 9, scope: !116)
!122 = !DILocation(line: 88, column: 56, scope: !123)
!123 = distinct !DILexicalBlock(scope: !115, file: !3, line: 87, column: 5)
!124 = !DILocation(line: 88, column: 61, scope: !123)
!125 = !DILocation(line: 88, column: 59, scope: !123)
!126 = !DILocation(line: 88, column: 65, scope: !123)
!127 = !DILocation(line: 88, column: 66, scope: !123)
!128 = !DILocation(line: 88, column: 7, scope: !123)
!129 = !DILocation(line: 89, column: 5, scope: !123)
!130 = !DILocation(line: 90, column: 3, scope: !116)
!131 = !DILocation(line: 83, column: 23, scope: !111)
!132 = !DILocation(line: 83, column: 3, scope: !111)
!133 = distinct !{!133, !113, !134, !135}
!134 = !DILocation(line: 90, column: 3, scope: !108)
!135 = !{!"llvm.loop.unroll.disable"}
!136 = !DILocation(line: 92, column: 1, scope: !99)
!137 = !DILocation(line: 91, column: 3, scope: !99)
!138 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 72, type: !139, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !41, !41, !19}
!141 = !{!142, !143, !144}
!142 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !138, type: !41, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !138, type: !41, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: "i", arg: 3, scope: !138, file: !3, line: 70, type: !19)
!145 = !DILocation(line: 0, scope: !138)
!146 = !DILocation(line: 70, column: 7, scope: !138)
!147 = !DILocation(line: 72, column: 3, scope: !138)
!148 = !DILocation(line: 73, column: 1, scope: !149)
!149 = distinct !DILexicalBlock(scope: !138, file: !3, line: 72, column: 3)
!150 = !DILocation(line: 75, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 75, column: 7)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 74, column: 5)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 73, column: 1)
!154 = !DILocation(line: 75, column: 12, scope: !151)
!155 = !DILocation(line: 75, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !3, line: 75, column: 7)
!157 = !DILocation(line: 75, column: 18, scope: !156)
!158 = !DILocation(line: 75, column: 7, scope: !151)
!159 = !DILocation(line: 77, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 76, column: 7)
!161 = !DILocation(line: 78, column: 7, scope: !160)
!162 = !DILocation(line: 75, column: 27, scope: !156)
!163 = !DILocation(line: 75, column: 7, scope: !156)
!164 = distinct !{!164, !158, !165, !135}
!165 = !DILocation(line: 78, column: 7, scope: !151)
!166 = !DILocation(line: 0, scope: !160)
!167 = !DILocation(line: 79, column: 5, scope: !152)
!168 = !DILocation(line: 73, column: 19, scope: !153)
!169 = !DILocation(line: 80, column: 3, scope: !138)
!170 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 71, type: !139, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!171 = !{!172, !173, !174}
!172 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !170, type: !41, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !170, type: !41, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: "i", arg: 3, scope: !170, type: !19, flags: DIFlagArtificial)
!175 = !DILocation(line: 0, scope: !170)
!176 = !DILocation(line: 71, column: 1, scope: !170)
!177 = !{!178}
!178 = !{i64 2, i64 -1, i64 -1, i1 true}
