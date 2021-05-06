; ModuleID = 'DRB101-task-value-orig-no.cpp'
source_filename = "DRB101-task-value-orig-no.cpp"
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
@0 = private unnamed_addr constant [47 x i8] c";DRB101-task-value-orig-no.cpp;gen_task;58;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [43 x i8] c";DRB101-task-value-orig-no.cpp;main;69;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [43 x i8] c";DRB101-task-value-orig-no.cpp;main;67;1;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @5, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [38 x i8] c"warning: a[%d] = %d, not expected %d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_Z8gen_taski(i32 %i) #0 !dbg !16 {
entry:
  %i.addr = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 1
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 %i, i32* %i.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !20, metadata !DIExpression()), !dbg !25
  %1 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %0, i32 1, i64 48, i64 1, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !26
  %2 = bitcast i8* %1 to %struct.kmp_task_t_with_privates*, !dbg !26
  %3 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %2, i32 0, i32 0, !dbg !26
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %2, i32 0, i32 1, !dbg !26
  %5 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %4, i32 0, i32 0, !dbg !26
  %6 = load i32, i32* %i.addr, align 4, !dbg !27, !tbaa !21
  store i32 %6, i32* %5, align 8, !dbg !26, !tbaa !29
  %7 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %0, i8* %1), !dbg !26
  ret void, !dbg !34
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #2 !dbg !35 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !56, metadata !DIExpression()), !dbg !62
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !57, metadata !DIExpression()), !dbg !62
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !58, metadata !DIExpression()), !dbg !62
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !59, metadata !DIExpression()), !dbg !62
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !60, metadata !DIExpression()), !dbg !62
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !64
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !64
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !64
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !65
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !64
  %4 = load i32, i32* %3, align 4, !dbg !66, !tbaa !21
  %add = add nsw i32 %4, 1, !dbg !68
  %5 = load i32, i32* %3, align 4, !dbg !69, !tbaa !21
  %idxprom = sext i32 %5 to i64, !dbg !70
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !70
  store i32 %add, i32* %arrayidx, align 4, !dbg !71, !tbaa !21
  ret void, !dbg !72
}

; Function Attrs: alwaysinline sspstrong uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !73 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !76, metadata !DIExpression()), !dbg !86
  store i32** %1, i32*** %.addr1, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !81, metadata !DIExpression()), !dbg !86
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !87
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !87
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !87
  store i32* %3, i32** %4, align 8, !dbg !87, !tbaa !63
  ret void, !dbg !87
}

; Function Attrs: norecurse sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !88 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !90, metadata !DIExpression()), !dbg !95
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !91, metadata !DIExpression()), !dbg !95
  %2 = load i32, i32* %.addr, align 4, !dbg !96, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !96
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !96
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !96
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !96
  %7 = load i8*, i8** %6, align 8, !dbg !96, !tbaa !97
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !96
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !96
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !96
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !96
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #5, !dbg !96
  ret i32 0, !dbg !96
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #5

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #5

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #5

; Function Attrs: norecurse sspstrong uwtable
define dso_local i32 @main() #4 !dbg !98 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %i, align 4, !dbg !104, !tbaa !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @6, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %i), !dbg !105
  store i32 0, i32* %i, align 4, !dbg !106, !tbaa !21
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !109, !tbaa !21
  %cmp = icmp slt i32 %1, 100, !dbg !111
  br i1 %cmp, label %for.body, label %for.end, !dbg !112

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !113, !tbaa !21
  %idxprom = sext i32 %2 to i64, !dbg !116
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !116
  %3 = load i32, i32* %arrayidx, align 4, !dbg !116, !tbaa !21
  %4 = load i32, i32* %i, align 4, !dbg !117, !tbaa !21
  %add = add nsw i32 %4, 1, !dbg !118
  %cmp1 = icmp ne i32 %3, %add, !dbg !119
  br i1 %cmp1, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !121, !tbaa !21
  %6 = load i32, i32* %i, align 4, !dbg !123, !tbaa !21
  %idxprom2 = sext i32 %6 to i64, !dbg !124
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom2, !dbg !124
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !124, !tbaa !21
  %8 = load i32, i32* %i, align 4, !dbg !125, !tbaa !21
  %add4 = add nsw i32 %8, 1, !dbg !126
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7, i32 %add4), !dbg !127
  br label %if.end, !dbg !128

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !129

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !130, !tbaa !21
  %inc = add nsw i32 %9, 1, !dbg !130
  store i32 %inc, i32* %i, align 4, !dbg !130, !tbaa !21
  br label %for.cond, !dbg !131, !llvm.loop !132

for.end:                                          ; preds = %for.cond
  %10 = bitcast i32* %i to i8*, !dbg !135
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !135
  ret i32 0, !dbg !136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !137 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !142, metadata !DIExpression()), !dbg !145
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !143, metadata !DIExpression()), !dbg !145
  store i32* %i, i32** %i.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !144, metadata !DIExpression()), !dbg !146
  %0 = load i32*, i32** %i.addr, align 8, !dbg !147, !tbaa !63
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !148
  %2 = load i32, i32* %1, align 4, !dbg !148, !tbaa !21
  %3 = call i32 @__kmpc_single(%struct.ident_t* @3, i32 %2), !dbg !148
  %4 = icmp ne i32 %3, 0, !dbg !148
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !148

omp_if.then:                                      ; preds = %entry
  store i32 0, i32* %0, align 4, !dbg !150, !tbaa !21
  br label %for.cond, !dbg !154

for.cond:                                         ; preds = %for.inc, %omp_if.then
  %5 = load i32, i32* %0, align 4, !dbg !155, !tbaa !21
  %cmp = icmp slt i32 %5, 100, !dbg !157
  br i1 %cmp, label %for.body, label %for.end, !dbg !158

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %0, align 4, !dbg !159, !tbaa !21
  invoke void @_Z8gen_taski(i32 %6)
          to label %invoke.cont unwind label %lpad, !dbg !161

invoke.cont:                                      ; preds = %for.body
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %invoke.cont
  %7 = load i32, i32* %0, align 4, !dbg !163, !tbaa !21
  %inc = add nsw i32 %7, 1, !dbg !163
  store i32 %inc, i32* %0, align 4, !dbg !163, !tbaa !21
  br label %for.cond, !dbg !164, !llvm.loop !165

lpad:                                             ; preds = %for.body
  %8 = landingpad { i8*, i32 }
          catch i8* null, !dbg !167
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !167
  store i8* %9, i8** %exn.slot, align 8, !dbg !167
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !167
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !167
  call void @__kmpc_end_single(%struct.ident_t* @3, i32 %2), !dbg !168
  br label %terminate.handler, !dbg !168

for.end:                                          ; preds = %for.cond
  call void @__kmpc_end_single(%struct.ident_t* @3, i32 %2), !dbg !168
  br label %omp_if.end, !dbg !168

omp_if.end:                                       ; preds = %for.end, %entry
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %2), !dbg !169
  ret void, !dbg !170

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !168
  call void @__clang_call_terminate(i8* %exn) #10, !dbg !168
  unreachable, !dbg !168
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
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #7 !dbg !171 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !173, metadata !DIExpression()), !dbg !176
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !174, metadata !DIExpression()), !dbg !176
  store i32* %i, i32** %i.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i32*, i32** %i.addr, align 8, !dbg !177, !tbaa !63
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !177, !tbaa !63
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !177, !tbaa !63
  %3 = load i32*, i32** %i.addr, align 8, !dbg !177, !tbaa !63
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !177
  ret void, !dbg !177
}

; Function Attrs: nounwind
declare !callback !178 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

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
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB101-task-value-orig-no.cpp", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = distinct !DISubprogram(name: "gen_task", linkageName: "_Z8gen_taski", scope: !3, file: !3, line: 56, type: !17, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !7}
!19 = !{!20}
!20 = !DILocalVariable(name: "i", arg: 1, scope: !16, file: !3, line: 56, type: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C++ TBAA"}
!25 = !DILocation(line: 56, column: 19, scope: !16)
!26 = !DILocation(line: 58, column: 1, scope: !16)
!27 = !DILocation(line: 60, column: 7, scope: !28)
!28 = distinct !DILexicalBlock(scope: !16, file: !3, line: 58, column: 1)
!29 = !{!30, !22, i64 40}
!30 = !{!"_ZTS24kmp_task_t_with_privates", !31, i64 0, !33, i64 40}
!31 = !{!"_ZTS10kmp_task_t", !32, i64 0, !32, i64 8, !22, i64 16, !23, i64 24, !23, i64 32}
!32 = !{!"any pointer", !23, i64 0}
!33 = !{!"_ZTS15.kmp_privates.t", !22, i64 0}
!34 = !DILocation(line: 62, column: 1, scope: !16)
!35 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 58, type: !36, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !55)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !39, !42, !45, !50, !51}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !42, null}
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_structure_type, scope: !16, file: !3, line: 58, flags: DIFlagFwdDecl)
!55 = !{!56, !57, !58, !59, !60, !61}
!56 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !35, type: !39, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".privates.", arg: 3, scope: !35, type: !42, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !35, type: !45, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !35, type: !50, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "__context", arg: 6, scope: !35, type: !51, flags: DIFlagArtificial)
!62 = !DILocation(line: 0, scope: !35)
!63 = !{!32, !32, i64 0}
!64 = !DILocation(line: 59, column: 3, scope: !35)
!65 = !DILocation(line: 58, column: 1, scope: !35)
!66 = !DILocation(line: 60, column: 11, scope: !67)
!67 = distinct !DILexicalBlock(scope: !35, file: !3, line: 59, column: 3)
!68 = !DILocation(line: 60, column: 12, scope: !67)
!69 = !DILocation(line: 60, column: 7, scope: !67)
!70 = !DILocation(line: 60, column: 5, scope: !67)
!71 = !DILocation(line: 60, column: 9, scope: !67)
!72 = !DILocation(line: 61, column: 3, scope: !35)
!73 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 58, type: !74, scopeLine: 58, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !75)
!74 = !DISubroutineType(types: !4)
!75 = !{!76, !81}
!76 = !DILocalVariable(arg: 1, scope: !73, type: !77, flags: DIFlagArtificial)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS15.kmp_privates.t")
!81 = !DILocalVariable(arg: 2, scope: !73, type: !82, flags: DIFlagArtificial)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!86 = !DILocation(line: 0, scope: !73)
!87 = !DILocation(line: 58, column: 1, scope: !73)
!88 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 58, type: !74, scopeLine: 58, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!89 = !{!90, !91}
!90 = !DILocalVariable(arg: 1, scope: !88, type: !7, flags: DIFlagArtificial)
!91 = !DILocalVariable(arg: 2, scope: !88, type: !92, flags: DIFlagArtificial)
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS24kmp_task_t_with_privates")
!95 = !DILocation(line: 0, scope: !88)
!96 = !DILocation(line: 58, column: 1, scope: !88)
!97 = !{!30, !32, i64 0}
!98 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 64, type: !99, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{!7}
!101 = !{!102}
!102 = !DILocalVariable(name: "i", scope: !98, file: !3, line: 66, type: !7)
!103 = !DILocation(line: 66, column: 3, scope: !98)
!104 = !DILocation(line: 66, column: 7, scope: !98)
!105 = !DILocation(line: 67, column: 1, scope: !98)
!106 = !DILocation(line: 79, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !98, file: !3, line: 79, column: 3)
!108 = !DILocation(line: 79, column: 8, scope: !107)
!109 = !DILocation(line: 79, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 79, column: 3)
!111 = !DILocation(line: 79, column: 14, scope: !110)
!112 = !DILocation(line: 79, column: 3, scope: !107)
!113 = !DILocation(line: 82, column: 11, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 82, column: 9)
!115 = distinct !DILexicalBlock(scope: !110, file: !3, line: 80, column: 3)
!116 = !DILocation(line: 82, column: 9, scope: !114)
!117 = !DILocation(line: 82, column: 16, scope: !114)
!118 = !DILocation(line: 82, column: 17, scope: !114)
!119 = !DILocation(line: 82, column: 13, scope: !114)
!120 = !DILocation(line: 82, column: 9, scope: !115)
!121 = !DILocation(line: 84, column: 56, scope: !122)
!122 = distinct !DILexicalBlock(scope: !114, file: !3, line: 83, column: 5)
!123 = !DILocation(line: 84, column: 61, scope: !122)
!124 = !DILocation(line: 84, column: 59, scope: !122)
!125 = !DILocation(line: 84, column: 65, scope: !122)
!126 = !DILocation(line: 84, column: 66, scope: !122)
!127 = !DILocation(line: 84, column: 7, scope: !122)
!128 = !DILocation(line: 85, column: 5, scope: !122)
!129 = !DILocation(line: 86, column: 3, scope: !115)
!130 = !DILocation(line: 79, column: 23, scope: !110)
!131 = !DILocation(line: 79, column: 3, scope: !110)
!132 = distinct !{!132, !112, !133, !134}
!133 = !DILocation(line: 86, column: 3, scope: !107)
!134 = !{!"llvm.loop.unroll.disable"}
!135 = !DILocation(line: 88, column: 1, scope: !98)
!136 = !DILocation(line: 87, column: 3, scope: !98)
!137 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 68, type: !138, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !39, !39, !140}
!140 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!141 = !{!142, !143, !144}
!142 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !137, type: !39, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !137, type: !39, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: "i", arg: 3, scope: !137, file: !3, line: 66, type: !140)
!145 = !DILocation(line: 0, scope: !137)
!146 = !DILocation(line: 66, column: 7, scope: !137)
!147 = !DILocation(line: 68, column: 3, scope: !137)
!148 = !DILocation(line: 69, column: 1, scope: !149)
!149 = distinct !DILexicalBlock(scope: !137, file: !3, line: 68, column: 3)
!150 = !DILocation(line: 71, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 71, column: 7)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 70, column: 5)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 69, column: 1)
!154 = !DILocation(line: 71, column: 12, scope: !151)
!155 = !DILocation(line: 71, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !3, line: 71, column: 7)
!157 = !DILocation(line: 71, column: 18, scope: !156)
!158 = !DILocation(line: 71, column: 7, scope: !151)
!159 = !DILocation(line: 73, column: 18, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 72, column: 7)
!161 = !DILocation(line: 73, column: 9, scope: !160)
!162 = !DILocation(line: 74, column: 7, scope: !160)
!163 = !DILocation(line: 71, column: 27, scope: !156)
!164 = !DILocation(line: 71, column: 7, scope: !156)
!165 = distinct !{!165, !158, !166, !134}
!166 = !DILocation(line: 74, column: 7, scope: !151)
!167 = !DILocation(line: 0, scope: !160)
!168 = !DILocation(line: 75, column: 5, scope: !152)
!169 = !DILocation(line: 69, column: 19, scope: !153)
!170 = !DILocation(line: 76, column: 3, scope: !137)
!171 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 67, type: !138, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!172 = !{!173, !174, !175}
!173 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !171, type: !39, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !171, type: !39, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: "i", arg: 3, scope: !171, type: !140, flags: DIFlagArtificial)
!176 = !DILocation(line: 0, scope: !171)
!177 = !DILocation(line: 67, column: 1, scope: !171)
!178 = !{!179}
!179 = !{i64 2, i64 -1, i64 -1, i1 true}
