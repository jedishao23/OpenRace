; ModuleID = 'DRB059-lastprivate-orig-no.c'
source_filename = "DRB059-lastprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [41 x i8] c";DRB059-lastprivate-orig-no.c;foo;59;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [42 x i8] c";DRB059-lastprivate-orig-no.c;foo;59;53;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"x=%d\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @foo() #0 !dbg !9 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %0 = bitcast i32* %i to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !17
  %1 = bitcast i32* %x to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %x, metadata !15, metadata !DIExpression()), !dbg !18
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x), !dbg !19
  %2 = load i32, i32* %x, align 4, !dbg !20, !tbaa !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %2), !dbg !25
  %3 = bitcast i32* %x to i8*, !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !26
  %4 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !26
  ret void, !dbg !26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %x) #3 !dbg !27 {
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
  %x1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !48
  store i32* %x, i32** %x.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !38, metadata !DIExpression()), !dbg !49
  %0 = load i32*, i32** %x.addr, align 8, !dbg !50, !tbaa !46
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !39, metadata !DIExpression()), !dbg !48
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !40, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %.omp.lb, align 4, !dbg !51, !tbaa !21
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !41, metadata !DIExpression()), !dbg !48
  store i32 99, i32* %.omp.ub, align 4, !dbg !51, !tbaa !21
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !42, metadata !DIExpression()), !dbg !48
  store i32 1, i32* %.omp.stride, align 4, !dbg !51, !tbaa !21
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !43, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %.omp.is_last, align 4, !dbg !51, !tbaa !21
  %6 = bitcast i32* %i to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !DIExpression()), !dbg !48
  %7 = bitcast i32* %x1 to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %x1, metadata !45, metadata !DIExpression()), !dbg !48
  %8 = bitcast i32* %i2 to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !44, metadata !DIExpression()), !dbg !48
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !50
  %10 = load i32, i32* %9, align 4, !dbg !50, !tbaa !21
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !52
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !51, !tbaa !21
  %cmp = icmp sgt i32 %11, 99, !dbg !51
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !51

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !51

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !51, !tbaa !21
  br label %cond.end, !dbg !51

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %12, %cond.false ], !dbg !51
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !51, !tbaa !21
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !51, !tbaa !21
  store i32 %13, i32* %.omp.iv, align 4, !dbg !51, !tbaa !21
  br label %omp.inner.for.cond, !dbg !50

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !21
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !51, !tbaa !21
  %cmp3 = icmp sle i32 %14, %15, !dbg !50
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !50

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !50

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !21
  %mul = mul nsw i32 %16, 1, !dbg !53
  %add = add nsw i32 0, %mul, !dbg !53
  store i32 %add, i32* %i, align 4, !dbg !53, !tbaa !21
  %17 = load i32, i32* %i, align 4, !dbg !54, !tbaa !21
  store i32 %17, i32* %x1, align 4, !dbg !55, !tbaa !21
  br label %omp.body.continue, !dbg !56

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !52

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !21
  %add4 = add nsw i32 %18, 1, !dbg !50
  store i32 %add4, i32* %.omp.iv, align 4, !dbg !50, !tbaa !21
  br label %omp.inner.for.cond, !dbg !52, !llvm.loop !57

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !52

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %10), !dbg !58
  %19 = load i32, i32* %.omp.is_last, align 4, !dbg !52, !tbaa !21
  %20 = icmp ne i32 %19, 0, !dbg !52
  br i1 %20, label %.omp.lastprivate.then, label %.omp.lastprivate.done, !dbg !52

.omp.lastprivate.then:                            ; preds = %omp.loop.exit
  %21 = load i32, i32* %x1, align 4, !dbg !59, !tbaa !21
  store i32 %21, i32* %0, align 4, !dbg !59, !tbaa !21
  br label %.omp.lastprivate.done, !dbg !52

.omp.lastprivate.done:                            ; preds = %.omp.lastprivate.then, %omp.loop.exit
  %22 = bitcast i32* %i2 to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !52
  %23 = bitcast i32* %x1 to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !52
  %24 = bitcast i32* %i to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !52
  %25 = bitcast i32* %.omp.is_last to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !52
  %26 = bitcast i32* %.omp.stride to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !52
  %27 = bitcast i32* %.omp.ub to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !52
  %28 = bitcast i32* %.omp.lb to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !52
  %29 = bitcast i32* %.omp.iv to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !52
  ret void, !dbg !54
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %x) #3 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !62, metadata !DIExpression()), !dbg !65
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !63, metadata !DIExpression()), !dbg !65
  store i32* %x, i32** %x.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i32*, i32** %x.addr, align 8, !dbg !66, !tbaa !46
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66, !tbaa !46
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !66, !tbaa !46
  %3 = load i32*, i32** %x.addr, align 8, !dbg !66, !tbaa !46
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !66
  ret void, !dbg !66
}

; Function Attrs: nounwind
declare !callback !67 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !69 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo(), !dbg !72
  ret i32 0, !dbg !73
}

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
!1 = !DIFile(filename: "DRB059-lastprivate-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 56, type: !10, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{!13, !15}
!13 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 58, type: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 58, type: !14)
!16 = !DILocation(line: 58, column: 3, scope: !9)
!17 = !DILocation(line: 58, column: 7, scope: !9)
!18 = !DILocation(line: 58, column: 9, scope: !9)
!19 = !DILocation(line: 59, column: 1, scope: !9)
!20 = !DILocation(line: 62, column: 17, scope: !9)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 62, column: 3, scope: !9)
!26 = !DILocation(line: 63, column: 1, scope: !9)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 60, type: !28, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !34}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !44}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "x", arg: 3, scope: !27, file: !1, line: 58, type: !34)
!39 = !DILocalVariable(name: ".omp.iv", scope: !27, type: !14, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.lb", scope: !27, type: !14, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.ub", scope: !27, type: !14, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.stride", scope: !27, type: !14, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.is_last", scope: !27, type: !14, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: "i", scope: !27, type: !14, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "x", scope: !27, type: !14, flags: DIFlagArtificial)
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !23, i64 0}
!48 = !DILocation(line: 0, scope: !27)
!49 = !DILocation(line: 58, column: 9, scope: !27)
!50 = !DILocation(line: 60, column: 3, scope: !27)
!51 = !DILocation(line: 60, column: 8, scope: !27)
!52 = !DILocation(line: 59, column: 1, scope: !27)
!53 = !DILocation(line: 60, column: 18, scope: !27)
!54 = !DILocation(line: 61, column: 7, scope: !27)
!55 = !DILocation(line: 61, column: 6, scope: !27)
!56 = !DILocation(line: 61, column: 5, scope: !27)
!57 = distinct !{!57, !52, !58}
!58 = !DILocation(line: 59, column: 53, scope: !27)
!59 = !DILocation(line: 59, column: 51, scope: !27)
!60 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 59, type: !28, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !61)
!61 = !{!62, !63, !64}
!62 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !30, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !30, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: "x", arg: 3, scope: !60, type: !34, flags: DIFlagArtificial)
!65 = !DILocation(line: 0, scope: !60)
!66 = !DILocation(line: 59, column: 1, scope: !60)
!67 = !{!68}
!68 = !{i64 2, i64 -1, i64 -1, i1 true}
!69 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !70, scopeLine: 66, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!70 = !DISubroutineType(types: !71)
!71 = !{!14}
!72 = !DILocation(line: 67, column: 3, scope: !69)
!73 = !DILocation(line: 68, column: 3, scope: !69)
