; ModuleID = 'DRB019-plusplus-var-yes.c'
source_filename = "DRB019-plusplus-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [39 x i8] c";DRB019-plusplus-var-yes.c;main;70;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [40 x i8] c";DRB019-plusplus-var-yes.c;main;70;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"output[0]=%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %inLen = alloca i32, align 4
  %outLen = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !39
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !42
  %0 = bitcast i32* %i to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !44
  %1 = bitcast i32* %inLen to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %inLen, metadata !22, metadata !DIExpression()), !dbg !46
  store i32 1000, i32* %inLen, align 4, !dbg !46, !tbaa !35
  %2 = bitcast i32* %outLen to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %outLen, metadata !23, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %outLen, align 4, !dbg !48, !tbaa !35
  %3 = load i32, i32* %argc.addr, align 4, !dbg !49, !tbaa !35
  %cmp = icmp sgt i32 %3, 1, !dbg !51
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !53, !tbaa !40
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !53
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !53, !tbaa !40
  %call = call i32 @atoi(i8* %5) #8, !dbg !54
  store i32 %call, i32* %inLen, align 4, !dbg !55, !tbaa !35
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %inLen, align 4, !dbg !57, !tbaa !35
  %7 = zext i32 %6 to i64, !dbg !58
  %8 = call i8* @llvm.stacksave(), !dbg !58
  store i8* %8, i8** %saved_stack, align 8, !dbg !58
  %vla = alloca i32, i64 %7, align 16, !dbg !58
  store i64 %7, i64* %__vla_expr0, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !24, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !26, metadata !DIExpression()), !dbg !60
  %9 = load i32, i32* %inLen, align 4, !dbg !61, !tbaa !35
  %10 = zext i32 %9 to i64, !dbg !62
  %vla1 = alloca i32, i64 %10, align 16, !dbg !62
  store i64 %10, i64* %__vla_expr1, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !30, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !31, metadata !DIExpression()), !dbg !63
  store i32 0, i32* %i, align 4, !dbg !64, !tbaa !35
  br label %for.cond, !dbg !66

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !67, !tbaa !35
  %12 = load i32, i32* %inLen, align 4, !dbg !69, !tbaa !35
  %cmp2 = icmp slt i32 %11, %12, !dbg !70
  br i1 %cmp2, label %for.body, label %for.end, !dbg !71

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !72, !tbaa !35
  %14 = load i32, i32* %i, align 4, !dbg !73, !tbaa !35
  %idxprom = sext i32 %14 to i64, !dbg !74
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !74
  store i32 %13, i32* %arrayidx3, align 4, !dbg !75, !tbaa !35
  br label %for.inc, !dbg !74

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !76, !tbaa !35
  %inc = add nsw i32 %15, 1, !dbg !76
  store i32 %inc, i32* %i, align 4, !dbg !76, !tbaa !35
  br label %for.cond, !dbg !77, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %inLen, i64 %10, i32* %vla1, i32* %outLen, i64 %7, i32* %vla), !dbg !81
  %arrayidx4 = getelementptr inbounds i32, i32* %vla1, i64 0, !dbg !82
  %16 = load i32, i32* %arrayidx4, align 16, !dbg !82, !tbaa !35
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16), !dbg !83
  store i32 0, i32* %retval, align 4, !dbg !84
  %17 = load i8*, i8** %saved_stack, align 8, !dbg !85
  call void @llvm.stackrestore(i8* %17), !dbg !85
  %18 = bitcast i32* %outLen to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !85
  %19 = bitcast i32* %inLen to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !85
  %20 = bitcast i32* %i to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !85
  %21 = load i32, i32* %retval, align 4, !dbg !85
  ret i32 %21, !dbg !85
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #3 !dbg !86 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !95, !tbaa !40
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !96
  %conv = trunc i64 %call to i32, !dbg !97
  ret i32 %conv, !dbg !98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %inLen, i64 %vla, i32* nonnull align 4 dereferenceable(4) %output, i32* nonnull align 4 dereferenceable(4) %outLen, i64 %vla1, i32* nonnull align 4 dereferenceable(4) %input) #5 !dbg !99 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %output.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %input.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !108, metadata !DIExpression()), !dbg !123
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !109, metadata !DIExpression()), !dbg !123
  store i32* %inLen, i32** %inLen.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !110, metadata !DIExpression()), !dbg !124
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !111, metadata !DIExpression()), !dbg !123
  store i32* %output, i32** %output.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %output.addr, metadata !112, metadata !DIExpression()), !dbg !127
  store i32* %outLen, i32** %outLen.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !113, metadata !DIExpression()), !dbg !128
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !114, metadata !DIExpression()), !dbg !123
  store i32* %input, i32** %input.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %input.addr, metadata !115, metadata !DIExpression()), !dbg !129
  %0 = load i32*, i32** %inLen.addr, align 8, !dbg !130, !tbaa !40
  %1 = load i64, i64* %vla.addr, align 8, !dbg !130, !tbaa !125
  %2 = load i32*, i32** %output.addr, align 8, !dbg !130, !tbaa !40
  %3 = load i32*, i32** %outLen.addr, align 8, !dbg !130, !tbaa !40
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !130, !tbaa !125
  %5 = load i32*, i32** %input.addr, align 8, !dbg !130, !tbaa !40
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !116, metadata !DIExpression()), !dbg !123
  %7 = bitcast i32* %.capture_expr. to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !117, metadata !DIExpression()), !dbg !123
  %8 = load i32, i32* %0, align 4, !dbg !131, !tbaa !35
  store i32 %8, i32* %.capture_expr., align 4, !dbg !131, !tbaa !35
  %9 = bitcast i32* %.capture_expr.3 to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !117, metadata !DIExpression()), !dbg !123
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !131, !tbaa !35
  %sub = sub nsw i32 %10, 0, !dbg !130
  %div = sdiv i32 %sub, 1, !dbg !130
  %sub4 = sub nsw i32 %div, 1, !dbg !130
  store i32 %sub4, i32* %.capture_expr.3, align 4, !dbg !130, !tbaa !35
  %11 = bitcast i32* %i to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %i, metadata !118, metadata !DIExpression()), !dbg !123
  store i32 0, i32* %i, align 4, !dbg !132, !tbaa !35
  %12 = bitcast i32* %i to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !130
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !131, !tbaa !35
  %cmp = icmp slt i32 0, %13, !dbg !130
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !130

omp.precond.then:                                 ; preds = %entry
  %14 = bitcast i32* %.omp.lb to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !119, metadata !DIExpression()), !dbg !123
  store i32 0, i32* %.omp.lb, align 4, !dbg !133, !tbaa !35
  %15 = bitcast i32* %.omp.ub to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !120, metadata !DIExpression()), !dbg !123
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !130, !tbaa !35
  store i32 %16, i32* %.omp.ub, align 4, !dbg !133, !tbaa !35
  %17 = bitcast i32* %.omp.stride to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !121, metadata !DIExpression()), !dbg !123
  store i32 1, i32* %.omp.stride, align 4, !dbg !133, !tbaa !35
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !122, metadata !DIExpression()), !dbg !123
  store i32 0, i32* %.omp.is_last, align 4, !dbg !133, !tbaa !35
  %19 = bitcast i32* %i5 to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !118, metadata !DIExpression()), !dbg !123
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !130
  %21 = load i32, i32* %20, align 4, !dbg !130, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !134
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !133, !tbaa !35
  %23 = load i32, i32* %.capture_expr.3, align 4, !dbg !130, !tbaa !35
  %cmp6 = icmp sgt i32 %22, %23, !dbg !133
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !133

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.3, align 4, !dbg !130, !tbaa !35
  br label %cond.end, !dbg !133

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !133, !tbaa !35
  br label %cond.end, !dbg !133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !133
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !133, !tbaa !35
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !133, !tbaa !35
  store i32 %26, i32* %.omp.iv, align 4, !dbg !133, !tbaa !35
  br label %omp.inner.for.cond, !dbg !130

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !133, !tbaa !35
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !133, !tbaa !35
  %cmp7 = icmp sle i32 %27, %28, !dbg !130
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !130

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !130

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !133, !tbaa !35
  %mul = mul nsw i32 %29, 1, !dbg !132
  %add = add nsw i32 0, %mul, !dbg !132
  store i32 %add, i32* %i5, align 4, !dbg !132, !tbaa !35
  %30 = load i32, i32* %i5, align 4, !dbg !135, !tbaa !35
  %idxprom = sext i32 %30 to i64, !dbg !137
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !137
  %31 = load i32, i32* %arrayidx, align 4, !dbg !137, !tbaa !35
  %32 = load i32, i32* %3, align 4, !dbg !138, !tbaa !35
  %inc = add nsw i32 %32, 1, !dbg !138
  store i32 %inc, i32* %3, align 4, !dbg !138, !tbaa !35
  %idxprom8 = sext i32 %32 to i64, !dbg !139
  %arrayidx9 = getelementptr inbounds i32, i32* %2, i64 %idxprom8, !dbg !139
  store i32 %31, i32* %arrayidx9, align 4, !dbg !140, !tbaa !35
  br label %omp.body.continue, !dbg !141

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !134

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !133, !tbaa !35
  %add10 = add nsw i32 %33, 1, !dbg !130
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  br label %omp.inner.for.cond, !dbg !134, !llvm.loop !142

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !134

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !134
  %35 = load i32, i32* %34, align 4, !dbg !134, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %35), !dbg !143
  %36 = bitcast i32* %i5 to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !134
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !134
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !134
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !134
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !134
  br label %omp.precond.end, !dbg !134

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.3 to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !134
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !134
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !134
  ret void, !dbg !144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %inLen, i64 %vla, i32* nonnull align 4 dereferenceable(4) %output, i32* nonnull align 4 dereferenceable(4) %outLen, i64 %vla1, i32* nonnull align 4 dereferenceable(4) %input) #5 !dbg !145 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %output.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %input.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !147, metadata !DIExpression()), !dbg !155
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !148, metadata !DIExpression()), !dbg !155
  store i32* %inLen, i32** %inLen.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !149, metadata !DIExpression()), !dbg !155
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !150, metadata !DIExpression()), !dbg !155
  store i32* %output, i32** %output.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %output.addr, metadata !151, metadata !DIExpression()), !dbg !155
  store i32* %outLen, i32** %outLen.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !152, metadata !DIExpression()), !dbg !155
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !125
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !153, metadata !DIExpression()), !dbg !155
  store i32* %input, i32** %input.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %input.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load i32*, i32** %inLen.addr, align 8, !dbg !156, !tbaa !40
  %1 = load i64, i64* %vla.addr, align 8, !dbg !156, !tbaa !125
  %2 = load i32*, i32** %output.addr, align 8, !dbg !156, !tbaa !40
  %3 = load i32*, i32** %outLen.addr, align 8, !dbg !156, !tbaa !40
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !156, !tbaa !125
  %5 = load i32*, i32** %input.addr, align 8, !dbg !156, !tbaa !40
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !156, !tbaa !40
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !156, !tbaa !40
  %8 = load i32*, i32** %inLen.addr, align 8, !dbg !156, !tbaa !40
  %9 = load i32*, i32** %output.addr, align 8, !dbg !156, !tbaa !40
  %10 = load i32*, i32** %outLen.addr, align 8, !dbg !156, !tbaa !40
  %11 = load i32*, i32** %input.addr, align 8, !dbg !156, !tbaa !40
  call void @.omp_outlined._debug__(i32* %6, i32* %7, i32* %8, i64 %1, i32* %9, i32* %10, i64 %4, i32* %11) #4, !dbg !156
  ret void, !dbg !156
}

; Function Attrs: nounwind
declare !callback !157 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #7

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB019-plusplus-var-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{!"clang version 11.1.0"}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !16, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !24, !26, !30, !31}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 56, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 56, type: !5)
!21 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 58, type: !4)
!22 = !DILocalVariable(name: "inLen", scope: !15, file: !1, line: 59, type: !4)
!23 = !DILocalVariable(name: "outLen", scope: !15, file: !1, line: 60, type: !4)
!24 = !DILocalVariable(name: "__vla_expr0", scope: !15, type: !25, flags: DIFlagArtificial)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "input", scope: !15, file: !1, line: 65, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: !24)
!30 = !DILocalVariable(name: "__vla_expr1", scope: !15, type: !25, flags: DIFlagArtificial)
!31 = !DILocalVariable(name: "output", scope: !15, file: !1, line: 66, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: !30)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 56, column: 14, scope: !15)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !DILocation(line: 56, column: 26, scope: !15)
!43 = !DILocation(line: 58, column: 3, scope: !15)
!44 = !DILocation(line: 58, column: 7, scope: !15)
!45 = !DILocation(line: 59, column: 3, scope: !15)
!46 = !DILocation(line: 59, column: 7, scope: !15)
!47 = !DILocation(line: 60, column: 3, scope: !15)
!48 = !DILocation(line: 60, column: 7, scope: !15)
!49 = !DILocation(line: 62, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !15, file: !1, line: 62, column: 7)
!51 = !DILocation(line: 62, column: 11, scope: !50)
!52 = !DILocation(line: 62, column: 7, scope: !15)
!53 = !DILocation(line: 63, column: 17, scope: !50)
!54 = !DILocation(line: 63, column: 12, scope: !50)
!55 = !DILocation(line: 63, column: 10, scope: !50)
!56 = !DILocation(line: 63, column: 5, scope: !50)
!57 = !DILocation(line: 65, column: 13, scope: !15)
!58 = !DILocation(line: 65, column: 3, scope: !15)
!59 = !DILocation(line: 0, scope: !15)
!60 = !DILocation(line: 65, column: 7, scope: !15)
!61 = !DILocation(line: 66, column: 14, scope: !15)
!62 = !DILocation(line: 66, column: 3, scope: !15)
!63 = !DILocation(line: 66, column: 7, scope: !15)
!64 = !DILocation(line: 67, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !15, file: !1, line: 67, column: 3)
!66 = !DILocation(line: 67, column: 8, scope: !65)
!67 = !DILocation(line: 67, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 67, column: 3)
!69 = !DILocation(line: 67, column: 15, scope: !68)
!70 = !DILocation(line: 67, column: 14, scope: !68)
!71 = !DILocation(line: 67, column: 3, scope: !65)
!72 = !DILocation(line: 68, column: 14, scope: !68)
!73 = !DILocation(line: 68, column: 11, scope: !68)
!74 = !DILocation(line: 68, column: 5, scope: !68)
!75 = !DILocation(line: 68, column: 13, scope: !68)
!76 = !DILocation(line: 67, column: 22, scope: !68)
!77 = !DILocation(line: 67, column: 3, scope: !68)
!78 = distinct !{!78, !71, !79, !80}
!79 = !DILocation(line: 68, column: 14, scope: !65)
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !DILocation(line: 70, column: 1, scope: !15)
!82 = !DILocation(line: 75, column: 28, scope: !15)
!83 = !DILocation(line: 75, column: 3, scope: !15)
!84 = !DILocation(line: 76, column: 3, scope: !15)
!85 = !DILocation(line: 77, column: 1, scope: !15)
!86 = distinct !DISubprogram(name: "atoi", scope: !87, file: !87, line: 361, type: !88, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!87 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!88 = !DISubroutineType(types: !89)
!89 = !{!4, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!92 = !{!93}
!93 = !DILocalVariable(name: "__nptr", arg: 1, scope: !86, file: !87, line: 361, type: !90)
!94 = !DILocation(line: 361, column: 1, scope: !86)
!95 = !DILocation(line: 363, column: 24, scope: !86)
!96 = !DILocation(line: 363, column: 16, scope: !86)
!97 = !DILocation(line: 363, column: 10, scope: !86)
!98 = !DILocation(line: 363, column: 3, scope: !86)
!99 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 71, type: !100, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !107)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102, !102, !106, !25, !106, !106, !25, !106}
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !117, !118, !119, !120, !121, !122, !118}
!108 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !99, type: !102, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !99, type: !102, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "inLen", arg: 3, scope: !99, file: !1, line: 59, type: !106)
!111 = !DILocalVariable(name: "vla", arg: 4, scope: !99, type: !25, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "output", arg: 5, scope: !99, file: !1, line: 66, type: !106)
!113 = !DILocalVariable(name: "outLen", arg: 6, scope: !99, file: !1, line: 60, type: !106)
!114 = !DILocalVariable(name: "vla", arg: 7, scope: !99, type: !25, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "input", arg: 8, scope: !99, file: !1, line: 65, type: !106)
!116 = !DILocalVariable(name: ".omp.iv", scope: !99, type: !4, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".capture_expr.", scope: !99, type: !4, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "i", scope: !99, type: !4, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.lb", scope: !99, type: !4, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.ub", scope: !99, type: !4, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.stride", scope: !99, type: !4, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.is_last", scope: !99, type: !4, flags: DIFlagArtificial)
!123 = !DILocation(line: 0, scope: !99)
!124 = !DILocation(line: 59, column: 7, scope: !99)
!125 = !{!126, !126, i64 0}
!126 = !{!"long", !37, i64 0}
!127 = !DILocation(line: 66, column: 7, scope: !99)
!128 = !DILocation(line: 60, column: 7, scope: !99)
!129 = !DILocation(line: 65, column: 7, scope: !99)
!130 = !DILocation(line: 71, column: 3, scope: !99)
!131 = !DILocation(line: 71, column: 15, scope: !99)
!132 = !DILocation(line: 71, column: 22, scope: !99)
!133 = !DILocation(line: 71, column: 8, scope: !99)
!134 = !DILocation(line: 70, column: 1, scope: !99)
!135 = !DILocation(line: 72, column: 30, scope: !136)
!136 = distinct !DILexicalBlock(scope: !99, file: !1, line: 71, column: 27)
!137 = !DILocation(line: 72, column: 24, scope: !136)
!138 = !DILocation(line: 72, column: 18, scope: !136)
!139 = !DILocation(line: 72, column: 5, scope: !136)
!140 = !DILocation(line: 72, column: 22, scope: !136)
!141 = !DILocation(line: 73, column: 3, scope: !136)
!142 = distinct !{!142, !134, !143}
!143 = !DILocation(line: 70, column: 25, scope: !99)
!144 = !DILocation(line: 73, column: 3, scope: !99)
!145 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 70, type: !100, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154}
!147 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !145, type: !102, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !145, type: !102, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "inLen", arg: 3, scope: !145, type: !106, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "vla", arg: 4, scope: !145, type: !25, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "output", arg: 5, scope: !145, type: !106, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "outLen", arg: 6, scope: !145, type: !106, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: "vla", arg: 7, scope: !145, type: !25, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: "input", arg: 8, scope: !145, type: !106, flags: DIFlagArtificial)
!155 = !DILocation(line: 0, scope: !145)
!156 = !DILocation(line: 70, column: 1, scope: !145)
!157 = !{!158}
!158 = !{i64 2, i64 -1, i64 -1, i1 true}
