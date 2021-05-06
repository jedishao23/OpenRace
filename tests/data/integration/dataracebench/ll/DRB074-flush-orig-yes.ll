; ModuleID = 'DRB074-flush-orig-yes.c'
source_filename = "DRB074-flush-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [35 x i8] c";DRB074-flush-orig-yes.c;f1;59;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant [35 x i8] c";DRB074-flush-orig-yes.c;f1;61;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant [38 x i8] c";DRB074-flush-orig-yes.c;main;68;57;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [38 x i8] c";DRB074-flush-orig-yes.c;main;68;41;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @6, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant [37 x i8] c";DRB074-flush-orig-yes.c;main;68;3;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @8, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [8 x i8] c"sum==10\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"DRB074-flush-orig-yes.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sum=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @f1(i32* %q) #0 !dbg !9 {
entry:
  %q.addr = alloca i32*, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32* %q, i32** %q.addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %q.addr, metadata !15, metadata !DIExpression()), !dbg !20
  call void @__kmpc_critical(%struct.ident_t* @1, i32 %0, [8 x i32]* @.gomp_critical_user_.var), !dbg !21
  %1 = load i32*, i32** %q.addr, align 8, !dbg !22, !tbaa !16
  store i32 1, i32* %1, align 4, !dbg !24, !tbaa !25
  call void @__kmpc_end_critical(%struct.ident_t* @1, i32 %0, [8 x i32]* @.gomp_critical_user_.var), !dbg !27
  call void @__kmpc_flush(%struct.ident_t* @3), !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #2

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #3

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #3

declare void @__kmpc_flush(%struct.ident_t*)

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !30 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @7)
  store i32 0, i32* %retval, align 4
  %1 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %i, align 4, !dbg !37, !tbaa !25
  %2 = bitcast i32* %sum to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #2, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !35, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %sum, align 4, !dbg !38, !tbaa !25
  call void @__kmpc_push_num_threads(%struct.ident_t* @7, i32 %0, i32 10), !dbg !39
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @9, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i, i32* %sum), !dbg !39
  %3 = load i32, i32* %sum, align 4, !dbg !40, !tbaa !25
  %cmp = icmp eq i32 %3, 10, !dbg !40
  br i1 %cmp, label %if.then, label %if.else, !dbg !43

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !43

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !40
  unreachable, !dbg !40

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %sum, align 4, !dbg !44, !tbaa !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %4), !dbg !45
  %5 = bitcast i32* %sum to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #2, !dbg !46
  %6 = bitcast i32* %i to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #2, !dbg !46
  ret i32 0, !dbg !47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i, i32* nonnull align 4 dereferenceable(4) %sum) #5 !dbg !48 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum1 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !62
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !58, metadata !DIExpression()), !dbg !62
  store i32* %i, i32** %i.addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !59, metadata !DIExpression()), !dbg !63
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = load i32*, i32** %i.addr, align 8, !dbg !65, !tbaa !16
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !65, !tbaa !16
  %2 = bitcast i32* %sum1 to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #2, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %sum1, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %sum1, align 4, !dbg !66, !tbaa !25
  call void @f1(i32* %0), !dbg !67
  %3 = load i32, i32* %0, align 4, !dbg !69, !tbaa !25
  %4 = load i32, i32* %sum1, align 4, !dbg !70, !tbaa !25
  %add = add nsw i32 %4, %3, !dbg !70
  store i32 %add, i32* %sum1, align 4, !dbg !70, !tbaa !25
  %5 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !71
  %6 = bitcast i32* %sum1 to i8*, !dbg !71
  store i8* %6, i8** %5, align 8, !dbg !71
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %8 = load i32, i32* %7, align 4, !dbg !71, !tbaa !25
  %9 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !71
  %10 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @5, i32 %8, i32 1, i64 8, i8* %9, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !71
  switch i32 %10, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !71

.omp.reduction.case1:                             ; preds = %entry
  %11 = load i32, i32* %1, align 4, !dbg !66, !tbaa !25
  %12 = load i32, i32* %sum1, align 4, !dbg !66, !tbaa !25
  %add2 = add nsw i32 %11, %12, !dbg !72
  store i32 %add2, i32* %1, align 4, !dbg !72, !tbaa !25
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @5, i32 %8, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !71
  br label %.omp.reduction.default, !dbg !71

.omp.reduction.case2:                             ; preds = %entry
  %13 = load i32, i32* %sum1, align 4, !dbg !66, !tbaa !25
  %14 = atomicrmw add i32* %1, i32 %13 monotonic, !dbg !71
  br label %.omp.reduction.default, !dbg !71

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %entry
  %15 = bitcast i32* %sum1 to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #2, !dbg !71
  ret void, !dbg !73
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #5 !dbg !74 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !77, metadata !DIExpression()), !dbg !80
  store i8* %1, i8** %.addr1, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !79, metadata !DIExpression()), !dbg !80
  %2 = load i8*, i8** %.addr, align 8, !dbg !81
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !81
  %4 = load i8*, i8** %.addr1, align 8, !dbg !81
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !81
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !81
  %7 = load i8*, i8** %6, align 8, !dbg !81
  %8 = bitcast i8* %7 to i32*, !dbg !81
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !81
  %10 = load i8*, i8** %9, align 8, !dbg !81
  %11 = bitcast i8* %10 to i32*, !dbg !81
  %12 = load i32, i32* %11, align 4, !dbg !82, !tbaa !25
  %13 = load i32, i32* %8, align 4, !dbg !82, !tbaa !25
  %add = add nsw i32 %12, %13, !dbg !83
  store i32 %add, i32* %11, align 4, !dbg !83, !tbaa !25
  ret void, !dbg !82
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #2

; Function Attrs: nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i, i32* nonnull align 4 dereferenceable(4) %sum) #5 !dbg !84 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !86, metadata !DIExpression()), !dbg !90
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !87, metadata !DIExpression()), !dbg !90
  store i32* %i, i32** %i.addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !88, metadata !DIExpression()), !dbg !90
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !16
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i32*, i32** %i.addr, align 8, !dbg !91, !tbaa !16
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !91, !tbaa !16
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !91, !tbaa !16
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !91, !tbaa !16
  %4 = load i32*, i32** %i.addr, align 8, !dbg !91, !tbaa !16
  %5 = load i32*, i32** %sum.addr, align 8, !dbg !91, !tbaa !16
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #2, !dbg !91
  ret void, !dbg !91
}

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32) #3

; Function Attrs: nounwind
declare !callback !92 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

declare i32 @printf(i8*, ...) #7

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { inaccessiblemem_or_argmemonly }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB074-flush-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "f1", scope: !1, file: !1, line: 57, type: !10, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15}
!15 = !DILocalVariable(name: "q", arg: 1, scope: !9, file: !1, line: 57, type: !12)
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 57, column: 14, scope: !9)
!21 = !DILocation(line: 59, column: 1, scope: !9)
!22 = !DILocation(line: 60, column: 4, scope: !23)
!23 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 1)
!24 = !DILocation(line: 60, column: 6, scope: !23)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !18, i64 0}
!27 = !DILocation(line: 60, column: 3, scope: !23)
!28 = !DILocation(line: 61, column: 1, scope: !9)
!29 = !DILocation(line: 62, column: 1, scope: !9)
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 64, type: !31, scopeLine: 65, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!13}
!33 = !{!34, !35}
!34 = !DILocalVariable(name: "i", scope: !30, file: !1, line: 66, type: !13)
!35 = !DILocalVariable(name: "sum", scope: !30, file: !1, line: 66, type: !13)
!36 = !DILocation(line: 66, column: 3, scope: !30)
!37 = !DILocation(line: 66, column: 7, scope: !30)
!38 = !DILocation(line: 66, column: 12, scope: !30)
!39 = !DILocation(line: 68, column: 3, scope: !30)
!40 = !DILocation(line: 73, column: 3, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 73, column: 3)
!42 = distinct !DILexicalBlock(scope: !30, file: !1, line: 73, column: 3)
!43 = !DILocation(line: 73, column: 3, scope: !42)
!44 = !DILocation(line: 74, column: 22, scope: !30)
!45 = !DILocation(line: 74, column: 3, scope: !30)
!46 = !DILocation(line: 76, column: 1, scope: !30)
!47 = !DILocation(line: 75, column: 3, scope: !30)
!48 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 69, type: !49, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !51, !55, !55}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!55 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!56 = !{!57, !58, !59, !60, !61}
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !51, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !48, type: !51, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "i", arg: 3, scope: !48, file: !1, line: 66, type: !55)
!60 = !DILocalVariable(name: "sum", arg: 4, scope: !48, file: !1, line: 66, type: !55)
!61 = !DILocalVariable(name: "sum", scope: !48, type: !13, flags: DIFlagArtificial)
!62 = !DILocation(line: 0, scope: !48)
!63 = !DILocation(line: 66, column: 7, scope: !48)
!64 = !DILocation(line: 66, column: 12, scope: !48)
!65 = !DILocation(line: 69, column: 3, scope: !48)
!66 = !DILocation(line: 68, column: 36, scope: !48)
!67 = !DILocation(line: 70, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !48, file: !1, line: 69, column: 3)
!69 = !DILocation(line: 71, column: 11, scope: !68)
!70 = !DILocation(line: 71, column: 9, scope: !68)
!71 = !DILocation(line: 72, column: 3, scope: !68)
!72 = !DILocation(line: 68, column: 34, scope: !48)
!73 = !DILocation(line: 72, column: 3, scope: !48)
!74 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 68, type: !75, scopeLine: 68, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!75 = !DISubroutineType(types: !2)
!76 = !{!77, !79}
!77 = !DILocalVariable(arg: 1, scope: !74, type: !78, flags: DIFlagArtificial)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DILocalVariable(arg: 2, scope: !74, type: !78, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !74)
!81 = !DILocation(line: 68, column: 57, scope: !74)
!82 = !DILocation(line: 68, column: 36, scope: !74)
!83 = !DILocation(line: 68, column: 34, scope: !74)
!84 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 68, type: !49, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !84, type: !51, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !84, type: !51, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "i", arg: 3, scope: !84, type: !55, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "sum", arg: 4, scope: !84, type: !55, flags: DIFlagArtificial)
!90 = !DILocation(line: 0, scope: !84)
!91 = !DILocation(line: 68, column: 3, scope: !84)
!92 = !{!93}
!93 = !{i64 2, i64 -1, i64 -1, i1 true}
