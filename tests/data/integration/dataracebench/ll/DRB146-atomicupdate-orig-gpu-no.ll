; ModuleID = 'DRB146-atomicupdate-orig-gpu-no.c'
source_filename = "DRB146-atomicupdate-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@var = dso_local global i32 0, align 4, !dbg !0
@0 = private unnamed_addr constant [47 x i8] c";DRB146-atomicupdate-orig-gpu-no.c;main;22;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [48 x i8] c";DRB146-atomicupdate-orig-gpu-no.c;main;22;31;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @__omp_offloading_10308_be047a_main_l21(i32* @var) #4, !dbg !16
  %0 = load i32, i32* @var, align 4, !dbg !18, !tbaa !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %0), !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047a_main_l21_debug__(i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !25 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !30, metadata !DIExpression()), !dbg !33
  %0 = load i32*, i32** %var.addr, align 8, !dbg !34, !tbaa !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %0), !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !36 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !53
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !53
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !46, metadata !DIExpression()), !dbg !54
  %0 = load i32*, i32** %var.addr, align 8, !dbg !55, !tbaa !31
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !53
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !48, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %.omp.lb, align 4, !dbg !56, !tbaa !19
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !49, metadata !DIExpression()), !dbg !53
  store i32 99, i32* %.omp.ub, align 4, !dbg !56, !tbaa !19
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !50, metadata !DIExpression()), !dbg !53
  store i32 1, i32* %.omp.stride, align 4, !dbg !56, !tbaa !19
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !51, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %.omp.is_last, align 4, !dbg !56, !tbaa !19
  %6 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !53
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !55
  %8 = load i32, i32* %7, align 4, !dbg !55, !tbaa !19
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 92, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !55
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !19
  %cmp = icmp sgt i32 %9, 99, !dbg !56
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !56

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !56

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !19
  br label %cond.end, !dbg !56

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %10, %cond.false ], !dbg !56
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !56, !tbaa !19
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !56, !tbaa !19
  store i32 %11, i32* %.omp.iv, align 4, !dbg !56, !tbaa !19
  br label %omp.inner.for.cond, !dbg !55

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !19
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !19
  %cmp1 = icmp sle i32 %12, %13, !dbg !55
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !55

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !55

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !19
  %mul = mul nsw i32 %14, 1, !dbg !57
  %add = add nsw i32 0, %mul, !dbg !57
  store i32 %add, i32* %i, align 4, !dbg !57, !tbaa !19
  %15 = atomicrmw add i32* %0, i32 1 monotonic, !dbg !58
  br label %omp.body.continue, !dbg !61

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !62

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !19
  %add2 = add nsw i32 %16, 1, !dbg !55
  store i32 %add2, i32* %.omp.iv, align 4, !dbg !55, !tbaa !19
  br label %omp.inner.for.cond, !dbg !62, !llvm.loop !63

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !62

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %8), !dbg !64
  %17 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !62
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !62
  %19 = bitcast i32* %.omp.stride to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !62
  %20 = bitcast i32* %.omp.ub to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !62
  %21 = bitcast i32* %.omp.lb to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !62
  %22 = bitcast i32* %.omp.iv to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !62
  ret void, !dbg !65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !66 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !68, metadata !DIExpression()), !dbg !71
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !69, metadata !DIExpression()), !dbg !71
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !70, metadata !DIExpression()), !dbg !71
  %0 = load i32*, i32** %var.addr, align 8, !dbg !72, !tbaa !31
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !72, !tbaa !31
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !72, !tbaa !31
  %3 = load i32*, i32** %var.addr, align 8, !dbg !72, !tbaa !31
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !72
  ret void, !dbg !72
}

; Function Attrs: nounwind
declare !callback !73 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047a_main_l21(i32* nonnull align 4 dereferenceable(4) %var) #1 !dbg !75 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !77, metadata !DIExpression()), !dbg !78
  %0 = load i32*, i32** %var.addr, align 8, !dbg !79, !tbaa !31
  %1 = load i32*, i32** %var.addr, align 8, !dbg !79, !tbaa !31
  call void @__omp_offloading_10308_be047a_main_l21_debug__(i32* %1) #4, !dbg !79
  ret void, !dbg !79
}

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 18, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB146-atomicupdate-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{!"clang version 11.1.0"}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 20, type: !14, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{!6}
!16 = !DILocation(line: 21, column: 3, scope: !17)
!17 = distinct !DILexicalBlock(scope: !13, file: !3, line: 21, column: 3)
!18 = !DILocation(line: 27, column: 18, scope: !13)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 27, column: 3, scope: !13)
!24 = !DILocation(line: 28, column: 3, scope: !13)
!25 = distinct !DISubprogram(name: "__omp_offloading_10308_be047a_main_l21_debug__", scope: !3, file: !3, line: 22, type: !26, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !29)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!29 = !{!30}
!30 = !DILocalVariable(name: "var", arg: 1, scope: !25, file: !3, line: 18, type: !28)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !21, i64 0}
!33 = !DILocation(line: 18, column: 5, scope: !25)
!34 = !DILocation(line: 22, column: 3, scope: !25)
!35 = !DILocation(line: 22, column: 31, scope: !25)
!36 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 23, type: !37, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39, !28}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !36, type: !39, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "var", arg: 3, scope: !36, file: !3, line: 18, type: !28)
!47 = !DILocalVariable(name: ".omp.iv", scope: !36, type: !6, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.lb", scope: !36, type: !6, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.ub", scope: !36, type: !6, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.stride", scope: !36, type: !6, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.is_last", scope: !36, type: !6, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "i", scope: !36, type: !6, flags: DIFlagArtificial)
!53 = !DILocation(line: 0, scope: !36)
!54 = !DILocation(line: 18, column: 5, scope: !36)
!55 = !DILocation(line: 23, column: 3, scope: !36)
!56 = !DILocation(line: 23, column: 8, scope: !36)
!57 = !DILocation(line: 23, column: 22, scope: !36)
!58 = !DILocation(line: 25, column: 5, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 24, column: 5)
!60 = distinct !DILexicalBlock(scope: !36, file: !3, line: 23, column: 26)
!61 = !DILocation(line: 26, column: 3, scope: !60)
!62 = !DILocation(line: 22, column: 3, scope: !36)
!63 = distinct !{!63, !62, !64}
!64 = !DILocation(line: 22, column: 31, scope: !36)
!65 = !DILocation(line: 26, column: 3, scope: !36)
!66 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 22, type: !37, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !67)
!67 = !{!68, !69, !70}
!68 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !66, type: !39, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !66, type: !39, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "var", arg: 3, scope: !66, type: !28, flags: DIFlagArtificial)
!71 = !DILocation(line: 0, scope: !66)
!72 = !DILocation(line: 22, column: 3, scope: !66)
!73 = !{!74}
!74 = !{i64 2, i64 -1, i64 -1, i1 true}
!75 = distinct !DISubprogram(name: "__omp_offloading_10308_be047a_main_l21", scope: !3, file: !3, line: 21, type: !26, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!76 = !{!77}
!77 = !DILocalVariable(name: "var", arg: 1, scope: !75, type: !28, flags: DIFlagArtificial)
!78 = !DILocation(line: 0, scope: !75)
!79 = !DILocation(line: 21, column: 3, scope: !75)
