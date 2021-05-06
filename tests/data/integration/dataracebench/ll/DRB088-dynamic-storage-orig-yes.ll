; ModuleID = 'DRB088-dynamic-storage-orig-yes.c'
source_filename = "DRB088-dynamic-storage-orig-yes.c"
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
@0 = private unnamed_addr constant [47 x i8] c";DRB088-dynamic-storage-orig-yes.c;main;75;2;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo() #0 !dbg !16 {
entry:
  %0 = load i32*, i32** @counter, align 8, !dbg !19, !tbaa !20
  %1 = load i32, i32* %0, align 4, !dbg !24, !tbaa !25
  %inc = add nsw i32 %1, 1, !dbg !24
  store i32 %inc, i32* %0, align 4, !dbg !24, !tbaa !25
  ret void, !dbg !27
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !28 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 4) #6, !dbg !31
  %0 = bitcast i8* %call to i32*, !dbg !32
  store i32* %0, i32** @counter, align 8, !dbg !33, !tbaa !20
  %1 = load i32*, i32** @counter, align 8, !dbg !34, !tbaa !20
  %cmp = icmp eq i32* %1, null, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !38, !tbaa !20
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !40
  call void @exit(i32 1) #7, !dbg !41
  unreachable, !dbg !41

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** @counter, align 8, !dbg !42, !tbaa !20
  store i32 0, i32* %3, align 4, !dbg !43, !tbaa !25
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !44
  %4 = load i32*, i32** @counter, align 8, !dbg !45, !tbaa !20
  %5 = load i32, i32* %4, align 4, !dbg !46, !tbaa !25
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %5), !dbg !47
  %6 = load i32*, i32** @counter, align 8, !dbg !48, !tbaa !20
  %7 = bitcast i32* %6 to i8*, !dbg !48
  call void @free(i8* %7) #6, !dbg !49
  ret i32 0, !dbg !50
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !51 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !59, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !60, metadata !DIExpression()), !dbg !61
  call void @foo(), !dbg !62
  ret void, !dbg !64
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !67, metadata !DIExpression()), !dbg !69
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !70, !tbaa !20
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !70, !tbaa !20
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #6, !dbg !70
  ret void, !dbg !70
}

; Function Attrs: nounwind
declare !callback !71 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #6

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !dbg !73 void @free(i8*) #1

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
!3 = !DIFile(filename: "DRB088-dynamic-storage-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 61, type: !17, scopeLine: 62, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocation(line: 63, column: 6, scope: !16)
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 63, column: 14, scope: !16)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !22, i64 0}
!27 = !DILocation(line: 64, column: 1, scope: !16)
!28 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 66, type: !29, scopeLine: 67, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{!7}
!31 = !DILocation(line: 68, column: 20, scope: !28)
!32 = !DILocation(line: 68, column: 13, scope: !28)
!33 = !DILocation(line: 68, column: 11, scope: !28)
!34 = !DILocation(line: 69, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !3, line: 69, column: 7)
!36 = !DILocation(line: 69, column: 14, scope: !35)
!37 = !DILocation(line: 69, column: 7, scope: !28)
!38 = !DILocation(line: 71, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !3, line: 70, column: 3)
!40 = !DILocation(line: 71, column: 5, scope: !39)
!41 = !DILocation(line: 72, column: 5, scope: !39)
!42 = !DILocation(line: 74, column: 4, scope: !28)
!43 = !DILocation(line: 74, column: 12, scope: !28)
!44 = !DILocation(line: 75, column: 2, scope: !28)
!45 = !DILocation(line: 79, column: 20, scope: !28)
!46 = !DILocation(line: 79, column: 19, scope: !28)
!47 = !DILocation(line: 79, column: 3, scope: !28)
!48 = !DILocation(line: 80, column: 9, scope: !28)
!49 = !DILocation(line: 80, column: 3, scope: !28)
!50 = !DILocation(line: 81, column: 3, scope: !28)
!51 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 76, type: !52, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !54}
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!58 = !{!59, !60}
!59 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !51, type: !54, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !51, type: !54, flags: DIFlagArtificial)
!61 = !DILocation(line: 0, scope: !51)
!62 = !DILocation(line: 77, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !51, file: !3, line: 76, column: 3)
!64 = !DILocation(line: 78, column: 3, scope: !51)
!65 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 75, type: !52, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!66 = !{!67, !68}
!67 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !54, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !65, type: !54, flags: DIFlagArtificial)
!69 = !DILocation(line: 0, scope: !65)
!70 = !DILocation(line: 75, column: 2, scope: !65)
!71 = !{!72}
!72 = !{i64 2, i64 -1, i64 -1, i1 true}
!73 = !DISubprogram(name: "free", scope: !74, file: !74, line: 565, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!74 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!75 = !DISubroutineType(types: !76)
!76 = !{null, !8}
