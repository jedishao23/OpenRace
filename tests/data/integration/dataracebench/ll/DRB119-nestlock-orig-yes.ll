; ModuleID = 'DRB119-nestlock-orig-yes.c'
source_filename = "DRB119-nestlock-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.pair = type { i32, i32, %struct.omp_nest_lock_t }
%struct.omp_nest_lock_t = type { i8* }

@0 = private unnamed_addr constant [40 x i8] c";DRB119-nestlock-orig-yes.c;main;43;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [41 x i8] c";DRB119-nestlock-orig-yes.c;main;43;32;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @0, i32 0, i32 0) }, align 8
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
  %b = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 1, !dbg !46
  %1 = load i32, i32* %b, align 4, !dbg !47, !tbaa !48
  %add = add nsw i32 %1, 1, !dbg !47
  store i32 %add, i32* %b, align 4, !dbg !47, !tbaa !48
  ret void, !dbg !49
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !50 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca [1 x %struct.pair], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !63
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !57, metadata !DIExpression()), !dbg !64
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !58, metadata !DIExpression()), !dbg !65
  %0 = bitcast [1 x %struct.pair]* %p to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #5, !dbg !66
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]* %p, metadata !59, metadata !DIExpression()), !dbg !67
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !68
  %a = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 0, !dbg !68
  store i32 0, i32* %a, align 16, !dbg !69, !tbaa !36
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !70
  %b = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay1, i32 0, i32 1, !dbg !70
  store i32 0, i32* %b, align 4, !dbg !71, !tbaa !48
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !72
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay2, i32 0, i32 2, !dbg !72
  call void @omp_init_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !73
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [1 x %struct.pair]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [1 x %struct.pair]* %p), !dbg !74
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !75
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !75
  call void @omp_destroy_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !76
  %arraydecay5 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !77
  %b6 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay5, i32 0, i32 1, !dbg !77
  %1 = load i32, i32* %b6, align 4, !dbg !77, !tbaa !48
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !78
  %2 = bitcast [1 x %struct.pair]* %p to i8*, !dbg !79
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %2) #5, !dbg !79
  ret i32 0, !dbg !80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !81 void @omp_init_nest_lock(%struct.omp_nest_lock_t*) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* nonnull align 8 dereferenceable(16) %p) #4 !dbg !85 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !97
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !96, metadata !DIExpression()), !dbg !98
  %0 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !99, !tbaa !28
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !99, !tbaa !63
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !99, !tbaa !63
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !99, !tbaa !63
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !99, !tbaa !63
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !99
  %2 = load i32, i32* %1, align 4, !dbg !99, !tbaa !63
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %2, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !100
  %3 = load i32, i32* %.omp.sections.ub., align 4, !dbg !99, !tbaa !63
  %4 = icmp slt i32 %3, 1, !dbg !99
  %5 = select i1 %4, i32 %3, i32 1, !dbg !99
  store i32 %5, i32* %.omp.sections.ub., align 4, !dbg !99, !tbaa !63
  %6 = load i32, i32* %.omp.sections.lb., align 4, !dbg !99, !tbaa !63
  store i32 %6, i32* %.omp.sections.iv., align 4, !dbg !99, !tbaa !63
  br label %omp.inner.for.cond, !dbg !99

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %7 = load i32, i32* %.omp.sections.iv., align 4, !dbg !100, !tbaa !63
  %8 = load i32, i32* %.omp.sections.ub., align 4, !dbg !100, !tbaa !63
  %cmp = icmp sle i32 %7, %8, !dbg !100
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !99

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %9 = load i32, i32* %.omp.sections.iv., align 4, !dbg !99, !tbaa !63
  switch i32 %9, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case5
  ], !dbg !99

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !101
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 2, !dbg !101
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !104
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !105
  call void @incr_b(%struct.pair* %arraydecay1), !dbg !106
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !107
  call void @incr_a(%struct.pair* %arraydecay2), !dbg !108
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !109
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !109
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !110
  br label %.omp.sections.exit, !dbg !111

.omp.sections.case5:                              ; preds = %omp.inner.for.body
  %arraydecay6 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %0, i64 0, i64 0, !dbg !112
  call void @incr_b(%struct.pair* %arraydecay6), !dbg !114
  br label %.omp.sections.exit, !dbg !115

.omp.sections.exit:                               ; preds = %.omp.sections.case5, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !115

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !100, !tbaa !63
  %inc = add nsw i32 %10, 1, !dbg !100
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !100, !tbaa !63
  br label %omp.inner.for.cond, !dbg !115, !llvm.loop !116

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %2), !dbg !117
  ret void, !dbg !118
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare !dbg !119 void @omp_set_nest_lock(%struct.omp_nest_lock_t*) #3

declare !dbg !120 void @omp_unset_nest_lock(%struct.omp_nest_lock_t*) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* nonnull align 8 dereferenceable(16) %p) #4 !dbg !121 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %p.addr = alloca [1 x %struct.pair]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !123, metadata !DIExpression()), !dbg !126
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !124, metadata !DIExpression()), !dbg !126
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !127, !tbaa !28
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !127, !tbaa !28
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !127, !tbaa !28
  %3 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !127, !tbaa !28
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [1 x %struct.pair]* %3) #5, !dbg !127
  ret void, !dbg !127
}

; Function Attrs: nounwind
declare !callback !128 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare !dbg !130 void @omp_destroy_nest_lock(%struct.omp_nest_lock_t*) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB119-nestlock-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "incr_a", scope: !1, file: !1, line: 27, type: !10, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "pair", file: !1, line: 25, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 22, size: 128, elements: !15)
!15 = !{!16, !18, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !14, file: !1, line: 23, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !14, file: !1, line: 23, baseType: !17, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "lck", scope: !14, file: !1, line: 24, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_nest_lock_t", file: !21, line: 95, baseType: !22)
!21 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_nest_lock_t", file: !21, line: 93, size: 64, elements: !23)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !22, file: !21, line: 94, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !{!27}
!27 = !DILocalVariable(name: "p", arg: 1, scope: !9, file: !1, line: 27, type: !12)
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 27, column: 19, scope: !9)
!33 = !DILocation(line: 28, column: 3, scope: !9)
!34 = !DILocation(line: 28, column: 6, scope: !9)
!35 = !DILocation(line: 28, column: 8, scope: !9)
!36 = !{!37, !38, i64 0}
!37 = !{!"", !38, i64 0, !38, i64 4, !39, i64 8}
!38 = !{!"int", !30, i64 0}
!39 = !{!"omp_nest_lock_t", !29, i64 0}
!40 = !DILocation(line: 29, column: 1, scope: !9)
!41 = distinct !DISubprogram(name: "incr_b", scope: !1, file: !1, line: 31, type: !10, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!42 = !{!43}
!43 = !DILocalVariable(name: "p", arg: 1, scope: !41, file: !1, line: 31, type: !12)
!44 = !DILocation(line: 31, column: 19, scope: !41)
!45 = !DILocation(line: 32, column: 3, scope: !41)
!46 = !DILocation(line: 32, column: 6, scope: !41)
!47 = !DILocation(line: 32, column: 8, scope: !41)
!48 = !{!37, !38, i64 4}
!49 = !DILocation(line: 33, column: 1, scope: !41)
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 36, type: !51, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!51 = !DISubroutineType(types: !52)
!52 = !{!17, !17, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !{!57, !58, !59}
!57 = !DILocalVariable(name: "argc", arg: 1, scope: !50, file: !1, line: 36, type: !17)
!58 = !DILocalVariable(name: "argv", arg: 2, scope: !50, file: !1, line: 36, type: !53)
!59 = !DILocalVariable(name: "p", scope: !50, file: !1, line: 38, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 1)
!63 = !{!38, !38, i64 0}
!64 = !DILocation(line: 36, column: 14, scope: !50)
!65 = !DILocation(line: 36, column: 26, scope: !50)
!66 = !DILocation(line: 38, column: 3, scope: !50)
!67 = !DILocation(line: 38, column: 8, scope: !50)
!68 = !DILocation(line: 39, column: 6, scope: !50)
!69 = !DILocation(line: 39, column: 8, scope: !50)
!70 = !DILocation(line: 40, column: 6, scope: !50)
!71 = !DILocation(line: 40, column: 8, scope: !50)
!72 = !DILocation(line: 41, column: 26, scope: !50)
!73 = !DILocation(line: 41, column: 3, scope: !50)
!74 = !DILocation(line: 43, column: 3, scope: !50)
!75 = !DILocation(line: 56, column: 29, scope: !50)
!76 = !DILocation(line: 56, column: 3, scope: !50)
!77 = !DILocation(line: 58, column: 20, scope: !50)
!78 = !DILocation(line: 58, column: 3, scope: !50)
!79 = !DILocation(line: 60, column: 1, scope: !50)
!80 = !DILocation(line: 59, column: 3, scope: !50)
!81 = !DISubprogram(name: "omp_init_nest_lock", scope: !21, file: !21, line: 97, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!85 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 44, type: !86, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88, !88, !92}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !60, size: 64)
!93 = !{!94, !95, !96}
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !88, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !88, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "p", arg: 3, scope: !85, file: !1, line: 38, type: !92)
!97 = !DILocation(line: 0, scope: !85)
!98 = !DILocation(line: 38, column: 8, scope: !85)
!99 = !DILocation(line: 44, column: 3, scope: !85)
!100 = !DILocation(line: 43, column: 3, scope: !85)
!101 = !DILocation(line: 47, column: 29, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 46, column: 5)
!103 = distinct !DILexicalBlock(scope: !85, file: !1, line: 45, column: 5)
!104 = !DILocation(line: 47, column: 7, scope: !102)
!105 = !DILocation(line: 48, column: 14, scope: !102)
!106 = !DILocation(line: 48, column: 7, scope: !102)
!107 = !DILocation(line: 49, column: 14, scope: !102)
!108 = !DILocation(line: 49, column: 7, scope: !102)
!109 = !DILocation(line: 50, column: 31, scope: !102)
!110 = !DILocation(line: 50, column: 7, scope: !102)
!111 = !DILocation(line: 45, column: 24, scope: !103)
!112 = !DILocation(line: 53, column: 14, scope: !113)
!113 = distinct !DILexicalBlock(scope: !85, file: !1, line: 52, column: 5)
!114 = !DILocation(line: 53, column: 7, scope: !113)
!115 = !DILocation(line: 52, column: 24, scope: !113)
!116 = distinct !{!116, !100, !117}
!117 = !DILocation(line: 43, column: 32, scope: !85)
!118 = !DILocation(line: 54, column: 3, scope: !85)
!119 = !DISubprogram(name: "omp_set_nest_lock", scope: !21, file: !21, line: 98, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!120 = !DISubprogram(name: "omp_unset_nest_lock", scope: !21, file: !21, line: 99, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!121 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 43, type: !86, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!122 = !{!123, !124, !125}
!123 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !121, type: !88, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !121, type: !88, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "p", arg: 3, scope: !121, type: !92, flags: DIFlagArtificial)
!126 = !DILocation(line: 0, scope: !121)
!127 = !DILocation(line: 43, column: 3, scope: !121)
!128 = !{!129}
!129 = !{i64 2, i64 -1, i64 -1, i1 true}
!130 = !DISubprogram(name: "omp_destroy_nest_lock", scope: !21, file: !21, line: 100, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
