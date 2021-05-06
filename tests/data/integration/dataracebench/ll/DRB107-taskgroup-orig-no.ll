; ModuleID = 'DRB107-taskgroup-orig-no.c'
source_filename = "DRB107-taskgroup-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;59;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;61;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;63;1;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;69;1;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @6, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;57;1;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @9, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"result=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"result==2\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"DRB107-taskgroup-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %result to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %result, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %result, align 4, !dbg !16, !tbaa !17
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @10, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %result), !dbg !21
  %1 = load i32, i32* %result, align 4, !dbg !22, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !23
  %2 = load i32, i32* %result, align 4, !dbg !24, !tbaa !17
  %cmp = icmp eq i32 %2, 2, !dbg !24
  br i1 %cmp, label %if.then, label %if.else, !dbg !27

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !27

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !24
  unreachable, !dbg !24

if.end:                                           ; preds = %if.then
  %3 = bitcast i32* %result to i8*, !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !28
  ret i32 0, !dbg !29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %result) #3 !dbg !30 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !39, metadata !DIExpression()), !dbg !44
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !40, metadata !DIExpression()), !dbg !44
  store i32* %result, i32** %result.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !41, metadata !DIExpression()), !dbg !45
  %0 = load i32*, i32** %result.addr, align 8, !dbg !46, !tbaa !42
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !47
  %2 = load i32, i32* %1, align 4, !dbg !47, !tbaa !17
  %3 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %2), !dbg !47
  %4 = icmp ne i32 %3, 0, !dbg !47
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !47

omp_if.then:                                      ; preds = %entry
  call void @__kmpc_taskgroup(%struct.ident_t* @3, i32 %2), !dbg !49
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !52
  store i32* %0, i32** %5, align 8, !dbg !52, !tbaa !42
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @5, i32 %2, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !52
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !52
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !52
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !52
  %10 = load i8*, i8** %9, align 8, !dbg !52, !tbaa !55
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !52, !tbaa.struct !58
  %12 = call i32 @__kmpc_omp_task(%struct.ident_t* @5, i32 %2, i8* %6), !dbg !52
  call void @__kmpc_end_taskgroup(%struct.ident_t* @3, i32 %2), !dbg !59
  %13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !60
  store i32* %0, i32** %13, align 8, !dbg !60, !tbaa !42
  %14 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @7, i32 %2, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !60
  %15 = bitcast i8* %14 to %struct.kmp_task_t_with_privates.1*, !dbg !60
  %16 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %15, i32 0, i32 0, !dbg !60
  %17 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %16, i32 0, i32 0, !dbg !60
  %18 = load i8*, i8** %17, align 8, !dbg !60, !tbaa !55
  %19 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !60
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false), !dbg !60, !tbaa.struct !58
  %20 = call i32 @__kmpc_omp_task(%struct.ident_t* @7, i32 %2, i8* %14), !dbg !60
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %2), !dbg !61
  br label %omp_if.end, !dbg !61

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @8, i32 %2), !dbg !62
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
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #5 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !81, metadata !DIExpression()), !dbg !87
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !82, metadata !DIExpression()), !dbg !87
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !83, metadata !DIExpression()), !dbg !87
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !84, metadata !DIExpression()), !dbg !87
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !85, metadata !DIExpression()), !dbg !87
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !88
  %call = call i32 @sleep(i32 3), !dbg !89
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !91
  %2 = load i32*, i32** %1, align 8, !dbg !91, !tbaa !92
  store i32 1, i32* %2, align 4, !dbg !94, !tbaa !17
  ret void, !dbg !95
}

declare !dbg !96 i32 @sleep(i32) #6

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !101 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !104, metadata !DIExpression()), !dbg !116
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !105, metadata !DIExpression()), !dbg !116
  %2 = load i32, i32* %.addr, align 4, !dbg !117, !tbaa !17
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !117
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !117
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !117
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !117
  %7 = load i8*, i8** %6, align 8, !dbg !117, !tbaa !55
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !117
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !117
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #4, !dbg !117
  ret i32 0, !dbg !117
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #5 !dbg !118 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !126, metadata !DIExpression()), !dbg !132
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !127, metadata !DIExpression()), !dbg !132
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !128, metadata !DIExpression()), !dbg !132
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !129, metadata !DIExpression()), !dbg !132
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !130, metadata !DIExpression()), !dbg !132
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !133
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !134
  %2 = load i32*, i32** %1, align 8, !dbg !134, !tbaa !92
  store i32 2, i32* %2, align 4, !dbg !136, !tbaa !17
  ret void, !dbg !137
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !138 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !140, metadata !DIExpression()), !dbg !147
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !141, metadata !DIExpression()), !dbg !147
  %2 = load i32, i32* %.addr, align 4, !dbg !148, !tbaa !17
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !148
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !148
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !148
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !148
  %7 = load i8*, i8** %6, align 8, !dbg !148, !tbaa !55
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !148
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !148
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #4, !dbg !148
  ret i32 0, !dbg !148
}

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %result) #3 !dbg !149 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !151, metadata !DIExpression()), !dbg !154
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !152, metadata !DIExpression()), !dbg !154
  store i32* %result, i32** %result.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i32*, i32** %result.addr, align 8, !dbg !155, !tbaa !42
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !155, !tbaa !42
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !155, !tbaa !42
  %3 = load i32*, i32** %result.addr, align 8, !dbg !155, !tbaa !42
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !155
  ret void, !dbg !155
}

; Function Attrs: nounwind
declare !callback !156 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB107-taskgroup-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !10, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "result", scope: !9, file: !1, line: 56, type: !12)
!15 = !DILocation(line: 56, column: 3, scope: !9)
!16 = !DILocation(line: 56, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 57, column: 1, scope: !9)
!22 = !DILocation(line: 75, column: 26, scope: !9)
!23 = !DILocation(line: 75, column: 3, scope: !9)
!24 = !DILocation(line: 76, column: 3, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 76, column: 3)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 76, column: 3)
!27 = !DILocation(line: 76, column: 3, scope: !26)
!28 = !DILocation(line: 78, column: 1, scope: !9)
!29 = !DILocation(line: 77, column: 3, scope: !9)
!30 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !31, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !33, !37}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!37 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!38 = !{!39, !40, !41}
!39 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !30, type: !33, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !30, type: !33, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: "result", arg: 3, scope: !30, file: !1, line: 56, type: !37)
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !19, i64 0}
!44 = !DILocation(line: 0, scope: !30)
!45 = !DILocation(line: 56, column: 7, scope: !30)
!46 = !DILocation(line: 58, column: 3, scope: !30)
!47 = !DILocation(line: 59, column: 1, scope: !48)
!48 = distinct !DILexicalBlock(scope: !30, file: !1, line: 58, column: 3)
!49 = !DILocation(line: 61, column: 1, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 60, column: 5)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 59, column: 1)
!52 = !DILocation(line: 63, column: 1, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 62, column: 7)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 61, column: 1)
!55 = !{!56, !43, i64 0}
!56 = !{!"kmp_task_t_with_privates", !57, i64 0}
!57 = !{!"kmp_task_t", !43, i64 0, !43, i64 8, !18, i64 16, !19, i64 24, !19, i64 32}
!58 = !{i64 0, i64 8, !42}
!59 = !DILocation(line: 68, column: 7, scope: !53)
!60 = !DILocation(line: 69, column: 1, scope: !50)
!61 = !DILocation(line: 73, column: 5, scope: !50)
!62 = !DILocation(line: 59, column: 19, scope: !51)
!63 = !DILocation(line: 74, column: 3, scope: !30)
!64 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !65, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !80)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !36, !33, !67, !70, !75, !76}
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
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 63, size: 64, elements: !2)
!80 = !{!81, !82, !83, !84, !85, !86}
!81 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !36, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !64, type: !33, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".privates.", arg: 3, scope: !64, type: !67, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !64, type: !70, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !64, type: !75, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "__context", arg: 6, scope: !64, type: !76, flags: DIFlagArtificial)
!87 = !DILocation(line: 0, scope: !64)
!88 = !DILocation(line: 64, column: 9, scope: !64)
!89 = !DILocation(line: 65, column: 11, scope: !90)
!90 = distinct !DILexicalBlock(scope: !64, file: !1, line: 64, column: 9)
!91 = !DILocation(line: 66, column: 11, scope: !90)
!92 = !{!93, !43, i64 0}
!93 = !{!"", !43, i64 0}
!94 = !DILocation(line: 66, column: 18, scope: !90)
!95 = !DILocation(line: 67, column: 9, scope: !64)
!96 = !DISubprogram(name: "sleep", scope: !97, file: !97, line: 453, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!97 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !100}
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 63, type: !102, scopeLine: 63, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!102 = !DISubroutineType(types: !2)
!103 = !{!104, !105}
!104 = !DILocalVariable(arg: 1, scope: !101, type: !12, flags: DIFlagArtificial)
!105 = !DILocalVariable(arg: 2, scope: !101, type: !106, flags: DIFlagArtificial)
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !1, baseType: !111, size: 320)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !112)
!112 = !{!113, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !111, file: !1, baseType: !114, size: 64, offset: 192)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !111, file: !1, baseType: !114, size: 64, offset: 256)
!116 = !DILocation(line: 0, scope: !101)
!117 = !DILocation(line: 63, column: 1, scope: !101)
!118 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 71, type: !119, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !36, !33, !67, !70, !75, !121}
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 69, size: 64, elements: !2)
!125 = !{!126, !127, !128, !129, !130, !131}
!126 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !118, type: !36, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !118, type: !33, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".privates.", arg: 3, scope: !118, type: !67, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !118, type: !70, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !118, type: !75, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "__context", arg: 6, scope: !118, type: !121, flags: DIFlagArtificial)
!132 = !DILocation(line: 0, scope: !118)
!133 = !DILocation(line: 70, column: 7, scope: !118)
!134 = !DILocation(line: 71, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !118, file: !1, line: 70, column: 7)
!136 = !DILocation(line: 71, column: 16, scope: !135)
!137 = !DILocation(line: 72, column: 7, scope: !118)
!138 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 69, type: !102, scopeLine: 69, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!139 = !{!140, !141}
!140 = !DILocalVariable(arg: 1, scope: !138, type: !12, flags: DIFlagArtificial)
!141 = !DILocalVariable(arg: 2, scope: !138, type: !142, flags: DIFlagArtificial)
!142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !1, baseType: !111, size: 320)
!147 = !DILocation(line: 0, scope: !138)
!148 = !DILocation(line: 69, column: 1, scope: !138)
!149 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 57, type: !31, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!150 = !{!151, !152, !153}
!151 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !149, type: !33, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !149, type: !33, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: "result", arg: 3, scope: !149, type: !37, flags: DIFlagArtificial)
!154 = !DILocation(line: 0, scope: !149)
!155 = !DILocation(line: 57, column: 1, scope: !149)
!156 = !{!157}
!157 = !{i64 2, i64 -1, i64 -1, i1 true}
