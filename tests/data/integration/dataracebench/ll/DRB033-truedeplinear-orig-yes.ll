; ModuleID = 'DRB033-truedeplinear-orig-yes.c'
source_filename = "DRB033-truedeplinear-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [45 x i8] c";DRB033-truedeplinear-orig-yes.c;main;62;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [46 x i8] c";DRB033-truedeplinear-orig-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [12 x i8] c"a[1001]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %a = alloca [2000 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !24
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !28
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !31
  %0 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !33
  %1 = bitcast [2000 x i32]* %a to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 8000, i8* %1) #4, !dbg !34
  call void @llvm.dbg.declare(metadata [2000 x i32]* %a, metadata !20, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %i, align 4, !dbg !36, !tbaa !24
  br label %for.cond, !dbg !38

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !39, !tbaa !24
  %cmp = icmp slt i32 %2, 2000, !dbg !41
  br i1 %cmp, label %for.body, label %for.end, !dbg !42

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !43, !tbaa !24
  %4 = load i32, i32* %i, align 4, !dbg !44, !tbaa !24
  %idxprom = sext i32 %4 to i64, !dbg !45
  %arrayidx = getelementptr inbounds [2000 x i32], [2000 x i32]* %a, i64 0, i64 %idxprom, !dbg !45
  store i32 %3, i32* %arrayidx, align 4, !dbg !46, !tbaa !24
  br label %for.inc, !dbg !45

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !47, !tbaa !24
  %inc = add nsw i32 %5, 1, !dbg !47
  store i32 %inc, i32* %i, align 4, !dbg !47, !tbaa !24
  br label %for.cond, !dbg !48, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [2000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [2000 x i32]* %a), !dbg !52
  %arrayidx1 = getelementptr inbounds [2000 x i32], [2000 x i32]* %a, i64 0, i64 1001, !dbg !53
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !53, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %6), !dbg !54
  %7 = bitcast [2000 x i32]* %a to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 8000, i8* %7) #4, !dbg !55
  %8 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [2000 x i32]* nonnull align 4 dereferenceable(8000) %a) #3 !dbg !57 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [2000 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !75
  store [2000 x i32]* %a, [2000 x i32]** %a.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [2000 x i32]** %a.addr, metadata !68, metadata !DIExpression()), !dbg !76
  %0 = load [2000 x i32]*, [2000 x i32]** %a.addr, align 8, !dbg !77, !tbaa !29
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !69, metadata !DIExpression()), !dbg !75
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !70, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.lb, align 4, !dbg !78, !tbaa !24
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !71, metadata !DIExpression()), !dbg !75
  store i32 999, i32* %.omp.ub, align 4, !dbg !78, !tbaa !24
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !72, metadata !DIExpression()), !dbg !75
  store i32 1, i32* %.omp.stride, align 4, !dbg !78, !tbaa !24
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !73, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.is_last, align 4, !dbg !78, !tbaa !24
  %6 = bitcast i32* %i to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %i, metadata !74, metadata !DIExpression()), !dbg !75
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %8 = load i32, i32* %7, align 4, !dbg !77, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !79
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !78, !tbaa !24
  %cmp = icmp sgt i32 %9, 999, !dbg !78
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !78

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !78

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !78, !tbaa !24
  br label %cond.end, !dbg !78

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %10, %cond.false ], !dbg !78
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !78, !tbaa !24
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !78, !tbaa !24
  store i32 %11, i32* %.omp.iv, align 4, !dbg !78, !tbaa !24
  br label %omp.inner.for.cond, !dbg !77

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !78, !tbaa !24
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !78, !tbaa !24
  %cmp1 = icmp sle i32 %12, %13, !dbg !77
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !77

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !77

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !78, !tbaa !24
  %mul = mul nsw i32 %14, 1, !dbg !80
  %add = add nsw i32 0, %mul, !dbg !80
  store i32 %add, i32* %i, align 4, !dbg !80, !tbaa !24
  %15 = load i32, i32* %i, align 4, !dbg !81, !tbaa !24
  %idxprom = sext i32 %15 to i64, !dbg !82
  %arrayidx = getelementptr inbounds [2000 x i32], [2000 x i32]* %0, i64 0, i64 %idxprom, !dbg !82
  %16 = load i32, i32* %arrayidx, align 4, !dbg !82, !tbaa !24
  %add2 = add nsw i32 %16, 1, !dbg !83
  %17 = load i32, i32* %i, align 4, !dbg !84, !tbaa !24
  %mul3 = mul nsw i32 2, %17, !dbg !85
  %add4 = add nsw i32 %mul3, 1, !dbg !86
  %idxprom5 = sext i32 %add4 to i64, !dbg !87
  %arrayidx6 = getelementptr inbounds [2000 x i32], [2000 x i32]* %0, i64 0, i64 %idxprom5, !dbg !87
  store i32 %add2, i32* %arrayidx6, align 4, !dbg !88, !tbaa !24
  br label %omp.body.continue, !dbg !87

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !79

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !78, !tbaa !24
  %add7 = add nsw i32 %18, 1, !dbg !77
  store i32 %add7, i32* %.omp.iv, align 4, !dbg !77, !tbaa !24
  br label %omp.inner.for.cond, !dbg !79, !llvm.loop !89

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !79

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %8), !dbg !90
  %19 = bitcast i32* %i to i8*, !dbg !79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !79
  %20 = bitcast i32* %.omp.is_last to i8*, !dbg !79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !79
  %21 = bitcast i32* %.omp.stride to i8*, !dbg !79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !79
  %22 = bitcast i32* %.omp.ub to i8*, !dbg !79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !79
  %23 = bitcast i32* %.omp.lb to i8*, !dbg !79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !79
  %24 = bitcast i32* %.omp.iv to i8*, !dbg !79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !79
  ret void, !dbg !91
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [2000 x i32]* nonnull align 4 dereferenceable(8000) %a) #3 !dbg !92 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [2000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !97
  store [2000 x i32]* %a, [2000 x i32]** %a.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [2000 x i32]** %a.addr, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = load [2000 x i32]*, [2000 x i32]** %a.addr, align 8, !dbg !98, !tbaa !29
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98, !tbaa !29
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !98, !tbaa !29
  %3 = load [2000 x i32]*, [2000 x i32]** %a.addr, align 8, !dbg !98, !tbaa !29
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [2000 x i32]* %3) #4, !dbg !98
  ret void, !dbg !98
}

; Function Attrs: nounwind
declare !callback !99 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #5

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
!1 = !DIFile(filename: "DRB033-truedeplinear-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 53, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 53, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!20 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 57, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64000, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 2000)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 53, column: 14, scope: !9)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !DILocation(line: 53, column: 26, scope: !9)
!32 = !DILocation(line: 55, column: 3, scope: !9)
!33 = !DILocation(line: 55, column: 7, scope: !9)
!34 = !DILocation(line: 57, column: 3, scope: !9)
!35 = !DILocation(line: 57, column: 7, scope: !9)
!36 = !DILocation(line: 59, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!38 = !DILocation(line: 59, column: 8, scope: !37)
!39 = !DILocation(line: 59, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !1, line: 59, column: 3)
!41 = !DILocation(line: 59, column: 14, scope: !40)
!42 = !DILocation(line: 59, column: 3, scope: !37)
!43 = !DILocation(line: 60, column: 10, scope: !40)
!44 = !DILocation(line: 60, column: 7, scope: !40)
!45 = !DILocation(line: 60, column: 5, scope: !40)
!46 = !DILocation(line: 60, column: 9, scope: !40)
!47 = !DILocation(line: 59, column: 22, scope: !40)
!48 = !DILocation(line: 59, column: 3, scope: !40)
!49 = distinct !{!49, !42, !50, !51}
!50 = !DILocation(line: 60, column: 10, scope: !37)
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !DILocation(line: 62, column: 1, scope: !9)
!53 = !DILocation(line: 66, column: 26, scope: !9)
!54 = !DILocation(line: 66, column: 3, scope: !9)
!55 = !DILocation(line: 68, column: 1, scope: !9)
!56 = !DILocation(line: 67, column: 3, scope: !9)
!57 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !58, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !60, !64}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!64 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !57, type: !60, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !57, type: !60, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "a", arg: 3, scope: !57, file: !1, line: 57, type: !64)
!69 = !DILocalVariable(name: ".omp.iv", scope: !57, type: !12, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.lb", scope: !57, type: !12, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.ub", scope: !57, type: !12, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.stride", scope: !57, type: !12, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.is_last", scope: !57, type: !12, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "i", scope: !57, type: !12, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !57)
!76 = !DILocation(line: 57, column: 7, scope: !57)
!77 = !DILocation(line: 63, column: 3, scope: !57)
!78 = !DILocation(line: 63, column: 8, scope: !57)
!79 = !DILocation(line: 62, column: 1, scope: !57)
!80 = !DILocation(line: 63, column: 19, scope: !57)
!81 = !DILocation(line: 64, column: 16, scope: !57)
!82 = !DILocation(line: 64, column: 14, scope: !57)
!83 = !DILocation(line: 64, column: 18, scope: !57)
!84 = !DILocation(line: 64, column: 9, scope: !57)
!85 = !DILocation(line: 64, column: 8, scope: !57)
!86 = !DILocation(line: 64, column: 10, scope: !57)
!87 = !DILocation(line: 64, column: 5, scope: !57)
!88 = !DILocation(line: 64, column: 13, scope: !57)
!89 = distinct !{!89, !79, !90}
!90 = !DILocation(line: 62, column: 25, scope: !57)
!91 = !DILocation(line: 64, column: 19, scope: !57)
!92 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !58, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!93 = !{!94, !95, !96}
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !92, type: !60, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !92, type: !60, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "a", arg: 3, scope: !92, type: !64, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !92)
!98 = !DILocation(line: 62, column: 1, scope: !92)
!99 = !{!100}
!100 = !{i64 2, i64 -1, i64 -1, i1 true}
