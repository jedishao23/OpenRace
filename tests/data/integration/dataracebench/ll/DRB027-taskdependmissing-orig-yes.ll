; ModuleID = 'DRB027-taskdependmissing-orig-yes.c'
source_filename = "DRB027-taskdependmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [49 x i8] c";DRB027-taskdependmissing-orig-yes.c;main;58;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [49 x i8] c";DRB027-taskdependmissing-orig-yes.c;main;60;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [49 x i8] c";DRB027-taskdependmissing-orig-yes.c;main;62;1;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [49 x i8] c";DRB027-taskdependmissing-orig-yes.c;main;57;1;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @7, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"i=%d\0A\00", align 1

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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !23
  %2 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !40
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !40
  store i32* %i, i32** %i.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !37, metadata !DIExpression()), !dbg !41
  %0 = load i32*, i32** %i.addr, align 8, !dbg !42, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !42
  %2 = load i32, i32* %1, align 4, !dbg !42, !tbaa !17
  %3 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %2), !dbg !42
  %4 = icmp ne i32 %3, 0, !dbg !42
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !42

omp_if.then:                                      ; preds = %entry
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !43
  store i32* %0, i32** %5, align 8, !dbg !43, !tbaa !38
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @3, i32 %2, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !43
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !43
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !43
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !43
  %10 = load i8*, i8** %9, align 8, !dbg !43, !tbaa !46
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !43, !tbaa.struct !49
  %12 = call i32 @__kmpc_omp_task(%struct.ident_t* @3, i32 %2, i8* %6), !dbg !43
  %13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !50
  store i32* %0, i32** %13, align 8, !dbg !50, !tbaa !38
  %14 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @5, i32 %2, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !50
  %15 = bitcast i8* %14 to %struct.kmp_task_t_with_privates.1*, !dbg !50
  %16 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %15, i32 0, i32 0, !dbg !50
  %17 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %16, i32 0, i32 0, !dbg !50
  %18 = load i8*, i8** %17, align 8, !dbg !50, !tbaa !46
  %19 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false), !dbg !50, !tbaa.struct !49
  %20 = call i32 @__kmpc_omp_task(%struct.ident_t* @5, i32 %2, i8* %14), !dbg !50
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %2), !dbg !51
  br label %omp_if.end, !dbg !51

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @6, i32 %2), !dbg !52
  ret void, !dbg !53
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #5 !dbg !54 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !71, metadata !DIExpression()), !dbg !77
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !72, metadata !DIExpression()), !dbg !77
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !73, metadata !DIExpression()), !dbg !77
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !74, metadata !DIExpression()), !dbg !77
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !75, metadata !DIExpression()), !dbg !77
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !78
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !78
  %2 = load i32*, i32** %1, align 8, !dbg !78, !tbaa !79
  store i32 1, i32* %2, align 4, !dbg !81, !tbaa !17
  ret void, !dbg !82
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !83 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !86, metadata !DIExpression()), !dbg !98
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !87, metadata !DIExpression()), !dbg !98
  %2 = load i32, i32* %.addr, align 4, !dbg !99, !tbaa !17
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !99
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !99
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !99
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !99
  %7 = load i8*, i8** %6, align 8, !dbg !99, !tbaa !46
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !99
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !99
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #4, !dbg !99
  ret i32 0, !dbg !99
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #4

; Function Attrs: alwaysinline nounwind sspstrong uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #5 !dbg !100 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !108, metadata !DIExpression()), !dbg !114
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !109, metadata !DIExpression()), !dbg !114
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !110, metadata !DIExpression()), !dbg !114
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !111, metadata !DIExpression()), !dbg !114
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !112, metadata !DIExpression()), !dbg !114
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !115
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !115
  %2 = load i32*, i32** %1, align 8, !dbg !115, !tbaa !79
  store i32 2, i32* %2, align 4, !dbg !116, !tbaa !17
  ret void, !dbg !117
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !118 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !17
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !120, metadata !DIExpression()), !dbg !127
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !121, metadata !DIExpression()), !dbg !127
  %2 = load i32, i32* %.addr, align 4, !dbg !128, !tbaa !17
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !128
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !128
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !128
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !128
  %7 = load i8*, i8** %6, align 8, !dbg !128, !tbaa !46
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !128
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !128
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #4, !dbg !128
  ret i32 0, !dbg !128
}

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !129 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !131, metadata !DIExpression()), !dbg !134
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !132, metadata !DIExpression()), !dbg !134
  store i32* %i, i32** %i.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load i32*, i32** %i.addr, align 8, !dbg !135, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !135, !tbaa !38
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !135, !tbaa !38
  %3 = load i32*, i32** %i.addr, align 8, !dbg !135, !tbaa !38
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !135
  ret void, !dbg !135
}

; Function Attrs: nounwind
declare !callback !136 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB027-taskdependmissing-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 56, type: !12)
!15 = !DILocation(line: 56, column: 3, scope: !9)
!16 = !DILocation(line: 56, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 57, column: 1, scope: !9)
!22 = !DILocation(line: 66, column: 20, scope: !9)
!23 = !DILocation(line: 66, column: 3, scope: !9)
!24 = !DILocation(line: 68, column: 1, scope: !9)
!25 = !DILocation(line: 67, column: 3, scope: !9)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !27, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "i", arg: 3, scope: !26, file: !1, line: 56, type: !33)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !19, i64 0}
!40 = !DILocation(line: 0, scope: !26)
!41 = !DILocation(line: 56, column: 7, scope: !26)
!42 = !DILocation(line: 58, column: 1, scope: !26)
!43 = !DILocation(line: 60, column: 1, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 59, column: 3)
!45 = distinct !DILexicalBlock(scope: !26, file: !1, line: 58, column: 1)
!46 = !{!47, !39, i64 0}
!47 = !{!"kmp_task_t_with_privates", !48, i64 0}
!48 = !{!"kmp_task_t", !39, i64 0, !39, i64 8, !18, i64 16, !19, i64 24, !19, i64 32}
!49 = !{i64 0, i64 8, !38}
!50 = !DILocation(line: 62, column: 1, scope: !44)
!51 = !DILocation(line: 64, column: 3, scope: !44)
!52 = !DILocation(line: 58, column: 19, scope: !45)
!53 = !DILocation(line: 58, column: 19, scope: !26)
!54 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !55, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !70)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !32, !29, !57, !60, !65, !66}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !57, null}
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 60, size: 64, elements: !2)
!70 = !{!71, !72, !73, !74, !75, !76}
!71 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !32, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !54, type: !29, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".privates.", arg: 3, scope: !54, type: !57, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !54, type: !60, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !54, type: !65, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "__context", arg: 6, scope: !54, type: !66, flags: DIFlagArtificial)
!77 = !DILocation(line: 0, scope: !54)
!78 = !DILocation(line: 61, column: 5, scope: !54)
!79 = !{!80, !39, i64 0}
!80 = !{!"", !39, i64 0}
!81 = !DILocation(line: 61, column: 7, scope: !54)
!82 = !DILocation(line: 61, column: 9, scope: !54)
!83 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 60, type: !84, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!84 = !DISubroutineType(types: !2)
!85 = !{!86, !87}
!86 = !DILocalVariable(arg: 1, scope: !83, type: !12, flags: DIFlagArtificial)
!87 = !DILocalVariable(arg: 2, scope: !83, type: !88, flags: DIFlagArtificial)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !90, file: !1, baseType: !93, size: 320)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !94)
!94 = !{!95, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !1, baseType: !96, size: 64, offset: 192)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !1, baseType: !96, size: 64, offset: 256)
!98 = !DILocation(line: 0, scope: !83)
!99 = !DILocation(line: 60, column: 1, scope: !83)
!100 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 63, type: !101, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !107)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !32, !29, !57, !60, !65, !103}
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 62, size: 64, elements: !2)
!107 = !{!108, !109, !110, !111, !112, !113}
!108 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !100, type: !32, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !100, type: !29, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: ".privates.", arg: 3, scope: !100, type: !57, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !100, type: !60, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !100, type: !65, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "__context", arg: 6, scope: !100, type: !103, flags: DIFlagArtificial)
!114 = !DILocation(line: 0, scope: !100)
!115 = !DILocation(line: 63, column: 5, scope: !100)
!116 = !DILocation(line: 63, column: 7, scope: !100)
!117 = !DILocation(line: 63, column: 9, scope: !100)
!118 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 62, type: !84, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!119 = !{!120, !121}
!120 = !DILocalVariable(arg: 1, scope: !118, type: !12, flags: DIFlagArtificial)
!121 = !DILocalVariable(arg: 2, scope: !118, type: !122, flags: DIFlagArtificial)
!122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !1, baseType: !93, size: 320)
!127 = !DILocation(line: 0, scope: !118)
!128 = !DILocation(line: 62, column: 1, scope: !118)
!129 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 57, type: !27, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !129, type: !29, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !129, type: !29, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "i", arg: 3, scope: !129, type: !33, flags: DIFlagArtificial)
!134 = !DILocation(line: 0, scope: !129)
!135 = !DILocation(line: 57, column: 1, scope: !129)
!136 = !{!137}
!137 = !{i64 2, i64 -1, i64 -1, i1 true}
