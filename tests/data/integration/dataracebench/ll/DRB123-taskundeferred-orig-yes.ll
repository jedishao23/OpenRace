; ModuleID = 'DRB123-taskundeferred-orig-yes.c'
source_filename = "DRB123-taskundeferred-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@0 = private unnamed_addr constant [46 x i8] c";DRB123-taskundeferred-orig-yes.c;main;25;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [46 x i8] c";DRB123-taskundeferred-orig-yes.c;main;28;7;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [47 x i8] c";DRB123-taskundeferred-orig-yes.c;main;25;32;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !25
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !28
  %0 = bitcast i32* %var to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %var, metadata !19, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %var, align 4, !dbg !30, !tbaa !21
  %1 = bitcast i32* %i to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !32
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @6, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %i, i32* %var), !dbg !33
  %2 = load i32, i32* %var, align 4, !dbg !34, !tbaa !21
  %cmp = icmp ne i32 %2, 10, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %var, align 4, !dbg !38, !tbaa !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3), !dbg !39
  br label %if.end, !dbg !39

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !40
  %5 = bitcast i32* %var to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !40
  ret i32 0, !dbg !41
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i, i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !42 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !51, metadata !DIExpression()), !dbg !55
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !52, metadata !DIExpression()), !dbg !55
  store i32* %i, i32** %i.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !53, metadata !DIExpression()), !dbg !56
  store i32* %var, i32** %var.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !54, metadata !DIExpression()), !dbg !57
  %0 = load i32*, i32** %i.addr, align 8, !dbg !58, !tbaa !26
  %1 = load i32*, i32** %var.addr, align 8, !dbg !58, !tbaa !26
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !58, !tbaa !21
  store i32 0, i32* %.omp.sections.ub., align 4, !dbg !58, !tbaa !21
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !58, !tbaa !21
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !58, !tbaa !21
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !58
  %3 = load i32, i32* %2, align 4, !dbg !58, !tbaa !21
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %3, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !59
  %4 = load i32, i32* %.omp.sections.ub., align 4, !dbg !58, !tbaa !21
  %5 = icmp slt i32 %4, 0, !dbg !58
  %6 = select i1 %5, i32 %4, i32 0, !dbg !58
  store i32 %6, i32* %.omp.sections.ub., align 4, !dbg !58, !tbaa !21
  %7 = load i32, i32* %.omp.sections.lb., align 4, !dbg !58, !tbaa !21
  store i32 %7, i32* %.omp.sections.iv., align 4, !dbg !58, !tbaa !21
  br label %omp.inner.for.cond, !dbg !58

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %8 = load i32, i32* %.omp.sections.iv., align 4, !dbg !59, !tbaa !21
  %9 = load i32, i32* %.omp.sections.ub., align 4, !dbg !59, !tbaa !21
  %cmp = icmp sle i32 %8, %9, !dbg !59
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !58

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !58, !tbaa !21
  switch i32 %10, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
  ], !dbg !58

.omp.sections.case:                               ; preds = %omp.inner.for.body
  store i32 0, i32* %0, align 4, !dbg !60, !tbaa !21
  br label %for.cond, !dbg !62

for.cond:                                         ; preds = %for.inc, %.omp.sections.case
  %11 = load i32, i32* %0, align 4, !dbg !63, !tbaa !21
  %cmp1 = icmp slt i32 %11, 10, !dbg !65
  br i1 %cmp1, label %for.body, label %for.end, !dbg !66

for.body:                                         ; preds = %for.cond
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !67
  store i32* %1, i32** %12, align 8, !dbg !67, !tbaa !26
  %13 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %3, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !67
  %14 = bitcast i8* %13 to %struct.kmp_task_t_with_privates*, !dbg !67
  %15 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %14, i32 0, i32 0, !dbg !67
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %15, i32 0, i32 0, !dbg !67
  %17 = load i8*, i8** %16, align 8, !dbg !67, !tbaa !69
  %18 = bitcast %struct.anon* %agg.captured to i8*, !dbg !67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false), !dbg !67, !tbaa.struct !72
  %19 = call i32 @__kmpc_omp_task(%struct.ident_t* @3, i32 %3, i8* %13), !dbg !67
  br label %for.inc, !dbg !73

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %0, align 4, !dbg !74, !tbaa !21
  %inc = add nsw i32 %20, 1, !dbg !74
  store i32 %inc, i32* %0, align 4, !dbg !74, !tbaa !21
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  br label %.omp.sections.exit, !dbg !77

.omp.sections.exit:                               ; preds = %for.end, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !77

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %21 = load i32, i32* %.omp.sections.iv., align 4, !dbg !59, !tbaa !21
  %inc2 = add nsw i32 %21, 1, !dbg !59
  store i32 %inc2, i32* %.omp.sections.iv., align 4, !dbg !59, !tbaa !21
  br label %omp.inner.for.cond, !dbg !77, !llvm.loop !79

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  call void @__kmpc_for_static_fini(%struct.ident_t* @5, i32 %3), !dbg !80
  ret void, !dbg !81
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !82 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !99, metadata !DIExpression()), !dbg !105
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !100, metadata !DIExpression()), !dbg !105
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !101, metadata !DIExpression()), !dbg !105
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !102, metadata !DIExpression()), !dbg !105
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !103, metadata !DIExpression()), !dbg !105
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !106
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !107
  %2 = load i32*, i32** %1, align 8, !dbg !107, !tbaa !109
  %3 = load i32, i32* %2, align 4, !dbg !111, !tbaa !21
  %inc = add nsw i32 %3, 1, !dbg !111
  store i32 %inc, i32* %2, align 4, !dbg !111, !tbaa !21
  ret void, !dbg !112
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !113 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !116, metadata !DIExpression()), !dbg !128
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !117, metadata !DIExpression()), !dbg !128
  %2 = load i32, i32* %.addr, align 4, !dbg !129, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !129
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !129
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !129
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !129
  %7 = load i8*, i8** %6, align 8, !dbg !129, !tbaa !69
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !129
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !129
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #5, !dbg !129
  ret i32 0, !dbg !129
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i, i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !130 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !132, metadata !DIExpression()), !dbg !136
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !133, metadata !DIExpression()), !dbg !136
  store i32* %i, i32** %i.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !134, metadata !DIExpression()), !dbg !136
  store i32* %var, i32** %var.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load i32*, i32** %i.addr, align 8, !dbg !137, !tbaa !26
  %1 = load i32*, i32** %var.addr, align 8, !dbg !137, !tbaa !26
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !137, !tbaa !26
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !137, !tbaa !26
  %4 = load i32*, i32** %i.addr, align 8, !dbg !137, !tbaa !26
  %5 = load i32*, i32** %var.addr, align 8, !dbg !137, !tbaa !26
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !137
  ret void, !dbg !137
}

; Function Attrs: nounwind
declare !callback !138 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare i32 @printf(i8*, ...) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB123-taskundeferred-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !10, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 20, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 20, type: !13)
!19 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 22, type: !12)
!20 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 23, type: !12)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 20, column: 14, scope: !9)
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !DILocation(line: 20, column: 26, scope: !9)
!29 = !DILocation(line: 22, column: 3, scope: !9)
!30 = !DILocation(line: 22, column: 7, scope: !9)
!31 = !DILocation(line: 23, column: 3, scope: !9)
!32 = !DILocation(line: 23, column: 7, scope: !9)
!33 = !DILocation(line: 25, column: 3, scope: !9)
!34 = !DILocation(line: 35, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !9, file: !1, line: 35, column: 7)
!36 = !DILocation(line: 35, column: 10, scope: !35)
!37 = !DILocation(line: 35, column: 7, scope: !9)
!38 = !DILocation(line: 35, column: 30, scope: !35)
!39 = !DILocation(line: 35, column: 16, scope: !35)
!40 = !DILocation(line: 37, column: 1, scope: !9)
!41 = !DILocation(line: 36, column: 3, scope: !9)
!42 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 26, type: !43, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !50)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !45, !49, !49}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!50 = !{!51, !52, !53, !54}
!51 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !42, type: !45, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !42, type: !45, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "i", arg: 3, scope: !42, file: !1, line: 23, type: !49)
!54 = !DILocalVariable(name: "var", arg: 4, scope: !42, file: !1, line: 22, type: !49)
!55 = !DILocation(line: 0, scope: !42)
!56 = !DILocation(line: 23, column: 7, scope: !42)
!57 = !DILocation(line: 22, column: 7, scope: !42)
!58 = !DILocation(line: 26, column: 3, scope: !42)
!59 = !DILocation(line: 25, column: 3, scope: !42)
!60 = !DILocation(line: 27, column: 12, scope: !61)
!61 = distinct !DILexicalBlock(scope: !42, file: !1, line: 27, column: 5)
!62 = !DILocation(line: 27, column: 10, scope: !61)
!63 = !DILocation(line: 27, column: 17, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 27, column: 5)
!65 = !DILocation(line: 27, column: 19, scope: !64)
!66 = !DILocation(line: 27, column: 5, scope: !61)
!67 = !DILocation(line: 28, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 27, column: 30)
!69 = !{!70, !27, i64 0}
!70 = !{!"kmp_task_t_with_privates", !71, i64 0}
!71 = !{!"kmp_task_t", !27, i64 0, !27, i64 8, !22, i64 16, !23, i64 24, !23, i64 32}
!72 = !{i64 0, i64 8, !26}
!73 = !DILocation(line: 32, column: 5, scope: !68)
!74 = !DILocation(line: 27, column: 26, scope: !64)
!75 = !DILocation(line: 27, column: 5, scope: !64)
!76 = distinct !{!76, !66, !77, !78}
!77 = !DILocation(line: 32, column: 5, scope: !61)
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !59, !80}
!80 = !DILocation(line: 25, column: 32, scope: !42)
!81 = !DILocation(line: 33, column: 3, scope: !42)
!82 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 30, type: !83, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !48, !45, !85, !88, !93, !94}
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !85, null}
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !42, file: !1, line: 28, size: 64, elements: !2)
!98 = !{!99, !100, !101, !102, !103, !104}
!99 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !48, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !82, type: !45, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".privates.", arg: 3, scope: !82, type: !85, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !82, type: !88, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !82, type: !93, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "__context", arg: 6, scope: !82, type: !94, flags: DIFlagArtificial)
!105 = !DILocation(line: 0, scope: !82)
!106 = !DILocation(line: 29, column: 7, scope: !82)
!107 = !DILocation(line: 30, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !82, file: !1, line: 29, column: 7)
!109 = !{!110, !27, i64 0}
!110 = !{!"", !27, i64 0}
!111 = !DILocation(line: 30, column: 12, scope: !108)
!112 = !DILocation(line: 31, column: 7, scope: !82)
!113 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 28, type: !114, scopeLine: 28, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!114 = !DISubroutineType(types: !2)
!115 = !{!116, !117}
!116 = !DILocalVariable(arg: 1, scope: !113, type: !12, flags: DIFlagArtificial)
!117 = !DILocalVariable(arg: 2, scope: !113, type: !118, flags: DIFlagArtificial)
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !1, baseType: !123, size: 320)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !124)
!124 = !{!125, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !1, baseType: !126, size: 64, offset: 192)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !1, baseType: !126, size: 64, offset: 256)
!128 = !DILocation(line: 0, scope: !113)
!129 = !DILocation(line: 28, column: 7, scope: !113)
!130 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 25, type: !43, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!131 = !{!132, !133, !134, !135}
!132 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !130, type: !45, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !130, type: !45, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: "i", arg: 3, scope: !130, type: !49, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: "var", arg: 4, scope: !130, type: !49, flags: DIFlagArtificial)
!136 = !DILocation(line: 0, scope: !130)
!137 = !DILocation(line: 25, column: 3, scope: !130)
!138 = !{!139}
!139 = !{i64 2, i64 -1, i64 -1, i1 true}
