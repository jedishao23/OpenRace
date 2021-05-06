; ModuleID = 'DRB089-dynamic-storage2-orig-yes.c'
source_filename = "DRB089-dynamic-storage2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@counter = dso_local global i32* null, align 8, !dbg !0
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"malloc() failes\0A\00", align 1
@0 = private unnamed_addr constant [48 x i8] c";DRB089-dynamic-storage2-orig-yes.c;main;71;2;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 4) #6, !dbg !19
  %0 = bitcast i8* %call to i32*, !dbg !20
  store i32* %0, i32** @counter, align 8, !dbg !21, !tbaa !22
  %1 = load i32*, i32** @counter, align 8, !dbg !26, !tbaa !22
  %cmp = icmp eq i32* %1, null, !dbg !28
  br i1 %cmp, label %if.then, label %if.end, !dbg !29

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !30, !tbaa !22
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !32
  call void @exit(i32 1) #7, !dbg !33
  unreachable, !dbg !33

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** @counter, align 8, !dbg !34, !tbaa !22
  store i32 0, i32* %3, align 4, !dbg !35, !tbaa !36
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !38
  %4 = load i32*, i32** @counter, align 8, !dbg !39, !tbaa !22
  %5 = load i32, i32* %4, align 4, !dbg !40, !tbaa !36
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %5), !dbg !41
  %6 = load i32*, i32** @counter, align 8, !dbg !42, !tbaa !22
  %7 = bitcast i32* %6 to i8*, !dbg !42
  call void @free(i8* %7) #6, !dbg !43
  ret i32 0, !dbg !44
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !45 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !53, metadata !DIExpression()), !dbg !55
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !54, metadata !DIExpression()), !dbg !55
  %0 = load i32*, i32** @counter, align 8, !dbg !56, !tbaa !22
  %1 = load i32, i32* %0, align 4, !dbg !58, !tbaa !36
  %inc = add nsw i32 %1, 1, !dbg !58
  store i32 %inc, i32* %0, align 4, !dbg !58, !tbaa !36
  ret void, !dbg !59
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !62, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65, !tbaa !22
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !65, !tbaa !22
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #6, !dbg !65
  ret void, !dbg !65
}

; Function Attrs: nounwind
declare !callback !66 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #6

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !dbg !68 void @free(i8*) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "counter", scope: !2, file: !3, line: 59, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB089-dynamic-storage2-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!0}
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !17, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{!7}
!19 = !DILocation(line: 64, column: 20, scope: !16)
!20 = !DILocation(line: 64, column: 13, scope: !16)
!21 = !DILocation(line: 64, column: 11, scope: !16)
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 65, column: 7, scope: !27)
!27 = distinct !DILexicalBlock(scope: !16, file: !3, line: 65, column: 7)
!28 = !DILocation(line: 65, column: 14, scope: !27)
!29 = !DILocation(line: 65, column: 7, scope: !16)
!30 = !DILocation(line: 67, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 66, column: 3)
!32 = !DILocation(line: 67, column: 5, scope: !31)
!33 = !DILocation(line: 68, column: 5, scope: !31)
!34 = !DILocation(line: 70, column: 4, scope: !16)
!35 = !DILocation(line: 70, column: 12, scope: !16)
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !24, i64 0}
!38 = !DILocation(line: 71, column: 2, scope: !16)
!39 = !DILocation(line: 75, column: 20, scope: !16)
!40 = !DILocation(line: 75, column: 19, scope: !16)
!41 = !DILocation(line: 75, column: 3, scope: !16)
!42 = !DILocation(line: 76, column: 9, scope: !16)
!43 = !DILocation(line: 76, column: 3, scope: !16)
!44 = !DILocation(line: 77, column: 3, scope: !16)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 72, type: !46, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!52 = !{!53, !54}
!53 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!55 = !DILocation(line: 0, scope: !45)
!56 = !DILocation(line: 73, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !45, file: !3, line: 72, column: 3)
!58 = !DILocation(line: 73, column: 15, scope: !57)
!59 = !DILocation(line: 74, column: 3, scope: !45)
!60 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 71, type: !46, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!61 = !{!62, !63}
!62 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !48, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !48, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !60)
!65 = !DILocation(line: 71, column: 2, scope: !60)
!66 = !{!67}
!67 = !{i64 2, i64 -1, i64 -1, i1 true}
!68 = !DISubprogram(name: "free", scope: !69, file: !69, line: 565, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!69 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!70 = !DISubroutineType(types: !71)
!71 = !{null, !8}
