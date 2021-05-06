; ModuleID = 'DRB124-master-orig-yes.c'
source_filename = "DRB124-master-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [38 x i8] c";DRB124-master-orig-yes.c;main;31;5;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [38 x i8] c";DRB124-master-orig-yes.c;main;29;3;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @2, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %init = alloca i32, align 4
  %local = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !25
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !28
  %0 = bitcast i32* %init to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %init, metadata !19, metadata !DIExpression()), !dbg !30
  %1 = bitcast i32* %local to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %local, metadata !20, metadata !DIExpression()), !dbg !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %init), !dbg !32
  %2 = bitcast i32* %local to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !33
  %3 = bitcast i32* %init to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %init) #3 !dbg !35 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %init.addr = alloca i32*, align 8
  %local = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !48
  store i32* %init, i32** %init.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %init.addr, metadata !46, metadata !DIExpression()), !dbg !49
  %0 = load i32*, i32** %init.addr, align 8, !dbg !50, !tbaa !26
  %1 = bitcast i32* %local to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %local, metadata !47, metadata !DIExpression()), !dbg !48
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %3 = load i32, i32* %2, align 4, !dbg !51, !tbaa !21
  %4 = call i32 @__kmpc_master(%struct.ident_t* @1, i32 %3), !dbg !51
  %5 = icmp ne i32 %4, 0, !dbg !51
  br i1 %5, label %omp_if.then, label %omp_if.end, !dbg !51

omp_if.then:                                      ; preds = %entry
  store i32 10, i32* %0, align 4, !dbg !53, !tbaa !21
  call void @__kmpc_end_master(%struct.ident_t* @1, i32 %3), !dbg !56
  br label %omp_if.end, !dbg !56

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %6 = load i32, i32* %0, align 4, !dbg !57, !tbaa !21
  store i32 %6, i32* %local, align 4, !dbg !58, !tbaa !21
  %7 = bitcast i32* %local to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !59
  ret void, !dbg !60
}

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_master(%struct.ident_t*, i32) #4

; Function Attrs: inaccessiblemem_or_argmemonly
declare i32 @__kmpc_master(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %init) #3 !dbg !61 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %init.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !63, metadata !DIExpression()), !dbg !66
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !64, metadata !DIExpression()), !dbg !66
  store i32* %init, i32** %init.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %init.addr, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load i32*, i32** %init.addr, align 8, !dbg !67, !tbaa !26
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !67, !tbaa !26
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !67, !tbaa !26
  %3 = load i32*, i32** %init.addr, align 8, !dbg !67, !tbaa !26
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !67
  ret void, !dbg !67
}

; Function Attrs: nounwind
declare !callback !68 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblemem_or_argmemonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB124-master-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 25, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 25, type: !13)
!19 = !DILocalVariable(name: "init", scope: !9, file: !1, line: 27, type: !12)
!20 = !DILocalVariable(name: "local", scope: !9, file: !1, line: 27, type: !12)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 25, column: 15, scope: !9)
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !DILocation(line: 25, column: 28, scope: !9)
!29 = !DILocation(line: 27, column: 3, scope: !9)
!30 = !DILocation(line: 27, column: 7, scope: !9)
!31 = !DILocation(line: 27, column: 13, scope: !9)
!32 = !DILocation(line: 29, column: 3, scope: !9)
!33 = !DILocation(line: 40, column: 1, scope: !9)
!34 = !DILocation(line: 39, column: 3, scope: !9)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 30, type: !36, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38, !42}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!43 = !{!44, !45, !46, !47}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "init", arg: 3, scope: !35, file: !1, line: 27, type: !42)
!47 = !DILocalVariable(name: "local", scope: !35, type: !12, flags: DIFlagArtificial)
!48 = !DILocation(line: 0, scope: !35)
!49 = !DILocation(line: 27, column: 7, scope: !35)
!50 = !DILocation(line: 30, column: 3, scope: !35)
!51 = !DILocation(line: 31, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !35, file: !1, line: 30, column: 3)
!53 = !DILocation(line: 33, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 32, column: 5)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 31, column: 5)
!56 = !DILocation(line: 34, column: 5, scope: !54)
!57 = !DILocation(line: 36, column: 13, scope: !52)
!58 = !DILocation(line: 36, column: 11, scope: !52)
!59 = !DILocation(line: 37, column: 3, scope: !52)
!60 = !DILocation(line: 37, column: 3, scope: !35)
!61 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 29, type: !36, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!62 = !{!63, !64, !65}
!63 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !61, type: !38, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !61, type: !38, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "init", arg: 3, scope: !61, type: !42, flags: DIFlagArtificial)
!66 = !DILocation(line: 0, scope: !61)
!67 = !DILocation(line: 29, column: 3, scope: !61)
!68 = !{!69}
!69 = !{i64 2, i64 -1, i64 -1, i1 true}
