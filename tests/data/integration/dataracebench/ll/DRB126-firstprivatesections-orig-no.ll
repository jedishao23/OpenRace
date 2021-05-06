; ModuleID = 'DRB126-firstprivatesections-orig-no.c'
source_filename = "DRB126-firstprivatesections-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [51 x i8] c";DRB126-firstprivatesections-orig-no.c;main;27;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [52 x i8] c";DRB126-firstprivatesections-orig-no.c;main;27;53;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 194, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [51 x i8] c";DRB126-firstprivatesections-orig-no.c;main;26;3;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @5, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %section_count = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %section_count to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %section_count, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %section_count, align 4, !dbg !16, !tbaa !17
  call void @omp_set_dynamic(i32 0), !dbg !21
  call void @omp_set_num_threads(i32 1), !dbg !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @6, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %section_count), !dbg !23
  %1 = bitcast i32* %section_count to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #5, !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !26 void @omp_set_dynamic(i32) #3

declare !dbg !30 void @omp_set_num_threads(i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %section_count) #4 !dbg !31 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %section_count.addr = alloca i32*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  %section_count1 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !47
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !47
  store i32* %section_count, i32** %section_count.addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %section_count.addr, metadata !42, metadata !DIExpression()), !dbg !48
  %0 = load i32*, i32** %section_count.addr, align 8, !dbg !49, !tbaa !45
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !49, !tbaa !17
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !49, !tbaa !17
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !49, !tbaa !17
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !49, !tbaa !17
  %1 = bitcast i32* %section_count1 to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %section_count1, metadata !43, metadata !DIExpression()), !dbg !50
  %2 = load i32, i32* %0, align 4, !dbg !51, !tbaa !17
  store i32 %2, i32* %section_count1, align 4, !dbg !51, !tbaa !17
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !49
  %4 = load i32, i32* %3, align 4, !dbg !49, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %4, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !52
  %5 = load i32, i32* %.omp.sections.ub., align 4, !dbg !49, !tbaa !17
  %6 = icmp slt i32 %5, 1, !dbg !49
  %7 = select i1 %6, i32 %5, i32 1, !dbg !49
  store i32 %7, i32* %.omp.sections.ub., align 4, !dbg !49, !tbaa !17
  %8 = load i32, i32* %.omp.sections.lb., align 4, !dbg !49, !tbaa !17
  store i32 %8, i32* %.omp.sections.iv., align 4, !dbg !49, !tbaa !17
  br label %omp.inner.for.cond, !dbg !49

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %9 = load i32, i32* %.omp.sections.iv., align 4, !dbg !52, !tbaa !17
  %10 = load i32, i32* %.omp.sections.ub., align 4, !dbg !52, !tbaa !17
  %cmp = icmp sle i32 %9, %10, !dbg !52
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !49

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.sections.iv., align 4, !dbg !49, !tbaa !17
  switch i32 %11, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case2
  ], !dbg !49

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %12 = load i32, i32* %section_count1, align 4, !dbg !53, !tbaa !17
  %inc = add nsw i32 %12, 1, !dbg !53
  store i32 %inc, i32* %section_count1, align 4, !dbg !53, !tbaa !17
  %13 = load i32, i32* %section_count1, align 4, !dbg !56, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13), !dbg !57
  br label %.omp.sections.exit, !dbg !58

.omp.sections.case2:                              ; preds = %omp.inner.for.body
  %14 = load i32, i32* %section_count1, align 4, !dbg !59, !tbaa !17
  %inc3 = add nsw i32 %14, 1, !dbg !59
  store i32 %inc3, i32* %section_count1, align 4, !dbg !59, !tbaa !17
  %15 = load i32, i32* %section_count1, align 4, !dbg !62, !tbaa !17
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15), !dbg !63
  br label %.omp.sections.exit, !dbg !64

.omp.sections.exit:                               ; preds = %.omp.sections.case2, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !64

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %16 = load i32, i32* %.omp.sections.iv., align 4, !dbg !52, !tbaa !17
  %inc5 = add nsw i32 %16, 1, !dbg !52
  store i32 %inc5, i32* %.omp.sections.iv., align 4, !dbg !52, !tbaa !17
  br label %omp.inner.for.cond, !dbg !64, !llvm.loop !65

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %4), !dbg !66
  %17 = bitcast i32* %section_count1 to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #5, !dbg !64
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %4), !dbg !66
  ret void, !dbg !67
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %section_count) #4 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %section_count.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !70, metadata !DIExpression()), !dbg !73
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !71, metadata !DIExpression()), !dbg !73
  store i32* %section_count, i32** %section_count.addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %section_count.addr, metadata !72, metadata !DIExpression()), !dbg !73
  %0 = load i32*, i32** %section_count.addr, align 8, !dbg !74, !tbaa !45
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74, !tbaa !45
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !74, !tbaa !45
  %3 = load i32*, i32** %section_count.addr, align 8, !dbg !74, !tbaa !45
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !74
  ret void, !dbg !74
}

; Function Attrs: nounwind
declare !callback !75 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB126-firstprivatesections-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !10, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "section_count", scope: !9, file: !1, line: 21, type: !12)
!15 = !DILocation(line: 21, column: 3, scope: !9)
!16 = !DILocation(line: 21, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 22, column: 3, scope: !9)
!22 = !DILocation(line: 24, column: 3, scope: !9)
!23 = !DILocation(line: 26, column: 3, scope: !9)
!24 = !DILocation(line: 41, column: 1, scope: !9)
!25 = !DILocation(line: 40, column: 3, scope: !9)
!26 = !DISubprogram(name: "omp_set_dynamic", scope: !27, file: !27, line: 58, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!27 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!28 = !DISubroutineType(types: !29)
!29 = !{null, !12}
!30 = !DISubprogram(name: "omp_set_num_threads", scope: !27, file: !27, line: 57, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!31 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !32, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34, !38}
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!38 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!39 = !{!40, !41, !42, !43}
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !31, type: !34, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !31, type: !34, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "section_count", arg: 3, scope: !31, file: !1, line: 21, type: !38)
!43 = !DILocalVariable(name: "section_count", scope: !44, type: !12, flags: DIFlagArtificial)
!44 = distinct !DILexicalBlock(scope: !31, file: !1, line: 27, column: 3)
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !19, i64 0}
!47 = !DILocation(line: 0, scope: !31)
!48 = !DILocation(line: 21, column: 7, scope: !31)
!49 = !DILocation(line: 27, column: 3, scope: !31)
!50 = !DILocation(line: 0, scope: !44)
!51 = !DILocation(line: 27, column: 38, scope: !44)
!52 = !DILocation(line: 27, column: 3, scope: !44)
!53 = !DILocation(line: 31, column: 20, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 30, column: 5)
!55 = distinct !DILexicalBlock(scope: !44, file: !1, line: 29, column: 5)
!56 = !DILocation(line: 32, column: 21, scope: !54)
!57 = !DILocation(line: 32, column: 7, scope: !54)
!58 = !DILocation(line: 29, column: 24, scope: !55)
!59 = !DILocation(line: 36, column: 20, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 35, column: 5)
!61 = distinct !DILexicalBlock(scope: !44, file: !1, line: 34, column: 5)
!62 = !DILocation(line: 37, column: 21, scope: !60)
!63 = !DILocation(line: 37, column: 7, scope: !60)
!64 = !DILocation(line: 34, column: 24, scope: !61)
!65 = distinct !{!65, !52, !66}
!66 = !DILocation(line: 27, column: 53, scope: !44)
!67 = !DILocation(line: 27, column: 53, scope: !31)
!68 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 26, type: !32, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!69 = !{!70, !71, !72}
!70 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !34, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !68, type: !34, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "section_count", arg: 3, scope: !68, type: !38, flags: DIFlagArtificial)
!73 = !DILocation(line: 0, scope: !68)
!74 = !DILocation(line: 26, column: 3, scope: !68)
!75 = !{!76}
!76 = !{i64 2, i64 -1, i64 -1, i1 true}
