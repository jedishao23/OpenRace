; ModuleID = 'DRB093-doall2-collapse-orig-no.c'
source_filename = "DRB093-doall2-collapse-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [46 x i8] c";DRB093-doall2-collapse-orig-no.c;main;56;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [47 x i8] c";DRB093-doall2-collapse-orig-no.c;main;56;37;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8

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
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !25
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
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !49
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !49
  %0 = bitcast i32* %.omp.iv to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !38, metadata !DIExpression()), !dbg !49
  %1 = bitcast i32* %.omp.lb to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !39, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %.omp.lb, align 4, !dbg !51, !tbaa !52
  %2 = bitcast i32* %.omp.ub to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !40, metadata !DIExpression()), !dbg !49
  store i32 9999, i32* %.omp.ub, align 4, !dbg !51, !tbaa !52
  %3 = bitcast i32* %.omp.stride to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !41, metadata !DIExpression()), !dbg !49
  store i32 1, i32* %.omp.stride, align 4, !dbg !51, !tbaa !52
  %4 = bitcast i32* %.omp.is_last to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !42, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %.omp.is_last, align 4, !dbg !51, !tbaa !52
  %5 = bitcast i32* %i to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i, metadata !43, metadata !DIExpression()), !dbg !49
  %6 = bitcast i32* %j to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %j, metadata !44, metadata !DIExpression()), !dbg !49
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !50
  %8 = load i32, i32* %7, align 4, !dbg !50, !tbaa !52
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !54
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !51, !tbaa !52
  %cmp = icmp sgt i32 %9, 9999, !dbg !51
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !51

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !51

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !51, !tbaa !52
  br label %cond.end, !dbg !51

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9999, %cond.true ], [ %10, %cond.false ], !dbg !51
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !51, !tbaa !52
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !51, !tbaa !52
  store i32 %11, i32* %.omp.iv, align 4, !dbg !51, !tbaa !52
  br label %omp.inner.for.cond, !dbg !50

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !52
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !51, !tbaa !52
  %cmp2 = icmp sle i32 %12, %13, !dbg !50
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !50

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !50

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !52
  %div = sdiv i32 %14, 100, !dbg !55
  %mul = mul nsw i32 %div, 1, !dbg !55
  %add = add nsw i32 0, %mul, !dbg !55
  store i32 %add, i32* %i, align 4, !dbg !55, !tbaa !52
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !52
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !52
  %div3 = sdiv i32 %16, 100, !dbg !55
  %mul4 = mul nsw i32 %div3, 100, !dbg !55
  %sub = sub nsw i32 %15, %mul4, !dbg !55
  %mul5 = mul nsw i32 %sub, 1, !dbg !56
  %add6 = add nsw i32 0, %mul5, !dbg !56
  store i32 %add6, i32* %j, align 4, !dbg !56, !tbaa !52
  %17 = load i32, i32* %i, align 4, !dbg !57, !tbaa !52
  %idxprom = sext i32 %17 to i64, !dbg !58
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !58
  %18 = load i32, i32* %j, align 4, !dbg !59, !tbaa !52
  %idxprom7 = sext i32 %18 to i64, !dbg !58
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom7, !dbg !58
  %19 = load i32, i32* %arrayidx8, align 4, !dbg !58, !tbaa !52
  %add9 = add nsw i32 %19, 1, !dbg !60
  %20 = load i32, i32* %i, align 4, !dbg !61, !tbaa !52
  %idxprom10 = sext i32 %20 to i64, !dbg !62
  %arrayidx11 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom10, !dbg !62
  %21 = load i32, i32* %j, align 4, !dbg !63, !tbaa !52
  %idxprom12 = sext i32 %21 to i64, !dbg !62
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx11, i64 0, i64 %idxprom12, !dbg !62
  store i32 %add9, i32* %arrayidx13, align 4, !dbg !64, !tbaa !52
  br label %omp.body.continue, !dbg !62

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !54

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !52
  %add14 = add nsw i32 %22, 1, !dbg !50
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !50, !tbaa !52
  br label %omp.inner.for.cond, !dbg !54, !llvm.loop !65

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !54

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %8), !dbg !66
  %23 = bitcast i32* %j to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !54
  %24 = bitcast i32* %i to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !54
  %25 = bitcast i32* %.omp.is_last to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !54
  %26 = bitcast i32* %.omp.stride to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !54
  %27 = bitcast i32* %.omp.ub to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !54
  %28 = bitcast i32* %.omp.lb to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !54
  %29 = bitcast i32* %.omp.iv to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !54
  ret void, !dbg !67
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !70, metadata !DIExpression()), !dbg !72
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !71, metadata !DIExpression()), !dbg !72
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !73, !tbaa !45
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !73, !tbaa !45
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !73
  ret void, !dbg !73
}

; Function Attrs: nounwind
declare !callback !74 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 52, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB093-doall2-collapse-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 53, type: !17, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7}
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 55, type: !7)
!21 = !DILocalVariable(name: "j", scope: !16, file: !3, line: 55, type: !7)
!22 = !DILocation(line: 55, column: 3, scope: !16)
!23 = !DILocation(line: 55, column: 7, scope: !16)
!24 = !DILocation(line: 55, column: 9, scope: !16)
!25 = !DILocation(line: 56, column: 1, scope: !16)
!26 = !DILocation(line: 61, column: 1, scope: !16)
!27 = !DILocation(line: 60, column: 3, scope: !16)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 57, type: !29, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.iv", scope: !28, type: !7, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".omp.lb", scope: !28, type: !7, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.ub", scope: !28, type: !7, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.stride", scope: !28, type: !7, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.is_last", scope: !28, type: !7, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: "i", scope: !28, type: !7, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: "j", scope: !28, type: !7, flags: DIFlagArtificial)
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 0, scope: !28)
!50 = !DILocation(line: 57, column: 3, scope: !28)
!51 = !DILocation(line: 57, column: 8, scope: !28)
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !47, i64 0}
!54 = !DILocation(line: 56, column: 1, scope: !28)
!55 = !DILocation(line: 57, column: 18, scope: !28)
!56 = !DILocation(line: 58, column: 20, scope: !28)
!57 = !DILocation(line: 59, column: 17, scope: !28)
!58 = !DILocation(line: 59, column: 15, scope: !28)
!59 = !DILocation(line: 59, column: 20, scope: !28)
!60 = !DILocation(line: 59, column: 22, scope: !28)
!61 = !DILocation(line: 59, column: 9, scope: !28)
!62 = !DILocation(line: 59, column: 7, scope: !28)
!63 = !DILocation(line: 59, column: 12, scope: !28)
!64 = !DILocation(line: 59, column: 14, scope: !28)
!65 = distinct !{!65, !54, !66}
!66 = !DILocation(line: 56, column: 37, scope: !28)
!67 = !DILocation(line: 59, column: 23, scope: !28)
!68 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 56, type: !29, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !69)
!69 = !{!70, !71}
!70 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !31, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !68, type: !31, flags: DIFlagArtificial)
!72 = !DILocation(line: 0, scope: !68)
!73 = !DILocation(line: 56, column: 1, scope: !68)
!74 = !{!75}
!75 = !{i64 2, i64 -1, i64 -1, i1 true}
