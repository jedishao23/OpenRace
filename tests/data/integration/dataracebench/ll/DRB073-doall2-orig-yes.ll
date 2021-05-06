; ModuleID = 'DRB073-doall2-orig-yes.c'
source_filename = "DRB073-doall2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [38 x i8] c";DRB073-doall2-orig-yes.c;main;59;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [39 x i8] c";DRB073-doall2-orig-yes.c;main;59;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !23
  %1 = bitcast i32* %j to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %j, metadata !21, metadata !DIExpression()), !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %j), !dbg !25
  %2 = bitcast i32* %j to i8*, !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !26
  %3 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %j) #3 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !37, metadata !DIExpression()), !dbg !50
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !38, metadata !DIExpression()), !dbg !50
  store i32* %j, i32** %j.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !39, metadata !DIExpression()), !dbg !51
  %0 = load i32*, i32** %j.addr, align 8, !dbg !52, !tbaa !46
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !40, metadata !DIExpression()), !dbg !50
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !41, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %.omp.lb, align 4, !dbg !53, !tbaa !54
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !42, metadata !DIExpression()), !dbg !50
  store i32 99, i32* %.omp.ub, align 4, !dbg !53, !tbaa !54
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !43, metadata !DIExpression()), !dbg !50
  store i32 1, i32* %.omp.stride, align 4, !dbg !53, !tbaa !54
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !44, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %.omp.is_last, align 4, !dbg !53, !tbaa !54
  %6 = bitcast i32* %i to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !45, metadata !DIExpression()), !dbg !50
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !52
  %8 = load i32, i32* %7, align 4, !dbg !52, !tbaa !54
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !56
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !53, !tbaa !54
  %cmp = icmp sgt i32 %9, 99, !dbg !53
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !53

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !53

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !53, !tbaa !54
  br label %cond.end, !dbg !53

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %10, %cond.false ], !dbg !53
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !53, !tbaa !54
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !53, !tbaa !54
  store i32 %11, i32* %.omp.iv, align 4, !dbg !53, !tbaa !54
  br label %omp.inner.for.cond, !dbg !52

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !53, !tbaa !54
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !53, !tbaa !54
  %cmp1 = icmp sle i32 %12, %13, !dbg !52
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !52

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !52

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !53, !tbaa !54
  %mul = mul nsw i32 %14, 1, !dbg !57
  %add = add nsw i32 0, %mul, !dbg !57
  store i32 %add, i32* %i, align 4, !dbg !57, !tbaa !54
  store i32 0, i32* %0, align 4, !dbg !58, !tbaa !54
  br label %for.cond, !dbg !60

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %15 = load i32, i32* %0, align 4, !dbg !61, !tbaa !54
  %cmp2 = icmp slt i32 %15, 100, !dbg !63
  br i1 %cmp2, label %for.body, label %for.end, !dbg !64

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !65, !tbaa !54
  %idxprom = sext i32 %16 to i64, !dbg !66
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !66
  %17 = load i32, i32* %0, align 4, !dbg !67, !tbaa !54
  %idxprom3 = sext i32 %17 to i64, !dbg !66
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom3, !dbg !66
  %18 = load i32, i32* %arrayidx4, align 4, !dbg !66, !tbaa !54
  %add5 = add nsw i32 %18, 1, !dbg !68
  %19 = load i32, i32* %i, align 4, !dbg !69, !tbaa !54
  %idxprom6 = sext i32 %19 to i64, !dbg !70
  %arrayidx7 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom6, !dbg !70
  %20 = load i32, i32* %0, align 4, !dbg !71, !tbaa !54
  %idxprom8 = sext i32 %20 to i64, !dbg !70
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx7, i64 0, i64 %idxprom8, !dbg !70
  store i32 %add5, i32* %arrayidx9, align 4, !dbg !72, !tbaa !54
  br label %for.inc, !dbg !70

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %0, align 4, !dbg !73, !tbaa !54
  %inc = add nsw i32 %21, 1, !dbg !73
  store i32 %inc, i32* %0, align 4, !dbg !73, !tbaa !54
  br label %for.cond, !dbg !74, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !76

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !56

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !53, !tbaa !54
  %add10 = add nsw i32 %22, 1, !dbg !52
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !52, !tbaa !54
  br label %omp.inner.for.cond, !dbg !56, !llvm.loop !78

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !56

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %8), !dbg !79
  %23 = bitcast i32* %i to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !56
  %24 = bitcast i32* %.omp.is_last to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !56
  %25 = bitcast i32* %.omp.stride to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !56
  %26 = bitcast i32* %.omp.ub to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !56
  %27 = bitcast i32* %.omp.lb to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !56
  %28 = bitcast i32* %.omp.iv to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !56
  ret void, !dbg !80
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %j) #3 !dbg !81 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !86
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !84, metadata !DIExpression()), !dbg !86
  store i32* %j, i32** %j.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load i32*, i32** %j.addr, align 8, !dbg !87, !tbaa !46
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !87, !tbaa !46
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !87, !tbaa !46
  %3 = load i32*, i32** %j.addr, align 8, !dbg !87, !tbaa !46
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !87
  ret void, !dbg !87
}

; Function Attrs: nounwind
declare !callback !88 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 55, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB073-doall2-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320000, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 56, type: !17, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7}
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 58, type: !7)
!21 = !DILocalVariable(name: "j", scope: !16, file: !3, line: 58, type: !7)
!22 = !DILocation(line: 58, column: 3, scope: !16)
!23 = !DILocation(line: 58, column: 7, scope: !16)
!24 = !DILocation(line: 58, column: 9, scope: !16)
!25 = !DILocation(line: 59, column: 1, scope: !16)
!26 = !DILocation(line: 64, column: 1, scope: !16)
!27 = !DILocation(line: 63, column: 3, scope: !16)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !29, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !36)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !35}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!35 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45}
!37 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: "j", arg: 3, scope: !28, file: !3, line: 58, type: !35)
!40 = !DILocalVariable(name: ".omp.iv", scope: !28, type: !7, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.lb", scope: !28, type: !7, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.ub", scope: !28, type: !7, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.stride", scope: !28, type: !7, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.is_last", scope: !28, type: !7, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "i", scope: !28, type: !7, flags: DIFlagArtificial)
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 0, scope: !28)
!51 = !DILocation(line: 58, column: 9, scope: !28)
!52 = !DILocation(line: 60, column: 3, scope: !28)
!53 = !DILocation(line: 60, column: 8, scope: !28)
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !48, i64 0}
!56 = !DILocation(line: 59, column: 1, scope: !28)
!57 = !DILocation(line: 60, column: 18, scope: !28)
!58 = !DILocation(line: 61, column: 11, scope: !59)
!59 = distinct !DILexicalBlock(scope: !28, file: !3, line: 61, column: 5)
!60 = !DILocation(line: 61, column: 10, scope: !59)
!61 = !DILocation(line: 61, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !3, line: 61, column: 5)
!63 = !DILocation(line: 61, column: 15, scope: !62)
!64 = !DILocation(line: 61, column: 5, scope: !59)
!65 = !DILocation(line: 62, column: 17, scope: !62)
!66 = !DILocation(line: 62, column: 15, scope: !62)
!67 = !DILocation(line: 62, column: 20, scope: !62)
!68 = !DILocation(line: 62, column: 22, scope: !62)
!69 = !DILocation(line: 62, column: 9, scope: !62)
!70 = !DILocation(line: 62, column: 7, scope: !62)
!71 = !DILocation(line: 62, column: 12, scope: !62)
!72 = !DILocation(line: 62, column: 14, scope: !62)
!73 = !DILocation(line: 61, column: 21, scope: !62)
!74 = !DILocation(line: 61, column: 5, scope: !62)
!75 = distinct !{!75, !64, !76, !77}
!76 = !DILocation(line: 62, column: 23, scope: !59)
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !56, !79}
!79 = !DILocation(line: 59, column: 25, scope: !28)
!80 = !DILocation(line: 62, column: 23, scope: !28)
!81 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 59, type: !29, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!82 = !{!83, !84, !85}
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !81, type: !31, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !81, type: !31, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "j", arg: 3, scope: !81, type: !35, flags: DIFlagArtificial)
!86 = !DILocation(line: 0, scope: !81)
!87 = !DILocation(line: 59, column: 1, scope: !81)
!88 = !{!89}
!89 = !{i64 2, i64 -1, i64 -1, i1 true}
