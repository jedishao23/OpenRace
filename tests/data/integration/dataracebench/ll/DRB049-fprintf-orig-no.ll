; ModuleID = 'DRB049-fprintf-orig-no.c'
source_filename = "DRB049-fprintf-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"mytempfile.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Error in fopen()\0A\00", align 1
@0 = private unnamed_addr constant [38 x i8] c";DRB049-fprintf-orig-no.c;main;69;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [39 x i8] c";DRB049-fprintf-orig-no.c;main;69;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Error: unable to delete mytempfile.txt\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %pfile = alloca %struct._IO_FILE*, align 8
  %len = alloca i32, align 4
  %A = alloca [1000 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !88
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !92
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !95
  %0 = bitcast i32* %i to i8*, !dbg !96
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !97
  %1 = bitcast i32* %ret to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !22, metadata !DIExpression()), !dbg !99
  %2 = bitcast %struct._IO_FILE** %pfile to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5, !dbg !100
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pfile, metadata !23, metadata !DIExpression()), !dbg !101
  %3 = bitcast i32* %len to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %len, metadata !83, metadata !DIExpression()), !dbg !103
  store i32 1000, i32* %len, align 4, !dbg !103, !tbaa !88
  %4 = bitcast [1000 x i32]* %A to i8*, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* %4) #5, !dbg !104
  call void @llvm.dbg.declare(metadata [1000 x i32]* %A, metadata !84, metadata !DIExpression()), !dbg !105
  store i32 0, i32* %i, align 4, !dbg !106, !tbaa !88
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !109, !tbaa !88
  %6 = load i32, i32* %len, align 4, !dbg !111, !tbaa !88
  %cmp = icmp slt i32 %5, %6, !dbg !112
  br i1 %cmp, label %for.body, label %for.end, !dbg !113

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !114, !tbaa !88
  %8 = load i32, i32* %i, align 4, !dbg !115, !tbaa !88
  %idxprom = sext i32 %8 to i64, !dbg !116
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %A, i64 0, i64 %idxprom, !dbg !116
  store i32 %7, i32* %arrayidx, align 4, !dbg !117, !tbaa !88
  br label %for.inc, !dbg !116

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !118, !tbaa !88
  %inc = add nsw i32 %9, 1, !dbg !118
  store i32 %inc, i32* %i, align 4, !dbg !118, !tbaa !88
  br label %for.cond, !dbg !119, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !123
  store %struct._IO_FILE* %call, %struct._IO_FILE** %pfile, align 8, !dbg !124, !tbaa !93
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pfile, align 8, !dbg !125, !tbaa !93
  %cmp1 = icmp eq %struct._IO_FILE* %10, null, !dbg !127
  br i1 %cmp1, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %for.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !129, !tbaa !93
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)), !dbg !131
  br label %if.end, !dbg !132

if.end:                                           ; preds = %if.then, %for.end
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, %struct._IO_FILE**, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, %struct._IO_FILE** %pfile, [1000 x i32]* %A), !dbg !133
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pfile, align 8, !dbg !134, !tbaa !93
  %call3 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !135
  %call4 = call i32 @remove(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #5, !dbg !136
  store i32 %call4, i32* %ret, align 4, !dbg !137, !tbaa !88
  %13 = load i32, i32* %ret, align 4, !dbg !138, !tbaa !88
  %cmp5 = icmp ne i32 %13, 0, !dbg !140
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !141

if.then6:                                         ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !142, !tbaa !93
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)), !dbg !144
  br label %if.end8, !dbg !145

if.end8:                                          ; preds = %if.then6, %if.end
  %15 = bitcast [1000 x i32]* %A to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* %15) #5, !dbg !146
  %16 = bitcast i32* %len to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #5, !dbg !146
  %17 = bitcast %struct._IO_FILE** %pfile to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #5, !dbg !146
  %18 = bitcast i32* %ret to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #5, !dbg !146
  %19 = bitcast i32* %i to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #5, !dbg !146
  ret i32 0, !dbg !147
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, %struct._IO_FILE** nonnull align 8 dereferenceable(8) %pfile, [1000 x i32]* nonnull align 4 dereferenceable(4000) %A) #4 !dbg !148 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %pfile.addr = alloca %struct._IO_FILE**, align 8
  %A.addr = alloca [1000 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !159, metadata !DIExpression()), !dbg !171
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !160, metadata !DIExpression()), !dbg !171
  store i32* %len, i32** %len.addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !161, metadata !DIExpression()), !dbg !172
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %pfile.addr, metadata !162, metadata !DIExpression()), !dbg !173
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !163, metadata !DIExpression()), !dbg !174
  %0 = load i32*, i32** %len.addr, align 8, !dbg !175, !tbaa !93
  %1 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !dbg !175, !tbaa !93
  %2 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !175, !tbaa !93
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !164, metadata !DIExpression()), !dbg !171
  %4 = bitcast i32* %.capture_expr. to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !165, metadata !DIExpression()), !dbg !171
  %5 = load i32, i32* %0, align 4, !dbg !176, !tbaa !88
  store i32 %5, i32* %.capture_expr., align 4, !dbg !176, !tbaa !88
  %6 = bitcast i32* %.capture_expr.1 to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !165, metadata !DIExpression()), !dbg !171
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !176, !tbaa !88
  %sub = sub nsw i32 %7, 0, !dbg !175
  %div = sdiv i32 %sub, 1, !dbg !175
  %sub2 = sub nsw i32 %div, 1, !dbg !175
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !175, !tbaa !88
  %8 = bitcast i32* %i to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %i, metadata !166, metadata !DIExpression()), !dbg !171
  store i32 0, i32* %i, align 4, !dbg !177, !tbaa !88
  %9 = bitcast i32* %i to i8*, !dbg !175
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !175
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !176, !tbaa !88
  %cmp = icmp slt i32 0, %10, !dbg !175
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !175

omp.precond.then:                                 ; preds = %entry
  %11 = bitcast i32* %.omp.lb to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !167, metadata !DIExpression()), !dbg !171
  store i32 0, i32* %.omp.lb, align 4, !dbg !178, !tbaa !88
  %12 = bitcast i32* %.omp.ub to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !168, metadata !DIExpression()), !dbg !171
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !175, !tbaa !88
  store i32 %13, i32* %.omp.ub, align 4, !dbg !178, !tbaa !88
  %14 = bitcast i32* %.omp.stride to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !169, metadata !DIExpression()), !dbg !171
  store i32 1, i32* %.omp.stride, align 4, !dbg !178, !tbaa !88
  %15 = bitcast i32* %.omp.is_last to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !170, metadata !DIExpression()), !dbg !171
  store i32 0, i32* %.omp.is_last, align 4, !dbg !178, !tbaa !88
  %16 = bitcast i32* %i3 to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !166, metadata !DIExpression()), !dbg !171
  %17 = load i32*, i32** %.global_tid..addr, align 8, !dbg !175
  %18 = load i32, i32* %17, align 4, !dbg !175, !tbaa !88
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !179
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !178, !tbaa !88
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !175, !tbaa !88
  %cmp4 = icmp sgt i32 %19, %20, !dbg !178
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !178

cond.true:                                        ; preds = %omp.precond.then
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !175, !tbaa !88
  br label %cond.end, !dbg !178

cond.false:                                       ; preds = %omp.precond.then
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !178, !tbaa !88
  br label %cond.end, !dbg !178

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !178
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !178, !tbaa !88
  %23 = load i32, i32* %.omp.lb, align 4, !dbg !178, !tbaa !88
  store i32 %23, i32* %.omp.iv, align 4, !dbg !178, !tbaa !88
  br label %omp.inner.for.cond, !dbg !175

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !178, !tbaa !88
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !178, !tbaa !88
  %cmp5 = icmp sle i32 %24, %25, !dbg !175
  br i1 %cmp5, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !175

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !175

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !178, !tbaa !88
  %mul = mul nsw i32 %26, 1, !dbg !177
  %add = add nsw i32 0, %mul, !dbg !177
  store i32 %add, i32* %i3, align 4, !dbg !177, !tbaa !88
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !180, !tbaa !93
  %28 = load i32, i32* %i3, align 4, !dbg !182, !tbaa !88
  %idxprom = sext i32 %28 to i64, !dbg !183
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %2, i64 0, i64 %idxprom, !dbg !183
  %29 = load i32, i32* %arrayidx, align 4, !dbg !183, !tbaa !88
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %29), !dbg !184
  br label %omp.body.continue, !dbg !185

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !179

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !178, !tbaa !88
  %add6 = add nsw i32 %30, 1, !dbg !175
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !175, !tbaa !88
  br label %omp.inner.for.cond, !dbg !179, !llvm.loop !186

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !179

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !179
  %32 = load i32, i32* %31, align 4, !dbg !179, !tbaa !88
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %32), !dbg !187
  %33 = bitcast i32* %i3 to i8*, !dbg !179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !179
  %34 = bitcast i32* %.omp.is_last to i8*, !dbg !179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !179
  %35 = bitcast i32* %.omp.stride to i8*, !dbg !179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !179
  %36 = bitcast i32* %.omp.ub to i8*, !dbg !179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !179
  %37 = bitcast i32* %.omp.lb to i8*, !dbg !179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !179
  br label %omp.precond.end, !dbg !179

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %38 = bitcast i32* %.capture_expr.1 to i8*, !dbg !179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !179
  %39 = bitcast i32* %.capture_expr. to i8*, !dbg !179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !179
  %40 = bitcast i32* %.omp.iv to i8*, !dbg !179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !179
  ret void, !dbg !188
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, %struct._IO_FILE** nonnull align 8 dereferenceable(8) %pfile, [1000 x i32]* nonnull align 4 dereferenceable(4000) %A) #4 !dbg !189 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %pfile.addr = alloca %struct._IO_FILE**, align 8
  %A.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !191, metadata !DIExpression()), !dbg !196
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !192, metadata !DIExpression()), !dbg !196
  store i32* %len, i32** %len.addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !193, metadata !DIExpression()), !dbg !196
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %pfile.addr, metadata !194, metadata !DIExpression()), !dbg !196
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !93
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = load i32*, i32** %len.addr, align 8, !dbg !197, !tbaa !93
  %1 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !dbg !197, !tbaa !93
  %2 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !197, !tbaa !93
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !197, !tbaa !93
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !197, !tbaa !93
  %5 = load i32*, i32** %len.addr, align 8, !dbg !197, !tbaa !93
  %6 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !dbg !197, !tbaa !93
  %7 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !197, !tbaa !93
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, %struct._IO_FILE** %6, [1000 x i32]* %7) #5, !dbg !197
  ret void, !dbg !197
}

; Function Attrs: nounwind
declare !callback !198 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare !dbg !200 i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare !dbg !204 i32 @remove(i8*) #6

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB049-fprintf-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"clang version 11.1.0"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !12, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21, !22, !23, !83, !84}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !11, file: !1, line: 51, type: !14)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !11, file: !1, line: 51, type: !15)
!21 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 53, type: !14)
!22 = !DILocalVariable(name: "ret", scope: !11, file: !1, line: 54, type: !14)
!23 = !DILocalVariable(name: "pfile", scope: !11, file: !1, line: 55, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 7, baseType: !27)
!26 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !29)
!28 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !45, !47, !48, !49, !53, !55, !57, !61, !64, !66, !69, !72, !73, !74, !78, !79}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !28, line: 51, baseType: !14, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !27, file: !28, line: 54, baseType: !16, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !27, file: !28, line: 55, baseType: !16, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !27, file: !28, line: 56, baseType: !16, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !27, file: !28, line: 57, baseType: !16, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !27, file: !28, line: 58, baseType: !16, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !27, file: !28, line: 59, baseType: !16, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !27, file: !28, line: 60, baseType: !16, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !27, file: !28, line: 61, baseType: !16, size: 64, offset: 512)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !27, file: !28, line: 64, baseType: !16, size: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !27, file: !28, line: 65, baseType: !16, size: 64, offset: 640)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !27, file: !28, line: 66, baseType: !16, size: 64, offset: 704)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !27, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !28, line: 36, flags: DIFlagFwdDecl)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !27, file: !28, line: 70, baseType: !46, size: 64, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !27, file: !28, line: 72, baseType: !14, size: 32, offset: 896)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !28, line: 73, baseType: !14, size: 32, offset: 928)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !27, file: !28, line: 74, baseType: !50, size: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !51, line: 152, baseType: !52)
!51 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !27, file: !28, line: 77, baseType: !54, size: 16, offset: 1024)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !27, file: !28, line: 78, baseType: !56, size: 8, offset: 1040)
!56 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !27, file: !28, line: 79, baseType: !58, size: 8, offset: 1048)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !28, line: 81, baseType: !62, size: 64, offset: 1088)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !28, line: 43, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !28, line: 89, baseType: !65, size: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !51, line: 153, baseType: !52)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !27, file: !28, line: 91, baseType: !67, size: 64, offset: 1216)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !28, line: 37, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !27, file: !28, line: 92, baseType: !70, size: 64, offset: 1280)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !28, line: 38, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !27, file: !28, line: 93, baseType: !46, size: 64, offset: 1344)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !27, file: !28, line: 94, baseType: !4, size: 64, offset: 1408)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !27, file: !28, line: 95, baseType: !75, size: 64, offset: 1472)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/clang/11.1.0/include/stddef.h", directory: "")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !27, file: !28, line: 96, baseType: !14, size: 32, offset: 1536)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !27, file: !28, line: 98, baseType: !80, size: 160, offset: 1568)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 20)
!83 = !DILocalVariable(name: "len", scope: !11, file: !1, line: 56, type: !14)
!84 = !DILocalVariable(name: "A", scope: !11, file: !1, line: 58, type: !85)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32000, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1000)
!88 = !{!89, !89, i64 0}
!89 = !{!"int", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !DILocation(line: 51, column: 14, scope: !11)
!93 = !{!94, !94, i64 0}
!94 = !{!"any pointer", !90, i64 0}
!95 = !DILocation(line: 51, column: 26, scope: !11)
!96 = !DILocation(line: 53, column: 3, scope: !11)
!97 = !DILocation(line: 53, column: 7, scope: !11)
!98 = !DILocation(line: 54, column: 3, scope: !11)
!99 = !DILocation(line: 54, column: 7, scope: !11)
!100 = !DILocation(line: 55, column: 3, scope: !11)
!101 = !DILocation(line: 55, column: 9, scope: !11)
!102 = !DILocation(line: 56, column: 3, scope: !11)
!103 = !DILocation(line: 56, column: 7, scope: !11)
!104 = !DILocation(line: 58, column: 3, scope: !11)
!105 = !DILocation(line: 58, column: 7, scope: !11)
!106 = !DILocation(line: 60, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !11, file: !1, line: 60, column: 3)
!108 = !DILocation(line: 60, column: 8, scope: !107)
!109 = !DILocation(line: 60, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 60, column: 3)
!111 = !DILocation(line: 60, column: 15, scope: !110)
!112 = !DILocation(line: 60, column: 14, scope: !110)
!113 = !DILocation(line: 60, column: 3, scope: !107)
!114 = !DILocation(line: 61, column: 10, scope: !110)
!115 = !DILocation(line: 61, column: 7, scope: !110)
!116 = !DILocation(line: 61, column: 5, scope: !110)
!117 = !DILocation(line: 61, column: 9, scope: !110)
!118 = !DILocation(line: 60, column: 21, scope: !110)
!119 = !DILocation(line: 60, column: 3, scope: !110)
!120 = distinct !{!120, !113, !121, !122}
!121 = !DILocation(line: 61, column: 10, scope: !107)
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !DILocation(line: 63, column: 11, scope: !11)
!124 = !DILocation(line: 63, column: 9, scope: !11)
!125 = !DILocation(line: 64, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !11, file: !1, line: 64, column: 7)
!127 = !DILocation(line: 64, column: 13, scope: !126)
!128 = !DILocation(line: 64, column: 7, scope: !11)
!129 = !DILocation(line: 66, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 65, column: 3)
!131 = !DILocation(line: 66, column: 5, scope: !130)
!132 = !DILocation(line: 67, column: 3, scope: !130)
!133 = !DILocation(line: 69, column: 1, scope: !11)
!134 = !DILocation(line: 75, column: 10, scope: !11)
!135 = !DILocation(line: 75, column: 3, scope: !11)
!136 = !DILocation(line: 76, column: 9, scope: !11)
!137 = !DILocation(line: 76, column: 7, scope: !11)
!138 = !DILocation(line: 77, column: 7, scope: !139)
!139 = distinct !DILexicalBlock(scope: !11, file: !1, line: 77, column: 7)
!140 = !DILocation(line: 77, column: 11, scope: !139)
!141 = !DILocation(line: 77, column: 7, scope: !11)
!142 = !DILocation(line: 79, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 78, column: 3)
!144 = !DILocation(line: 79, column: 5, scope: !143)
!145 = !DILocation(line: 80, column: 3, scope: !143)
!146 = !DILocation(line: 82, column: 1, scope: !11)
!147 = !DILocation(line: 81, column: 3, scope: !11)
!148 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 70, type: !149, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !151, !151, !155, !156, !157}
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!155 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !85, size: 64)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !165, !166, !167, !168, !169, !170, !166}
!159 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !148, type: !151, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !148, type: !151, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: "len", arg: 3, scope: !148, file: !1, line: 56, type: !155)
!162 = !DILocalVariable(name: "pfile", arg: 4, scope: !148, file: !1, line: 55, type: !156)
!163 = !DILocalVariable(name: "A", arg: 5, scope: !148, file: !1, line: 58, type: !157)
!164 = !DILocalVariable(name: ".omp.iv", scope: !148, type: !14, flags: DIFlagArtificial)
!165 = !DILocalVariable(name: ".capture_expr.", scope: !148, type: !14, flags: DIFlagArtificial)
!166 = !DILocalVariable(name: "i", scope: !148, type: !14, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: ".omp.lb", scope: !148, type: !14, flags: DIFlagArtificial)
!168 = !DILocalVariable(name: ".omp.ub", scope: !148, type: !14, flags: DIFlagArtificial)
!169 = !DILocalVariable(name: ".omp.stride", scope: !148, type: !14, flags: DIFlagArtificial)
!170 = !DILocalVariable(name: ".omp.is_last", scope: !148, type: !14, flags: DIFlagArtificial)
!171 = !DILocation(line: 0, scope: !148)
!172 = !DILocation(line: 56, column: 7, scope: !148)
!173 = !DILocation(line: 55, column: 9, scope: !148)
!174 = !DILocation(line: 58, column: 7, scope: !148)
!175 = !DILocation(line: 70, column: 3, scope: !148)
!176 = !DILocation(line: 70, column: 15, scope: !148)
!177 = !DILocation(line: 70, column: 20, scope: !148)
!178 = !DILocation(line: 70, column: 8, scope: !148)
!179 = !DILocation(line: 69, column: 1, scope: !148)
!180 = !DILocation(line: 72, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !148, file: !1, line: 71, column: 3)
!182 = !DILocation(line: 72, column: 30, scope: !181)
!183 = !DILocation(line: 72, column: 28, scope: !181)
!184 = !DILocation(line: 72, column: 5, scope: !181)
!185 = !DILocation(line: 73, column: 3, scope: !181)
!186 = distinct !{!186, !179, !187}
!187 = !DILocation(line: 69, column: 25, scope: !148)
!188 = !DILocation(line: 73, column: 3, scope: !148)
!189 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 69, type: !149, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !189, type: !151, flags: DIFlagArtificial)
!192 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !189, type: !151, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: "len", arg: 3, scope: !189, type: !155, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "pfile", arg: 4, scope: !189, type: !156, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: "A", arg: 5, scope: !189, type: !157, flags: DIFlagArtificial)
!196 = !DILocation(line: 0, scope: !189)
!197 = !DILocation(line: 69, column: 1, scope: !189)
!198 = !{!199}
!199 = !{i64 2, i64 -1, i64 -1, i1 true}
!200 = !DISubprogram(name: "fclose", scope: !201, file: !201, line: 213, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!201 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!202 = !DISubroutineType(types: !203)
!203 = !{!14, !46}
!204 = !DISubprogram(name: "remove", scope: !201, file: !201, line: 146, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!205 = !DISubroutineType(types: !206)
!206 = !{!14, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
