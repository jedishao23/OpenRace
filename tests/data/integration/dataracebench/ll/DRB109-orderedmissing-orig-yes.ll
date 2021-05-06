; ModuleID = 'DRB109-orderedmissing-orig-yes.c'
source_filename = "DRB109-orderedmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [46 x i8] c";DRB109-orderedmissing-orig-yes.c;main;54;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %x to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %x, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %x, align 4, !dbg !16, !tbaa !17
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x), !dbg !21
  %1 = load i32, i32* %x, align 4, !dbg !22, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !23
  %2 = bitcast i32* %x to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %x) #3 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !46
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !46
  store i32* %x, i32** %x.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !37, metadata !DIExpression()), !dbg !47
  %0 = load i32*, i32** %x.addr, align 8, !dbg !48, !tbaa !44
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !38, metadata !DIExpression()), !dbg !46
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !39, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %.omp.lb, align 4, !dbg !49, !tbaa !17
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !40, metadata !DIExpression()), !dbg !46
  store i32 99, i32* %.omp.ub, align 4, !dbg !49, !tbaa !17
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !41, metadata !DIExpression()), !dbg !46
  store i32 1, i32* %.omp.stride, align 4, !dbg !49, !tbaa !17
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !42, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %.omp.is_last, align 4, !dbg !49, !tbaa !17
  %6 = bitcast i32* %i to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %i, metadata !43, metadata !DIExpression()), !dbg !46
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !48
  %8 = load i32, i32* %7, align 4, !dbg !48, !tbaa !17
  call void @__kmpc_dispatch_init_4(%struct.ident_t* @1, i32 %8, i32 66, i32 0, i32 99, i32 1, i32 1), !dbg !48
  br label %omp.dispatch.cond, !dbg !48

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %9 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* @1, i32 %8, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !48
  %tobool = icmp ne i32 %9, 0, !dbg !48
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !48

omp.dispatch.cleanup:                             ; preds = %omp.dispatch.cond
  br label %omp.dispatch.end, !dbg !48

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !49, !tbaa !17
  store i32 %10, i32* %.omp.iv, align 4, !dbg !49, !tbaa !17
  br label %omp.inner.for.cond, !dbg !48

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !17
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !49, !tbaa !17
  %cmp = icmp sle i32 %11, %12, !dbg !48
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !48

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !48

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !17
  %mul = mul nsw i32 %13, 1, !dbg !50
  %add = add nsw i32 0, %mul, !dbg !50
  store i32 %add, i32* %i, align 4, !dbg !50, !tbaa !17
  %14 = load i32, i32* %0, align 4, !dbg !51, !tbaa !17
  %inc = add nsw i32 %14, 1, !dbg !51
  store i32 %inc, i32* %0, align 4, !dbg !51, !tbaa !17
  br label %omp.body.continue, !dbg !53

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !54

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !17
  %add1 = add nsw i32 %15, 1, !dbg !48
  store i32 %add1, i32* %.omp.iv, align 4, !dbg !48, !tbaa !17
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* @1, i32 %8), !dbg !54
  br label %omp.inner.for.cond, !dbg !54, !llvm.loop !55

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !54

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !54, !llvm.loop !57

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %16 = bitcast i32* %i to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !54
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !54
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !54
  %19 = bitcast i32* %.omp.ub to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !54
  %20 = bitcast i32* %.omp.lb to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !54
  %21 = bitcast i32* %.omp.iv to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !54
  ret void, !dbg !58
}

declare void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

declare void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %x) #3 !dbg !59 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !62, metadata !DIExpression()), !dbg !64
  store i32* %x, i32** %x.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i32*, i32** %x.addr, align 8, !dbg !65, !tbaa !44
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65, !tbaa !44
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !65, !tbaa !44
  %3 = load i32*, i32** %x.addr, align 8, !dbg !65, !tbaa !44
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !65
  ret void, !dbg !65
}

; Function Attrs: nounwind
declare !callback !66 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB109-orderedmissing-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !10, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 53, type: !12)
!15 = !DILocation(line: 53, column: 3, scope: !9)
!16 = !DILocation(line: 53, column: 7, scope: !9)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 54, column: 1, scope: !9)
!22 = !DILocation(line: 58, column: 20, scope: !9)
!23 = !DILocation(line: 58, column: 3, scope: !9)
!24 = !DILocation(line: 60, column: 1, scope: !9)
!25 = !DILocation(line: 59, column: 3, scope: !9)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 55, type: !27, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "x", arg: 3, scope: !26, file: !1, line: 53, type: !33)
!38 = !DILocalVariable(name: ".omp.iv", scope: !26, type: !12, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".omp.lb", scope: !26, type: !12, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.ub", scope: !26, type: !12, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.stride", scope: !26, type: !12, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.is_last", scope: !26, type: !12, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: "i", scope: !26, type: !12, flags: DIFlagArtificial)
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !19, i64 0}
!46 = !DILocation(line: 0, scope: !26)
!47 = !DILocation(line: 53, column: 7, scope: !26)
!48 = !DILocation(line: 55, column: 3, scope: !26)
!49 = !DILocation(line: 55, column: 8, scope: !26)
!50 = !DILocation(line: 55, column: 28, scope: !26)
!51 = !DILocation(line: 56, column: 6, scope: !52)
!52 = distinct !DILexicalBlock(scope: !26, file: !1, line: 55, column: 33)
!53 = !DILocation(line: 57, column: 3, scope: !52)
!54 = !DILocation(line: 54, column: 1, scope: !26)
!55 = distinct !{!55, !54, !56}
!56 = !DILocation(line: 54, column: 34, scope: !26)
!57 = distinct !{!57, !54, !56}
!58 = !DILocation(line: 57, column: 3, scope: !26)
!59 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 54, type: !27, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!60 = !{!61, !62, !63}
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !29, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !59, type: !29, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "x", arg: 3, scope: !59, type: !33, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !59)
!65 = !DILocation(line: 54, column: 1, scope: !59)
!66 = !{!67}
!67 = !{i64 2, i64 -1, i64 -1, i1 true}
