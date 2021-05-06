; ModuleID = 'DRB149-missingdata1-orig-gpu-no.c'
source_filename = "DRB149-missingdata1-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global i32* null, align 8, !dbg !0
@b = dso_local global i32* null, align 8, !dbg !6
@c = dso_local global i32* null, align 8, !dbg !10
@0 = private unnamed_addr constant [47 x i8] c";DRB149-missingdata1-orig-gpu-no.c;main;38;5;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [48 x i8] c";DRB149-missingdata1-orig-gpu-no.c;main;38;46;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @3, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"Data Race\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %i14 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 400) #5, !dbg !30
  %0 = bitcast i8* %call to i32*, !dbg !30
  store i32* %0, i32** @a, align 8, !dbg !31, !tbaa !32
  %call1 = call noalias i8* @malloc(i64 40000) #5, !dbg !36
  %1 = bitcast i8* %call1 to i32*, !dbg !36
  store i32* %1, i32** @b, align 8, !dbg !37, !tbaa !32
  %call2 = call noalias i8* @malloc(i64 400) #5, !dbg !38
  %2 = bitcast i8* %call2 to i32*, !dbg !38
  store i32* %2, i32** @c, align 8, !dbg !39, !tbaa !32
  %3 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %i, align 4, !dbg !41, !tbaa !42
  br label %for.cond, !dbg !40

for.cond:                                         ; preds = %for.inc11, %entry
  %4 = load i32, i32* %i, align 4, !dbg !44, !tbaa !42
  %cmp = icmp slt i32 %4, 100, !dbg !45
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !46

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %5 = bitcast i32* %i to i8*, !dbg !47
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !47
  br label %for.end13

for.body:                                         ; preds = %for.cond
  %6 = bitcast i32* %j to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %j, metadata !24, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %j, align 4, !dbg !49, !tbaa !42
  br label %for.cond3, !dbg !48

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4, !dbg !50, !tbaa !42
  %cmp4 = icmp slt i32 %7, 100, !dbg !52
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5, !dbg !53

for.cond.cleanup5:                                ; preds = %for.cond3
  store i32 5, i32* %cleanup.dest.slot, align 4
  %8 = bitcast i32* %j to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !54
  br label %for.end

for.body6:                                        ; preds = %for.cond3
  %9 = load i32*, i32** @b, align 8, !dbg !55, !tbaa !32
  %10 = load i32, i32* %j, align 4, !dbg !57, !tbaa !42
  %11 = load i32, i32* %i, align 4, !dbg !58, !tbaa !42
  %mul = mul nsw i32 %11, 100, !dbg !59
  %add = add nsw i32 %10, %mul, !dbg !60
  %idxprom = sext i32 %add to i64, !dbg !55
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom, !dbg !55
  store i32 1, i32* %arrayidx, align 4, !dbg !61, !tbaa !42
  br label %for.inc, !dbg !62

for.inc:                                          ; preds = %for.body6
  %12 = load i32, i32* %j, align 4, !dbg !63, !tbaa !42
  %inc = add nsw i32 %12, 1, !dbg !63
  store i32 %inc, i32* %j, align 4, !dbg !63, !tbaa !42
  br label %for.cond3, !dbg !54, !llvm.loop !64

for.end:                                          ; preds = %for.cond.cleanup5
  %13 = load i32*, i32** @a, align 8, !dbg !67, !tbaa !32
  %14 = load i32, i32* %i, align 4, !dbg !68, !tbaa !42
  %idxprom7 = sext i32 %14 to i64, !dbg !67
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7, !dbg !67
  store i32 1, i32* %arrayidx8, align 4, !dbg !69, !tbaa !42
  %15 = load i32*, i32** @c, align 8, !dbg !70, !tbaa !32
  %16 = load i32, i32* %i, align 4, !dbg !71, !tbaa !42
  %idxprom9 = sext i32 %16 to i64, !dbg !70
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9, !dbg !70
  store i32 0, i32* %arrayidx10, align 4, !dbg !72, !tbaa !42
  br label %for.inc11, !dbg !73

for.inc11:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4, !dbg !74, !tbaa !42
  %inc12 = add nsw i32 %17, 1, !dbg !74
  store i32 %inc12, i32* %i, align 4, !dbg !74, !tbaa !42
  br label %for.cond, !dbg !47, !llvm.loop !75

for.end13:                                        ; preds = %for.cond.cleanup
  %18 = load i32*, i32** @c, align 8, !dbg !77, !tbaa !32
  %19 = load i32*, i32** @b, align 8, !dbg !77, !tbaa !32
  %20 = load i32*, i32** @a, align 8, !dbg !77, !tbaa !32
  call void @__omp_offloading_10308_be047d_main_l36(i32* %18, i32* %19, i32* %20) #5, !dbg !78
  %21 = bitcast i32* %i14 to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #5, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %i14, metadata !28, metadata !DIExpression()), !dbg !81
  store i32 0, i32* %i14, align 4, !dbg !81, !tbaa !42
  br label %for.cond15, !dbg !80

for.cond15:                                       ; preds = %for.inc23, %for.end13
  %22 = load i32, i32* %i14, align 4, !dbg !82, !tbaa !42
  %cmp16 = icmp slt i32 %22, 100, !dbg !84
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17, !dbg !85

for.cond.cleanup17:                               ; preds = %for.cond15
  store i32 8, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !85

for.body18:                                       ; preds = %for.cond15
  %23 = load i32*, i32** @c, align 8, !dbg !86, !tbaa !32
  %24 = load i32, i32* %i14, align 4, !dbg !89, !tbaa !42
  %idxprom19 = sext i32 %24 to i64, !dbg !86
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i64 %idxprom19, !dbg !86
  %25 = load i32, i32* %arrayidx20, align 4, !dbg !86, !tbaa !42
  %cmp21 = icmp ne i32 %25, 100, !dbg !90
  br i1 %cmp21, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %for.body18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !92
  store i32 1, i32* %retval, align 4, !dbg !94
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !94

if.end:                                           ; preds = %for.body18
  br label %for.inc23, !dbg !95

for.inc23:                                        ; preds = %if.end
  %26 = load i32, i32* %i14, align 4, !dbg !96, !tbaa !42
  %inc24 = add nsw i32 %26, 1, !dbg !96
  store i32 %inc24, i32* %i14, align 4, !dbg !96, !tbaa !42
  br label %for.cond15, !dbg !97, !llvm.loop !98

cleanup:                                          ; preds = %if.then, %for.cond.cleanup17
  %27 = bitcast i32* %i14 to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !97
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 8, label %for.end25
    i32 1, label %return
  ]

for.end25:                                        ; preds = %cleanup
  %28 = load i32*, i32** @a, align 8, !dbg !100, !tbaa !32
  %29 = bitcast i32* %28 to i8*, !dbg !100
  call void @free(i8* %29) #5, !dbg !101
  %30 = load i32*, i32** @b, align 8, !dbg !102, !tbaa !32
  %31 = bitcast i32* %30 to i8*, !dbg !102
  call void @free(i8* %31) #5, !dbg !103
  %32 = load i32*, i32** @c, align 8, !dbg !104, !tbaa !32
  %33 = bitcast i32* %32 to i8*, !dbg !104
  call void @free(i8* %33) #5, !dbg !105
  store i32 0, i32* %retval, align 4, !dbg !106
  br label %return, !dbg !106

return:                                           ; preds = %for.end25, %cleanup
  %34 = load i32, i32* %retval, align 4, !dbg !107
  ret i32 %34, !dbg !107

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047d_main_l36_debug__(i32* %c, i32* %b, i32* %a) #4 !dbg !108 {
entry:
  %c.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %c, i32** %c.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !112, metadata !DIExpression()), !dbg !115
  store i32* %b, i32** %b.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !113, metadata !DIExpression()), !dbg !116
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !114, metadata !DIExpression()), !dbg !117
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @5, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32**, i32**, i32**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32** %c.addr, i32** %b.addr, i32** %a.addr), !dbg !118
  ret void, !dbg !120
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32** nonnull align 8 dereferenceable(8) %c, i32** nonnull align 8 dereferenceable(8) %b, i32** nonnull align 8 dereferenceable(8) %a) #4 !dbg !121 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %c.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a.addr = alloca i32**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !130, metadata !DIExpression()), !dbg !141
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !131, metadata !DIExpression()), !dbg !141
  store i32** %c, i32*** %c.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !132, metadata !DIExpression()), !dbg !142
  store i32** %b, i32*** %b.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !133, metadata !DIExpression()), !dbg !143
  store i32** %a, i32*** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !134, metadata !DIExpression()), !dbg !144
  %0 = load i32**, i32*** %c.addr, align 8, !dbg !145, !tbaa !32
  %1 = load i32**, i32*** %b.addr, align 8, !dbg !145, !tbaa !32
  %2 = load i32**, i32*** %a.addr, align 8, !dbg !145, !tbaa !32
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !135, metadata !DIExpression()), !dbg !141
  %4 = bitcast i32* %.omp.comb.lb to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !136, metadata !DIExpression()), !dbg !141
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !146, !tbaa !42
  %5 = bitcast i32* %.omp.comb.ub to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !137, metadata !DIExpression()), !dbg !141
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !146, !tbaa !42
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !138, metadata !DIExpression()), !dbg !141
  store i32 1, i32* %.omp.stride, align 4, !dbg !146, !tbaa !42
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !139, metadata !DIExpression()), !dbg !141
  store i32 0, i32* %.omp.is_last, align 4, !dbg !146, !tbaa !42
  %8 = bitcast i32* %i to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %i, metadata !140, metadata !DIExpression()), !dbg !141
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !145
  %10 = load i32, i32* %9, align 4, !dbg !145, !tbaa !42
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %10, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !145
  %11 = load i32, i32* %.omp.comb.ub, align 4, !dbg !146, !tbaa !42
  %cmp = icmp sgt i32 %11, 99, !dbg !146
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !146

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !146

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.comb.ub, align 4, !dbg !146, !tbaa !42
  br label %cond.end, !dbg !146

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %12, %cond.false ], !dbg !146
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !146, !tbaa !42
  %13 = load i32, i32* %.omp.comb.lb, align 4, !dbg !146, !tbaa !42
  store i32 %13, i32* %.omp.iv, align 4, !dbg !146, !tbaa !42
  br label %omp.inner.for.cond, !dbg !145

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !146, !tbaa !42
  %15 = load i32, i32* %.omp.comb.ub, align 4, !dbg !146, !tbaa !42
  %cmp1 = icmp sle i32 %14, %15, !dbg !145
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !145

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !145

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.comb.lb, align 4, !dbg !147
  %17 = zext i32 %16 to i64, !dbg !147
  %18 = load i32, i32* %.omp.comb.ub, align 4, !dbg !147
  %19 = zext i32 %18 to i64, !dbg !147
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @5, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %17, i64 %19, i32** %0, i32** %1, i32** %2), !dbg !147
  br label %omp.inner.for.inc, !dbg !148

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !146, !tbaa !42
  %21 = load i32, i32* %.omp.stride, align 4, !dbg !146, !tbaa !42
  %add = add nsw i32 %20, %21, !dbg !145
  store i32 %add, i32* %.omp.iv, align 4, !dbg !145, !tbaa !42
  br label %omp.inner.for.cond, !dbg !148, !llvm.loop !150

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !148

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %10), !dbg !151
  %22 = bitcast i32* %i to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !148
  %23 = bitcast i32* %.omp.is_last to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !148
  %24 = bitcast i32* %.omp.stride to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !148
  %25 = bitcast i32* %.omp.comb.ub to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !148
  %26 = bitcast i32* %.omp.comb.lb to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !148
  %27 = bitcast i32* %.omp.iv to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !148
  ret void, !dbg !152
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32** nonnull align 8 dereferenceable(8) %c, i32** nonnull align 8 dereferenceable(8) %b, i32** nonnull align 8 dereferenceable(8) %a) #4 !dbg !153 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %c.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a.addr = alloca i32**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !159, metadata !DIExpression()), !dbg !175
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !160, metadata !DIExpression()), !dbg !175
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !176
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !161, metadata !DIExpression()), !dbg !175
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !176
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !162, metadata !DIExpression()), !dbg !175
  store i32** %c, i32*** %c.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !163, metadata !DIExpression()), !dbg !178
  store i32** %b, i32*** %b.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !164, metadata !DIExpression()), !dbg !179
  store i32** %a, i32*** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !165, metadata !DIExpression()), !dbg !180
  %0 = load i32**, i32*** %c.addr, align 8, !dbg !181, !tbaa !32
  %1 = load i32**, i32*** %b.addr, align 8, !dbg !181, !tbaa !32
  %2 = load i32**, i32*** %a.addr, align 8, !dbg !181, !tbaa !32
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !166, metadata !DIExpression()), !dbg !175
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !167, metadata !DIExpression()), !dbg !175
  store i32 0, i32* %.omp.lb, align 4, !dbg !182, !tbaa !42
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !168, metadata !DIExpression()), !dbg !175
  store i32 99, i32* %.omp.ub, align 4, !dbg !182, !tbaa !42
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !181, !tbaa !176
  %conv = trunc i64 %6 to i32, !dbg !181
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !181, !tbaa !176
  %conv1 = trunc i64 %7 to i32, !dbg !181
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !181, !tbaa !42
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !181, !tbaa !42
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !169, metadata !DIExpression()), !dbg !175
  store i32 1, i32* %.omp.stride, align 4, !dbg !182, !tbaa !42
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !170, metadata !DIExpression()), !dbg !175
  store i32 0, i32* %.omp.is_last, align 4, !dbg !182, !tbaa !42
  %10 = bitcast i32* %i to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %i, metadata !171, metadata !DIExpression()), !dbg !175
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !181
  %12 = load i32, i32* %11, align 4, !dbg !181, !tbaa !42
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !183
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !182, !tbaa !42
  %cmp = icmp sgt i32 %13, 99, !dbg !182
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !182

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !182

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !182, !tbaa !42
  br label %cond.end, !dbg !182

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %14, %cond.false ], !dbg !182
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !182, !tbaa !42
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !182, !tbaa !42
  store i32 %15, i32* %.omp.iv, align 4, !dbg !182, !tbaa !42
  br label %omp.inner.for.cond, !dbg !181

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !182, !tbaa !42
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !182, !tbaa !42
  %cmp3 = icmp sle i32 %16, %17, !dbg !181
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !181

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !181

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !182, !tbaa !42
  %mul = mul nsw i32 %18, 1, !dbg !184
  %add = add nsw i32 0, %mul, !dbg !184
  store i32 %add, i32* %i, align 4, !dbg !184, !tbaa !42
  %19 = bitcast i32* %j to i8*, !dbg !185
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #5, !dbg !185
  call void @llvm.dbg.declare(metadata i32* %j, metadata !172, metadata !DIExpression()), !dbg !186
  store i32 0, i32* %j, align 4, !dbg !186, !tbaa !42
  br label %for.cond, !dbg !185

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %20 = load i32, i32* %j, align 4, !dbg !187, !tbaa !42
  %cmp5 = icmp slt i32 %20, 100, !dbg !189
  br i1 %cmp5, label %for.body, label %for.cond.cleanup, !dbg !190

for.cond.cleanup:                                 ; preds = %for.cond
  %21 = bitcast i32* %j to i8*, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !191
  br label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32*, i32** %1, align 8, !dbg !192, !tbaa !32
  %23 = load i32, i32* %j, align 4, !dbg !194, !tbaa !42
  %24 = load i32, i32* %i, align 4, !dbg !195, !tbaa !42
  %mul7 = mul nsw i32 %24, 100, !dbg !196
  %add8 = add nsw i32 %23, %mul7, !dbg !197
  %idxprom = sext i32 %add8 to i64, !dbg !192
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %idxprom, !dbg !192
  %25 = load i32, i32* %arrayidx, align 4, !dbg !192, !tbaa !42
  %26 = load i32*, i32** %2, align 8, !dbg !198, !tbaa !32
  %27 = load i32, i32* %j, align 4, !dbg !199, !tbaa !42
  %idxprom9 = sext i32 %27 to i64, !dbg !198
  %arrayidx10 = getelementptr inbounds i32, i32* %26, i64 %idxprom9, !dbg !198
  %28 = load i32, i32* %arrayidx10, align 4, !dbg !198, !tbaa !42
  %mul11 = mul nsw i32 %25, %28, !dbg !200
  %29 = load i32*, i32** %0, align 8, !dbg !201, !tbaa !32
  %30 = load i32, i32* %i, align 4, !dbg !202, !tbaa !42
  %idxprom12 = sext i32 %30 to i64, !dbg !201
  %arrayidx13 = getelementptr inbounds i32, i32* %29, i64 %idxprom12, !dbg !201
  %31 = load i32, i32* %arrayidx13, align 4, !dbg !203, !tbaa !42
  %add14 = add nsw i32 %31, %mul11, !dbg !203
  store i32 %add14, i32* %arrayidx13, align 4, !dbg !203, !tbaa !42
  br label %for.inc, !dbg !204

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %j, align 4, !dbg !205, !tbaa !42
  %inc = add nsw i32 %32, 1, !dbg !205
  store i32 %inc, i32* %j, align 4, !dbg !205, !tbaa !42
  br label %for.cond, !dbg !191, !llvm.loop !206

for.end:                                          ; preds = %for.cond.cleanup
  br label %omp.body.continue, !dbg !208

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !183

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !182, !tbaa !42
  %add15 = add nsw i32 %33, 1, !dbg !181
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !181, !tbaa !42
  br label %omp.inner.for.cond, !dbg !183, !llvm.loop !209

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !183

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(%struct.ident_t* @4, i32 %12), !dbg !210
  %34 = bitcast i32* %i to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !183
  %35 = bitcast i32* %.omp.is_last to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !183
  %36 = bitcast i32* %.omp.stride to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !183
  %37 = bitcast i32* %.omp.ub to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !183
  %38 = bitcast i32* %.omp.lb to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !183
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !183
  ret void, !dbg !211
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32** nonnull align 8 dereferenceable(8) %c, i32** nonnull align 8 dereferenceable(8) %b, i32** nonnull align 8 dereferenceable(8) %a) #4 !dbg !212 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %c.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a.addr = alloca i32**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !214, metadata !DIExpression()), !dbg !221
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !215, metadata !DIExpression()), !dbg !221
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !176
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !216, metadata !DIExpression()), !dbg !221
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !176
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !217, metadata !DIExpression()), !dbg !221
  store i32** %c, i32*** %c.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !218, metadata !DIExpression()), !dbg !221
  store i32** %b, i32*** %b.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !219, metadata !DIExpression()), !dbg !221
  store i32** %a, i32*** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = load i32**, i32*** %c.addr, align 8, !dbg !222, !tbaa !32
  %1 = load i32**, i32*** %b.addr, align 8, !dbg !222, !tbaa !32
  %2 = load i32**, i32*** %a.addr, align 8, !dbg !222, !tbaa !32
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !222, !tbaa !32
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !222, !tbaa !32
  %5 = load i64, i64* %.previous.lb..addr, align 8, !dbg !222, !tbaa !176
  %6 = load i64, i64* %.previous.ub..addr, align 8, !dbg !222, !tbaa !176
  %7 = load i32**, i32*** %c.addr, align 8, !dbg !222, !tbaa !32
  %8 = load i32**, i32*** %b.addr, align 8, !dbg !222, !tbaa !32
  %9 = load i32**, i32*** %a.addr, align 8, !dbg !222, !tbaa !32
  call void @.omp_outlined._debug__.1(i32* %3, i32* %4, i64 %5, i64 %6, i32** %7, i32** %8, i32** %9) #5, !dbg !222
  ret void, !dbg !222
}

; Function Attrs: nounwind
declare !callback !223 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32** nonnull align 8 dereferenceable(8) %c, i32** nonnull align 8 dereferenceable(8) %b, i32** nonnull align 8 dereferenceable(8) %a) #4 !dbg !225 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %c.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a.addr = alloca i32**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !227, metadata !DIExpression()), !dbg !232
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !228, metadata !DIExpression()), !dbg !232
  store i32** %c, i32*** %c.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !229, metadata !DIExpression()), !dbg !232
  store i32** %b, i32*** %b.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !230, metadata !DIExpression()), !dbg !232
  store i32** %a, i32*** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !231, metadata !DIExpression()), !dbg !232
  %0 = load i32**, i32*** %c.addr, align 8, !dbg !233, !tbaa !32
  %1 = load i32**, i32*** %b.addr, align 8, !dbg !233, !tbaa !32
  %2 = load i32**, i32*** %a.addr, align 8, !dbg !233, !tbaa !32
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !233, !tbaa !32
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !233, !tbaa !32
  %5 = load i32**, i32*** %c.addr, align 8, !dbg !233, !tbaa !32
  %6 = load i32**, i32*** %b.addr, align 8, !dbg !233, !tbaa !32
  %7 = load i32**, i32*** %a.addr, align 8, !dbg !233, !tbaa !32
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32** %5, i32** %6, i32** %7) #5, !dbg !233
  ret void, !dbg !233
}

; Function Attrs: nounwind
declare !callback !223 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be047d_main_l36(i32* %c, i32* %b, i32* %a) #4 !dbg !234 {
entry:
  %c.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %c, i32** %c.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !236, metadata !DIExpression()), !dbg !239
  store i32* %b, i32** %b.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !237, metadata !DIExpression()), !dbg !239
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = load i32*, i32** %c.addr, align 8, !dbg !240, !tbaa !32
  %1 = load i32*, i32** %b.addr, align 8, !dbg !240, !tbaa !32
  %2 = load i32*, i32** %a.addr, align 8, !dbg !240, !tbaa !32
  call void @__omp_offloading_10308_be047d_main_l36_debug__(i32* %0, i32* %1, i32* %2) #5, !dbg !240
  ret void, !dbg !240
}

declare i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare !dbg !241 void @free(i8*) #1

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 19, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB149-missingdata1-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !10}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 20, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 21, type: !8, isLocal: false, isDefinition: true)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{!"clang version 11.1.0"}
!18 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 23, type: !19, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!9}
!21 = !{!22, !24, !28}
!22 = !DILocalVariable(name: "i", scope: !23, file: !3, line: 28, type: !9)
!23 = distinct !DILexicalBlock(scope: !18, file: !3, line: 28, column: 3)
!24 = !DILocalVariable(name: "j", scope: !25, file: !3, line: 29, type: !9)
!25 = distinct !DILexicalBlock(scope: !26, file: !3, line: 29, column: 5)
!26 = distinct !DILexicalBlock(scope: !27, file: !3, line: 28, column: 25)
!27 = distinct !DILexicalBlock(scope: !23, file: !3, line: 28, column: 3)
!28 = !DILocalVariable(name: "i", scope: !29, file: !3, line: 46, type: !9)
!29 = distinct !DILexicalBlock(scope: !18, file: !3, line: 46, column: 3)
!30 = !DILocation(line: 24, column: 7, scope: !18)
!31 = !DILocation(line: 24, column: 5, scope: !18)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 25, column: 7, scope: !18)
!37 = !DILocation(line: 25, column: 5, scope: !18)
!38 = !DILocation(line: 26, column: 7, scope: !18)
!39 = !DILocation(line: 26, column: 5, scope: !18)
!40 = !DILocation(line: 28, column: 7, scope: !23)
!41 = !DILocation(line: 28, column: 11, scope: !23)
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !34, i64 0}
!44 = !DILocation(line: 28, column: 16, scope: !27)
!45 = !DILocation(line: 28, column: 17, scope: !27)
!46 = !DILocation(line: 28, column: 3, scope: !23)
!47 = !DILocation(line: 28, column: 3, scope: !27)
!48 = !DILocation(line: 29, column: 9, scope: !25)
!49 = !DILocation(line: 29, column: 13, scope: !25)
!50 = !DILocation(line: 29, column: 18, scope: !51)
!51 = distinct !DILexicalBlock(scope: !25, file: !3, line: 29, column: 5)
!52 = !DILocation(line: 29, column: 19, scope: !51)
!53 = !DILocation(line: 29, column: 5, scope: !25)
!54 = !DILocation(line: 29, column: 5, scope: !51)
!55 = !DILocation(line: 30, column: 7, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !3, line: 29, column: 27)
!57 = !DILocation(line: 30, column: 9, scope: !56)
!58 = !DILocation(line: 30, column: 11, scope: !56)
!59 = !DILocation(line: 30, column: 12, scope: !56)
!60 = !DILocation(line: 30, column: 10, scope: !56)
!61 = !DILocation(line: 30, column: 15, scope: !56)
!62 = !DILocation(line: 31, column: 5, scope: !56)
!63 = !DILocation(line: 29, column: 24, scope: !51)
!64 = distinct !{!64, !53, !65, !66}
!65 = !DILocation(line: 31, column: 5, scope: !25)
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !DILocation(line: 32, column: 5, scope: !26)
!68 = !DILocation(line: 32, column: 7, scope: !26)
!69 = !DILocation(line: 32, column: 9, scope: !26)
!70 = !DILocation(line: 33, column: 5, scope: !26)
!71 = !DILocation(line: 33, column: 7, scope: !26)
!72 = !DILocation(line: 33, column: 9, scope: !26)
!73 = !DILocation(line: 34, column: 3, scope: !26)
!74 = !DILocation(line: 28, column: 22, scope: !27)
!75 = distinct !{!75, !46, !76, !66}
!76 = !DILocation(line: 34, column: 3, scope: !23)
!77 = !DILocation(line: 36, column: 3, scope: !18)
!78 = !DILocation(line: 36, column: 3, scope: !79)
!79 = distinct !DILexicalBlock(scope: !18, file: !3, line: 36, column: 3)
!80 = !DILocation(line: 46, column: 7, scope: !29)
!81 = !DILocation(line: 46, column: 11, scope: !29)
!82 = !DILocation(line: 46, column: 16, scope: !83)
!83 = distinct !DILexicalBlock(scope: !29, file: !3, line: 46, column: 3)
!84 = !DILocation(line: 46, column: 17, scope: !83)
!85 = !DILocation(line: 46, column: 3, scope: !29)
!86 = !DILocation(line: 47, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 47, column: 8)
!88 = distinct !DILexicalBlock(scope: !83, file: !3, line: 46, column: 25)
!89 = !DILocation(line: 47, column: 10, scope: !87)
!90 = !DILocation(line: 47, column: 12, scope: !87)
!91 = !DILocation(line: 47, column: 8, scope: !88)
!92 = !DILocation(line: 48, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !87, file: !3, line: 47, column: 16)
!94 = !DILocation(line: 49, column: 7, scope: !93)
!95 = !DILocation(line: 51, column: 3, scope: !88)
!96 = !DILocation(line: 46, column: 22, scope: !83)
!97 = !DILocation(line: 46, column: 3, scope: !83)
!98 = distinct !{!98, !85, !99, !66}
!99 = !DILocation(line: 51, column: 3, scope: !29)
!100 = !DILocation(line: 53, column: 8, scope: !18)
!101 = !DILocation(line: 53, column: 3, scope: !18)
!102 = !DILocation(line: 54, column: 8, scope: !18)
!103 = !DILocation(line: 54, column: 3, scope: !18)
!104 = !DILocation(line: 55, column: 8, scope: !18)
!105 = !DILocation(line: 55, column: 3, scope: !18)
!106 = !DILocation(line: 57, column: 3, scope: !18)
!107 = !DILocation(line: 58, column: 1, scope: !18)
!108 = distinct !DISubprogram(name: "__omp_offloading_10308_be047d_main_l36_debug__", scope: !3, file: !3, line: 37, type: !109, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !8, !8, !8}
!111 = !{!112, !113, !114}
!112 = !DILocalVariable(name: "c", arg: 1, scope: !108, file: !3, line: 21, type: !8)
!113 = !DILocalVariable(name: "b", arg: 2, scope: !108, file: !3, line: 20, type: !8)
!114 = !DILocalVariable(name: "a", arg: 3, scope: !108, file: !3, line: 19, type: !8)
!115 = !DILocation(line: 21, column: 6, scope: !108)
!116 = !DILocation(line: 20, column: 6, scope: !108)
!117 = !DILocation(line: 19, column: 6, scope: !108)
!118 = !DILocation(line: 38, column: 5, scope: !119)
!119 = distinct !DILexicalBlock(scope: !108, file: !3, line: 37, column: 3)
!120 = !DILocation(line: 44, column: 3, scope: !108)
!121 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 39, type: !122, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124, !124, !128, !128, !128}
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!128 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!130 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !121, type: !124, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !121, type: !124, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "c", arg: 3, scope: !121, file: !3, line: 21, type: !128)
!133 = !DILocalVariable(name: "b", arg: 4, scope: !121, file: !3, line: 20, type: !128)
!134 = !DILocalVariable(name: "a", arg: 5, scope: !121, file: !3, line: 19, type: !128)
!135 = !DILocalVariable(name: ".omp.iv", scope: !121, type: !9, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".omp.comb.lb", scope: !121, type: !9, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: ".omp.comb.ub", scope: !121, type: !9, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".omp.stride", scope: !121, type: !9, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".omp.is_last", scope: !121, type: !9, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "i", scope: !121, type: !9, flags: DIFlagArtificial)
!141 = !DILocation(line: 0, scope: !121)
!142 = !DILocation(line: 21, column: 6, scope: !121)
!143 = !DILocation(line: 20, column: 6, scope: !121)
!144 = !DILocation(line: 19, column: 6, scope: !121)
!145 = !DILocation(line: 39, column: 5, scope: !121)
!146 = !DILocation(line: 39, column: 9, scope: !121)
!147 = !DILocation(line: 38, column: 5, scope: !121)
!148 = !DILocation(line: 38, column: 46, scope: !149)
!149 = distinct !DILexicalBlock(scope: !121, file: !3, line: 38, column: 5)
!150 = distinct !{!150, !147, !151}
!151 = !DILocation(line: 38, column: 46, scope: !121)
!152 = !DILocation(line: 43, column: 5, scope: !121)
!153 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 39, type: !154, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !124, !124, !156, !156, !128, !128, !128}
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!159 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !153, type: !124, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !153, type: !124, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !153, type: !156, flags: DIFlagArtificial)
!162 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !153, type: !156, flags: DIFlagArtificial)
!163 = !DILocalVariable(name: "c", arg: 5, scope: !153, file: !3, line: 21, type: !128)
!164 = !DILocalVariable(name: "b", arg: 6, scope: !153, file: !3, line: 20, type: !128)
!165 = !DILocalVariable(name: "a", arg: 7, scope: !153, file: !3, line: 19, type: !128)
!166 = !DILocalVariable(name: ".omp.iv", scope: !153, type: !9, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: ".omp.lb", scope: !153, type: !9, flags: DIFlagArtificial)
!168 = !DILocalVariable(name: ".omp.ub", scope: !153, type: !9, flags: DIFlagArtificial)
!169 = !DILocalVariable(name: ".omp.stride", scope: !153, type: !9, flags: DIFlagArtificial)
!170 = !DILocalVariable(name: ".omp.is_last", scope: !153, type: !9, flags: DIFlagArtificial)
!171 = !DILocalVariable(name: "i", scope: !153, type: !9, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: "j", scope: !173, file: !3, line: 40, type: !9)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 40, column: 7)
!174 = distinct !DILexicalBlock(scope: !153, file: !3, line: 39, column: 27)
!175 = !DILocation(line: 0, scope: !153)
!176 = !{!177, !177, i64 0}
!177 = !{!"long", !34, i64 0}
!178 = !DILocation(line: 21, column: 6, scope: !153)
!179 = !DILocation(line: 20, column: 6, scope: !153)
!180 = !DILocation(line: 19, column: 6, scope: !153)
!181 = !DILocation(line: 39, column: 5, scope: !153)
!182 = !DILocation(line: 39, column: 9, scope: !153)
!183 = !DILocation(line: 38, column: 5, scope: !153)
!184 = !DILocation(line: 39, column: 23, scope: !153)
!185 = !DILocation(line: 40, column: 11, scope: !173)
!186 = !DILocation(line: 40, column: 15, scope: !173)
!187 = !DILocation(line: 40, column: 20, scope: !188)
!188 = distinct !DILexicalBlock(scope: !173, file: !3, line: 40, column: 7)
!189 = !DILocation(line: 40, column: 21, scope: !188)
!190 = !DILocation(line: 40, column: 7, scope: !173)
!191 = !DILocation(line: 40, column: 7, scope: !188)
!192 = !DILocation(line: 41, column: 15, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !3, line: 40, column: 29)
!194 = !DILocation(line: 41, column: 17, scope: !193)
!195 = !DILocation(line: 41, column: 19, scope: !193)
!196 = !DILocation(line: 41, column: 20, scope: !193)
!197 = !DILocation(line: 41, column: 18, scope: !193)
!198 = !DILocation(line: 41, column: 24, scope: !193)
!199 = !DILocation(line: 41, column: 26, scope: !193)
!200 = !DILocation(line: 41, column: 23, scope: !193)
!201 = !DILocation(line: 41, column: 9, scope: !193)
!202 = !DILocation(line: 41, column: 11, scope: !193)
!203 = !DILocation(line: 41, column: 13, scope: !193)
!204 = !DILocation(line: 42, column: 7, scope: !193)
!205 = !DILocation(line: 40, column: 26, scope: !188)
!206 = distinct !{!206, !190, !207, !66}
!207 = !DILocation(line: 42, column: 7, scope: !173)
!208 = !DILocation(line: 43, column: 5, scope: !174)
!209 = distinct !{!209, !183, !210}
!210 = !DILocation(line: 38, column: 46, scope: !153)
!211 = !DILocation(line: 43, column: 5, scope: !153)
!212 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 38, type: !154, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220}
!214 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !212, type: !124, flags: DIFlagArtificial)
!215 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !212, type: !124, flags: DIFlagArtificial)
!216 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !212, type: !156, flags: DIFlagArtificial)
!217 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !212, type: !156, flags: DIFlagArtificial)
!218 = !DILocalVariable(name: "c", arg: 5, scope: !212, type: !128, flags: DIFlagArtificial)
!219 = !DILocalVariable(name: "b", arg: 6, scope: !212, type: !128, flags: DIFlagArtificial)
!220 = !DILocalVariable(name: "a", arg: 7, scope: !212, type: !128, flags: DIFlagArtificial)
!221 = !DILocation(line: 0, scope: !212)
!222 = !DILocation(line: 38, column: 5, scope: !212)
!223 = !{!224}
!224 = !{i64 2, i64 -1, i64 -1, i1 true}
!225 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 38, type: !122, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!226 = !{!227, !228, !229, !230, !231}
!227 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !225, type: !124, flags: DIFlagArtificial)
!228 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !225, type: !124, flags: DIFlagArtificial)
!229 = !DILocalVariable(name: "c", arg: 3, scope: !225, type: !128, flags: DIFlagArtificial)
!230 = !DILocalVariable(name: "b", arg: 4, scope: !225, type: !128, flags: DIFlagArtificial)
!231 = !DILocalVariable(name: "a", arg: 5, scope: !225, type: !128, flags: DIFlagArtificial)
!232 = !DILocation(line: 0, scope: !225)
!233 = !DILocation(line: 38, column: 5, scope: !225)
!234 = distinct !DISubprogram(name: "__omp_offloading_10308_be047d_main_l36", scope: !3, file: !3, line: 36, type: !109, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!235 = !{!236, !237, !238}
!236 = !DILocalVariable(name: "c", arg: 1, scope: !234, type: !8, flags: DIFlagArtificial)
!237 = !DILocalVariable(name: "b", arg: 2, scope: !234, type: !8, flags: DIFlagArtificial)
!238 = !DILocalVariable(name: "a", arg: 3, scope: !234, type: !8, flags: DIFlagArtificial)
!239 = !DILocation(line: 0, scope: !234)
!240 = !DILocation(line: 36, column: 3, scope: !234)
!241 = !DISubprogram(name: "free", scope: !242, file: !242, line: 565, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!242 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
