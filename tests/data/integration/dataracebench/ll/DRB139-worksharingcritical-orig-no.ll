; ModuleID = 'DRB139-worksharingcritical-orig-no.c'
source_filename = "DRB139-worksharingcritical-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [50 x i8] c";DRB139-worksharingcritical-orig-no.c;main;27;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [50 x i8] c";DRB139-worksharingcritical-orig-no.c;main;31;7;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0) }, align 8
@.gomp_critical_user_name.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant [51 x i8] c";DRB139-worksharingcritical-orig-no.c;main;35;11;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @4, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [50 x i8] c";DRB139-worksharingcritical-orig-no.c;main;33;9;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @7, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant [51 x i8] c";DRB139-worksharingcritical-orig-no.c;main;27;32;;\00", align 1
@10 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @9, i32 0, i32 0) }, align 8
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 1, i32* %i, align 4, !dbg !16, !tbaa !17
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @11, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %i), !dbg !21
  %1 = load i32, i32* %i, align 4, !dbg !22, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !23
  %2 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !24
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
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !40
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !40
  store i32* %i, i32** %i.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !37, metadata !DIExpression()), !dbg !41
  %0 = load i32*, i32** %i.addr, align 8, !dbg !42, !tbaa !38
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !42, !tbaa !17
  store i32 0, i32* %.omp.sections.ub., align 4, !dbg !42, !tbaa !17
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !42, !tbaa !17
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !42, !tbaa !17
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !42
  %2 = load i32, i32* %1, align 4, !dbg !42, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %2, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !43
  %3 = load i32, i32* %.omp.sections.ub., align 4, !dbg !42, !tbaa !17
  %4 = icmp slt i32 %3, 0, !dbg !42
  %5 = select i1 %4, i32 %3, i32 0, !dbg !42
  store i32 %5, i32* %.omp.sections.ub., align 4, !dbg !42, !tbaa !17
  %6 = load i32, i32* %.omp.sections.lb., align 4, !dbg !42, !tbaa !17
  store i32 %6, i32* %.omp.sections.iv., align 4, !dbg !42, !tbaa !17
  br label %omp.inner.for.cond, !dbg !42

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %7 = load i32, i32* %.omp.sections.iv., align 4, !dbg !43, !tbaa !17
  %8 = load i32, i32* %.omp.sections.ub., align 4, !dbg !43, !tbaa !17
  %cmp = icmp sle i32 %7, %8, !dbg !43
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !42

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %9 = load i32, i32* %.omp.sections.iv., align 4, !dbg !42, !tbaa !17
  switch i32 %9, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
  ], !dbg !42

.omp.sections.case:                               ; preds = %omp.inner.for.body
  call void @__kmpc_critical(%struct.ident_t* @3, i32 %2, [8 x i32]* @.gomp_critical_user_name.var), !dbg !44
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @8, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %0), !dbg !47
  call void @__kmpc_end_critical(%struct.ident_t* @3, i32 %2, [8 x i32]* @.gomp_critical_user_name.var), !dbg !50
  br label %.omp.sections.exit, !dbg !51

.omp.sections.exit:                               ; preds = %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !51

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !43, !tbaa !17
  %inc = add nsw i32 %10, 1, !dbg !43
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !43, !tbaa !17
  br label %omp.inner.for.cond, !dbg !51, !llvm.loop !52

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  call void @__kmpc_for_static_fini(%struct.ident_t* @10, i32 %2), !dbg !53
  ret void, !dbg !54
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !55 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !58, metadata !DIExpression()), !dbg !60
  store i32* %i, i32** %i.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !59, metadata !DIExpression()), !dbg !61
  %0 = load i32*, i32** %i.addr, align 8, !dbg !62, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !63
  %2 = load i32, i32* %1, align 4, !dbg !63, !tbaa !17
  %3 = call i32 @__kmpc_single(%struct.ident_t* @5, i32 %2), !dbg !63
  %4 = icmp ne i32 %3, 0, !dbg !63
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !63

omp_if.then:                                      ; preds = %entry
  %5 = load i32, i32* %0, align 4, !dbg !65, !tbaa !17
  %inc = add nsw i32 %5, 1, !dbg !65
  store i32 %inc, i32* %0, align 4, !dbg !65, !tbaa !17
  call void @__kmpc_end_single(%struct.ident_t* @5, i32 %2), !dbg !68
  br label %omp_if.end, !dbg !68

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @6, i32 %2), !dbg !69
  ret void, !dbg !70
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #5

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !71 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !76
  store i32* %i, i32** %i.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load i32*, i32** %i.addr, align 8, !dbg !77, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77, !tbaa !38
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !77, !tbaa !38
  %3 = load i32*, i32** %i.addr, align 8, !dbg !77, !tbaa !38
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i32* %3) #5, !dbg !77
  ret void, !dbg !77
}

; Function Attrs: nounwind
declare !callback !78 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !82, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !83, metadata !DIExpression()), !dbg !85
  store i32* %i, i32** %i.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load i32*, i32** %i.addr, align 8, !dbg !86, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !86, !tbaa !38
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !86, !tbaa !38
  %3 = load i32*, i32** %i.addr, align 8, !dbg !86, !tbaa !38
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !86
  ret void, !dbg !86
}

declare i32 @printf(i8*, ...) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblemem_or_argmemonly }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB139-worksharingcritical-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !10, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 25, type: !12)
!15 = !DILocation(line: 25, column: 3, scope: !9)
!16 = !DILocation(line: 25, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 27, column: 3, scope: !9)
!22 = !DILocation(line: 44, column: 17, scope: !9)
!23 = !DILocation(line: 44, column: 3, scope: !9)
!24 = !DILocation(line: 46, column: 1, scope: !9)
!25 = !DILocation(line: 45, column: 3, scope: !9)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 28, type: !27, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
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
!37 = !DILocalVariable(name: "i", arg: 3, scope: !26, file: !1, line: 25, type: !33)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !19, i64 0}
!40 = !DILocation(line: 0, scope: !26)
!41 = !DILocation(line: 25, column: 7, scope: !26)
!42 = !DILocation(line: 28, column: 3, scope: !26)
!43 = !DILocation(line: 27, column: 3, scope: !26)
!44 = !DILocation(line: 31, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 30, column: 5)
!46 = distinct !DILexicalBlock(scope: !26, file: !1, line: 29, column: 5)
!47 = !DILocation(line: 33, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 32, column: 7)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 31, column: 7)
!50 = !DILocation(line: 40, column: 7, scope: !48)
!51 = !DILocation(line: 29, column: 24, scope: !46)
!52 = distinct !{!52, !43, !53}
!53 = !DILocation(line: 27, column: 32, scope: !26)
!54 = !DILocation(line: 42, column: 3, scope: !26)
!55 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 34, type: !27, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!56 = !{!57, !58, !59}
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !55, type: !29, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !55, type: !29, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "i", arg: 3, scope: !55, file: !1, line: 25, type: !33)
!60 = !DILocation(line: 0, scope: !55)
!61 = !DILocation(line: 25, column: 7, scope: !55)
!62 = !DILocation(line: 34, column: 9, scope: !55)
!63 = !DILocation(line: 35, column: 11, scope: !64)
!64 = distinct !DILexicalBlock(scope: !55, file: !1, line: 34, column: 9)
!65 = !DILocation(line: 37, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 36, column: 11)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 35, column: 11)
!68 = !DILocation(line: 38, column: 11, scope: !66)
!69 = !DILocation(line: 35, column: 29, scope: !67)
!70 = !DILocation(line: 39, column: 9, scope: !55)
!71 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 33, type: !27, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!72 = !{!73, !74, !75}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !71, type: !29, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !71, type: !29, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "i", arg: 3, scope: !71, type: !33, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !71)
!77 = !DILocation(line: 33, column: 9, scope: !71)
!78 = !{!79}
!79 = !{i64 2, i64 -1, i64 -1, i1 true}
!80 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 27, type: !27, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!81 = !{!82, !83, !84}
!82 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !29, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !29, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "i", arg: 3, scope: !80, type: !33, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !80)
!86 = !DILocation(line: 27, column: 3, scope: !80)
