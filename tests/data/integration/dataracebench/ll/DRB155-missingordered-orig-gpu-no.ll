; ModuleID = 'DRB155-missingordered-orig-gpu-no.c'
source_filename = "DRB155-missingordered-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [49 x i8] c";DRB155-missingordered-orig-gpu-no.c;main;29;5;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [49 x i8] c";DRB155-missingordered-orig-gpu-no.c;main;31;7;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [18 x i8] c"Data Race Present\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [100 x i32]* %var to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i32]* %var, metadata !14, metadata !DIExpression()), !dbg !23
  %1 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %i, align 4, !dbg !25, !tbaa !26
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !30, !tbaa !26
  %cmp = icmp slt i32 %2, 100, !dbg !32
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !33

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #4, !dbg !34
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !35, !tbaa !26
  %idxprom = sext i32 %4 to i64, !dbg !37
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom, !dbg !37
  store i32 0, i32* %arrayidx, align 4, !dbg !38, !tbaa !26
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !40, !tbaa !26
  %inc = add nsw i32 %5, 1, !dbg !40
  store i32 %inc, i32* %i, align 4, !dbg !40, !tbaa !26
  br label %for.cond, !dbg !34, !llvm.loop !41

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_10308_be0483_main_l28([100 x i32]* %var) #4, !dbg !44
  %6 = bitcast i32* %i1 to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !20, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %i1, align 4, !dbg !47, !tbaa !26
  br label %for.cond2, !dbg !46

for.cond2:                                        ; preds = %for.inc9, %for.end
  %7 = load i32, i32* %i1, align 4, !dbg !48, !tbaa !26
  %cmp3 = icmp slt i32 %7, 100, !dbg !50
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !51

for.cond.cleanup4:                                ; preds = %for.cond2
  store i32 5, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !51

for.body5:                                        ; preds = %for.cond2
  %8 = load i32, i32* %i1, align 4, !dbg !52, !tbaa !26
  %idxprom6 = sext i32 %8 to i64, !dbg !55
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom6, !dbg !55
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !55, !tbaa !26
  %10 = load i32, i32* %i1, align 4, !dbg !56, !tbaa !26
  %cmp8 = icmp ne i32 %9, %10, !dbg !57
  br i1 %cmp8, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %for.body5
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !59
  store i32 0, i32* %retval, align 4, !dbg !61
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !61

if.end:                                           ; preds = %for.body5
  br label %for.inc9, !dbg !62

for.inc9:                                         ; preds = %if.end
  %11 = load i32, i32* %i1, align 4, !dbg !63, !tbaa !26
  %inc10 = add nsw i32 %11, 1, !dbg !63
  store i32 %inc10, i32* %i1, align 4, !dbg !63, !tbaa !26
  br label %for.cond2, !dbg !64, !llvm.loop !65

cleanup:                                          ; preds = %if.then, %for.cond.cleanup4
  %12 = bitcast i32* %i1 to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !64
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 5, label %for.end11
  ]

for.end11:                                        ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !67
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !67

cleanup12:                                        ; preds = %for.end11, %cleanup
  %13 = bitcast [100 x i32]* %var to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %13) #4, !dbg !68
  %14 = load i32, i32* %retval, align 4, !dbg !68
  ret i32 %14, !dbg !68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0483_main_l28_debug__([100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !69 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !74, metadata !DIExpression()), !dbg !77
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !78, !tbaa !75
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [100 x i32]* %0), !dbg !78
  ret void, !dbg !79
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !89, metadata !DIExpression()), !dbg !97
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !90, metadata !DIExpression()), !dbg !98
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !99, !tbaa !75
  %1 = bitcast i32* %.omp.iv to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !91, metadata !DIExpression()), !dbg !97
  %2 = bitcast i32* %.omp.lb to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !92, metadata !DIExpression()), !dbg !97
  store i32 0, i32* %.omp.lb, align 4, !dbg !100, !tbaa !26
  %3 = bitcast i32* %.omp.ub to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !93, metadata !DIExpression()), !dbg !97
  store i32 98, i32* %.omp.ub, align 4, !dbg !100, !tbaa !26
  %4 = bitcast i32* %.omp.stride to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !94, metadata !DIExpression()), !dbg !97
  store i32 1, i32* %.omp.stride, align 4, !dbg !100, !tbaa !26
  %5 = bitcast i32* %.omp.is_last to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !95, metadata !DIExpression()), !dbg !97
  store i32 0, i32* %.omp.is_last, align 4, !dbg !100, !tbaa !26
  %6 = bitcast i32* %i to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !97
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !99
  %8 = load i32, i32* %7, align 4, !dbg !99, !tbaa !26
  call void @__kmpc_dispatch_init_4(%struct.ident_t* @1, i32 %8, i32 66, i32 0, i32 98, i32 1, i32 1), !dbg !99
  br label %omp.dispatch.cond, !dbg !99

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %9 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* @1, i32 %8, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !99
  %tobool = icmp ne i32 %9, 0, !dbg !99
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !99

omp.dispatch.cleanup:                             ; preds = %omp.dispatch.cond
  br label %omp.dispatch.end, !dbg !99

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !100, !tbaa !26
  store i32 %10, i32* %.omp.iv, align 4, !dbg !100, !tbaa !26
  br label %omp.inner.for.cond, !dbg !99

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !26
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !100, !tbaa !26
  %cmp = icmp sle i32 %11, %12, !dbg !99
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !99

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !99

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !26
  %mul = mul nsw i32 %13, 1, !dbg !101
  %add = add nsw i32 1, %mul, !dbg !101
  store i32 %add, i32* %i, align 4, !dbg !101, !tbaa !26
  call void @__kmpc_ordered(%struct.ident_t* @3, i32 %8), !dbg !102
  %14 = load i32, i32* %i, align 4, !dbg !104, !tbaa !26
  %sub = sub nsw i32 %14, 1, !dbg !107
  %idxprom = sext i32 %sub to i64, !dbg !108
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %0, i64 0, i64 %idxprom, !dbg !108
  %15 = load i32, i32* %arrayidx, align 4, !dbg !108, !tbaa !26
  %add1 = add nsw i32 %15, 1, !dbg !109
  %16 = load i32, i32* %i, align 4, !dbg !110, !tbaa !26
  %idxprom2 = sext i32 %16 to i64, !dbg !111
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %0, i64 0, i64 %idxprom2, !dbg !111
  store i32 %add1, i32* %arrayidx3, align 4, !dbg !112, !tbaa !26
  call void @__kmpc_end_ordered(%struct.ident_t* @3, i32 %8), !dbg !113
  br label %omp.body.continue, !dbg !114

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !115

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !26
  %add4 = add nsw i32 %17, 1, !dbg !99
  store i32 %add4, i32* %.omp.iv, align 4, !dbg !99, !tbaa !26
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* @1, i32 %8), !dbg !115
  br label %omp.inner.for.cond, !dbg !115, !llvm.loop !116

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !115

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !115, !llvm.loop !118

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %18 = bitcast i32* %i to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !115
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !115
  %20 = bitcast i32* %.omp.stride to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !115
  %21 = bitcast i32* %.omp.ub to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !115
  %22 = bitcast i32* %.omp.lb to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !115
  %23 = bitcast i32* %.omp.iv to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !115
  ret void, !dbg !119
}

declare void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

; Function Attrs: nounwind
declare void @__kmpc_end_ordered(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare void @__kmpc_ordered(%struct.ident_t*, i32) #4

declare void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !120 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !122, metadata !DIExpression()), !dbg !125
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !123, metadata !DIExpression()), !dbg !125
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !126, !tbaa !75
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !126, !tbaa !75
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !126, !tbaa !75
  %3 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !126, !tbaa !75
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [100 x i32]* %3) #4, !dbg !126
  ret void, !dbg !126
}

; Function Attrs: nounwind
declare !callback !127 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0483_main_l28([100 x i32]* nonnull align 4 dereferenceable(400) %var) #3 !dbg !129 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !75
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !133, !tbaa !75
  %1 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !133, !tbaa !75
  call void @__omp_offloading_10308_be0483_main_l28_debug__([100 x i32]* %1) #4, !dbg !133
  ret void, !dbg !133
}

declare i32 @printf(i8*, ...) #5

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
!1 = !DIFile(filename: "DRB155-missingordered-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 11.1.0"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !10, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !18, !20}
!14 = !DILocalVariable(name: "var", scope: !9, file: !1, line: 22, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 100)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 24, type: !12)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 24, column: 3)
!20 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 37, type: !12)
!21 = distinct !DILexicalBlock(scope: !9, file: !1, line: 37, column: 3)
!22 = !DILocation(line: 22, column: 3, scope: !9)
!23 = !DILocation(line: 22, column: 7, scope: !9)
!24 = !DILocation(line: 24, column: 7, scope: !19)
!25 = !DILocation(line: 24, column: 11, scope: !19)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 24, column: 16, scope: !31)
!31 = distinct !DILexicalBlock(scope: !19, file: !1, line: 24, column: 3)
!32 = !DILocation(line: 24, column: 17, scope: !31)
!33 = !DILocation(line: 24, column: 3, scope: !19)
!34 = !DILocation(line: 24, column: 3, scope: !31)
!35 = !DILocation(line: 25, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 24, column: 25)
!37 = !DILocation(line: 25, column: 5, scope: !36)
!38 = !DILocation(line: 25, column: 11, scope: !36)
!39 = !DILocation(line: 26, column: 3, scope: !36)
!40 = !DILocation(line: 24, column: 22, scope: !31)
!41 = distinct !{!41, !33, !42, !43}
!42 = !DILocation(line: 26, column: 3, scope: !19)
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !DILocation(line: 28, column: 3, scope: !45)
!45 = distinct !DILexicalBlock(scope: !9, file: !1, line: 28, column: 3)
!46 = !DILocation(line: 37, column: 7, scope: !21)
!47 = !DILocation(line: 37, column: 11, scope: !21)
!48 = !DILocation(line: 37, column: 16, scope: !49)
!49 = distinct !DILexicalBlock(scope: !21, file: !1, line: 37, column: 3)
!50 = !DILocation(line: 37, column: 17, scope: !49)
!51 = !DILocation(line: 37, column: 3, scope: !21)
!52 = !DILocation(line: 38, column: 12, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 38, column: 8)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 37, column: 25)
!55 = !DILocation(line: 38, column: 8, scope: !53)
!56 = !DILocation(line: 38, column: 16, scope: !53)
!57 = !DILocation(line: 38, column: 14, scope: !53)
!58 = !DILocation(line: 38, column: 8, scope: !54)
!59 = !DILocation(line: 39, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !53, file: !1, line: 38, column: 18)
!61 = !DILocation(line: 40, column: 7, scope: !60)
!62 = !DILocation(line: 42, column: 3, scope: !54)
!63 = !DILocation(line: 37, column: 22, scope: !49)
!64 = !DILocation(line: 37, column: 3, scope: !49)
!65 = distinct !{!65, !51, !66, !43}
!66 = !DILocation(line: 42, column: 3, scope: !21)
!67 = !DILocation(line: 44, column: 3, scope: !9)
!68 = !DILocation(line: 45, column: 1, scope: !9)
!69 = distinct !DISubprogram(name: "__omp_offloading_10308_be0483_main_l28_debug__", scope: !1, file: !1, line: 29, type: !70, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72}
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!73 = !{!74}
!74 = !DILocalVariable(name: "var", arg: 1, scope: !69, file: !1, line: 22, type: !72)
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !28, i64 0}
!77 = !DILocation(line: 22, column: 7, scope: !69)
!78 = !DILocation(line: 29, column: 5, scope: !69)
!79 = !DILocation(line: 29, column: 37, scope: !69)
!80 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 30, type: !81, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !83, !72}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !83, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !83, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "var", arg: 3, scope: !80, file: !1, line: 22, type: !72)
!91 = !DILocalVariable(name: ".omp.iv", scope: !80, type: !12, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.lb", scope: !80, type: !12, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.ub", scope: !80, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.stride", scope: !80, type: !12, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.is_last", scope: !80, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "i", scope: !80, type: !12, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !80)
!98 = !DILocation(line: 22, column: 7, scope: !80)
!99 = !DILocation(line: 30, column: 5, scope: !80)
!100 = !DILocation(line: 30, column: 10, scope: !80)
!101 = !DILocation(line: 30, column: 24, scope: !80)
!102 = !DILocation(line: 31, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !80, file: !1, line: 30, column: 28)
!104 = !DILocation(line: 33, column: 20, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 32, column: 7)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 31, column: 7)
!107 = !DILocation(line: 33, column: 21, scope: !105)
!108 = !DILocation(line: 33, column: 16, scope: !105)
!109 = !DILocation(line: 33, column: 24, scope: !105)
!110 = !DILocation(line: 33, column: 13, scope: !105)
!111 = !DILocation(line: 33, column: 9, scope: !105)
!112 = !DILocation(line: 33, column: 15, scope: !105)
!113 = !DILocation(line: 34, column: 7, scope: !105)
!114 = !DILocation(line: 35, column: 5, scope: !103)
!115 = !DILocation(line: 29, column: 5, scope: !80)
!116 = distinct !{!116, !115, !117}
!117 = !DILocation(line: 29, column: 37, scope: !80)
!118 = distinct !{!118, !115, !117}
!119 = !DILocation(line: 35, column: 5, scope: !80)
!120 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 29, type: !81, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!121 = !{!122, !123, !124}
!122 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !120, type: !83, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !120, type: !83, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "var", arg: 3, scope: !120, type: !72, flags: DIFlagArtificial)
!125 = !DILocation(line: 0, scope: !120)
!126 = !DILocation(line: 29, column: 5, scope: !120)
!127 = !{!128}
!128 = !{i64 2, i64 -1, i64 -1, i1 true}
!129 = distinct !DISubprogram(name: "__omp_offloading_10308_be0483_main_l28", scope: !1, file: !1, line: 28, type: !70, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!130 = !{!131}
!131 = !DILocalVariable(name: "var", arg: 1, scope: !129, type: !72, flags: DIFlagArtificial)
!132 = !DILocation(line: 0, scope: !129)
!133 = !DILocation(line: 28, column: 3, scope: !129)
