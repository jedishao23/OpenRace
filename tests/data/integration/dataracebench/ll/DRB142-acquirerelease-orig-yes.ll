; ModuleID = 'DRB142-acquirerelease-orig-yes.c'
source_filename = "DRB142-acquirerelease-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [46 x i8] c";DRB142-acquirerelease-orig-yes.c;main;33;7;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant [46 x i8] c";DRB142-acquirerelease-orig-yes.c;main;40;9;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [46 x i8] c";DRB142-acquirerelease-orig-yes.c;main;43;5;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1
@6 = private unnamed_addr constant [47 x i8] c";DRB142-acquirerelease-orig-yes.c;main;29;24;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @6, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant [46 x i8] c";DRB142-acquirerelease-orig-yes.c;main;29;3;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @8, i32 0, i32 0) }, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @7)
  store i32 0, i32* %retval, align 4
  %1 = bitcast i32* %x to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %x, metadata !14, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %x, align 4, !dbg !17, !tbaa !18
  %2 = bitcast i32* %y to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %y, metadata !15, metadata !DIExpression()), !dbg !22
  call void @__kmpc_push_num_threads(%struct.ident_t* @7, i32 %0, i32 2), !dbg !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @9, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x, i32* %y), !dbg !23
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
  store atomic i32 1, i32* %1 monotonic, align 4, !dbg !62, !tbaa !18
  br label %if.end5, !dbg !64

if.else:                                          ; preds = %entry
  %6 = bitcast i32* %tmp to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !41, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %tmp, align 4, !dbg !66, !tbaa !18
  br label %while.cond, !dbg !67

while.cond:                                       ; preds = %while.body, %if.else
  %7 = load i32, i32* %tmp, align 4, !dbg !68, !tbaa !18
  %cmp1 = icmp eq i32 %7, 0, !dbg !69
  br i1 %cmp1, label %while.body, label %while.end, !dbg !67

while.body:                                       ; preds = %while.cond
  %atomic-load = load atomic i32, i32* %1 acquire, align 4, !dbg !70, !tbaa !18
  call void @__kmpc_flush(%struct.ident_t* @3), !dbg !70
  store i32 %atomic-load, i32* %tmp, align 4, !dbg !70, !tbaa !18
  br label %while.cond, !dbg !67, !llvm.loop !73

while.end:                                        ; preds = %while.cond
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %9 = load i32, i32* %8, align 4, !dbg !76, !tbaa !18
  call void @__kmpc_critical(%struct.ident_t* @5, i32 %9, [8 x i32]* @.gomp_critical_user_.var), !dbg !76
  %10 = load i32, i32* %0, align 4, !dbg !77, !tbaa !18
  %cmp2 = icmp ne i32 %10, 10, !dbg !81
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !82

if.then3:                                         ; preds = %while.end
  %11 = load i32, i32* %0, align 4, !dbg !83, !tbaa !18
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11), !dbg !84
  br label %if.end, !dbg !84

if.end:                                           ; preds = %if.then3, %while.end
  call void @__kmpc_end_critical(%struct.ident_t* @5, i32 %9, [8 x i32]* @.gomp_critical_user_.var), !dbg !85
  %12 = bitcast i32* %tmp to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #6, !dbg !86
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %thrd to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #6, !dbg !87
  ret void, !dbg !87
}

declare !dbg !88 i32 @omp_get_thread_num() #4

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #5

declare void @__kmpc_flush(%struct.ident_t*)

declare i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %x, i32* nonnull align 4 dereferenceable(4) %y) #3 !dbg !90 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !93, metadata !DIExpression()), !dbg !96
  store i32* %x, i32** %x.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !94, metadata !DIExpression()), !dbg !96
  store i32* %y, i32** %y.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %y.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i32*, i32** %x.addr, align 8, !dbg !97, !tbaa !44
  %1 = load i32*, i32** %y.addr, align 8, !dbg !97, !tbaa !44
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97, !tbaa !44
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !97, !tbaa !44
  %4 = load i32*, i32** %x.addr, align 8, !dbg !97, !tbaa !44
  %5 = load i32*, i32** %y.addr, align 8, !dbg !97, !tbaa !44
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #6, !dbg !97
  ret void, !dbg !97
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #6

; Function Attrs: inaccessiblemem_or_argmemonly
declare void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32) #5

; Function Attrs: nounwind
declare !callback !98 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #6

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
!1 = !DIFile(filename: "DRB142-acquirerelease-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 27, type: !12)
!15 = !DILocalVariable(name: "y", scope: !9, file: !1, line: 27, type: !12)
!16 = !DILocation(line: 27, column: 3, scope: !9)
!17 = !DILocation(line: 27, column: 7, scope: !9)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 27, column: 14, scope: !9)
!23 = !DILocation(line: 29, column: 3, scope: !9)
!24 = !DILocation(line: 48, column: 1, scope: !9)
!25 = !DILocation(line: 47, column: 3, scope: !9)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 30, type: !27, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
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
!37 = !DILocalVariable(name: "x", arg: 3, scope: !26, file: !1, line: 27, type: !33)
!38 = !DILocalVariable(name: "y", arg: 4, scope: !26, file: !1, line: 27, type: !33)
!39 = !DILocalVariable(name: "thrd", scope: !40, file: !1, line: 31, type: !12)
!40 = distinct !DILexicalBlock(scope: !26, file: !1, line: 30, column: 3)
!41 = !DILocalVariable(name: "tmp", scope: !42, file: !1, line: 38, type: !12)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 37, column: 12)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 32, column: 9)
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !20, i64 0}
!46 = !DILocation(line: 0, scope: !26)
!47 = !DILocation(line: 27, column: 7, scope: !26)
!48 = !DILocation(line: 27, column: 14, scope: !26)
!49 = !DILocation(line: 30, column: 3, scope: !26)
!50 = !DILocation(line: 31, column: 5, scope: !40)
!51 = !DILocation(line: 31, column: 9, scope: !40)
!52 = !DILocation(line: 31, column: 16, scope: !40)
!53 = !DILocation(line: 32, column: 9, scope: !43)
!54 = !DILocation(line: 32, column: 14, scope: !43)
!55 = !DILocation(line: 32, column: 9, scope: !40)
!56 = !DILocation(line: 33, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !43, file: !1, line: 32, column: 20)
!58 = !DILocation(line: 34, column: 11, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 34, column: 7)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 33, column: 7)
!61 = !DILocation(line: 34, column: 17, scope: !59)
!62 = !DILocation(line: 36, column: 7, scope: !63)
!63 = distinct !DILexicalBlock(scope: !57, file: !1, line: 35, column: 7)
!64 = !DILocation(line: 37, column: 5, scope: !57)
!65 = !DILocation(line: 38, column: 7, scope: !42)
!66 = !DILocation(line: 38, column: 11, scope: !42)
!67 = !DILocation(line: 39, column: 7, scope: !42)
!68 = !DILocation(line: 39, column: 14, scope: !42)
!69 = !DILocation(line: 39, column: 18, scope: !42)
!70 = !DILocation(line: 41, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 40, column: 9)
!72 = distinct !DILexicalBlock(scope: !42, file: !1, line: 39, column: 24)
!73 = distinct !{!73, !67, !74, !75}
!74 = !DILocation(line: 42, column: 5, scope: !42)
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !DILocation(line: 43, column: 5, scope: !42)
!77 = !DILocation(line: 44, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 44, column: 11)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 44, column: 5)
!80 = distinct !DILexicalBlock(scope: !42, file: !1, line: 43, column: 5)
!81 = !DILocation(line: 44, column: 12, scope: !78)
!82 = !DILocation(line: 44, column: 11, scope: !79)
!83 = !DILocation(line: 44, column: 37, scope: !78)
!84 = !DILocation(line: 44, column: 18, scope: !78)
!85 = !DILocation(line: 44, column: 41, scope: !79)
!86 = !DILocation(line: 45, column: 5, scope: !43)
!87 = !DILocation(line: 46, column: 3, scope: !26)
!88 = !DISubprogram(name: "omp_get_thread_num", scope: !89, file: !89, line: 68, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!89 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!90 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 29, type: !27, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!91 = !{!92, !93, !94, !95}
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !90, type: !29, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !90, type: !29, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "x", arg: 3, scope: !90, type: !33, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "y", arg: 4, scope: !90, type: !33, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !90)
!97 = !DILocation(line: 29, column: 3, scope: !90)
!98 = !{!99}
!99 = !{i64 2, i64 -1, i64 -1, i1 true}
