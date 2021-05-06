; ModuleID = 'DRB009-lastprivatemissing-orig-yes.c'
source_filename = "DRB009-lastprivatemissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [50 x i8] c";DRB009-lastprivatemissing-orig-yes.c;main;57;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [51 x i8] c";DRB009-lastprivatemissing-orig-yes.c;main;57;38;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"x=%d\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %len = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !26
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !29
  %0 = bitcast i32* %i to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !31
  %1 = bitcast i32* %x to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %x, metadata !20, metadata !DIExpression()), !dbg !32
  %2 = bitcast i32* %len to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %len, metadata !21, metadata !DIExpression()), !dbg !34
  store i32 10000, i32* %len, align 4, !dbg !34, !tbaa !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %x), !dbg !35
  %3 = load i32, i32* %x, align 4, !dbg !36, !tbaa !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %3), !dbg !37
  %4 = bitcast i32* %len to i8*, !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !38
  %5 = bitcast i32* %x to i8*, !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !38
  %6 = bitcast i32* %i to i8*, !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !38
  ret i32 0, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %x) #3 !dbg !40 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !49, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !50, metadata !DIExpression()), !dbg !60
  store i32* %len, i32** %len.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !51, metadata !DIExpression()), !dbg !61
  store i32* %x, i32** %x.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !52, metadata !DIExpression()), !dbg !62
  %0 = load i32*, i32** %len.addr, align 8, !dbg !63, !tbaa !27
  %1 = load i32*, i32** %x.addr, align 8, !dbg !63, !tbaa !27
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !53, metadata !DIExpression()), !dbg !60
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !54, metadata !DIExpression()), !dbg !60
  %4 = load i32, i32* %0, align 4, !dbg !64, !tbaa !22
  store i32 %4, i32* %.capture_expr., align 4, !dbg !64, !tbaa !22
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !54, metadata !DIExpression()), !dbg !60
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !64, !tbaa !22
  %sub = sub nsw i32 %6, 0, !dbg !63
  %div = sdiv i32 %sub, 1, !dbg !63
  %sub2 = sub nsw i32 %div, 1, !dbg !63
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !63, !tbaa !22
  %7 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %i, align 4, !dbg !65, !tbaa !22
  %8 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !63
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !64, !tbaa !22
  %cmp = icmp slt i32 0, %9, !dbg !63
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !63

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !56, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.lb, align 4, !dbg !66, !tbaa !22
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !57, metadata !DIExpression()), !dbg !60
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !63, !tbaa !22
  store i32 %12, i32* %.omp.ub, align 4, !dbg !66, !tbaa !22
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !58, metadata !DIExpression()), !dbg !60
  store i32 1, i32* %.omp.stride, align 4, !dbg !66, !tbaa !22
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.is_last, align 4, !dbg !66, !tbaa !22
  %15 = bitcast i32* %i3 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !55, metadata !DIExpression()), !dbg !60
  %16 = bitcast i32* %i4 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !55, metadata !DIExpression()), !dbg !60
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !63
  %18 = load i32, i32* %17, align 4, !dbg !63, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !67
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !66, !tbaa !22
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !63, !tbaa !22
  %cmp5 = icmp sgt i32 %19, %20, !dbg !66
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !66

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !63, !tbaa !22
  br label %cond.end, !dbg !66

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !66, !tbaa !22
  br label %cond.end, !dbg !66

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !66
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !66, !tbaa !22
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !66, !tbaa !22
  store i32 %23, i32* %.omp.iv, align 4, !dbg !66, !tbaa !22
  br label %omp.inner.for.cond, !dbg !63

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !66, !tbaa !22
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !66, !tbaa !22
  %cmp6 = icmp sle i32 %24, %25, !dbg !63
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !63

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !63

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !66, !tbaa !22
  %mul = mul nsw i32 %26, 1, !dbg !65
  %add = add nsw i32 0, %mul, !dbg !65
  store i32 %add, i32* %i3, align 4, !dbg !65, !tbaa !22
  %27 = load i32, i32* %i3, align 4, !dbg !68, !tbaa !22
  store i32 %27, i32* %1, align 4, !dbg !69, !tbaa !22
  br label %omp.body.continue, !dbg !70

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !67

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !66, !tbaa !22
  %add7 = add nsw i32 %28, 1, !dbg !63
  store i32 %add7, i32* %.omp.iv, align 4, !dbg !63, !tbaa !22
  br label %omp.inner.for.cond, !dbg !67, !llvm.loop !71

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !67

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %29 = load i32*, i32** %.global_tid..addr, align 8, !dbg !67
  %30 = load i32, i32* %29, align 4, !dbg !67, !tbaa !22
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %30), !dbg !72
  %31 = bitcast i32* %i4 to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !67
  %32 = bitcast i32* %i3 to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !67
  %33 = bitcast i32* %.omp.is_last to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !67
  %34 = bitcast i32* %.omp.stride to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !67
  %35 = bitcast i32* %.omp.ub to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !67
  %36 = bitcast i32* %.omp.lb to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !67
  br label %omp.precond.end, !dbg !67

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %37 = bitcast i32* %.capture_expr.1 to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !67
  %38 = bitcast i32* %.capture_expr. to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !67
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !67
  ret void, !dbg !68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, i32* nonnull align 4 dereferenceable(4) %x) #3 !dbg !73 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !79
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !79
  store i32* %len, i32** %len.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !77, metadata !DIExpression()), !dbg !79
  store i32* %x, i32** %x.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load i32*, i32** %len.addr, align 8, !dbg !80, !tbaa !27
  %1 = load i32*, i32** %x.addr, align 8, !dbg !80, !tbaa !27
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !80, !tbaa !27
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !80, !tbaa !27
  %4 = load i32*, i32** %len.addr, align 8, !dbg !80, !tbaa !27
  %5 = load i32*, i32** %x.addr, align 8, !dbg !80, !tbaa !27
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #4, !dbg !80
  ret void, !dbg !80
}

; Function Attrs: nounwind
declare !callback !81 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB009-lastprivatemissing-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !10, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 52, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 52, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 54, type: !12)
!20 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 54, type: !12)
!21 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 55, type: !12)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 52, column: 14, scope: !9)
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !DILocation(line: 52, column: 26, scope: !9)
!30 = !DILocation(line: 54, column: 3, scope: !9)
!31 = !DILocation(line: 54, column: 7, scope: !9)
!32 = !DILocation(line: 54, column: 9, scope: !9)
!33 = !DILocation(line: 55, column: 3, scope: !9)
!34 = !DILocation(line: 55, column: 7, scope: !9)
!35 = !DILocation(line: 57, column: 1, scope: !9)
!36 = !DILocation(line: 61, column: 17, scope: !9)
!37 = !DILocation(line: 61, column: 3, scope: !9)
!38 = !DILocation(line: 63, column: 1, scope: !9)
!39 = !DILocation(line: 62, column: 3, scope: !9)
!40 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !41, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43, !47, !47}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!47 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!48 = !{!49, !50, !51, !52, !53, !54, !54, !55, !56, !57, !58, !59, !55, !55}
!49 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !40, type: !43, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !40, type: !43, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "len", arg: 3, scope: !40, file: !1, line: 55, type: !47)
!52 = !DILocalVariable(name: "x", arg: 4, scope: !40, file: !1, line: 54, type: !47)
!53 = !DILocalVariable(name: ".omp.iv", scope: !40, type: !12, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".capture_expr.", scope: !40, type: !12, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "i", scope: !40, type: !12, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.lb", scope: !40, type: !12, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".omp.ub", scope: !40, type: !12, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.stride", scope: !40, type: !12, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.is_last", scope: !40, type: !12, flags: DIFlagArtificial)
!60 = !DILocation(line: 0, scope: !40)
!61 = !DILocation(line: 55, column: 7, scope: !40)
!62 = !DILocation(line: 54, column: 9, scope: !40)
!63 = !DILocation(line: 58, column: 3, scope: !40)
!64 = !DILocation(line: 58, column: 14, scope: !40)
!65 = !DILocation(line: 58, column: 18, scope: !40)
!66 = !DILocation(line: 58, column: 8, scope: !40)
!67 = !DILocation(line: 57, column: 1, scope: !40)
!68 = !DILocation(line: 59, column: 7, scope: !40)
!69 = !DILocation(line: 59, column: 6, scope: !40)
!70 = !DILocation(line: 59, column: 5, scope: !40)
!71 = distinct !{!71, !67, !72}
!72 = !DILocation(line: 57, column: 38, scope: !40)
!73 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 57, type: !41, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!74 = !{!75, !76, !77, !78}
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !73, type: !43, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !43, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "len", arg: 3, scope: !73, type: !47, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "x", arg: 4, scope: !73, type: !47, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !73)
!80 = !DILocation(line: 57, column: 1, scope: !73)
!81 = !{!82}
!82 = !{i64 2, i64 -1, i64 -1, i1 true}
