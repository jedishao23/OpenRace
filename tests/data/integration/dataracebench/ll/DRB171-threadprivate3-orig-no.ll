; ModuleID = 'DRB171-threadprivate3-orig-no.c'
source_filename = "DRB171-threadprivate3-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@x = internal thread_local global [20 x double] zeroinitializer, align 16, !dbg !0
@0 = private unnamed_addr constant [45 x i8] c";DRB171-threadprivate3-orig-no.c;main;24;3;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [46 x i8] c";DRB171-threadprivate3-orig-no.c;main;24;43;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca double, align 8
  %k = alloca double, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !25
  %1 = bitcast double* %j to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #5, !dbg !26
  call void @llvm.dbg.declare(metadata double* %j, metadata !22, metadata !DIExpression()), !dbg !27
  %2 = bitcast double* %k to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5, !dbg !26
  call void @llvm.dbg.declare(metadata double* %k, metadata !23, metadata !DIExpression()), !dbg !28
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %j, double* %k), !dbg !29
  %3 = load double, double* %j, align 8, !dbg !30, !tbaa !31
  %4 = load double, double* %k, align 8, !dbg !35, !tbaa !31
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %3, double %4), !dbg !36
  %5 = bitcast double* %k to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #5, !dbg !37
  %6 = bitcast double* %j to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #5, !dbg !37
  %7 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* nonnull align 8 dereferenceable(8) %j, double* nonnull align 8 dereferenceable(8) %k) #3 !dbg !39 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca double*, align 8
  %k.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !48, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !49, metadata !DIExpression()), !dbg !60
  store double* %j, double** %j.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata double** %j.addr, metadata !50, metadata !DIExpression()), !dbg !61
  store double* %k, double** %k.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata double** %k.addr, metadata !51, metadata !DIExpression()), !dbg !62
  %0 = load double*, double** %j.addr, align 8, !dbg !63, !tbaa !58
  %1 = load double*, double** %k.addr, align 8, !dbg !63, !tbaa !58
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !52, metadata !DIExpression()), !dbg !60
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !53, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.lb, align 4, !dbg !64, !tbaa !65
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !54, metadata !DIExpression()), !dbg !60
  store i32 19, i32* %.omp.ub, align 4, !dbg !64, !tbaa !65
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !55, metadata !DIExpression()), !dbg !60
  store i32 1, i32* %.omp.stride, align 4, !dbg !64, !tbaa !65
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !56, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.is_last, align 4, !dbg !64, !tbaa !65
  %7 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i, metadata !57, metadata !DIExpression()), !dbg !60
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !63
  %9 = load i32, i32* %8, align 4, !dbg !63, !tbaa !65
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %9, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !67
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !64, !tbaa !65
  %cmp = icmp sgt i32 %10, 19, !dbg !64
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !64

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !64

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !64, !tbaa !65
  br label %cond.end, !dbg !64

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %11, %cond.false ], !dbg !64
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !64, !tbaa !65
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !64, !tbaa !65
  store i32 %12, i32* %.omp.iv, align 4, !dbg !64, !tbaa !65
  br label %omp.inner.for.cond, !dbg !63

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !64, !tbaa !65
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !64, !tbaa !65
  %cmp1 = icmp sle i32 %13, %14, !dbg !63
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !63

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !63

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !64, !tbaa !65
  %mul = mul nsw i32 %15, 1, !dbg !68
  %add = add nsw i32 0, %mul, !dbg !68
  store i32 %add, i32* %i, align 4, !dbg !68, !tbaa !65
  %16 = load i32, i32* %i, align 4, !dbg !69, !tbaa !65
  %idxprom = sext i32 %16 to i64, !dbg !71
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @x, i64 0, i64 %idxprom, !dbg !71
  store double -1.000000e+00, double* %arrayidx, align 8, !dbg !72, !tbaa !31
  %call = call i32 @omp_get_thread_num(), !dbg !73
  %cmp2 = icmp eq i32 %call, 0, !dbg !75
  br i1 %cmp2, label %if.then, label %if.end, !dbg !76

if.then:                                          ; preds = %omp.inner.for.body
  %17 = load double, double* getelementptr inbounds ([20 x double], [20 x double]* @x, i64 0, i64 0), align 16, !dbg !77, !tbaa !31
  store double %17, double* %0, align 8, !dbg !79, !tbaa !31
  br label %if.end, !dbg !80

if.end:                                           ; preds = %if.then, %omp.inner.for.body
  %call3 = call i32 @omp_get_thread_num(), !dbg !81
  %cmp4 = icmp eq i32 %call3, 0, !dbg !83
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !84

if.then5:                                         ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !dbg !85, !tbaa !65
  %conv = sitofp i32 %18 to double, !dbg !85
  %add6 = fadd double %conv, 5.000000e-02, !dbg !87
  store double %add6, double* %1, align 8, !dbg !88, !tbaa !31
  br label %if.end7, !dbg !89

if.end7:                                          ; preds = %if.then5, %if.end
  br label %omp.body.continue, !dbg !90

omp.body.continue:                                ; preds = %if.end7
  br label %omp.inner.for.inc, !dbg !67

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !64, !tbaa !65
  %add8 = add nsw i32 %19, 1, !dbg !63
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !63, !tbaa !65
  br label %omp.inner.for.cond, !dbg !67, !llvm.loop !91

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !67

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %9), !dbg !92
  %20 = bitcast i32* %i to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !67
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !67
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !67
  %23 = bitcast i32* %.omp.ub to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !67
  %24 = bitcast i32* %.omp.lb to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !67
  %25 = bitcast i32* %.omp.iv to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !67
  ret void, !dbg !93
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare !dbg !94 i32 @omp_get_thread_num() #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* nonnull align 8 dereferenceable(8) %j, double* nonnull align 8 dereferenceable(8) %k) #3 !dbg !96 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca double*, align 8
  %k.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !102
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !102
  store double* %j, double** %j.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata double** %j.addr, metadata !100, metadata !DIExpression()), !dbg !102
  store double* %k, double** %k.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata double** %k.addr, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = load double*, double** %j.addr, align 8, !dbg !103, !tbaa !58
  %1 = load double*, double** %k.addr, align 8, !dbg !103, !tbaa !58
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103, !tbaa !58
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !103, !tbaa !58
  %4 = load double*, double** %j.addr, align 8, !dbg !103, !tbaa !58
  %5 = load double*, double** %k.addr, align 8, !dbg !103, !tbaa !58
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double* %4, double* %5) #5, !dbg !103
  ret void, !dbg !103
}

; Function Attrs: nounwind
declare !callback !104 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare i32 @printf(i8*, ...) #4

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 17, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB171-threadprivate3-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1280, elements: !8)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9}
!9 = !DISubrange(count: 20)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"clang version 11.1.0"}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 20, type: !17, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23}
!21 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 21, type: !19)
!22 = !DILocalVariable(name: "j", scope: !16, file: !3, line: 22, type: !7)
!23 = !DILocalVariable(name: "k", scope: !16, file: !3, line: 22, type: !7)
!24 = !DILocation(line: 21, column: 3, scope: !16)
!25 = !DILocation(line: 21, column: 7, scope: !16)
!26 = !DILocation(line: 22, column: 3, scope: !16)
!27 = !DILocation(line: 22, column: 10, scope: !16)
!28 = !DILocation(line: 22, column: 12, scope: !16)
!29 = !DILocation(line: 24, column: 3, scope: !16)
!30 = !DILocation(line: 35, column: 22, scope: !16)
!31 = !{!32, !32, i64 0}
!32 = !{!"double", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 35, column: 25, scope: !16)
!36 = !DILocation(line: 35, column: 3, scope: !16)
!37 = !DILocation(line: 38, column: 1, scope: !16)
!38 = !DILocation(line: 37, column: 3, scope: !16)
!39 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 25, type: !40, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42, !46, !46}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!46 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!48 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !39, type: !42, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "j", arg: 3, scope: !39, file: !3, line: 22, type: !46)
!51 = !DILocalVariable(name: "k", arg: 4, scope: !39, file: !3, line: 22, type: !46)
!52 = !DILocalVariable(name: ".omp.iv", scope: !39, type: !19, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".omp.lb", scope: !39, type: !19, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".omp.ub", scope: !39, type: !19, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.stride", scope: !39, type: !19, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.is_last", scope: !39, type: !19, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "i", scope: !39, type: !19, flags: DIFlagArtificial)
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !33, i64 0}
!60 = !DILocation(line: 0, scope: !39)
!61 = !DILocation(line: 22, column: 10, scope: !39)
!62 = !DILocation(line: 22, column: 12, scope: !39)
!63 = !DILocation(line: 25, column: 3, scope: !39)
!64 = !DILocation(line: 25, column: 8, scope: !39)
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !33, i64 0}
!67 = !DILocation(line: 24, column: 3, scope: !39)
!68 = !DILocation(line: 25, column: 23, scope: !39)
!69 = !DILocation(line: 26, column: 7, scope: !70)
!70 = distinct !DILexicalBlock(scope: !39, file: !3, line: 25, column: 27)
!71 = !DILocation(line: 26, column: 5, scope: !70)
!72 = !DILocation(line: 26, column: 10, scope: !70)
!73 = !DILocation(line: 27, column: 8, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !3, line: 27, column: 8)
!75 = !DILocation(line: 27, column: 28, scope: !74)
!76 = !DILocation(line: 27, column: 8, scope: !70)
!77 = !DILocation(line: 28, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !3, line: 27, column: 32)
!79 = !DILocation(line: 28, column: 9, scope: !78)
!80 = !DILocation(line: 29, column: 5, scope: !78)
!81 = !DILocation(line: 30, column: 8, scope: !82)
!82 = distinct !DILexicalBlock(scope: !70, file: !3, line: 30, column: 8)
!83 = !DILocation(line: 30, column: 28, scope: !82)
!84 = !DILocation(line: 30, column: 8, scope: !70)
!85 = !DILocation(line: 31, column: 11, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !3, line: 30, column: 32)
!87 = !DILocation(line: 31, column: 12, scope: !86)
!88 = !DILocation(line: 31, column: 9, scope: !86)
!89 = !DILocation(line: 32, column: 5, scope: !86)
!90 = !DILocation(line: 33, column: 3, scope: !70)
!91 = distinct !{!91, !67, !92}
!92 = !DILocation(line: 24, column: 43, scope: !39)
!93 = !DILocation(line: 33, column: 3, scope: !39)
!94 = !DISubprogram(name: "omp_get_thread_num", scope: !95, file: !95, line: 68, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!95 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!96 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 24, type: !40, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!97 = !{!98, !99, !100, !101}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !96, type: !42, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !96, type: !42, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "j", arg: 3, scope: !96, type: !46, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "k", arg: 4, scope: !96, type: !46, flags: DIFlagArtificial)
!102 = !DILocation(line: 0, scope: !96)
!103 = !DILocation(line: 24, column: 3, scope: !96)
!104 = !{!105}
!105 = !{i64 2, i64 -1, i64 -1, i1 true}
