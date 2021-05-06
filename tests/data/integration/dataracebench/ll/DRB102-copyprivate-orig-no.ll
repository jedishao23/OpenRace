; ModuleID = 'DRB102-copyprivate-orig-no.c'
source_filename = "DRB102-copyprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW1x = comdat any

$_ZTW1y = comdat any

@x = dso_local thread_local global float 0.000000e+00, align 4, !dbg !0
@y = dso_local thread_local global i32 0, align 4, !dbg !6
@0 = private unnamed_addr constant [42 x i8] c";DRB102-copyprivate-orig-no.c;main;60;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [42 x i8] c";DRB102-copyprivate-orig-no.c;main;58;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"x=%f y=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !23, metadata !DIExpression()), !dbg !29
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !24, metadata !DIExpression()), !dbg !32
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !33
  %0 = load float, float* @x, align 4, !dbg !34, !tbaa !35
  %conv = fpext float %0 to double, !dbg !34
  %1 = load i32, i32* @y, align 4, !dbg !37, !tbaa !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %conv, i32 %1), !dbg !38
  ret i32 0, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !40 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.copyprivate.did_it = alloca i32, align 4
  %.omp.copyprivate.cpr_list = alloca [2 x i8*], align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !48, metadata !DIExpression()), !dbg !50
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %.omp.copyprivate.did_it, align 4, !dbg !51
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %1 = load i32, i32* %0, align 4, !dbg !51, !tbaa !25
  %2 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %1), !dbg !51
  %3 = icmp ne i32 %2, 0, !dbg !51
  br i1 %3, label %omp_if.then, label %omp_if.end, !dbg !51

omp_if.then:                                      ; preds = %entry
  store float 1.000000e+00, float* @x, align 4, !dbg !53, !tbaa !35
  store i32 1, i32* @y, align 4, !dbg !56, !tbaa !25
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %1), !dbg !57
  store i32 1, i32* %.omp.copyprivate.did_it, align 4, !dbg !57
  br label %omp_if.end, !dbg !57

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %4 = getelementptr inbounds [2 x i8*], [2 x i8*]* %.omp.copyprivate.cpr_list, i64 0, i64 0, !dbg !57
  store i8* bitcast (float* @x to i8*), i8** %4, align 8, !dbg !57
  %5 = getelementptr inbounds [2 x i8*], [2 x i8*]* %.omp.copyprivate.cpr_list, i64 0, i64 1, !dbg !57
  store i8* bitcast (i32* @y to i8*), i8** %5, align 8, !dbg !57
  %6 = bitcast [2 x i8*]* %.omp.copyprivate.cpr_list to i8*, !dbg !57
  %7 = load i32, i32* %.omp.copyprivate.did_it, align 4, !dbg !57
  call void @__kmpc_copyprivate(%struct.ident_t* @1, i32 %1, i64 16, i8* %6, void (i8*, i8*)* @.omp.copyprivate.copy_func, i32 %7), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.copyprivate.copy_func(i8* %0, i8* %1) #2 !dbg !59 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !62, metadata !DIExpression()), !dbg !65
  store i8* %1, i8** %.addr1, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load i8*, i8** %.addr, align 8, !dbg !66
  %3 = bitcast i8* %2 to [2 x i8*]*, !dbg !66
  %4 = load i8*, i8** %.addr1, align 8, !dbg !66
  %5 = bitcast i8* %4 to [2 x i8*]*, !dbg !66
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0, !dbg !66
  %7 = load i8*, i8** %6, align 8, !dbg !66
  %8 = bitcast i8* %7 to float*, !dbg !66
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0, !dbg !66
  %10 = load i8*, i8** %9, align 8, !dbg !66
  %11 = bitcast i8* %10 to float*, !dbg !66
  %12 = load float, float* %11, align 4, !dbg !67, !tbaa !35
  store float %12, float* %8, align 4, !dbg !67, !tbaa !35
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1, !dbg !66
  %14 = load i8*, i8** %13, align 8, !dbg !66
  %15 = bitcast i8* %14 to i32*, !dbg !66
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1, !dbg !66
  %17 = load i8*, i8** %16, align 8, !dbg !66
  %18 = bitcast i8* %17 to i32*, !dbg !66
  %19 = load i32, i32* %18, align 4, !dbg !68, !tbaa !25
  store i32 %19, i32* %15, align 4, !dbg !68, !tbaa !25
  ret void, !dbg !68
}

; Function Attrs: nounwind
declare void @__kmpc_copyprivate(%struct.ident_t*, i32, i64, i8*, void (i8*, i8*)*, i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !69 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !71, metadata !DIExpression()), !dbg !73
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !72, metadata !DIExpression()), !dbg !73
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74, !tbaa !30
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !74, !tbaa !30
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #3, !dbg !74
  ret void, !dbg !74
}

; Function Attrs: nounwind
declare !callback !75 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare i32 @printf(i8*, ...) #4

; Function Attrs: nounwind sspstrong uwtable
define weak_odr hidden float* @_ZTW1x() #5 comdat {
  ret float* @x
}

; Function Attrs: nounwind sspstrong uwtable
define weak_odr hidden i32* @_ZTW1y() #5 comdat {
  ret i32* @y
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 52, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB102-copyprivate-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 53, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 56, type: !17, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{!8, !8, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23, !24}
!23 = !DILocalVariable(name: "argc", arg: 1, scope: !16, file: !3, line: 56, type: !8)
!24 = !DILocalVariable(name: "argv", arg: 2, scope: !16, file: !3, line: 56, type: !19)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 56, column: 15, scope: !16)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 56, column: 28, scope: !16)
!33 = !DILocation(line: 58, column: 1, scope: !16)
!34 = !DILocation(line: 66, column: 26, scope: !16)
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !27, i64 0}
!37 = !DILocation(line: 66, column: 29, scope: !16)
!38 = !DILocation(line: 66, column: 3, scope: !16)
!39 = !DILocation(line: 67, column: 3, scope: !16)
!40 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 59, type: !41, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!47 = !{!48, !49}
!48 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !40, type: !43, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !40, type: !43, flags: DIFlagArtificial)
!50 = !DILocation(line: 0, scope: !40)
!51 = !DILocation(line: 60, column: 1, scope: !52)
!52 = distinct !DILexicalBlock(scope: !40, file: !3, line: 59, column: 3)
!53 = !DILocation(line: 62, column: 8, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 61, column: 5)
!55 = distinct !DILexicalBlock(scope: !52, file: !3, line: 60, column: 1)
!56 = !DILocation(line: 63, column: 8, scope: !54)
!57 = !DILocation(line: 64, column: 5, scope: !54)
!58 = !DILocation(line: 65, column: 3, scope: !40)
!59 = distinct !DISubprogram(linkageName: ".omp.copyprivate.copy_func", scope: !3, file: !3, line: 60, type: !60, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!60 = !DISubroutineType(types: !4)
!61 = !{!62, !64}
!62 = !DILocalVariable(arg: 1, scope: !59, type: !63, flags: DIFlagArtificial)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DILocalVariable(arg: 2, scope: !59, type: !63, flags: DIFlagArtificial)
!65 = !DILocation(line: 0, scope: !59)
!66 = !DILocation(line: 60, column: 1, scope: !59)
!67 = !DILocation(line: 60, column: 32, scope: !59)
!68 = !DILocation(line: 60, column: 34, scope: !59)
!69 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 58, type: !41, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!70 = !{!71, !72}
!71 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !69, type: !43, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !69, type: !43, flags: DIFlagArtificial)
!73 = !DILocation(line: 0, scope: !69)
!74 = !DILocation(line: 58, column: 1, scope: !69)
!75 = !{!76}
!76 = !{i64 2, i64 -1, i64 -1, i1 true}
