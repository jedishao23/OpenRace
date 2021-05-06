; ModuleID = 'DRB120-barrier-orig-no.c'
source_filename = "DRB120-barrier-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [38 x i8] c";DRB120-barrier-orig-no.c;main;24;5;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [38 x i8] c";DRB120-barrier-orig-no.c;main;27;5;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [38 x i8] c";DRB120-barrier-orig-no.c;main;29;5;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @5, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @5, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant [38 x i8] c";DRB120-barrier-orig-no.c;main;22;3;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @8, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %var = alloca i32, align 4
  %error = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !25
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !28
  %0 = bitcast i32* %var to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %var, metadata !19, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %var, align 4, !dbg !30, !tbaa !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @9, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %var), !dbg !31
  %1 = load i32, i32* %var, align 4, !dbg !32, !tbaa !21
  %cmp = icmp ne i32 %1, 2, !dbg !34
  br i1 %cmp, label %if.then, label %if.end, !dbg !35

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %var, align 4, !dbg !36, !tbaa !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2), !dbg !37
  br label %if.end, !dbg !37

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast i32* %error to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %error, metadata !20, metadata !DIExpression()), !dbg !39
  %4 = load i32, i32* %var, align 4, !dbg !40, !tbaa !21
  %cmp1 = icmp ne i32 %4, 2, !dbg !41
  %conv = zext i1 %cmp1 to i32, !dbg !41
  store i32 %conv, i32* %error, align 4, !dbg !39, !tbaa !21
  %5 = load i32, i32* %error, align 4, !dbg !42, !tbaa !21
  %6 = bitcast i32* %error to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !43
  %7 = bitcast i32* %var to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #4, !dbg !43
  ret i32 %5, !dbg !44
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !45 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !54, metadata !DIExpression()), !dbg !57
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !55, metadata !DIExpression()), !dbg !57
  store i32* %var, i32** %var.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !56, metadata !DIExpression()), !dbg !58
  %0 = load i32*, i32** %var.addr, align 8, !dbg !59, !tbaa !26
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !60
  %2 = load i32, i32* %1, align 4, !dbg !60, !tbaa !21
  %3 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %2), !dbg !60
  %4 = icmp ne i32 %3, 0, !dbg !60
  br i1 %4, label %omp_if.then, label %omp_if.end, !dbg !60

omp_if.then:                                      ; preds = %entry
  %5 = load i32, i32* %0, align 4, !dbg !62, !tbaa !21
  %inc = add nsw i32 %5, 1, !dbg !62
  store i32 %inc, i32* %0, align 4, !dbg !62, !tbaa !21
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %2), !dbg !64
  br label %omp_if.end, !dbg !64

omp_if.end:                                       ; preds = %omp_if.then, %entry
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %2), !dbg !65
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %2), !dbg !66
  %6 = call i32 @__kmpc_single(%struct.ident_t* @6, i32 %2), !dbg !67
  %7 = icmp ne i32 %6, 0, !dbg !67
  br i1 %7, label %omp_if.then1, label %omp_if.end3, !dbg !67

omp_if.then1:                                     ; preds = %omp_if.end
  %8 = load i32, i32* %0, align 4, !dbg !68, !tbaa !21
  %inc2 = add nsw i32 %8, 1, !dbg !68
  store i32 %inc2, i32* %0, align 4, !dbg !68, !tbaa !21
  call void @__kmpc_end_single(%struct.ident_t* @6, i32 %2), !dbg !70
  br label %omp_if.end3, !dbg !70

omp_if.end3:                                      ; preds = %omp_if.then1, %omp_if.end
  call void @__kmpc_barrier(%struct.ident_t* @7, i32 %2), !dbg !71
  ret void, !dbg !72
}

; Function Attrs: nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #3 !dbg !73 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !78
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !78
  store i32* %var, i32** %var.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !77, metadata !DIExpression()), !dbg !78
  %0 = load i32*, i32** %var.addr, align 8, !dbg !79, !tbaa !26
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79, !tbaa !26
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !79, !tbaa !26
  %3 = load i32*, i32** %var.addr, align 8, !dbg !79, !tbaa !26
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !79
  ret void, !dbg !79
}

; Function Attrs: nounwind
declare !callback !80 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB120-barrier-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !10, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 18, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 18, type: !13)
!19 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 20, type: !12)
!20 = !DILocalVariable(name: "error", scope: !9, file: !1, line: 34, type: !12)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 18, column: 14, scope: !9)
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !DILocation(line: 18, column: 26, scope: !9)
!29 = !DILocation(line: 20, column: 3, scope: !9)
!30 = !DILocation(line: 20, column: 7, scope: !9)
!31 = !DILocation(line: 22, column: 3, scope: !9)
!32 = !DILocation(line: 33, column: 6, scope: !33)
!33 = distinct !DILexicalBlock(scope: !9, file: !1, line: 33, column: 6)
!34 = !DILocation(line: 33, column: 10, scope: !33)
!35 = !DILocation(line: 33, column: 6, scope: !9)
!36 = !DILocation(line: 33, column: 30, scope: !33)
!37 = !DILocation(line: 33, column: 16, scope: !33)
!38 = !DILocation(line: 34, column: 3, scope: !9)
!39 = !DILocation(line: 34, column: 7, scope: !9)
!40 = !DILocation(line: 34, column: 16, scope: !9)
!41 = !DILocation(line: 34, column: 20, scope: !9)
!42 = !DILocation(line: 35, column: 10, scope: !9)
!43 = !DILocation(line: 36, column: 1, scope: !9)
!44 = !DILocation(line: 35, column: 3, scope: !9)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 23, type: !46, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !52}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!53 = !{!54, !55, !56}
!54 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "var", arg: 3, scope: !45, file: !1, line: 20, type: !52)
!57 = !DILocation(line: 0, scope: !45)
!58 = !DILocation(line: 20, column: 7, scope: !45)
!59 = !DILocation(line: 23, column: 3, scope: !45)
!60 = !DILocation(line: 24, column: 5, scope: !61)
!61 = distinct !DILexicalBlock(scope: !45, file: !1, line: 23, column: 3)
!62 = !DILocation(line: 25, column: 8, scope: !63)
!63 = distinct !DILexicalBlock(scope: !61, file: !1, line: 24, column: 5)
!64 = !DILocation(line: 25, column: 5, scope: !63)
!65 = !DILocation(line: 24, column: 23, scope: !63)
!66 = !DILocation(line: 27, column: 5, scope: !61)
!67 = !DILocation(line: 29, column: 5, scope: !61)
!68 = !DILocation(line: 30, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !61, file: !1, line: 29, column: 5)
!70 = !DILocation(line: 30, column: 5, scope: !69)
!71 = !DILocation(line: 29, column: 23, scope: !69)
!72 = !DILocation(line: 31, column: 3, scope: !45)
!73 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 22, type: !46, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!74 = !{!75, !76, !77}
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !73, type: !48, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !48, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "var", arg: 3, scope: !73, type: !52, flags: DIFlagArtificial)
!78 = !DILocation(line: 0, scope: !73)
!79 = !DILocation(line: 22, column: 3, scope: !73)
!80 = !{!81}
!81 = !{i64 2, i64 -1, i64 -1, i1 true}
