; ModuleID = 'DRB039-truedepsingleelement-orig-yes.c'
source_filename = "DRB039-truedepsingleelement-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [52 x i8] c";DRB039-truedepsingleelement-orig-yes.c;main;60;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [53 x i8] c";DRB039-truedepsingleelement-orig-yes.c;main;60;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"a[500]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !29
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !32
  %0 = bitcast i32* %len to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %len, metadata !19, metadata !DIExpression()), !dbg !34
  store i32 1000, i32* %len, align 4, !dbg !34, !tbaa !25
  %1 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !36
  %2 = bitcast [1000 x i32]* %a to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* %2) #4, !dbg !37
  call void @llvm.dbg.declare(metadata [1000 x i32]* %a, metadata !21, metadata !DIExpression()), !dbg !38
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %a, i64 0, i64 0, !dbg !39
  store i32 2, i32* %arrayidx, align 16, !dbg !40, !tbaa !25
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [1000 x i32]* %a), !dbg !41
  %arrayidx1 = getelementptr inbounds [1000 x i32], [1000 x i32]* %a, i64 0, i64 500, !dbg !42
  %3 = load i32, i32* %arrayidx1, align 16, !dbg !42, !tbaa !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %3), !dbg !43
  %4 = bitcast [1000 x i32]* %a to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* %4) #4, !dbg !44
  %5 = bitcast i32* %i to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !44
  %6 = bitcast i32* %len to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !44
  ret i32 0, !dbg !45
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [1000 x i32]* nonnull align 4 dereferenceable(4000) %a) #3 !dbg !46 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !56, metadata !DIExpression()), !dbg !67
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !57, metadata !DIExpression()), !dbg !67
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !58, metadata !DIExpression()), !dbg !68
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !59, metadata !DIExpression()), !dbg !69
  %0 = load i32*, i32** %len.addr, align 8, !dbg !70, !tbaa !30
  %1 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !70, !tbaa !30
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !60, metadata !DIExpression()), !dbg !67
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !61, metadata !DIExpression()), !dbg !67
  %4 = load i32, i32* %0, align 4, !dbg !71, !tbaa !25
  store i32 %4, i32* %.capture_expr., align 4, !dbg !71, !tbaa !25
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !61, metadata !DIExpression()), !dbg !67
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !71, !tbaa !25
  %sub = sub nsw i32 %6, 0, !dbg !70
  %div = sdiv i32 %sub, 1, !dbg !70
  %sub2 = sub nsw i32 %div, 1, !dbg !70
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !70, !tbaa !25
  %7 = bitcast i32* %i to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %i, align 4, !dbg !72, !tbaa !25
  %8 = bitcast i32* %i to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !70
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !71, !tbaa !25
  %cmp = icmp slt i32 0, %9, !dbg !70
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !70

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !63, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %.omp.lb, align 4, !dbg !73, !tbaa !25
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !64, metadata !DIExpression()), !dbg !67
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !70, !tbaa !25
  store i32 %12, i32* %.omp.ub, align 4, !dbg !73, !tbaa !25
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !65, metadata !DIExpression()), !dbg !67
  store i32 1, i32* %.omp.stride, align 4, !dbg !73, !tbaa !25
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !66, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %.omp.is_last, align 4, !dbg !73, !tbaa !25
  %15 = bitcast i32* %i3 to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !62, metadata !DIExpression()), !dbg !67
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !70
  %17 = load i32, i32* %16, align 4, !dbg !70, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !74
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !73, !tbaa !25
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !70, !tbaa !25
  %cmp4 = icmp sgt i32 %18, %19, !dbg !73
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !73

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !70, !tbaa !25
  br label %cond.end, !dbg !73

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !73, !tbaa !25
  br label %cond.end, !dbg !73

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !73
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !73, !tbaa !25
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !73, !tbaa !25
  store i32 %22, i32* %.omp.iv, align 4, !dbg !73, !tbaa !25
  br label %omp.inner.for.cond, !dbg !70

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !25
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !73, !tbaa !25
  %cmp5 = icmp sle i32 %23, %24, !dbg !70
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !70

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !70

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !25
  %mul = mul nsw i32 %25, 1, !dbg !72
  %add = add nsw i32 0, %mul, !dbg !72
  store i32 %add, i32* %i3, align 4, !dbg !72, !tbaa !25
  %26 = load i32, i32* %i3, align 4, !dbg !75, !tbaa !25
  %idxprom = sext i32 %26 to i64, !dbg !76
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %idxprom, !dbg !76
  %27 = load i32, i32* %arrayidx, align 4, !dbg !76, !tbaa !25
  %arrayidx6 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 0, !dbg !77
  %28 = load i32, i32* %arrayidx6, align 16, !dbg !77, !tbaa !25
  %add7 = add nsw i32 %27, %28, !dbg !78
  %29 = load i32, i32* %i3, align 4, !dbg !79, !tbaa !25
  %idxprom8 = sext i32 %29 to i64, !dbg !80
  %arrayidx9 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %idxprom8, !dbg !80
  store i32 %add7, i32* %arrayidx9, align 4, !dbg !81, !tbaa !25
  br label %omp.body.continue, !dbg !80

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !74

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !25
  %add10 = add nsw i32 %30, 1, !dbg !70
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !70, !tbaa !25
  br label %omp.inner.for.cond, !dbg !74, !llvm.loop !82

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !74

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74
  %32 = load i32, i32* %31, align 4, !dbg !74, !tbaa !25
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %32), !dbg !83
  %33 = bitcast i32* %i3 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !74
  %34 = bitcast i32* %.omp.is_last to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !74
  %35 = bitcast i32* %.omp.stride to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !74
  %36 = bitcast i32* %.omp.ub to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !74
  %37 = bitcast i32* %.omp.lb to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !74
  br label %omp.precond.end, !dbg !74

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %38 = bitcast i32* %.capture_expr.1 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !74
  %39 = bitcast i32* %.capture_expr. to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !74
  %40 = bitcast i32* %.omp.iv to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !74
  ret void, !dbg !84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, [1000 x i32]* nonnull align 4 dereferenceable(4000) %a) #3 !dbg !85 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !87, metadata !DIExpression()), !dbg !91
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !88, metadata !DIExpression()), !dbg !91
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !89, metadata !DIExpression()), !dbg !91
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = load i32*, i32** %len.addr, align 8, !dbg !92, !tbaa !30
  %1 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !92, !tbaa !30
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !92, !tbaa !30
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !92, !tbaa !30
  %4 = load i32*, i32** %len.addr, align 8, !dbg !92, !tbaa !30
  %5 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !92, !tbaa !30
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [1000 x i32]* %5) #4, !dbg !92
  ret void, !dbg !92
}

; Function Attrs: nounwind
declare !callback !93 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!1 = !DIFile(filename: "DRB039-truedepsingleelement-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
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
!19 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 54, type: !12)
!20 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!21 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 57, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32000, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 1000)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 52, column: 15, scope: !9)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 52, column: 27, scope: !9)
!33 = !DILocation(line: 54, column: 3, scope: !9)
!34 = !DILocation(line: 54, column: 7, scope: !9)
!35 = !DILocation(line: 55, column: 3, scope: !9)
!36 = !DILocation(line: 55, column: 7, scope: !9)
!37 = !DILocation(line: 57, column: 3, scope: !9)
!38 = !DILocation(line: 57, column: 7, scope: !9)
!39 = !DILocation(line: 58, column: 3, scope: !9)
!40 = !DILocation(line: 58, column: 8, scope: !9)
!41 = !DILocation(line: 60, column: 1, scope: !9)
!42 = !DILocation(line: 64, column: 25, scope: !9)
!43 = !DILocation(line: 64, column: 3, scope: !9)
!44 = !DILocation(line: 66, column: 1, scope: !9)
!45 = !DILocation(line: 65, column: 3, scope: !9)
!46 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 61, type: !47, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !55)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !49, !53, !54}
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!53 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!55 = !{!56, !57, !58, !59, !60, !61, !61, !62, !63, !64, !65, !66, !62}
!56 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !46, type: !49, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !46, type: !49, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: "len", arg: 3, scope: !46, file: !1, line: 54, type: !53)
!59 = !DILocalVariable(name: "a", arg: 4, scope: !46, file: !1, line: 57, type: !54)
!60 = !DILocalVariable(name: ".omp.iv", scope: !46, type: !12, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".capture_expr.", scope: !46, type: !12, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "i", scope: !46, type: !12, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.lb", scope: !46, type: !12, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".omp.ub", scope: !46, type: !12, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".omp.stride", scope: !46, type: !12, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".omp.is_last", scope: !46, type: !12, flags: DIFlagArtificial)
!67 = !DILocation(line: 0, scope: !46)
!68 = !DILocation(line: 54, column: 7, scope: !46)
!69 = !DILocation(line: 57, column: 7, scope: !46)
!70 = !DILocation(line: 61, column: 3, scope: !46)
!71 = !DILocation(line: 61, column: 14, scope: !46)
!72 = !DILocation(line: 61, column: 18, scope: !46)
!73 = !DILocation(line: 61, column: 8, scope: !46)
!74 = !DILocation(line: 60, column: 1, scope: !46)
!75 = !DILocation(line: 62, column: 12, scope: !46)
!76 = !DILocation(line: 62, column: 10, scope: !46)
!77 = !DILocation(line: 62, column: 15, scope: !46)
!78 = !DILocation(line: 62, column: 14, scope: !46)
!79 = !DILocation(line: 62, column: 7, scope: !46)
!80 = !DILocation(line: 62, column: 5, scope: !46)
!81 = !DILocation(line: 62, column: 9, scope: !46)
!82 = distinct !{!82, !74, !83}
!83 = !DILocation(line: 60, column: 25, scope: !46)
!84 = !DILocation(line: 62, column: 18, scope: !46)
!85 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 60, type: !47, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !49, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !49, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "len", arg: 3, scope: !85, type: !53, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "a", arg: 4, scope: !85, type: !54, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !85)
!92 = !DILocation(line: 60, column: 1, scope: !85)
!93 = !{!94}
!94 = !{i64 2, i64 -1, i64 -1, i1 true}
