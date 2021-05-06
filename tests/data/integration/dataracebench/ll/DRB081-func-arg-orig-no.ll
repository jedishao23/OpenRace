; ModuleID = 'DRB081-func-arg-orig-no.c'
source_filename = "DRB081-func-arg-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [39 x i8] c";DRB081-func-arg-orig-no.c;main;63;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"i==0\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"DRB081-func-arg-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"i=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @f1(i32 %q) #0 !dbg !9 {
entry:
  %q.addr = alloca i32, align 4
  store i32 %q, i32* %q.addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %q.addr, metadata !14, metadata !DIExpression()), !dbg !19
  %0 = load i32, i32* %q.addr, align 4, !dbg !20, !tbaa !15
  %add = add nsw i32 %0, 1, !dbg !20
  store i32 %add, i32* %q.addr, align 4, !dbg !20, !tbaa !15
  ret void, !dbg !21
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !22 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %i, align 4, !dbg !28, !tbaa !15
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i), !dbg !29
  %1 = load i32, i32* %i, align 4, !dbg !30, !tbaa !15
  %cmp = icmp eq i32 %1, 0, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !33

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !33

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !30
  unreachable, !dbg !30

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* %i, align 4, !dbg !34, !tbaa !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %2), !dbg !35
  %3 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !38 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !52
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !52
  store i32* %i, i32** %i.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !49, metadata !DIExpression()), !dbg !53
  %0 = load i32*, i32** %i.addr, align 8, !dbg !54, !tbaa !50
  %1 = load i32, i32* %0, align 4, !dbg !55, !tbaa !15
  call void @f1(i32 %1), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i) #3 !dbg !59 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !62, metadata !DIExpression()), !dbg !64
  store i32* %i, i32** %i.addr, align 8, !tbaa !50
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i32*, i32** %i.addr, align 8, !dbg !65, !tbaa !50
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65, !tbaa !50
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !65, !tbaa !50
  %3 = load i32*, i32** %i.addr, align 8, !dbg !65, !tbaa !50
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !65
  ret void, !dbg !65
}

; Function Attrs: nounwind
declare !callback !66 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

declare i32 @printf(i8*, ...) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB081-func-arg-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "f1", scope: !1, file: !1, line: 55, type: !10, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "q", arg: 1, scope: !9, file: !1, line: 55, type: !12)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 55, column: 13, scope: !9)
!20 = !DILocation(line: 57, column: 5, scope: !9)
!21 = !DILocation(line: 58, column: 1, scope: !9)
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !23, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!12}
!25 = !{!26}
!26 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 62, type: !12)
!27 = !DILocation(line: 62, column: 3, scope: !22)
!28 = !DILocation(line: 62, column: 7, scope: !22)
!29 = !DILocation(line: 63, column: 3, scope: !22)
!30 = !DILocation(line: 67, column: 3, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 67, column: 3)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 67, column: 3)
!33 = !DILocation(line: 67, column: 3, scope: !32)
!34 = !DILocation(line: 68, column: 20, scope: !22)
!35 = !DILocation(line: 68, column: 3, scope: !22)
!36 = !DILocation(line: 70, column: 1, scope: !22)
!37 = !DILocation(line: 69, column: 3, scope: !22)
!38 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !39, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !46)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !45}
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!46 = !{!47, !48, !49}
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !38, type: !41, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !38, type: !41, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "i", arg: 3, scope: !38, file: !1, line: 62, type: !45)
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !17, i64 0}
!52 = !DILocation(line: 0, scope: !38)
!53 = !DILocation(line: 62, column: 7, scope: !38)
!54 = !DILocation(line: 64, column: 3, scope: !38)
!55 = !DILocation(line: 65, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !38, file: !1, line: 64, column: 3)
!57 = !DILocation(line: 65, column: 6, scope: !56)
!58 = !DILocation(line: 66, column: 3, scope: !38)
!59 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !39, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!60 = !{!61, !62, !63}
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !41, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !59, type: !41, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "i", arg: 3, scope: !59, type: !45, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !59)
!65 = !DILocation(line: 63, column: 3, scope: !59)
!66 = !{!67}
!67 = !{i64 2, i64 -1, i64 -1, i1 true}
