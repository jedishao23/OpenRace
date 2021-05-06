; ModuleID = 'DRB159-nobarrier-orig-gpu-no.c'
source_filename = "DRB159-nobarrier-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global i32 0, align 4, !dbg !0
@b = dso_local global [8 x i32] zeroinitializer, align 16, !dbg !6
@c = dso_local global [8 x i32] zeroinitializer, align 16, !dbg !12
@temp = dso_local global [8 x i32] zeroinitializer, align 16, !dbg !14
@0 = private unnamed_addr constant [44 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;39;7;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [45 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;39;22;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [44 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;44;7;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @5, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [45 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;44;22;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @7, i32 0, i32 0) }, align 8
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @5, i32 0, i32 0) }, align 8
@10 = private unnamed_addr constant [44 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;36;3;;\00", align 1
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @10, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [22 x i8] c"expected %d real %d \0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !22 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %i, align 4, !dbg !34, !tbaa !35
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !39, !tbaa !35
  %cmp = icmp slt i32 %1, 8, !dbg !41
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !42

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #4, !dbg !43
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !44, !tbaa !35
  %idxprom = sext i32 %3 to i64, !dbg !46
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %idxprom, !dbg !46
  store i32 0, i32* %arrayidx, align 4, !dbg !47, !tbaa !35
  %4 = load i32, i32* %i, align 4, !dbg !48, !tbaa !35
  %idxprom1 = sext i32 %4 to i64, !dbg !49
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @c, i64 0, i64 %idxprom1, !dbg !49
  store i32 2, i32* %arrayidx2, align 4, !dbg !50, !tbaa !35
  %5 = load i32, i32* %i, align 4, !dbg !51, !tbaa !35
  %idxprom3 = sext i32 %5 to i64, !dbg !52
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* @temp, i64 0, i64 %idxprom3, !dbg !52
  store i32 0, i32* %arrayidx4, align 4, !dbg !53, !tbaa !35
  br label %for.inc, !dbg !54

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !55, !tbaa !35
  %inc = add nsw i32 %6, 1, !dbg !55
  store i32 %inc, i32* %i, align 4, !dbg !55, !tbaa !35
  br label %for.cond, !dbg !43, !llvm.loop !56

for.end:                                          ; preds = %for.cond.cleanup
  store i32 2, i32* @a, align 4, !dbg !59, !tbaa !35
  call void @__omp_offloading_10308_be0487_main_l35([8 x i32]* @temp, [8 x i32]* @b, [8 x i32]* @c, i32* @a) #4, !dbg !60
  %7 = bitcast i32* %val to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %val, metadata !28, metadata !DIExpression()), !dbg !63
  store i32 0, i32* %val, align 4, !dbg !63, !tbaa !35
  %8 = bitcast i32* %i5 to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !29, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %i5, align 4, !dbg !65, !tbaa !35
  br label %for.cond6, !dbg !64

for.cond6:                                        ; preds = %for.inc10, %for.end
  %9 = load i32, i32* %i5, align 4, !dbg !66, !tbaa !35
  %cmp7 = icmp slt i32 %9, 100, !dbg !68
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8, !dbg !69

for.cond.cleanup8:                                ; preds = %for.cond6
  %10 = bitcast i32* %i5 to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !70
  br label %for.end12

for.body9:                                        ; preds = %for.cond6
  %11 = load i32, i32* %val, align 4, !dbg !71, !tbaa !35
  %add = add nsw i32 %11, 2, !dbg !73
  store i32 %add, i32* %val, align 4, !dbg !74, !tbaa !35
  %12 = load i32, i32* %val, align 4, !dbg !75, !tbaa !35
  %mul = mul nsw i32 %12, 2, !dbg !76
  store i32 %mul, i32* %val, align 4, !dbg !77, !tbaa !35
  br label %for.inc10, !dbg !78

for.inc10:                                        ; preds = %for.body9
  %13 = load i32, i32* %i5, align 4, !dbg !79, !tbaa !35
  %inc11 = add nsw i32 %13, 1, !dbg !79
  store i32 %inc11, i32* %i5, align 4, !dbg !79, !tbaa !35
  br label %for.cond6, !dbg !70, !llvm.loop !80

for.end12:                                        ; preds = %for.cond.cleanup8
  %14 = bitcast i32* %i13 to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %i13, metadata !31, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %i13, align 4, !dbg !83, !tbaa !35
  br label %for.cond14, !dbg !82

for.cond14:                                       ; preds = %for.inc23, %for.end12
  %15 = load i32, i32* %i13, align 4, !dbg !84, !tbaa !35
  %cmp15 = icmp slt i32 %15, 8, !dbg !86
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16, !dbg !87

for.cond.cleanup16:                               ; preds = %for.cond14
  store i32 8, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !87

for.body17:                                       ; preds = %for.cond14
  %16 = load i32, i32* %i13, align 4, !dbg !88, !tbaa !35
  %idxprom18 = sext i32 %16 to i64, !dbg !91
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %idxprom18, !dbg !91
  %17 = load i32, i32* %arrayidx19, align 4, !dbg !91, !tbaa !35
  %18 = load i32, i32* %val, align 4, !dbg !92, !tbaa !35
  %cmp20 = icmp ne i32 %17, %18, !dbg !93
  br i1 %cmp20, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %for.body17
  %19 = load i32, i32* %val, align 4, !dbg !95, !tbaa !35
  %20 = load i32, i32* %i13, align 4, !dbg !97, !tbaa !35
  %idxprom21 = sext i32 %20 to i64, !dbg !98
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %idxprom21, !dbg !98
  %21 = load i32, i32* %arrayidx22, align 4, !dbg !98, !tbaa !35
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21), !dbg !99
  store i32 0, i32* %retval, align 4, !dbg !100
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !100

if.end:                                           ; preds = %for.body17
  br label %for.inc23, !dbg !101

for.inc23:                                        ; preds = %if.end
  %22 = load i32, i32* %i13, align 4, !dbg !102, !tbaa !35
  %inc24 = add nsw i32 %22, 1, !dbg !102
  store i32 %inc24, i32* %i13, align 4, !dbg !102, !tbaa !35
  br label %for.cond14, !dbg !103, !llvm.loop !104

cleanup:                                          ; preds = %if.then, %for.cond.cleanup16
  %23 = bitcast i32* %i13 to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !103
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 8, label %for.end25
  ]

for.end25:                                        ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !106
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !106

cleanup26:                                        ; preds = %for.end25, %cleanup
  %24 = bitcast i32* %val to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !107
  %25 = load i32, i32* %retval, align 4, !dbg !107
  ret i32 %25, !dbg !107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0487_main_l35_debug__([8 x i32]* nonnull align 4 dereferenceable(32) %temp, [8 x i32]* nonnull align 4 dereferenceable(32) %b, [8 x i32]* nonnull align 4 dereferenceable(32) %c, i32* nonnull align 4 dereferenceable(4) %a) #3 !dbg !108 {
entry:
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !114, metadata !DIExpression()), !dbg !120
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !115, metadata !DIExpression()), !dbg !121
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !116, metadata !DIExpression()), !dbg !122
  store i32* %a, i32** %a.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !117, metadata !DIExpression()), !dbg !123
  %0 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !124, !tbaa !118
  %1 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !124, !tbaa !118
  %2 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !124, !tbaa !118
  %3 = load i32*, i32** %a.addr, align 8, !dbg !124, !tbaa !118
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @11, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*, [8 x i32]*, [8 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x i32]* %0, [8 x i32]* %1, [8 x i32]* %2, i32* %3), !dbg !124
  ret void, !dbg !125
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* nonnull align 4 dereferenceable(32) %temp, [8 x i32]* nonnull align 4 dereferenceable(32) %b, [8 x i32]* nonnull align 4 dereferenceable(32) %c, i32* nonnull align 4 dereferenceable(4) %a) #3 !dbg !126 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i1 = alloca i32, align 4
  %.omp.iv10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %.omp.lb12 = alloca i32, align 4
  %.omp.ub13 = alloca i32, align 4
  %.omp.stride14 = alloca i32, align 4
  %.omp.is_last15 = alloca i32, align 4
  %i16 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !134, metadata !DIExpression()), !dbg !159
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !135, metadata !DIExpression()), !dbg !159
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !136, metadata !DIExpression()), !dbg !160
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !137, metadata !DIExpression()), !dbg !161
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !138, metadata !DIExpression()), !dbg !162
  store i32* %a, i32** %a.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !139, metadata !DIExpression()), !dbg !163
  %0 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !164, !tbaa !118
  %1 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !164, !tbaa !118
  %2 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !164, !tbaa !118
  %3 = load i32*, i32** %a.addr, align 8, !dbg !164, !tbaa !118
  %4 = bitcast i32* %i to i8*, !dbg !165
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !165
  call void @llvm.dbg.declare(metadata i32* %i, metadata !140, metadata !DIExpression()), !dbg !166
  store i32 0, i32* %i, align 4, !dbg !166, !tbaa !35
  br label %for.cond, !dbg !165

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !167, !tbaa !35
  %cmp = icmp slt i32 %5, 100, !dbg !168
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !169

for.cond.cleanup:                                 ; preds = %for.cond
  %6 = bitcast i32* %i to i8*, !dbg !170
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !170
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !143, metadata !DIExpression()), !dbg !172
  %8 = bitcast i32* %.omp.lb to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !147, metadata !DIExpression()), !dbg !172
  store i32 0, i32* %.omp.lb, align 4, !dbg !173, !tbaa !35
  %9 = bitcast i32* %.omp.ub to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !148, metadata !DIExpression()), !dbg !172
  store i32 7, i32* %.omp.ub, align 4, !dbg !173, !tbaa !35
  %10 = bitcast i32* %.omp.stride to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !149, metadata !DIExpression()), !dbg !172
  store i32 1, i32* %.omp.stride, align 4, !dbg !173, !tbaa !35
  %11 = bitcast i32* %.omp.is_last to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !150, metadata !DIExpression()), !dbg !172
  store i32 0, i32* %.omp.is_last, align 4, !dbg !173, !tbaa !35
  %12 = bitcast i32* %i1 to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !151, metadata !DIExpression()), !dbg !172
  %13 = load i32*, i32** %.global_tid..addr, align 8, !dbg !171
  %14 = load i32, i32* %13, align 4, !dbg !171, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %14, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !174
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !173, !tbaa !35
  %cmp2 = icmp sgt i32 %15, 7, !dbg !173
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !173

cond.true:                                        ; preds = %for.body
  br label %cond.end, !dbg !173

cond.false:                                       ; preds = %for.body
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !173, !tbaa !35
  br label %cond.end, !dbg !173

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 7, %cond.true ], [ %16, %cond.false ], !dbg !173
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !173, !tbaa !35
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !173, !tbaa !35
  store i32 %17, i32* %.omp.iv, align 4, !dbg !173, !tbaa !35
  br label %omp.inner.for.cond, !dbg !171

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !173, !tbaa !35
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !173, !tbaa !35
  %cmp3 = icmp sle i32 %18, %19, !dbg !175
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !171

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !171

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !173, !tbaa !35
  %mul = mul nsw i32 %20, 1, !dbg !176
  %add = add nsw i32 0, %mul, !dbg !176
  store i32 %add, i32* %i1, align 4, !dbg !176, !tbaa !35
  %21 = load i32, i32* %i1, align 4, !dbg !177, !tbaa !35
  %idxprom = sext i32 %21 to i64, !dbg !179
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %idxprom, !dbg !179
  %22 = load i32, i32* %arrayidx, align 4, !dbg !179, !tbaa !35
  %23 = load i32, i32* %i1, align 4, !dbg !180, !tbaa !35
  %idxprom4 = sext i32 %23 to i64, !dbg !181
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %idxprom4, !dbg !181
  %24 = load i32, i32* %arrayidx5, align 4, !dbg !181, !tbaa !35
  %add6 = add nsw i32 %22, %24, !dbg !182
  %25 = load i32, i32* %i1, align 4, !dbg !183, !tbaa !35
  %idxprom7 = sext i32 %25 to i64, !dbg !184
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %0, i64 0, i64 %idxprom7, !dbg !184
  store i32 %add6, i32* %arrayidx8, align 4, !dbg !185, !tbaa !35
  br label %omp.body.continue, !dbg !186

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !174

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !173, !tbaa !35
  %add9 = add nsw i32 %26, 1, !dbg !175
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !175, !tbaa !35
  br label %omp.inner.for.cond, !dbg !174, !llvm.loop !187

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !174

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !174
  %28 = load i32, i32* %27, align 4, !dbg !174, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %28), !dbg !188
  %29 = bitcast i32* %i1 to i8*, !dbg !174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !174
  %30 = bitcast i32* %.omp.is_last to i8*, !dbg !174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !174
  %31 = bitcast i32* %.omp.stride to i8*, !dbg !174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !174
  %32 = bitcast i32* %.omp.ub to i8*, !dbg !174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !174
  %33 = bitcast i32* %.omp.lb to i8*, !dbg !174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !174
  %34 = bitcast i32* %.omp.iv to i8*, !dbg !174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !174
  %35 = load i32*, i32** %.global_tid..addr, align 8, !dbg !188
  %36 = load i32, i32* %35, align 4, !dbg !188, !tbaa !35
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %36), !dbg !188
  %37 = bitcast i32* %.omp.iv10 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %37) #4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.iv10, metadata !152, metadata !DIExpression()), !dbg !190
  %38 = bitcast i32* %.omp.lb12 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.lb12, metadata !154, metadata !DIExpression()), !dbg !190
  store i32 0, i32* %.omp.lb12, align 4, !dbg !191, !tbaa !35
  %39 = bitcast i32* %.omp.ub13 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.ub13, metadata !155, metadata !DIExpression()), !dbg !190
  store i32 7, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !35
  %40 = bitcast i32* %.omp.stride14 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.stride14, metadata !156, metadata !DIExpression()), !dbg !190
  store i32 1, i32* %.omp.stride14, align 4, !dbg !191, !tbaa !35
  %41 = bitcast i32* %.omp.is_last15 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last15, metadata !157, metadata !DIExpression()), !dbg !190
  store i32 0, i32* %.omp.is_last15, align 4, !dbg !191, !tbaa !35
  %42 = bitcast i32* %i16 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %i16, metadata !158, metadata !DIExpression()), !dbg !190
  %43 = load i32*, i32** %.global_tid..addr, align 8, !dbg !189
  %44 = load i32, i32* %43, align 4, !dbg !189, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* @6, i32 %44, i32 34, i32* %.omp.is_last15, i32* %.omp.lb12, i32* %.omp.ub13, i32* %.omp.stride14, i32 1, i32 1), !dbg !192
  %45 = load i32, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !35
  %cmp17 = icmp sgt i32 %45, 7, !dbg !191
  br i1 %cmp17, label %cond.true18, label %cond.false19, !dbg !191

cond.true18:                                      ; preds = %omp.loop.exit
  br label %cond.end20, !dbg !191

cond.false19:                                     ; preds = %omp.loop.exit
  %46 = load i32, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !35
  br label %cond.end20, !dbg !191

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i32 [ 7, %cond.true18 ], [ %46, %cond.false19 ], !dbg !191
  store i32 %cond21, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !35
  %47 = load i32, i32* %.omp.lb12, align 4, !dbg !191, !tbaa !35
  store i32 %47, i32* %.omp.iv10, align 4, !dbg !191, !tbaa !35
  br label %omp.inner.for.cond22, !dbg !189

omp.inner.for.cond22:                             ; preds = %omp.inner.for.inc33, %cond.end20
  %48 = load i32, i32* %.omp.iv10, align 4, !dbg !191, !tbaa !35
  %49 = load i32, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !35
  %cmp23 = icmp sle i32 %48, %49, !dbg !193
  br i1 %cmp23, label %omp.inner.for.body25, label %omp.inner.for.cond.cleanup24, !dbg !189

omp.inner.for.cond.cleanup24:                     ; preds = %omp.inner.for.cond22
  br label %omp.inner.for.end35, !dbg !189

omp.inner.for.body25:                             ; preds = %omp.inner.for.cond22
  %50 = load i32, i32* %.omp.iv10, align 4, !dbg !191, !tbaa !35
  %mul26 = mul nsw i32 %50, 1, !dbg !194
  %sub = sub nsw i32 7, %mul26, !dbg !194
  store i32 %sub, i32* %i16, align 4, !dbg !194, !tbaa !35
  %51 = load i32, i32* %i16, align 4, !dbg !195, !tbaa !35
  %idxprom27 = sext i32 %51 to i64, !dbg !197
  %arrayidx28 = getelementptr inbounds [8 x i32], [8 x i32]* %0, i64 0, i64 %idxprom27, !dbg !197
  %52 = load i32, i32* %arrayidx28, align 4, !dbg !197, !tbaa !35
  %53 = load i32, i32* %3, align 4, !dbg !198, !tbaa !35
  %mul29 = mul nsw i32 %52, %53, !dbg !199
  %54 = load i32, i32* %i16, align 4, !dbg !200, !tbaa !35
  %idxprom30 = sext i32 %54 to i64, !dbg !201
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %idxprom30, !dbg !201
  store i32 %mul29, i32* %arrayidx31, align 4, !dbg !202, !tbaa !35
  br label %omp.body.continue32, !dbg !203

omp.body.continue32:                              ; preds = %omp.inner.for.body25
  br label %omp.inner.for.inc33, !dbg !192

omp.inner.for.inc33:                              ; preds = %omp.body.continue32
  %55 = load i32, i32* %.omp.iv10, align 4, !dbg !191, !tbaa !35
  %add34 = add nsw i32 %55, 1, !dbg !193
  store i32 %add34, i32* %.omp.iv10, align 4, !dbg !193, !tbaa !35
  br label %omp.inner.for.cond22, !dbg !192, !llvm.loop !204

omp.inner.for.end35:                              ; preds = %omp.inner.for.cond.cleanup24
  br label %omp.loop.exit36, !dbg !192

omp.loop.exit36:                                  ; preds = %omp.inner.for.end35
  %56 = load i32*, i32** %.global_tid..addr, align 8, !dbg !192
  %57 = load i32, i32* %56, align 4, !dbg !192, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* @8, i32 %57), !dbg !205
  %58 = bitcast i32* %i16 to i8*, !dbg !192
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !192
  %59 = bitcast i32* %.omp.is_last15 to i8*, !dbg !192
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !192
  %60 = bitcast i32* %.omp.stride14 to i8*, !dbg !192
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !192
  %61 = bitcast i32* %.omp.ub13 to i8*, !dbg !192
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4, !dbg !192
  %62 = bitcast i32* %.omp.lb12 to i8*, !dbg !192
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #4, !dbg !192
  %63 = bitcast i32* %.omp.iv10 to i8*, !dbg !192
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #4, !dbg !192
  %64 = load i32*, i32** %.global_tid..addr, align 8, !dbg !205
  %65 = load i32, i32* %64, align 4, !dbg !205, !tbaa !35
  call void @__kmpc_barrier(%struct.ident_t* @9, i32 %65), !dbg !205
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %omp.loop.exit36
  %66 = load i32, i32* %i, align 4, !dbg !207, !tbaa !35
  %inc = add nsw i32 %66, 1, !dbg !207
  store i32 %inc, i32* %i, align 4, !dbg !207, !tbaa !35
  br label %for.cond, !dbg !170, !llvm.loop !208

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !210
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* nonnull align 4 dereferenceable(32) %temp, [8 x i32]* nonnull align 4 dereferenceable(32) %b, [8 x i32]* nonnull align 4 dereferenceable(32) %c, i32* nonnull align 4 dereferenceable(4) %a) #3 !dbg !211 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !213, metadata !DIExpression()), !dbg !219
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !214, metadata !DIExpression()), !dbg !219
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !215, metadata !DIExpression()), !dbg !219
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !216, metadata !DIExpression()), !dbg !219
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !217, metadata !DIExpression()), !dbg !219
  store i32* %a, i32** %a.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !220, !tbaa !118
  %1 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !220, !tbaa !118
  %2 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !220, !tbaa !118
  %3 = load i32*, i32** %a.addr, align 8, !dbg !220, !tbaa !118
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !220, !tbaa !118
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !220, !tbaa !118
  %6 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !220, !tbaa !118
  %7 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !220, !tbaa !118
  %8 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !220, !tbaa !118
  %9 = load i32*, i32** %a.addr, align 8, !dbg !220, !tbaa !118
  call void @.omp_outlined._debug__(i32* %4, i32* %5, [8 x i32]* %6, [8 x i32]* %7, [8 x i32]* %8, i32* %9) #4, !dbg !220
  ret void, !dbg !220
}

; Function Attrs: nounwind
declare !callback !221 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0487_main_l35([8 x i32]* nonnull align 4 dereferenceable(32) %temp, [8 x i32]* nonnull align 4 dereferenceable(32) %b, [8 x i32]* nonnull align 4 dereferenceable(32) %c, i32* nonnull align 4 dereferenceable(4) %a) #3 !dbg !223 {
entry:
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !225, metadata !DIExpression()), !dbg !229
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !226, metadata !DIExpression()), !dbg !229
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !227, metadata !DIExpression()), !dbg !229
  store i32* %a, i32** %a.addr, align 8, !tbaa !118
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !228, metadata !DIExpression()), !dbg !229
  %0 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !230, !tbaa !118
  %1 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !230, !tbaa !118
  %2 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !230, !tbaa !118
  %3 = load i32*, i32** %a.addr, align 8, !dbg !230, !tbaa !118
  %4 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !230, !tbaa !118
  %5 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !230, !tbaa !118
  %6 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !230, !tbaa !118
  %7 = load i32*, i32** %a.addr, align 8, !dbg !230, !tbaa !118
  call void @__omp_offloading_10308_be0487_main_l35_debug__([8 x i32]* %4, [8 x i32]* %5, [8 x i32]* %6, i32* %7) #4, !dbg !230
  ret void, !dbg !230
}

declare i32 @printf(i8*, ...) #5

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 22, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB159-nobarrier-orig-gpu-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !12, !14}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 23, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 24, type: !8, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !3, line: 25, type: !8, isLocal: false, isDefinition: true)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{!"clang version 11.1.0"}
!22 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 27, type: !23, scopeLine: 27, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!9}
!25 = !{!26, !28, !29, !31}
!26 = !DILocalVariable(name: "i", scope: !27, file: !3, line: 28, type: !9)
!27 = distinct !DILexicalBlock(scope: !22, file: !3, line: 28, column: 3)
!28 = !DILocalVariable(name: "val", scope: !22, file: !3, line: 51, type: !9)
!29 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 53, type: !9)
!30 = distinct !DILexicalBlock(scope: !22, file: !3, line: 53, column: 3)
!31 = !DILocalVariable(name: "i", scope: !32, file: !3, line: 58, type: !9)
!32 = distinct !DILexicalBlock(scope: !22, file: !3, line: 58, column: 3)
!33 = !DILocation(line: 28, column: 7, scope: !27)
!34 = !DILocation(line: 28, column: 11, scope: !27)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 28, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !27, file: !3, line: 28, column: 3)
!41 = !DILocation(line: 28, column: 17, scope: !40)
!42 = !DILocation(line: 28, column: 3, scope: !27)
!43 = !DILocation(line: 28, column: 3, scope: !40)
!44 = !DILocation(line: 29, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !40, file: !3, line: 28, column: 25)
!46 = !DILocation(line: 29, column: 5, scope: !45)
!47 = !DILocation(line: 29, column: 9, scope: !45)
!48 = !DILocation(line: 30, column: 7, scope: !45)
!49 = !DILocation(line: 30, column: 5, scope: !45)
!50 = !DILocation(line: 30, column: 9, scope: !45)
!51 = !DILocation(line: 31, column: 10, scope: !45)
!52 = !DILocation(line: 31, column: 5, scope: !45)
!53 = !DILocation(line: 31, column: 12, scope: !45)
!54 = !DILocation(line: 32, column: 3, scope: !45)
!55 = !DILocation(line: 28, column: 22, scope: !40)
!56 = distinct !{!56, !42, !57, !58}
!57 = !DILocation(line: 32, column: 3, scope: !27)
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !DILocation(line: 33, column: 4, scope: !22)
!60 = !DILocation(line: 35, column: 3, scope: !61)
!61 = distinct !DILexicalBlock(scope: !22, file: !3, line: 35, column: 3)
!62 = !DILocation(line: 51, column: 3, scope: !22)
!63 = !DILocation(line: 51, column: 7, scope: !22)
!64 = !DILocation(line: 53, column: 7, scope: !30)
!65 = !DILocation(line: 53, column: 11, scope: !30)
!66 = !DILocation(line: 53, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !30, file: !3, line: 53, column: 3)
!68 = !DILocation(line: 53, column: 17, scope: !67)
!69 = !DILocation(line: 53, column: 3, scope: !30)
!70 = !DILocation(line: 53, column: 3, scope: !67)
!71 = !DILocation(line: 54, column: 11, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !3, line: 53, column: 25)
!73 = !DILocation(line: 54, column: 15, scope: !72)
!74 = !DILocation(line: 54, column: 9, scope: !72)
!75 = !DILocation(line: 55, column: 11, scope: !72)
!76 = !DILocation(line: 55, column: 15, scope: !72)
!77 = !DILocation(line: 55, column: 9, scope: !72)
!78 = !DILocation(line: 56, column: 3, scope: !72)
!79 = !DILocation(line: 53, column: 22, scope: !67)
!80 = distinct !{!80, !69, !81, !58}
!81 = !DILocation(line: 56, column: 3, scope: !30)
!82 = !DILocation(line: 58, column: 7, scope: !32)
!83 = !DILocation(line: 58, column: 11, scope: !32)
!84 = !DILocation(line: 58, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !32, file: !3, line: 58, column: 3)
!86 = !DILocation(line: 58, column: 17, scope: !85)
!87 = !DILocation(line: 58, column: 3, scope: !32)
!88 = !DILocation(line: 59, column: 10, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 59, column: 8)
!90 = distinct !DILexicalBlock(scope: !85, file: !3, line: 58, column: 25)
!91 = !DILocation(line: 59, column: 8, scope: !89)
!92 = !DILocation(line: 59, column: 14, scope: !89)
!93 = !DILocation(line: 59, column: 12, scope: !89)
!94 = !DILocation(line: 59, column: 8, scope: !90)
!95 = !DILocation(line: 60, column: 39, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !3, line: 59, column: 18)
!97 = !DILocation(line: 60, column: 46, scope: !96)
!98 = !DILocation(line: 60, column: 44, scope: !96)
!99 = !DILocation(line: 60, column: 7, scope: !96)
!100 = !DILocation(line: 61, column: 7, scope: !96)
!101 = !DILocation(line: 63, column: 3, scope: !90)
!102 = !DILocation(line: 58, column: 22, scope: !85)
!103 = !DILocation(line: 58, column: 3, scope: !85)
!104 = distinct !{!104, !87, !105, !58}
!105 = !DILocation(line: 63, column: 3, scope: !32)
!106 = !DILocation(line: 65, column: 3, scope: !22)
!107 = !DILocation(line: 66, column: 1, scope: !22)
!108 = distinct !DISubprogram(name: "__omp_offloading_10308_be0487_main_l35_debug__", scope: !3, file: !3, line: 36, type: !109, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111, !111, !111, !112}
!111 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 64)
!113 = !{!114, !115, !116, !117}
!114 = !DILocalVariable(name: "temp", arg: 1, scope: !108, file: !3, line: 25, type: !111)
!115 = !DILocalVariable(name: "b", arg: 2, scope: !108, file: !3, line: 23, type: !111)
!116 = !DILocalVariable(name: "c", arg: 3, scope: !108, file: !3, line: 24, type: !111)
!117 = !DILocalVariable(name: "a", arg: 4, scope: !108, file: !3, line: 22, type: !112)
!118 = !{!119, !119, i64 0}
!119 = !{!"any pointer", !37, i64 0}
!120 = !DILocation(line: 25, column: 5, scope: !108)
!121 = !DILocation(line: 23, column: 5, scope: !108)
!122 = !DILocation(line: 24, column: 5, scope: !108)
!123 = !DILocation(line: 22, column: 5, scope: !108)
!124 = !DILocation(line: 36, column: 3, scope: !108)
!125 = !DILocation(line: 36, column: 23, scope: !108)
!126 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 37, type: !127, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !129, !111, !111, !111, !112}
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !143, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158}
!134 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !126, type: !129, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !126, type: !129, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: "temp", arg: 3, scope: !126, file: !3, line: 25, type: !111)
!137 = !DILocalVariable(name: "b", arg: 4, scope: !126, file: !3, line: 23, type: !111)
!138 = !DILocalVariable(name: "c", arg: 5, scope: !126, file: !3, line: 24, type: !111)
!139 = !DILocalVariable(name: "a", arg: 6, scope: !126, file: !3, line: 22, type: !112)
!140 = !DILocalVariable(name: "i", scope: !141, file: !3, line: 38, type: !9)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 38, column: 5)
!142 = distinct !DILexicalBlock(scope: !126, file: !3, line: 37, column: 3)
!143 = !DILocalVariable(name: ".omp.iv", scope: !144, type: !9, flags: DIFlagArtificial)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 39, column: 7)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 38, column: 27)
!146 = distinct !DILexicalBlock(scope: !141, file: !3, line: 38, column: 5)
!147 = !DILocalVariable(name: ".omp.lb", scope: !144, type: !9, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".omp.ub", scope: !144, type: !9, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: ".omp.stride", scope: !144, type: !9, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: ".omp.is_last", scope: !144, type: !9, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "i", scope: !144, type: !9, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: ".omp.iv", scope: !153, type: !9, flags: DIFlagArtificial)
!153 = distinct !DILexicalBlock(scope: !145, file: !3, line: 44, column: 7)
!154 = !DILocalVariable(name: ".omp.lb", scope: !153, type: !9, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: ".omp.ub", scope: !153, type: !9, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: ".omp.stride", scope: !153, type: !9, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: ".omp.is_last", scope: !153, type: !9, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: "i", scope: !153, type: !9, flags: DIFlagArtificial)
!159 = !DILocation(line: 0, scope: !126)
!160 = !DILocation(line: 25, column: 5, scope: !126)
!161 = !DILocation(line: 23, column: 5, scope: !126)
!162 = !DILocation(line: 24, column: 5, scope: !126)
!163 = !DILocation(line: 22, column: 5, scope: !126)
!164 = !DILocation(line: 37, column: 3, scope: !126)
!165 = !DILocation(line: 38, column: 9, scope: !141)
!166 = !DILocation(line: 38, column: 13, scope: !141)
!167 = !DILocation(line: 38, column: 18, scope: !146)
!168 = !DILocation(line: 38, column: 19, scope: !146)
!169 = !DILocation(line: 38, column: 5, scope: !141)
!170 = !DILocation(line: 38, column: 5, scope: !146)
!171 = !DILocation(line: 39, column: 7, scope: !145)
!172 = !DILocation(line: 0, scope: !144)
!173 = !DILocation(line: 40, column: 11, scope: !144)
!174 = !DILocation(line: 39, column: 7, scope: !144)
!175 = !DILocation(line: 40, column: 7, scope: !144)
!176 = !DILocation(line: 40, column: 25, scope: !144)
!177 = !DILocation(line: 41, column: 21, scope: !178)
!178 = distinct !DILexicalBlock(scope: !144, file: !3, line: 40, column: 29)
!179 = !DILocation(line: 41, column: 19, scope: !178)
!180 = !DILocation(line: 41, column: 28, scope: !178)
!181 = !DILocation(line: 41, column: 26, scope: !178)
!182 = !DILocation(line: 41, column: 24, scope: !178)
!183 = !DILocation(line: 41, column: 14, scope: !178)
!184 = !DILocation(line: 41, column: 9, scope: !178)
!185 = !DILocation(line: 41, column: 17, scope: !178)
!186 = !DILocation(line: 42, column: 7, scope: !178)
!187 = distinct !{!187, !174, !188}
!188 = !DILocation(line: 39, column: 22, scope: !144)
!189 = !DILocation(line: 44, column: 7, scope: !145)
!190 = !DILocation(line: 0, scope: !153)
!191 = !DILocation(line: 45, column: 11, scope: !153)
!192 = !DILocation(line: 44, column: 7, scope: !153)
!193 = !DILocation(line: 45, column: 7, scope: !153)
!194 = !DILocation(line: 45, column: 28, scope: !153)
!195 = !DILocation(line: 46, column: 21, scope: !196)
!196 = distinct !DILexicalBlock(scope: !153, file: !3, line: 45, column: 32)
!197 = !DILocation(line: 46, column: 16, scope: !196)
!198 = !DILocation(line: 46, column: 26, scope: !196)
!199 = !DILocation(line: 46, column: 24, scope: !196)
!200 = !DILocation(line: 46, column: 11, scope: !196)
!201 = !DILocation(line: 46, column: 9, scope: !196)
!202 = !DILocation(line: 46, column: 14, scope: !196)
!203 = !DILocation(line: 47, column: 7, scope: !196)
!204 = distinct !{!204, !192, !205}
!205 = !DILocation(line: 44, column: 22, scope: !153)
!206 = !DILocation(line: 48, column: 5, scope: !145)
!207 = !DILocation(line: 38, column: 24, scope: !146)
!208 = distinct !{!208, !169, !209, !58}
!209 = !DILocation(line: 48, column: 5, scope: !141)
!210 = !DILocation(line: 49, column: 3, scope: !126)
!211 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 36, type: !127, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !211, type: !129, flags: DIFlagArtificial)
!214 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !211, type: !129, flags: DIFlagArtificial)
!215 = !DILocalVariable(name: "temp", arg: 3, scope: !211, type: !111, flags: DIFlagArtificial)
!216 = !DILocalVariable(name: "b", arg: 4, scope: !211, type: !111, flags: DIFlagArtificial)
!217 = !DILocalVariable(name: "c", arg: 5, scope: !211, type: !111, flags: DIFlagArtificial)
!218 = !DILocalVariable(name: "a", arg: 6, scope: !211, type: !112, flags: DIFlagArtificial)
!219 = !DILocation(line: 0, scope: !211)
!220 = !DILocation(line: 36, column: 3, scope: !211)
!221 = !{!222}
!222 = !{i64 2, i64 -1, i64 -1, i1 true}
!223 = distinct !DISubprogram(name: "__omp_offloading_10308_be0487_main_l35", scope: !3, file: !3, line: 35, type: !109, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DILocalVariable(name: "temp", arg: 1, scope: !223, type: !111, flags: DIFlagArtificial)
!226 = !DILocalVariable(name: "b", arg: 2, scope: !223, type: !111, flags: DIFlagArtificial)
!227 = !DILocalVariable(name: "c", arg: 3, scope: !223, type: !111, flags: DIFlagArtificial)
!228 = !DILocalVariable(name: "a", arg: 4, scope: !223, type: !112, flags: DIFlagArtificial)
!229 = !DILocation(line: 0, scope: !223)
!230 = !DILocation(line: 35, column: 3, scope: !223)
