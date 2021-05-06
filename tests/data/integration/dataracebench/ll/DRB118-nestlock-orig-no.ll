; ModuleID = 'DRB118-nestlock-orig-no.c'
source_filename = "DRB118-nestlock-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.pair = type { i32, i32, %struct.omp_nest_lock_t }
%struct.omp_nest_lock_t = type { i8* }

@0 = private unnamed_addr constant [39 x i8] c";DRB118-nestlock-orig-no.c;main;42;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [40 x i8] c";DRB118-nestlock-orig-no.c;main;42;32;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @incr_a(%struct.pair* %p) #0 !dbg !9 {
entry:
  %p.addr = alloca %struct.pair*, align 8
  store %struct.pair* %p, %struct.pair** %p.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata %struct.pair** %p.addr, metadata !27, metadata !DIExpression()), !dbg !32
  %0 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !33, !tbaa !28
  %a = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 0, !dbg !34
  %1 = load i32, i32* %a, align 8, !dbg !35, !tbaa !36
  %add = add nsw i32 %1, 1, !dbg !35
  store i32 %add, i32* %a, align 8, !dbg !35, !tbaa !36
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @incr_b(%struct.pair* %p) #0 !dbg !41 {
entry:
  %p.addr = alloca %struct.pair*, align 8
  store %struct.pair* %p, %struct.pair** %p.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata %struct.pair** %p.addr, metadata !43, metadata !DIExpression()), !dbg !44
  %0 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !45, !tbaa !28
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 2, !dbg !46
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !47
  %1 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !48, !tbaa !28
  %b = getelementptr inbounds %struct.pair, %struct.pair* %1, i32 0, i32 1, !dbg !49
  %2 = load i32, i32* %b, align 4, !dbg !50, !tbaa !51
  %add = add nsw i32 %2, 1, !dbg !50
  store i32 %add, i32* %b, align 4, !dbg !50, !tbaa !51
  %3 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !52, !tbaa !28
  %lck1 = getelementptr inbounds %struct.pair, %struct.pair* %3, i32 0, i32 2, !dbg !53
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %lck1), !dbg !54
  ret void, !dbg !55
}

declare !dbg !56 void @omp_set_nest_lock(%struct.omp_nest_lock_t*) #2

declare !dbg !60 void @omp_unset_nest_lock(%struct.omp_nest_lock_t*) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !61 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca [1 x %struct.pair], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !74
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !68, metadata !DIExpression()), !dbg !75
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !69, metadata !DIExpression()), !dbg !76
  %0 = bitcast [1 x %struct.pair]* %p to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #5, !dbg !77
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]* %p, metadata !70, metadata !DIExpression()), !dbg !78
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !79
  %a = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 0, !dbg !79
  store i32 0, i32* %a, align 16, !dbg !80, !tbaa !36
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !81
  %b = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay1, i32 0, i32 1, !dbg !81
  store i32 0, i32* %b, align 4, !dbg !82, !tbaa !51
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !83
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay2, i32 0, i32 2, !dbg !83
  call void @omp_init_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !84
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [1 x %struct.pair]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [1 x %struct.pair]* %p), !dbg !85
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !86
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !86
  call void @omp_destroy_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !87
  %arraydecay5 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !88
  %b6 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay5, i32 0, i32 1, !dbg !88
  %1 = load i32, i32* %b6, align 4, !dbg !88, !tbaa !51
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !89
  %2 = bitcast [1 x %struct.pair]* %p to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %2) #5, !dbg !90
  ret i32 0, !dbg !91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !92 void @omp_init_nest_lock(%struct.omp_nest_lock_t*) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* nonnull align 8 dereferenceable(16) %p) #4 !dbg !93 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %p.addr = alloca [1 x %struct.pair]*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !105
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !105
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !104, metadata !DIExpression()), !dbg !106
  %0 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !107, !tbaa !28
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !107, !tbaa !74
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !107, !tbaa !74
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !107, !tbaa !74
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !107, !tbaa !74
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107
  %2 = load i32, i32* %1, align 4, !dbg !107, !tbaa !74
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %2, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !108
  %3 = load i32, i32* %.omp.sections.ub., align 4, !dbg !107, !tbaa !74
  %4 = icmp slt i32 %3, 1, !dbg !107
  %5 = select i1 %4, i32 %3, i32 1, !dbg !107
  store i32 %5, i32* %.omp.sections.ub., align 4, !dbg !107, !tbaa !74
  %6 = load i32, i32* %.omp.sections.lb., align 4, !dbg !107, !tbaa !74
  store i32 %6, i32* %.omp.sections.iv., align 4, !dbg !107, !tbaa !74
  br label %omp.inner.for.cond, !dbg !107

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %7 = load i32, i32* %.omp.sections.iv., align 4, !dbg !108, !tbaa !74
  %8 = load i32, i32* %.omp.sections.ub., align 4, !dbg !108, !tbaa !74
  %cmp = icmp sle i32 %7, %8, !dbg !108
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !107

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %9 = load i32, i32* %.omp.sections.iv., align 4, !dbg !107, !tbaa !74
  switch i32 %9, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case5
  ], !dbg !107

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !109
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 2, !dbg !109
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !112
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !113
  call void @incr_b(%struct.pair* %arraydecay1), !dbg !114
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !115
  call void @incr_a(%struct.pair* %arraydecay2), !dbg !116
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !117
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !117
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !118
  br label %.omp.sections.exit, !dbg !119

.omp.sections.case5:                              ; preds = %omp.inner.for.body
  %arraydecay6 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !120
  call void @incr_b(%struct.pair* %arraydecay6), !dbg !122
  br label %.omp.sections.exit, !dbg !123

.omp.sections.exit:                               ; preds = %.omp.sections.case5, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !123

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !108, !tbaa !74
  %inc = add nsw i32 %10, 1, !dbg !108
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !108, !tbaa !74
  br label %omp.inner.for.cond, !dbg !123, !llvm.loop !124

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %2), !dbg !125
  ret void, !dbg !126
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* nonnull align 8 dereferenceable(16) %p) #4 !dbg !127 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %p.addr = alloca [1 x %struct.pair]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !129, metadata !DIExpression()), !dbg !132
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !130, metadata !DIExpression()), !dbg !132
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !133, !tbaa !28
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !133, !tbaa !28
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !133, !tbaa !28
  %3 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !133, !tbaa !28
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [1 x %struct.pair]* %3) #5, !dbg !133
  ret void, !dbg !133
}

; Function Attrs: nounwind
declare !callback !134 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare !dbg !136 void @omp_destroy_nest_lock(%struct.omp_nest_lock_t*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB118-nestlock-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "incr_a", scope: !1, file: !1, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "pair", file: !1, line: 23, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 20, size: 128, elements: !15)
!15 = !{!16, !18, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !14, file: !1, line: 21, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !14, file: !1, line: 21, baseType: !17, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "lck", scope: !14, file: !1, line: 22, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_nest_lock_t", file: !21, line: 95, baseType: !22)
!21 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_nest_lock_t", file: !21, line: 93, size: 64, elements: !23)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !22, file: !21, line: 94, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !{!27}
!27 = !DILocalVariable(name: "p", arg: 1, scope: !9, file: !1, line: 25, type: !12)
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 25, column: 19, scope: !9)
!33 = !DILocation(line: 26, column: 3, scope: !9)
!34 = !DILocation(line: 26, column: 6, scope: !9)
!35 = !DILocation(line: 26, column: 8, scope: !9)
!36 = !{!37, !38, i64 0}
!37 = !{!"", !38, i64 0, !38, i64 4, !39, i64 8}
!38 = !{!"int", !30, i64 0}
!39 = !{!"omp_nest_lock_t", !29, i64 0}
!40 = !DILocation(line: 27, column: 1, scope: !9)
!41 = distinct !DISubprogram(name: "incr_b", scope: !1, file: !1, line: 28, type: !10, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!42 = !{!43}
!43 = !DILocalVariable(name: "p", arg: 1, scope: !41, file: !1, line: 28, type: !12)
!44 = !DILocation(line: 28, column: 19, scope: !41)
!45 = !DILocation(line: 29, column: 22, scope: !41)
!46 = !DILocation(line: 29, column: 25, scope: !41)
!47 = !DILocation(line: 29, column: 3, scope: !41)
!48 = !DILocation(line: 30, column: 5, scope: !41)
!49 = !DILocation(line: 30, column: 8, scope: !41)
!50 = !DILocation(line: 30, column: 10, scope: !41)
!51 = !{!37, !38, i64 4}
!52 = !DILocation(line: 31, column: 24, scope: !41)
!53 = !DILocation(line: 31, column: 27, scope: !41)
!54 = !DILocation(line: 31, column: 3, scope: !41)
!55 = !DILocation(line: 32, column: 1, scope: !41)
!56 = !DISubprogram(name: "omp_set_nest_lock", scope: !21, file: !21, line: 98, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!60 = !DISubprogram(name: "omp_unset_nest_lock", scope: !21, file: !21, line: 99, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!61 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 35, type: !62, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!62 = !DISubroutineType(types: !63)
!63 = !{!17, !17, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !{!68, !69, !70}
!68 = !DILocalVariable(name: "argc", arg: 1, scope: !61, file: !1, line: 35, type: !17)
!69 = !DILocalVariable(name: "argv", arg: 2, scope: !61, file: !1, line: 35, type: !64)
!70 = !DILocalVariable(name: "p", scope: !61, file: !1, line: 37, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !{!38, !38, i64 0}
!75 = !DILocation(line: 35, column: 14, scope: !61)
!76 = !DILocation(line: 35, column: 26, scope: !61)
!77 = !DILocation(line: 37, column: 3, scope: !61)
!78 = !DILocation(line: 37, column: 8, scope: !61)
!79 = !DILocation(line: 38, column: 6, scope: !61)
!80 = !DILocation(line: 38, column: 8, scope: !61)
!81 = !DILocation(line: 39, column: 6, scope: !61)
!82 = !DILocation(line: 39, column: 8, scope: !61)
!83 = !DILocation(line: 40, column: 26, scope: !61)
!84 = !DILocation(line: 40, column: 3, scope: !61)
!85 = !DILocation(line: 42, column: 3, scope: !61)
!86 = !DILocation(line: 55, column: 29, scope: !61)
!87 = !DILocation(line: 55, column: 3, scope: !61)
!88 = !DILocation(line: 57, column: 20, scope: !61)
!89 = !DILocation(line: 57, column: 3, scope: !61)
!90 = !DILocation(line: 59, column: 1, scope: !61)
!91 = !DILocation(line: 58, column: 3, scope: !61)
!92 = !DISubprogram(name: "omp_init_nest_lock", scope: !21, file: !21, line: 97, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!93 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 43, type: !94, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96, !96, !100}
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !71, size: 64)
!101 = !{!102, !103, !104}
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !93, type: !96, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !93, type: !96, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "p", arg: 3, scope: !93, file: !1, line: 37, type: !100)
!105 = !DILocation(line: 0, scope: !93)
!106 = !DILocation(line: 37, column: 8, scope: !93)
!107 = !DILocation(line: 43, column: 3, scope: !93)
!108 = !DILocation(line: 42, column: 3, scope: !93)
!109 = !DILocation(line: 46, column: 29, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 45, column: 5)
!111 = distinct !DILexicalBlock(scope: !93, file: !1, line: 44, column: 5)
!112 = !DILocation(line: 46, column: 7, scope: !110)
!113 = !DILocation(line: 47, column: 14, scope: !110)
!114 = !DILocation(line: 47, column: 7, scope: !110)
!115 = !DILocation(line: 48, column: 14, scope: !110)
!116 = !DILocation(line: 48, column: 7, scope: !110)
!117 = !DILocation(line: 49, column: 31, scope: !110)
!118 = !DILocation(line: 49, column: 7, scope: !110)
!119 = !DILocation(line: 44, column: 24, scope: !111)
!120 = !DILocation(line: 52, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !93, file: !1, line: 51, column: 5)
!122 = !DILocation(line: 52, column: 7, scope: !121)
!123 = !DILocation(line: 51, column: 24, scope: !121)
!124 = distinct !{!124, !108, !125}
!125 = !DILocation(line: 42, column: 32, scope: !93)
!126 = !DILocation(line: 53, column: 3, scope: !93)
!127 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 42, type: !94, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!128 = !{!129, !130, !131}
!129 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !127, type: !96, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !127, type: !96, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "p", arg: 3, scope: !127, type: !100, flags: DIFlagArtificial)
!132 = !DILocation(line: 0, scope: !127)
!133 = !DILocation(line: 42, column: 3, scope: !127)
!134 = !{!135}
!135 = !{i64 2, i64 -1, i64 -1, i1 true}
!136 = !DISubprogram(name: "omp_destroy_nest_lock", scope: !21, file: !21, line: 100, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
