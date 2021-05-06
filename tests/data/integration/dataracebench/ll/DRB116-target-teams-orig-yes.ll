; ModuleID = 'DRB116-target-teams-orig-yes.c'
source_filename = "DRB116-target-teams-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [44 x i8] c";DRB116-target-teams-orig-yes.c;main;64;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"a[50]=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !33
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !36
  %0 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !38
  %1 = bitcast i32* %len to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !40
  store i32 100, i32* %len, align 4, !dbg !40, !tbaa !29
  %2 = load i32, i32* %len, align 4, !dbg !41, !tbaa !29
  %3 = zext i32 %2 to i64, !dbg !42
  %4 = call i8* @llvm.stacksave(), !dbg !42
  store i8* %4, i8** %saved_stack, align 8, !dbg !42
  %vla = alloca double, i64 %3, align 16, !dbg !42
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !23, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata double* %vla, metadata !25, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i, align 4, !dbg !45, !tbaa !29
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !48, !tbaa !29
  %6 = load i32, i32* %len, align 4, !dbg !50, !tbaa !29
  %cmp = icmp slt i32 %5, %6, !dbg !51
  br i1 %cmp, label %for.body, label %for.end, !dbg !52

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !53, !tbaa !29
  %conv = sitofp i32 %7 to double, !dbg !54
  %div = fdiv double %conv, 2.000000e+00, !dbg !55
  %8 = load i32, i32* %i, align 4, !dbg !56, !tbaa !29
  %idxprom = sext i32 %8 to i64, !dbg !57
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !57
  store double %div, double* %arrayidx, align 8, !dbg !58, !tbaa !59
  br label %for.inc, !dbg !57

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !61, !tbaa !29
  %inc = add nsw i32 %9, 1, !dbg !61
  store i32 %inc, i32* %i, align 4, !dbg !61, !tbaa !29
  br label %for.cond, !dbg !62, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  call void @__omp_offloading_10308_be045c_main_l63(i64 %3, double* %vla) #3, !dbg !66
  %arrayidx1 = getelementptr inbounds double, double* %vla, i64 50, !dbg !68
  %10 = load double, double* %arrayidx1, align 16, !dbg !68, !tbaa !59
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %10), !dbg !69
  store i32 0, i32* %retval, align 4, !dbg !70
  %11 = load i8*, i8** %saved_stack, align 8, !dbg !71
  call void @llvm.stackrestore(i8* %11), !dbg !71
  %12 = bitcast i32* %len to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3, !dbg !71
  %13 = bitcast i32* %i to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !71
  %14 = load i32, i32* %retval, align 4, !dbg !71
  ret i32 %14, !dbg !71
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be045c_main_l63_debug__(i64 %vla, double* nonnull align 8 dereferenceable(8) %a) #4 !dbg !72 {
entry:
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !79
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !77, metadata !DIExpression()), !dbg !81
  store double* %a, double** %a.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !78, metadata !DIExpression()), !dbg !82
  %1 = load i64, i64* %vla.addr, align 8, !dbg !83, !tbaa !79
  %2 = load double*, double** %a.addr, align 8, !dbg !83, !tbaa !34
  call void @__kmpc_push_num_teams(%struct.ident_t* @1, i32 %0, i32 2, i32 0), !dbg !83
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @1, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %1, double* %2), !dbg !83
  ret void, !dbg !84
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %vla, double* nonnull align 8 dereferenceable(8) %a) #4 !dbg !85 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !97
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !79
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !95, metadata !DIExpression()), !dbg !97
  store double* %a, double** %a.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !96, metadata !DIExpression()), !dbg !98
  %0 = load i64, i64* %vla.addr, align 8, !dbg !99, !tbaa !79
  %1 = load double*, double** %a.addr, align 8, !dbg !99, !tbaa !34
  %arrayidx = getelementptr inbounds double, double* %1, i64 50, !dbg !100
  %2 = load double, double* %arrayidx, align 16, !dbg !102, !tbaa !59
  %mul = fmul double %2, 2.000000e+00, !dbg !102
  store double %mul, double* %arrayidx, align 16, !dbg !102, !tbaa !59
  ret void, !dbg !103
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %vla, double* nonnull align 8 dereferenceable(8) %a) #4 !dbg !104 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !106, metadata !DIExpression()), !dbg !110
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !107, metadata !DIExpression()), !dbg !110
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !79
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !108, metadata !DIExpression()), !dbg !110
  store double* %a, double** %a.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = load i64, i64* %vla.addr, align 8, !dbg !111, !tbaa !79
  %1 = load double*, double** %a.addr, align 8, !dbg !111, !tbaa !34
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111, !tbaa !34
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !111, !tbaa !34
  %4 = load double*, double** %a.addr, align 8, !dbg !111, !tbaa !34
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i64 %0, double* %4) #3, !dbg !111
  ret void, !dbg !111
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) #3

; Function Attrs: nounwind
declare !callback !112 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be045c_main_l63(i64 %vla, double* nonnull align 8 dereferenceable(8) %a) #4 !dbg !114 {
entry:
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !79
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !116, metadata !DIExpression()), !dbg !118
  store double* %a, double** %a.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load i64, i64* %vla.addr, align 8, !dbg !119, !tbaa !79
  %1 = load double*, double** %a.addr, align 8, !dbg !119, !tbaa !34
  %2 = load double*, double** %a.addr, align 8, !dbg !119, !tbaa !34
  call void @__omp_offloading_10308_be045c_main_l63_debug__(i64 %0, double* %2) #3, !dbg !119
  ret void, !dbg !119
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB116-target-teams-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"clang version 11.1.0"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !12, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21, !22, !23, !25}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !11, file: !1, line: 53, type: !14)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !11, file: !1, line: 53, type: !15)
!21 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 55, type: !14)
!22 = !DILocalVariable(name: "len", scope: !11, file: !1, line: 56, type: !14)
!23 = !DILocalVariable(name: "__vla_expr0", scope: !11, type: !24, flags: DIFlagArtificial)
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "a", scope: !11, file: !1, line: 57, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: !23)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 53, column: 14, scope: !11)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !31, i64 0}
!36 = !DILocation(line: 53, column: 26, scope: !11)
!37 = !DILocation(line: 55, column: 3, scope: !11)
!38 = !DILocation(line: 55, column: 7, scope: !11)
!39 = !DILocation(line: 56, column: 3, scope: !11)
!40 = !DILocation(line: 56, column: 7, scope: !11)
!41 = !DILocation(line: 57, column: 12, scope: !11)
!42 = !DILocation(line: 57, column: 3, scope: !11)
!43 = !DILocation(line: 0, scope: !11)
!44 = !DILocation(line: 57, column: 10, scope: !11)
!45 = !DILocation(line: 60, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !11, file: !1, line: 60, column: 3)
!47 = !DILocation(line: 60, column: 8, scope: !46)
!48 = !DILocation(line: 60, column: 13, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 60, column: 3)
!50 = !DILocation(line: 60, column: 15, scope: !49)
!51 = !DILocation(line: 60, column: 14, scope: !49)
!52 = !DILocation(line: 60, column: 3, scope: !46)
!53 = !DILocation(line: 61, column: 20, scope: !49)
!54 = !DILocation(line: 61, column: 12, scope: !49)
!55 = !DILocation(line: 61, column: 22, scope: !49)
!56 = !DILocation(line: 61, column: 7, scope: !49)
!57 = !DILocation(line: 61, column: 5, scope: !49)
!58 = !DILocation(line: 61, column: 9, scope: !49)
!59 = !{!60, !60, i64 0}
!60 = !{!"double", !31, i64 0}
!61 = !DILocation(line: 60, column: 21, scope: !49)
!62 = !DILocation(line: 60, column: 3, scope: !49)
!63 = distinct !{!63, !52, !64, !65}
!64 = !DILocation(line: 61, column: 23, scope: !46)
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !DILocation(line: 63, column: 1, scope: !67)
!67 = distinct !DILexicalBlock(scope: !11, file: !1, line: 63, column: 1)
!68 = !DILocation(line: 69, column: 25, scope: !11)
!69 = !DILocation(line: 69, column: 3, scope: !11)
!70 = !DILocation(line: 70, column: 3, scope: !11)
!71 = !DILocation(line: 71, column: 1, scope: !11)
!72 = distinct !DISubprogram(name: "__omp_offloading_10308_be045c_main_l63_debug__", scope: !1, file: !1, line: 64, type: !73, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !24, !75}
!75 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!76 = !{!77, !78}
!77 = !DILocalVariable(name: "vla", arg: 1, scope: !72, type: !24, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "a", arg: 2, scope: !72, file: !1, line: 57, type: !75)
!79 = !{!80, !80, i64 0}
!80 = !{!"long", !31, i64 0}
!81 = !DILocation(line: 0, scope: !72)
!82 = !DILocation(line: 57, column: 10, scope: !72)
!83 = !DILocation(line: 64, column: 1, scope: !72)
!84 = !DILocation(line: 64, column: 32, scope: !72)
!85 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !86, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88, !88, !24, !75}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!92 = !{!93, !94, !95, !96}
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !88, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !88, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "vla", arg: 3, scope: !85, type: !24, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "a", arg: 4, scope: !85, file: !1, line: 57, type: !75)
!97 = !DILocation(line: 0, scope: !85)
!98 = !DILocation(line: 57, column: 10, scope: !85)
!99 = !DILocation(line: 65, column: 3, scope: !85)
!100 = !DILocation(line: 66, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !85, file: !1, line: 65, column: 3)
!102 = !DILocation(line: 66, column: 10, scope: !101)
!103 = !DILocation(line: 67, column: 3, scope: !85)
!104 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !86, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !104, type: !88, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !104, type: !88, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "vla", arg: 3, scope: !104, type: !24, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "a", arg: 4, scope: !104, type: !75, flags: DIFlagArtificial)
!110 = !DILocation(line: 0, scope: !104)
!111 = !DILocation(line: 64, column: 1, scope: !104)
!112 = !{!113}
!113 = !{i64 2, i64 -1, i64 -1, i1 true}
!114 = distinct !DISubprogram(name: "__omp_offloading_10308_be045c_main_l63", scope: !1, file: !1, line: 63, type: !73, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!115 = !{!116, !117}
!116 = !DILocalVariable(name: "vla", arg: 1, scope: !114, type: !24, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "a", arg: 2, scope: !114, type: !75, flags: DIFlagArtificial)
!118 = !DILocation(line: 0, scope: !114)
!119 = !DILocation(line: 63, column: 1, scope: !114)
