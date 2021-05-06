; ModuleID = 'DRB069-sectionslock1-orig-no.c'
source_filename = "DRB069-sectionslock1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@0 = private unnamed_addr constant [44 x i8] c";DRB069-sectionslock1-orig-no.c;main;58;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [45 x i8] c";DRB069-sectionslock1-orig-no.c;main;58;30;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"i==3\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DRB069-sectionslock1-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !22
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !14, metadata !DIExpression()), !dbg !23
  %1 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %i, align 4, !dbg !25, !tbaa !26
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* %lck, i32* %i), !dbg !31
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !32
  %2 = load i32, i32* %i, align 4, !dbg !33, !tbaa !26
  %cmp = icmp eq i32 %2, 3, !dbg !33
  br i1 %cmp, label %if.then, label %if.else, !dbg !36

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !36

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !33
  unreachable, !dbg !33

if.end:                                           ; preds = %if.then
  %3 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !37
  %4 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #5, !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !39 void @omp_init_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %i) #4 !dbg !43 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !53, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !54, metadata !DIExpression()), !dbg !59
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !55, metadata !DIExpression()), !dbg !60
  store i32* %i, i32** %i.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !56, metadata !DIExpression()), !dbg !61
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !62, !tbaa !57
  %1 = load i32*, i32** %i.addr, align 8, !dbg !62, !tbaa !57
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !62, !tbaa !26
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !62, !tbaa !26
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !62, !tbaa !26
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !62, !tbaa !26
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !62
  %3 = load i32, i32* %2, align 4, !dbg !62, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %3, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !63
  %4 = load i32, i32* %.omp.sections.ub., align 4, !dbg !62, !tbaa !26
  %5 = icmp slt i32 %4, 1, !dbg !62
  %6 = select i1 %5, i32 %4, i32 1, !dbg !62
  store i32 %6, i32* %.omp.sections.ub., align 4, !dbg !62, !tbaa !26
  %7 = load i32, i32* %.omp.sections.lb., align 4, !dbg !62, !tbaa !26
  store i32 %7, i32* %.omp.sections.iv., align 4, !dbg !62, !tbaa !26
  br label %omp.inner.for.cond, !dbg !62

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %8 = load i32, i32* %.omp.sections.iv., align 4, !dbg !63, !tbaa !26
  %9 = load i32, i32* %.omp.sections.ub., align 4, !dbg !63, !tbaa !26
  %cmp = icmp sle i32 %8, %9, !dbg !63
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !62

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !62, !tbaa !26
  switch i32 %10, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case1
  ], !dbg !62

.omp.sections.case:                               ; preds = %omp.inner.for.body
  call void @omp_set_lock(%struct.omp_lock_t* %0), !dbg !64
  %11 = load i32, i32* %1, align 4, !dbg !67, !tbaa !26
  %add = add nsw i32 %11, 1, !dbg !67
  store i32 %add, i32* %1, align 4, !dbg !67, !tbaa !26
  call void @omp_unset_lock(%struct.omp_lock_t* %0), !dbg !68
  br label %.omp.sections.exit, !dbg !69

.omp.sections.case1:                              ; preds = %omp.inner.for.body
  call void @omp_set_lock(%struct.omp_lock_t* %0), !dbg !70
  %12 = load i32, i32* %1, align 4, !dbg !73, !tbaa !26
  %add2 = add nsw i32 %12, 2, !dbg !73
  store i32 %add2, i32* %1, align 4, !dbg !73, !tbaa !26
  call void @omp_unset_lock(%struct.omp_lock_t* %0), !dbg !74
  br label %.omp.sections.exit, !dbg !75

.omp.sections.exit:                               ; preds = %.omp.sections.case1, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !75

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !63, !tbaa !26
  %inc = add nsw i32 %13, 1, !dbg !63
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !63, !tbaa !26
  br label %omp.inner.for.cond, !dbg !75, !llvm.loop !76

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %3), !dbg !77
  ret void, !dbg !78
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare !dbg !79 void @omp_set_lock(%struct.omp_lock_t*) #3

declare !dbg !80 void @omp_unset_lock(%struct.omp_lock_t*) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %lck, i32* nonnull align 4 dereferenceable(4) %i) #4 !dbg !81 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !87
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !84, metadata !DIExpression()), !dbg !87
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !85, metadata !DIExpression()), !dbg !87
  store i32* %i, i32** %i.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !88, !tbaa !57
  %1 = load i32*, i32** %i.addr, align 8, !dbg !88, !tbaa !57
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88, !tbaa !57
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !88, !tbaa !57
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !88, !tbaa !57
  %5 = load i32*, i32** %i.addr, align 8, !dbg !88, !tbaa !57
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !88
  ret void, !dbg !88
}

; Function Attrs: nounwind
declare !callback !89 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare !dbg !91 void @omp_destroy_lock(%struct.omp_lock_t*) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB069-sectionslock1-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !21}
!14 = !DILocalVariable(name: "lck", scope: !9, file: !1, line: 55, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !16, line: 84, baseType: !17)
!16 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !16, line: 82, size: 64, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !17, file: !16, line: 83, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 56, type: !12)
!22 = !DILocation(line: 55, column: 3, scope: !9)
!23 = !DILocation(line: 55, column: 14, scope: !9)
!24 = !DILocation(line: 56, column: 3, scope: !9)
!25 = !DILocation(line: 56, column: 7, scope: !9)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 57, column: 3, scope: !9)
!31 = !DILocation(line: 58, column: 1, scope: !9)
!32 = !DILocation(line: 74, column: 3, scope: !9)
!33 = !DILocation(line: 75, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 75, column: 3)
!35 = distinct !DILexicalBlock(scope: !9, file: !1, line: 75, column: 3)
!36 = !DILocation(line: 75, column: 3, scope: !35)
!37 = !DILocation(line: 77, column: 1, scope: !9)
!38 = !DILocation(line: 76, column: 3, scope: !9)
!39 = !DISubprogram(name: "omp_init_lock", scope: !16, file: !16, line: 86, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!43 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 59, type: !44, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46, !46, !50, !51}
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!50 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!52 = !{!53, !54, !55, !56}
!53 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !43, type: !46, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !43, type: !46, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "lck", arg: 3, scope: !43, file: !1, line: 55, type: !50)
!56 = !DILocalVariable(name: "i", arg: 4, scope: !43, file: !1, line: 56, type: !51)
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !28, i64 0}
!59 = !DILocation(line: 0, scope: !43)
!60 = !DILocation(line: 55, column: 14, scope: !43)
!61 = !DILocation(line: 56, column: 7, scope: !43)
!62 = !DILocation(line: 59, column: 3, scope: !43)
!63 = !DILocation(line: 58, column: 1, scope: !43)
!64 = !DILocation(line: 62, column: 7, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 61, column: 5)
!66 = distinct !DILexicalBlock(scope: !43, file: !1, line: 60, column: 1)
!67 = !DILocation(line: 63, column: 9, scope: !65)
!68 = !DILocation(line: 64, column: 7, scope: !65)
!69 = !DILocation(line: 60, column: 20, scope: !66)
!70 = !DILocation(line: 68, column: 7, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 67, column: 5)
!72 = distinct !DILexicalBlock(scope: !43, file: !1, line: 66, column: 1)
!73 = !DILocation(line: 69, column: 9, scope: !71)
!74 = !DILocation(line: 70, column: 7, scope: !71)
!75 = !DILocation(line: 66, column: 20, scope: !72)
!76 = distinct !{!76, !63, !77}
!77 = !DILocation(line: 58, column: 30, scope: !43)
!78 = !DILocation(line: 72, column: 3, scope: !43)
!79 = !DISubprogram(name: "omp_set_lock", scope: !16, file: !16, line: 87, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!80 = !DISubprogram(name: "omp_unset_lock", scope: !16, file: !16, line: 88, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!81 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 58, type: !44, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !81, type: !46, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !81, type: !46, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "lck", arg: 3, scope: !81, type: !50, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "i", arg: 4, scope: !81, type: !51, flags: DIFlagArtificial)
!87 = !DILocation(line: 0, scope: !81)
!88 = !DILocation(line: 58, column: 1, scope: !81)
!89 = !{!90}
!90 = !{i64 2, i64 -1, i64 -1, i1 true}
!91 = !DISubprogram(name: "omp_destroy_lock", scope: !16, file: !16, line: 89, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
