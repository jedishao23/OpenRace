; ModuleID = 'DRB143-acquirerelease-orig-no.c'
source_filename = "DRB143-acquirerelease-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [45 x i8] c";DRB143-acquirerelease-orig-no.c;main;26;5;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant [45 x i8] c";DRB143-acquirerelease-orig-no.c;main;29;5;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [45 x i8] c";DRB143-acquirerelease-orig-no.c;main;36;7;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @4, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [45 x i8] c";DRB143-acquirerelease-orig-no.c;main;39;5;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @6, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1
@8 = private unnamed_addr constant [46 x i8] c";DRB143-acquirerelease-orig-no.c;main;22;24;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @8, i32 0, i32 0) }, align 8
@10 = private unnamed_addr constant [45 x i8] c";DRB143-acquirerelease-orig-no.c;main;22;3;;\00", align 1
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @10, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @9)
  store i32 0, i32* %retval, align 4
  %1 = bitcast i32* %x to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %x, metadata !14, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %x, align 4, !dbg !17, !tbaa !18
  %2 = bitcast i32* %y to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %y, metadata !15, metadata !DIExpression()), !dbg !22
  call void @__kmpc_push_num_threads(%struct.ident_t* @9, i32 %0, i32 2), !dbg !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @11, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x, i32* %y), !dbg !23
  %3 = bitcast i32* %y to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #6, !dbg !24
  %4 = bitcast i32* %x to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #6, !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %x, i32* nonnull align 4 dereferenceable(4) %y) #3 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %thrd = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !46
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !46
  store i32* %x, i32** %x.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !37, metadata !DIExpression()), !dbg !47
  store i32* %y, i32** %y.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %y.addr, metadata !38, metadata !DIExpression()), !dbg !48
  %0 = load i32*, i32** %x.addr, align 8, !dbg !49, !tbaa !44
  %1 = load i32*, i32** %y.addr, align 8, !dbg !49, !tbaa !44
  %2 = bitcast i32* %thrd to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %thrd, metadata !39, metadata !DIExpression()), !dbg !51
  %call = call i32 @omp_get_thread_num(), !dbg !52
  store i32 %call, i32* %thrd, align 4, !dbg !51, !tbaa !18
  %3 = load i32, i32* %thrd, align 4, !dbg !53, !tbaa !18
  %cmp = icmp eq i32 %3, 0, !dbg !54
  br i1 %cmp, label %if.then, label %if.else, !dbg !55

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !56
  %5 = load i32, i32* %4, align 4, !dbg !56, !tbaa !18
  call void @__kmpc_critical(%struct.ident_t* @1, i32 %5, [8 x i32]* @.gomp_critical_user_.var), !dbg !56
  store i32 10, i32* %0, align 4, !dbg !58, !tbaa !18
  call void @__kmpc_end_critical(%struct.ident_t* @1, i32 %5, [8 x i32]* @.gomp_critical_user_.var), !dbg !61
  call void @__kmpc_flush(%struct.ident_t* @3), !dbg !62
  store atomic i32 1, i32* %1 monotonic, align 4, !dbg !63, !tbaa !18
  br label %if.end5, !dbg !65

if.else:                                          ; preds = %entry
  %6 = bitcast i32* %tmp to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !41, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %tmp, align 4, !dbg !67, !tbaa !18
  br label %while.cond, !dbg !68

while.cond:                                       ; preds = %while.body, %if.else
  %7 = load i32, i32* %tmp, align 4, !dbg !69, !tbaa !18
  %cmp1 = icmp eq i32 %7, 0, !dbg !70
  br i1 %cmp1, label %while.body, label %while.end, !dbg !68

while.body:                                       ; preds = %while.cond
  %atomic-load = load atomic i32, i32* %1 acquire, align 4, !dbg !71, !tbaa !18
  call void @__kmpc_flush(%struct.ident_t* @5), !dbg !71
  store i32 %atomic-load, i32* %tmp, align 4, !dbg !71, !tbaa !18
  br label %while.cond, !dbg !68, !llvm.loop !74

while.end:                                        ; preds = %while.cond
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %9 = load i32, i32* %8, align 4, !dbg !77, !tbaa !18
  call void @__kmpc_critical(%struct.ident_t* @7, i32 %9, [8 x i32]* @.gomp_critical_user_.var), !dbg !77
  %10 = load i32, i32* %0, align 4, !dbg !78, !tbaa !18
  %cmp2 = icmp ne i32 %10, 10, !dbg !82
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !83

if.then3:                                         ; preds = %while.end
  %11 = load i32, i32* %0, align 4, !dbg !84, !tbaa !18
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11), !dbg !85
  br label %if.end, !dbg !85

if.end:                                           ; preds = %if.then3, %while.end
  call void @__kmpc_end_critical(%struct.ident_t* @7, i32 %9, [8 x i32]* @.gomp_critical_user_.var), !dbg !86
  %12 = bitcast i32* %tmp to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #6, !dbg !87
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %thrd to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #6, !dbg !88
  ret void, !dbg !88
}

declare !dbg !89 i32 @omp_get_thread_num() #4

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #5

declare void @__kmpc_flush(%struct.ident_t*)

declare i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %x, i32* nonnull align 4 dereferenceable(4) %y) #3 !dbg !91 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !97
  store i32* %x, i32** %x.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !95, metadata !DIExpression()), !dbg !97
  store i32* %y, i32** %y.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %y.addr, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = load i32*, i32** %x.addr, align 8, !dbg !98, !tbaa !44
  %1 = load i32*, i32** %y.addr, align 8, !dbg !98, !tbaa !44
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98, !tbaa !44
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !98, !tbaa !44
  %4 = load i32*, i32** %x.addr, align 8, !dbg !98, !tbaa !44
  %5 = load i32*, i32** %y.addr, align 8, !dbg !98, !tbaa !44
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #6, !dbg !98
  ret void, !dbg !98
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #6

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32) #5

; Function Attrs: nounwind
declare !callback !99 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inaccessiblemem_or_argmemonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB143-acquirerelease-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !10, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 20, type: !12)
!15 = !DILocalVariable(name: "y", scope: !9, file: !1, line: 20, type: !12)
!16 = !DILocation(line: 20, column: 3, scope: !9)
!17 = !DILocation(line: 20, column: 7, scope: !9)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 20, column: 14, scope: !9)
!23 = !DILocation(line: 22, column: 3, scope: !9)
!24 = !DILocation(line: 44, column: 1, scope: !9)
!25 = !DILocation(line: 43, column: 3, scope: !9)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 23, type: !27, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!34 = !{!35, !36, !37, !38, !39, !41}
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "x", arg: 3, scope: !26, file: !1, line: 20, type: !33)
!38 = !DILocalVariable(name: "y", arg: 4, scope: !26, file: !1, line: 20, type: !33)
!39 = !DILocalVariable(name: "thrd", scope: !40, file: !1, line: 24, type: !12)
!40 = distinct !DILexicalBlock(scope: !26, file: !1, line: 23, column: 3)
!41 = !DILocalVariable(name: "tmp", scope: !42, file: !1, line: 34, type: !12)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 33, column: 10)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 25, column: 7)
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !20, i64 0}
!46 = !DILocation(line: 0, scope: !26)
!47 = !DILocation(line: 20, column: 7, scope: !26)
!48 = !DILocation(line: 20, column: 14, scope: !26)
!49 = !DILocation(line: 23, column: 3, scope: !26)
!50 = !DILocation(line: 24, column: 3, scope: !40)
!51 = !DILocation(line: 24, column: 7, scope: !40)
!52 = !DILocation(line: 24, column: 14, scope: !40)
!53 = !DILocation(line: 25, column: 7, scope: !43)
!54 = !DILocation(line: 25, column: 12, scope: !43)
!55 = !DILocation(line: 25, column: 7, scope: !40)
!56 = !DILocation(line: 26, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !43, file: !1, line: 25, column: 18)
!58 = !DILocation(line: 27, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 27, column: 5)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 26, column: 5)
!61 = !DILocation(line: 27, column: 15, scope: !59)
!62 = !DILocation(line: 29, column: 5, scope: !57)
!63 = !DILocation(line: 32, column: 5, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !1, line: 31, column: 5)
!65 = !DILocation(line: 33, column: 3, scope: !57)
!66 = !DILocation(line: 34, column: 7, scope: !42)
!67 = !DILocation(line: 34, column: 11, scope: !42)
!68 = !DILocation(line: 35, column: 7, scope: !42)
!69 = !DILocation(line: 35, column: 14, scope: !42)
!70 = !DILocation(line: 35, column: 18, scope: !42)
!71 = !DILocation(line: 37, column: 7, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 36, column: 7)
!73 = distinct !DILexicalBlock(scope: !42, file: !1, line: 35, column: 24)
!74 = distinct !{!74, !68, !75, !76}
!75 = !DILocation(line: 38, column: 7, scope: !42)
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !DILocation(line: 39, column: 5, scope: !42)
!78 = !DILocation(line: 40, column: 11, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 40, column: 11)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 40, column: 5)
!81 = distinct !DILexicalBlock(scope: !42, file: !1, line: 39, column: 5)
!82 = !DILocation(line: 40, column: 12, scope: !79)
!83 = !DILocation(line: 40, column: 11, scope: !80)
!84 = !DILocation(line: 40, column: 37, scope: !79)
!85 = !DILocation(line: 40, column: 18, scope: !79)
!86 = !DILocation(line: 40, column: 41, scope: !80)
!87 = !DILocation(line: 41, column: 3, scope: !43)
!88 = !DILocation(line: 42, column: 3, scope: !26)
!89 = !DISubprogram(name: "omp_get_thread_num", scope: !90, file: !90, line: 68, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!90 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!91 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 22, type: !27, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!92 = !{!93, !94, !95, !96}
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !91, type: !29, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !91, type: !29, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "x", arg: 3, scope: !91, type: !33, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "y", arg: 4, scope: !91, type: !33, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !91)
!98 = !DILocation(line: 22, column: 3, scope: !91)
!99 = !{!100}
!100 = !{i64 2, i64 -1, i64 -1, i1 true}
