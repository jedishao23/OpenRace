; ModuleID = 'DRB097-target-teams-distribute-orig-no.c'
source_filename = "DRB097-target-teams-distribute-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [54 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;67;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [54 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;69;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [55 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;69;43;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @4, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @4, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant [55 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;67;23;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @8, i32 0, i32 0) }, align 8
@10 = private unnamed_addr constant [55 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;66;69;;\00", align 1
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @10, i32 0, i32 0) }, align 8
@12 = private unnamed_addr constant [54 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;66;1;;\00", align 1
@13 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @12, i32 0, i32 0) }, align 8
@14 = private unnamed_addr constant [54 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;74;1;;\00", align 1
@15 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @14, i32 0, i32 0) }, align 8
@16 = private unnamed_addr constant [55 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;74;44;;\00", align 1
@17 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @16, i32 0, i32 0) }, align 8
@18 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @16, i32 0, i32 0) }, align 8
@19 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @14, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"sum=%f sum2=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %len = alloca i32, align 4
  %sum = alloca double, align 8
  %sum2 = alloca double, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %len.casted = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !37
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !19, metadata !DIExpression()), !dbg !41
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !20, metadata !DIExpression()), !dbg !44
  %0 = bitcast i32* %i to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !46
  %1 = bitcast i32* %i2 to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !22, metadata !DIExpression()), !dbg !47
  %2 = bitcast i32* %len to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %len, metadata !23, metadata !DIExpression()), !dbg !49
  store i32 2560, i32* %len, align 4, !dbg !49, !tbaa !37
  %3 = bitcast double* %sum to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3, !dbg !50
  call void @llvm.dbg.declare(metadata double* %sum, metadata !24, metadata !DIExpression()), !dbg !51
  store double 0.000000e+00, double* %sum, align 8, !dbg !51, !tbaa !52
  %4 = bitcast double* %sum2 to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3, !dbg !50
  call void @llvm.dbg.declare(metadata double* %sum2, metadata !25, metadata !DIExpression()), !dbg !54
  store double 0.000000e+00, double* %sum2, align 8, !dbg !54, !tbaa !52
  %5 = load i32, i32* %len, align 4, !dbg !55, !tbaa !37
  %6 = zext i32 %5 to i64, !dbg !56
  %7 = call i8* @llvm.stacksave(), !dbg !56
  store i8* %7, i8** %saved_stack, align 8, !dbg !56
  %vla = alloca double, i64 %6, align 16, !dbg !56
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !26, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata double* %vla, metadata !28, metadata !DIExpression()), !dbg !58
  %8 = load i32, i32* %len, align 4, !dbg !59, !tbaa !37
  %9 = zext i32 %8 to i64, !dbg !56
  %vla1 = alloca double, i64 %9, align 16, !dbg !56
  store i64 %9, i64* %__vla_expr1, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !32, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata double* %vla1, metadata !33, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %i, align 4, !dbg !61, !tbaa !37
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !dbg !64, !tbaa !37
  %11 = load i32, i32* %len, align 4, !dbg !66, !tbaa !37
  %cmp = icmp slt i32 %10, %11, !dbg !67
  br i1 %cmp, label %for.body, label %for.end, !dbg !68

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !69, !tbaa !37
  %conv = sitofp i32 %12 to double, !dbg !71
  %div = fdiv double %conv, 2.000000e+00, !dbg !72
  %13 = load i32, i32* %i, align 4, !dbg !73, !tbaa !37
  %idxprom = sext i32 %13 to i64, !dbg !74
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !74
  store double %div, double* %arrayidx, align 8, !dbg !75, !tbaa !52
  %14 = load i32, i32* %i, align 4, !dbg !76, !tbaa !37
  %conv2 = sitofp i32 %14 to double, !dbg !77
  %div3 = fdiv double %conv2, 3.000000e+00, !dbg !78
  %15 = load i32, i32* %i, align 4, !dbg !79, !tbaa !37
  %idxprom4 = sext i32 %15 to i64, !dbg !80
  %arrayidx5 = getelementptr inbounds double, double* %vla1, i64 %idxprom4, !dbg !80
  store double %div3, double* %arrayidx5, align 8, !dbg !81, !tbaa !52
  br label %for.inc, !dbg !82

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !83, !tbaa !37
  %inc = add nsw i32 %16, 1, !dbg !83
  store i32 %inc, i32* %i, align 4, !dbg !83, !tbaa !37
  br label %for.cond, !dbg !84, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %len, align 4, !dbg !88, !tbaa !37
  %conv6 = bitcast i64* %len.casted to i32*, !dbg !88
  store i32 %17, i32* %conv6, align 4, !dbg !88, !tbaa !37
  %18 = load i64, i64* %len.casted, align 8, !dbg !88, !tbaa !89
  call void @__omp_offloading_10308_be0449_main_l65(double* %sum, i64 %18, i64 %6, double* %vla, i64 %9, double* %vla1) #3, !dbg !91
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @19, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* %len, double* %sum2, i64 %6, double* %vla, i64 %9, double* %vla1), !dbg !93
  %19 = load double, double* %sum, align 8, !dbg !94, !tbaa !52
  %20 = load double, double* %sum2, align 8, !dbg !95, !tbaa !52
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %19, double %20), !dbg !96
  store i32 0, i32* %retval, align 4, !dbg !97
  %21 = load i8*, i8** %saved_stack, align 8, !dbg !98
  call void @llvm.stackrestore(i8* %21), !dbg !98
  %22 = bitcast double* %sum2 to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %22) #3, !dbg !98
  %23 = bitcast double* %sum to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #3, !dbg !98
  %24 = bitcast i32* %len to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3, !dbg !98
  %25 = bitcast i32* %i2 to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3, !dbg !98
  %26 = bitcast i32* %i to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3, !dbg !98
  %27 = load i32, i32* %retval, align 4, !dbg !98
  ret i32 %27, !dbg !98
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0449_main_l65_debug__(double* nonnull align 8 dereferenceable(8) %sum, i32 %len, i64 %vla, double* nonnull align 8 dereferenceable(8) %a, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !99 {
entry:
  %sum.addr = alloca double*, align 8
  %len.addr = alloca i32, align 4
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %0 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @13)
  store double* %sum, double** %sum.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !104, metadata !DIExpression()), !dbg !110
  store i32 %len, i32* %len.addr, align 4, !tbaa !37
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !105, metadata !DIExpression()), !dbg !111
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !106, metadata !DIExpression()), !dbg !112
  store double* %a, double** %a.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !107, metadata !DIExpression()), !dbg !113
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !108, metadata !DIExpression()), !dbg !112
  store double* %b, double** %b.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !109, metadata !DIExpression()), !dbg !114
  %1 = load double*, double** %sum.addr, align 8, !dbg !115, !tbaa !42
  %2 = load i64, i64* %vla.addr, align 8, !dbg !115, !tbaa !89
  %3 = load double*, double** %a.addr, align 8, !dbg !115, !tbaa !42
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !115, !tbaa !89
  %5 = load double*, double** %b.addr, align 8, !dbg !115, !tbaa !42
  call void @__kmpc_push_num_teams(%struct.ident_t* @13, i32 %0, i32 10, i32 256), !dbg !115
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @13, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %len.addr, double* %1, i64 %2, double* %3, i64 %4, double* %5), !dbg !115
  ret void, !dbg !116
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, double* nonnull align 8 dereferenceable(8) %sum, i64 %vla, double* nonnull align 8 dereferenceable(8) %a, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !117 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %sum3 = alloca double, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.4 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i26 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp12 = alloca double, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !126, metadata !DIExpression()), !dbg !145
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !127, metadata !DIExpression()), !dbg !145
  store i32* %len, i32** %len.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !128, metadata !DIExpression()), !dbg !146
  store double* %sum, double** %sum.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !129, metadata !DIExpression()), !dbg !147
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !130, metadata !DIExpression()), !dbg !145
  store double* %a, double** %a.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !131, metadata !DIExpression()), !dbg !148
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !132, metadata !DIExpression()), !dbg !145
  store double* %b, double** %b.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !133, metadata !DIExpression()), !dbg !149
  %0 = load i32*, i32** %len.addr, align 8, !dbg !150, !tbaa !42
  %1 = load double*, double** %sum.addr, align 8, !dbg !150, !tbaa !42
  %2 = load i64, i64* %vla.addr, align 8, !dbg !150, !tbaa !89
  %3 = load double*, double** %a.addr, align 8, !dbg !150, !tbaa !42
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !150, !tbaa !89
  %5 = load double*, double** %b.addr, align 8, !dbg !150, !tbaa !42
  %6 = bitcast double* %sum3 to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3, !dbg !150
  call void @llvm.dbg.declare(metadata double* %sum3, metadata !134, metadata !DIExpression()), !dbg !145
  store double 0.000000e+00, double* %sum3, align 8, !dbg !151, !tbaa !52
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !135, metadata !DIExpression()), !dbg !152
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !138, metadata !DIExpression()), !dbg !152
  %9 = load i32, i32* %0, align 4, !dbg !153, !tbaa !37
  store i32 %9, i32* %.capture_expr., align 4, !dbg !153, !tbaa !37
  %10 = bitcast i32* %.capture_expr.4 to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.4, metadata !139, metadata !DIExpression()), !dbg !152
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !153, !tbaa !37
  %sub = sub i32 %11, -255, !dbg !154
  %div = udiv i32 %sub, 256, !dbg !154
  %sub5 = sub i32 %div, 1, !dbg !154
  store i32 %sub5, i32* %.capture_expr.4, align 4, !dbg !154, !tbaa !37
  %12 = bitcast i32* %i2 to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !140, metadata !DIExpression()), !dbg !152
  store i32 0, i32* %i2, align 4, !dbg !155, !tbaa !37
  %13 = bitcast i32* %i2 to i8*, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !150
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !153, !tbaa !37
  %cmp = icmp slt i32 0, %14, !dbg !154
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !150

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !141, metadata !DIExpression()), !dbg !152
  store i32 0, i32* %.omp.lb, align 4, !dbg !156, !tbaa !37
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !142, metadata !DIExpression()), !dbg !152
  %17 = load i32, i32* %.capture_expr.4, align 4, !dbg !154, !tbaa !37
  store i32 %17, i32* %.omp.ub, align 4, !dbg !156, !tbaa !37
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !143, metadata !DIExpression()), !dbg !152
  store i32 1, i32* %.omp.stride, align 4, !dbg !156, !tbaa !37
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !144, metadata !DIExpression()), !dbg !152
  store i32 0, i32* %.omp.is_last, align 4, !dbg !156, !tbaa !37
  %20 = bitcast i32* %i26 to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %i26, metadata !140, metadata !DIExpression()), !dbg !152
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !150
  %22 = load i32, i32* %21, align 4, !dbg !150, !tbaa !37
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @1, i32 %22, i32 92, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !150
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !156, !tbaa !37
  %24 = load i32, i32* %.capture_expr.4, align 4, !dbg !154, !tbaa !37
  %cmp7 = icmp ugt i32 %23, %24, !dbg !156
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !156

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.4, align 4, !dbg !154, !tbaa !37
  br label %cond.end, !dbg !156

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !156, !tbaa !37
  br label %cond.end, !dbg !156

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !156
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !156, !tbaa !37
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !156, !tbaa !37
  store i32 %27, i32* %.omp.iv, align 4, !dbg !156, !tbaa !37
  br label %omp.inner.for.cond, !dbg !150

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !156, !tbaa !37
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !156, !tbaa !37
  %add = add i32 %29, 1, !dbg !154
  %cmp8 = icmp ult i32 %28, %add, !dbg !154
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !150

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !150

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !156, !tbaa !37
  %mul = mul i32 %30, 256, !dbg !155
  %add9 = add i32 0, %mul, !dbg !155
  store i32 %add9, i32* %i26, align 4, !dbg !155, !tbaa !37
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @7, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i26, i32* %0, double* %sum3, i64 %2, double* %3, i64 %4, double* %5), !dbg !157
  br label %omp.body.continue, !dbg !158

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !160

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !156, !tbaa !37
  %add10 = add i32 %31, 1, !dbg !154
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !154, !tbaa !37
  br label %omp.inner.for.cond, !dbg !160, !llvm.loop !161

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !160

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %32 = load i32*, i32** %.global_tid..addr, align 8, !dbg !160
  %33 = load i32, i32* %32, align 4, !dbg !160, !tbaa !37
  call void @__kmpc_for_static_fini(%struct.ident_t* @9, i32 %33), !dbg !162
  %34 = bitcast i32* %i26 to i8*, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3, !dbg !160
  br label %omp.precond.end, !dbg !160

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %35 = bitcast i32* %.omp.is_last to i8*, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3, !dbg !160
  %36 = bitcast i32* %.omp.stride to i8*, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3, !dbg !160
  %37 = bitcast i32* %.omp.ub to i8*, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3, !dbg !160
  %38 = bitcast i32* %.omp.lb to i8*, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3, !dbg !160
  %39 = bitcast i32* %.capture_expr.4 to i8*, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !160
  %40 = bitcast i32* %.capture_expr. to i8*, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !160
  %41 = bitcast i32* %.omp.iv to i8*, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !160
  %42 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !162
  %43 = bitcast double* %sum3 to i8*, !dbg !162
  store i8* %43, i8** %42, align 8, !dbg !162
  %44 = load i32*, i32** %.global_tid..addr, align 8, !dbg !162
  %45 = load i32, i32* %44, align 4, !dbg !162, !tbaa !37
  %46 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !162
  %47 = call i32 @__kmpc_reduce(%struct.ident_t* @11, i32 %45, i32 1, i64 8, i8* %46, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !162
  switch i32 %47, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !162

.omp.reduction.case1:                             ; preds = %omp.precond.end
  %48 = load double, double* %1, align 8, !dbg !151, !tbaa !52
  %49 = load double, double* %sum3, align 8, !dbg !151, !tbaa !52
  %add11 = fadd double %48, %49, !dbg !163
  store double %add11, double* %1, align 8, !dbg !163, !tbaa !52
  call void @__kmpc_end_reduce(%struct.ident_t* @11, i32 %45, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !162
  br label %.omp.reduction.default, !dbg !162

.omp.reduction.case2:                             ; preds = %omp.precond.end
  %50 = load double, double* %sum3, align 8, !dbg !151, !tbaa !52
  %51 = bitcast double* %1 to i64*, !dbg !162
  %atomic-load = load atomic i64, i64* %51 monotonic, align 8, !dbg !162, !tbaa !52
  br label %atomic_cont, !dbg !162

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %52 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %60, %atomic_cont ], !dbg !162
  %53 = bitcast double* %atomic-temp to i64*, !dbg !162
  %54 = bitcast i64 %52 to double, !dbg !162
  store double %54, double* %tmp12, align 8, !dbg !162, !tbaa !52
  %55 = load double, double* %tmp12, align 8, !dbg !151, !tbaa !52
  %56 = load double, double* %sum3, align 8, !dbg !151, !tbaa !52
  %add13 = fadd double %55, %56, !dbg !163
  store double %add13, double* %atomic-temp, align 8, !dbg !162, !tbaa !52
  %57 = load i64, i64* %53, align 8, !dbg !162
  %58 = bitcast double* %1 to i64*, !dbg !162
  %59 = cmpxchg i64* %58, i64 %52, i64 %57 monotonic monotonic, !dbg !162
  %60 = extractvalue { i64, i1 } %59, 0, !dbg !162
  %61 = extractvalue { i64, i1 } %59, 1, !dbg !162
  br i1 %61, label %atomic_exit, label %atomic_cont, !dbg !162

atomic_exit:                                      ; preds = %atomic_cont
  call void @__kmpc_end_reduce(%struct.ident_t* @11, i32 %45, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !162
  br label %.omp.reduction.default, !dbg !162

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.precond.end
  %62 = bitcast double* %sum3 to i8*, !dbg !162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #3, !dbg !162
  ret void, !dbg !164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i2, i32* nonnull align 4 dereferenceable(4) %len, double* nonnull align 8 dereferenceable(8) %sum, i64 %vla, double* nonnull align 8 dereferenceable(8) %a, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !165 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i2.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %.capture_expr.5 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum10 = alloca double, align 8
  %i11 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp26 = alloca double, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !169, metadata !DIExpression()), !dbg !187
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !170, metadata !DIExpression()), !dbg !187
  store i32* %i2, i32** %i2.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %i2.addr, metadata !171, metadata !DIExpression()), !dbg !188
  store i32* %len, i32** %len.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !172, metadata !DIExpression()), !dbg !189
  store double* %sum, double** %sum.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !173, metadata !DIExpression()), !dbg !190
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !174, metadata !DIExpression()), !dbg !187
  store double* %a, double** %a.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !175, metadata !DIExpression()), !dbg !191
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !176, metadata !DIExpression()), !dbg !187
  store double* %b, double** %b.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !177, metadata !DIExpression()), !dbg !192
  %0 = load i32*, i32** %i2.addr, align 8, !dbg !193, !tbaa !42
  %1 = load i32*, i32** %len.addr, align 8, !dbg !193, !tbaa !42
  %2 = load double*, double** %sum.addr, align 8, !dbg !193, !tbaa !42
  %3 = load i64, i64* %vla.addr, align 8, !dbg !193, !tbaa !89
  %4 = load double*, double** %a.addr, align 8, !dbg !193, !tbaa !42
  %5 = load i64, i64* %vla.addr2, align 8, !dbg !193, !tbaa !89
  %6 = load double*, double** %b.addr, align 8, !dbg !193, !tbaa !42
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !178, metadata !DIExpression()), !dbg !187
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !179, metadata !DIExpression()), !dbg !187
  %9 = load i32, i32* %0, align 4, !dbg !194, !tbaa !37
  store i32 %9, i32* %.capture_expr., align 4, !dbg !194, !tbaa !37
  %10 = bitcast i32* %.capture_expr.3 to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !179, metadata !DIExpression()), !dbg !187
  %11 = load i32, i32* %0, align 4, !dbg !195, !tbaa !37
  %add = add nsw i32 %11, 256, !dbg !195
  %12 = load i32, i32* %1, align 4, !dbg !195, !tbaa !37
  %cmp = icmp slt i32 %add, %12, !dbg !195
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !195

cond.true:                                        ; preds = %entry
  %13 = load i32, i32* %0, align 4, !dbg !195, !tbaa !37
  %add4 = add nsw i32 %13, 256, !dbg !195
  br label %cond.end, !dbg !195

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %1, align 4, !dbg !195, !tbaa !37
  br label %cond.end, !dbg !195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add4, %cond.true ], [ %14, %cond.false ], !dbg !195
  store i32 %cond, i32* %.capture_expr.3, align 4, !dbg !195, !tbaa !37
  %15 = bitcast i32* %.capture_expr.5 to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.5, metadata !180, metadata !DIExpression()), !dbg !187
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !195, !tbaa !37
  %17 = load i32, i32* %.capture_expr., align 4, !dbg !194, !tbaa !37
  %sub = sub i32 %16, %17, !dbg !193
  %sub6 = sub i32 %sub, 1, !dbg !193
  %add7 = add i32 %sub6, 1, !dbg !193
  %div = udiv i32 %add7, 1, !dbg !193
  %sub8 = sub i32 %div, 1, !dbg !193
  store i32 %sub8, i32* %.capture_expr.5, align 4, !dbg !193, !tbaa !37
  %18 = bitcast i32* %i to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %i, metadata !181, metadata !DIExpression()), !dbg !187
  %19 = load i32, i32* %.capture_expr., align 4, !dbg !194, !tbaa !37
  store i32 %19, i32* %i, align 4, !dbg !196, !tbaa !37
  %20 = bitcast i32* %i to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3, !dbg !193
  %21 = load i32, i32* %.capture_expr., align 4, !dbg !194, !tbaa !37
  %22 = load i32, i32* %.capture_expr.3, align 4, !dbg !195, !tbaa !37
  %cmp9 = icmp slt i32 %21, %22, !dbg !193
  br i1 %cmp9, label %omp.precond.then, label %omp.precond.end, !dbg !193

omp.precond.then:                                 ; preds = %cond.end
  %23 = bitcast i32* %.omp.lb to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !182, metadata !DIExpression()), !dbg !187
  store i32 0, i32* %.omp.lb, align 4, !dbg !197, !tbaa !37
  %24 = bitcast i32* %.omp.ub to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !183, metadata !DIExpression()), !dbg !187
  %25 = load i32, i32* %.capture_expr.5, align 4, !dbg !193, !tbaa !37
  store i32 %25, i32* %.omp.ub, align 4, !dbg !197, !tbaa !37
  %26 = bitcast i32* %.omp.stride to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !184, metadata !DIExpression()), !dbg !187
  store i32 1, i32* %.omp.stride, align 4, !dbg !197, !tbaa !37
  %27 = bitcast i32* %.omp.is_last to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !185, metadata !DIExpression()), !dbg !187
  store i32 0, i32* %.omp.is_last, align 4, !dbg !197, !tbaa !37
  %28 = bitcast double* %sum10 to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #3, !dbg !193
  call void @llvm.dbg.declare(metadata double* %sum10, metadata !186, metadata !DIExpression()), !dbg !187
  store double 0.000000e+00, double* %sum10, align 8, !dbg !198, !tbaa !52
  %29 = bitcast i32* %i11 to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %i11, metadata !181, metadata !DIExpression()), !dbg !187
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !193
  %31 = load i32, i32* %30, align 4, !dbg !193, !tbaa !37
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @3, i32 %31, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !199
  %32 = load i32, i32* %.omp.ub, align 4, !dbg !197, !tbaa !37
  %33 = load i32, i32* %.capture_expr.5, align 4, !dbg !193, !tbaa !37
  %cmp12 = icmp ugt i32 %32, %33, !dbg !197
  br i1 %cmp12, label %cond.true13, label %cond.false14, !dbg !197

cond.true13:                                      ; preds = %omp.precond.then
  %34 = load i32, i32* %.capture_expr.5, align 4, !dbg !193, !tbaa !37
  br label %cond.end15, !dbg !197

cond.false14:                                     ; preds = %omp.precond.then
  %35 = load i32, i32* %.omp.ub, align 4, !dbg !197, !tbaa !37
  br label %cond.end15, !dbg !197

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi i32 [ %34, %cond.true13 ], [ %35, %cond.false14 ], !dbg !197
  store i32 %cond16, i32* %.omp.ub, align 4, !dbg !197, !tbaa !37
  %36 = load i32, i32* %.omp.lb, align 4, !dbg !197, !tbaa !37
  store i32 %36, i32* %.omp.iv, align 4, !dbg !197, !tbaa !37
  br label %omp.inner.for.cond, !dbg !193

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end15
  %37 = load i32, i32* %.omp.iv, align 4, !dbg !197, !tbaa !37
  %38 = load i32, i32* %.omp.ub, align 4, !dbg !197, !tbaa !37
  %add17 = add i32 %38, 1, !dbg !193
  %cmp18 = icmp ult i32 %37, %add17, !dbg !193
  br i1 %cmp18, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !193

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !193

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %39 = load i32, i32* %.capture_expr., align 4, !dbg !194, !tbaa !37
  %40 = load i32, i32* %.omp.iv, align 4, !dbg !197, !tbaa !37
  %mul = mul i32 %40, 1, !dbg !196
  %add19 = add i32 %39, %mul, !dbg !196
  store i32 %add19, i32* %i11, align 4, !dbg !196, !tbaa !37
  %41 = load i32, i32* %i11, align 4, !dbg !200, !tbaa !37
  %idxprom = sext i32 %41 to i64, !dbg !201
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom, !dbg !201
  %42 = load double, double* %arrayidx, align 8, !dbg !201, !tbaa !52
  %43 = load i32, i32* %i11, align 4, !dbg !202, !tbaa !37
  %idxprom20 = sext i32 %43 to i64, !dbg !203
  %arrayidx21 = getelementptr inbounds double, double* %6, i64 %idxprom20, !dbg !203
  %44 = load double, double* %arrayidx21, align 8, !dbg !203, !tbaa !52
  %mul22 = fmul double %42, %44, !dbg !204
  %45 = load double, double* %sum10, align 8, !dbg !205, !tbaa !52
  %add23 = fadd double %45, %mul22, !dbg !205
  store double %add23, double* %sum10, align 8, !dbg !205, !tbaa !52
  br label %omp.body.continue, !dbg !206

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !199

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %46 = load i32, i32* %.omp.iv, align 4, !dbg !197, !tbaa !37
  %add24 = add i32 %46, 1, !dbg !193
  store i32 %add24, i32* %.omp.iv, align 4, !dbg !193, !tbaa !37
  br label %omp.inner.for.cond, !dbg !199, !llvm.loop !207

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !199

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %47 = load i32*, i32** %.global_tid..addr, align 8, !dbg !199
  %48 = load i32, i32* %47, align 4, !dbg !199, !tbaa !37
  call void @__kmpc_for_static_fini(%struct.ident_t* @5, i32 %48), !dbg !208
  %49 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !199
  %50 = bitcast double* %sum10 to i8*, !dbg !199
  store i8* %50, i8** %49, align 8, !dbg !199
  %51 = load i32*, i32** %.global_tid..addr, align 8, !dbg !199
  %52 = load i32, i32* %51, align 4, !dbg !199, !tbaa !37
  %53 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !199
  %54 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @6, i32 %52, i32 1, i64 8, i8* %53, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !199
  switch i32 %54, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !199

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %55 = load double, double* %2, align 8, !dbg !198, !tbaa !52
  %56 = load double, double* %sum10, align 8, !dbg !198, !tbaa !52
  %add25 = fadd double %55, %56, !dbg !209
  store double %add25, double* %2, align 8, !dbg !209, !tbaa !52
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @6, i32 %52, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !199
  br label %.omp.reduction.default, !dbg !199

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %57 = load double, double* %sum10, align 8, !dbg !198, !tbaa !52
  %58 = bitcast double* %2 to i64*, !dbg !199
  %atomic-load = load atomic i64, i64* %58 monotonic, align 8, !dbg !199, !tbaa !52
  br label %atomic_cont, !dbg !199

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %59 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %67, %atomic_cont ], !dbg !199
  %60 = bitcast double* %atomic-temp to i64*, !dbg !199
  %61 = bitcast i64 %59 to double, !dbg !199
  store double %61, double* %tmp26, align 8, !dbg !199, !tbaa !52
  %62 = load double, double* %tmp26, align 8, !dbg !198, !tbaa !52
  %63 = load double, double* %sum10, align 8, !dbg !198, !tbaa !52
  %add27 = fadd double %62, %63, !dbg !209
  store double %add27, double* %atomic-temp, align 8, !dbg !199, !tbaa !52
  %64 = load i64, i64* %60, align 8, !dbg !199
  %65 = bitcast double* %2 to i64*, !dbg !199
  %66 = cmpxchg i64* %65, i64 %59, i64 %64 monotonic monotonic, !dbg !199
  %67 = extractvalue { i64, i1 } %66, 0, !dbg !199
  %68 = extractvalue { i64, i1 } %66, 1, !dbg !199
  br i1 %68, label %atomic_exit, label %atomic_cont, !dbg !199

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !199

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  %69 = bitcast i32* %i11 to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3, !dbg !199
  %70 = bitcast double* %sum10 to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %70) #3, !dbg !199
  %71 = bitcast i32* %.omp.is_last to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3, !dbg !199
  %72 = bitcast i32* %.omp.stride to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #3, !dbg !199
  %73 = bitcast i32* %.omp.ub to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #3, !dbg !199
  %74 = bitcast i32* %.omp.lb to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #3, !dbg !199
  br label %omp.precond.end, !dbg !199

omp.precond.end:                                  ; preds = %.omp.reduction.default, %cond.end
  %75 = bitcast i32* %.capture_expr.5 to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3, !dbg !199
  %76 = bitcast i32* %.capture_expr.3 to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3, !dbg !199
  %77 = bitcast i32* %.capture_expr. to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3, !dbg !199
  %78 = bitcast i32* %.omp.iv to i8*, !dbg !199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3, !dbg !199
  ret void, !dbg !210
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !211 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !214, metadata !DIExpression()), !dbg !217
  store i8* %1, i8** %.addr1, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !216, metadata !DIExpression()), !dbg !217
  %2 = load i8*, i8** %.addr, align 8, !dbg !218
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !218
  %4 = load i8*, i8** %.addr1, align 8, !dbg !218
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !218
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !218
  %7 = load i8*, i8** %6, align 8, !dbg !218
  %8 = bitcast i8* %7 to double*, !dbg !218
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !218
  %10 = load i8*, i8** %9, align 8, !dbg !218
  %11 = bitcast i8* %10 to double*, !dbg !218
  %12 = load double, double* %11, align 8, !dbg !219, !tbaa !52
  %13 = load double, double* %8, align 8, !dbg !219, !tbaa !52
  %add = fadd double %12, %13, !dbg !220
  store double %add, double* %11, align 8, !dbg !220, !tbaa !52
  ret void, !dbg !219
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #3

; Function Attrs: nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %i2, i32* nonnull align 4 dereferenceable(4) %len, double* nonnull align 8 dereferenceable(8) %sum, i64 %vla, double* nonnull align 8 dereferenceable(8) %a, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !221 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i2.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !223, metadata !DIExpression()), !dbg !232
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !224, metadata !DIExpression()), !dbg !232
  store i32* %i2, i32** %i2.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %i2.addr, metadata !225, metadata !DIExpression()), !dbg !232
  store i32* %len, i32** %len.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !226, metadata !DIExpression()), !dbg !232
  store double* %sum, double** %sum.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !227, metadata !DIExpression()), !dbg !232
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !228, metadata !DIExpression()), !dbg !232
  store double* %a, double** %a.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !229, metadata !DIExpression()), !dbg !232
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !230, metadata !DIExpression()), !dbg !232
  store double* %b, double** %b.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !231, metadata !DIExpression()), !dbg !232
  %0 = load i32*, i32** %i2.addr, align 8, !dbg !233, !tbaa !42
  %1 = load i32*, i32** %len.addr, align 8, !dbg !233, !tbaa !42
  %2 = load double*, double** %sum.addr, align 8, !dbg !233, !tbaa !42
  %3 = load i64, i64* %vla.addr, align 8, !dbg !233, !tbaa !89
  %4 = load double*, double** %a.addr, align 8, !dbg !233, !tbaa !42
  %5 = load i64, i64* %vla.addr2, align 8, !dbg !233, !tbaa !89
  %6 = load double*, double** %b.addr, align 8, !dbg !233, !tbaa !42
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !233, !tbaa !42
  %8 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !233, !tbaa !42
  %9 = load i32*, i32** %i2.addr, align 8, !dbg !233, !tbaa !42
  %10 = load i32*, i32** %len.addr, align 8, !dbg !233, !tbaa !42
  %11 = load double*, double** %sum.addr, align 8, !dbg !233, !tbaa !42
  %12 = load double*, double** %a.addr, align 8, !dbg !233, !tbaa !42
  %13 = load double*, double** %b.addr, align 8, !dbg !233, !tbaa !42
  call void @.omp_outlined._debug__.1(i32* %7, i32* %8, i32* %9, i32* %10, double* %11, i64 %3, double* %12, i64 %5, double* %13) #3, !dbg !233
  ret void, !dbg !233
}

; Function Attrs: nounwind
declare !callback !234 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #4 !dbg !236 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !238, metadata !DIExpression()), !dbg !240
  store i8* %1, i8** %.addr1, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !239, metadata !DIExpression()), !dbg !240
  %2 = load i8*, i8** %.addr, align 8, !dbg !241
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !241
  %4 = load i8*, i8** %.addr1, align 8, !dbg !241
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !241
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !241
  %7 = load i8*, i8** %6, align 8, !dbg !241
  %8 = bitcast i8* %7 to double*, !dbg !241
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !241
  %10 = load i8*, i8** %9, align 8, !dbg !241
  %11 = bitcast i8* %10 to double*, !dbg !241
  %12 = load double, double* %11, align 8, !dbg !242, !tbaa !52
  %13 = load double, double* %8, align 8, !dbg !242, !tbaa !52
  %add = fadd double %12, %13, !dbg !243
  store double %add, double* %11, align 8, !dbg !243, !tbaa !52
  ret void, !dbg !242
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #3

; Function Attrs: nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, double* nonnull align 8 dereferenceable(8) %sum, i64 %vla, double* nonnull align 8 dereferenceable(8) %a, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !244 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !246, metadata !DIExpression()), !dbg !254
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !247, metadata !DIExpression()), !dbg !254
  store i32* %len, i32** %len.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !248, metadata !DIExpression()), !dbg !254
  store double* %sum, double** %sum.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !249, metadata !DIExpression()), !dbg !254
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !250, metadata !DIExpression()), !dbg !254
  store double* %a, double** %a.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !251, metadata !DIExpression()), !dbg !254
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !252, metadata !DIExpression()), !dbg !254
  store double* %b, double** %b.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !253, metadata !DIExpression()), !dbg !254
  %0 = load i32*, i32** %len.addr, align 8, !dbg !255, !tbaa !42
  %1 = load double*, double** %sum.addr, align 8, !dbg !255, !tbaa !42
  %2 = load i64, i64* %vla.addr, align 8, !dbg !255, !tbaa !89
  %3 = load double*, double** %a.addr, align 8, !dbg !255, !tbaa !42
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !255, !tbaa !89
  %5 = load double*, double** %b.addr, align 8, !dbg !255, !tbaa !42
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !255, !tbaa !42
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !255, !tbaa !42
  %8 = load i32*, i32** %len.addr, align 8, !dbg !255, !tbaa !42
  %9 = load double*, double** %sum.addr, align 8, !dbg !255, !tbaa !42
  %10 = load double*, double** %a.addr, align 8, !dbg !255, !tbaa !42
  %11 = load double*, double** %b.addr, align 8, !dbg !255, !tbaa !42
  call void @.omp_outlined._debug__(i32* %6, i32* %7, i32* %8, double* %9, i64 %2, double* %10, i64 %4, double* %11) #3, !dbg !255
  ret void, !dbg !255
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) #3

; Function Attrs: nounwind
declare !callback !234 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @__omp_offloading_10308_be0449_main_l65(double* nonnull align 8 dereferenceable(8) %sum, i64 %len, i64 %vla, double* nonnull align 8 dereferenceable(8) %a, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !256 {
entry:
  %sum.addr = alloca double*, align 8
  %len.addr = alloca i64, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store double* %sum, double** %sum.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !260, metadata !DIExpression()), !dbg !266
  store i64 %len, i64* %len.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !261, metadata !DIExpression()), !dbg !266
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !262, metadata !DIExpression()), !dbg !266
  store double* %a, double** %a.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !263, metadata !DIExpression()), !dbg !266
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !264, metadata !DIExpression()), !dbg !266
  store double* %b, double** %b.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = load double*, double** %sum.addr, align 8, !dbg !267, !tbaa !42
  %conv = bitcast i64* %len.addr to i32*, !dbg !267
  %1 = load i64, i64* %vla.addr, align 8, !dbg !267, !tbaa !89
  %2 = load double*, double** %a.addr, align 8, !dbg !267, !tbaa !42
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !267, !tbaa !89
  %4 = load double*, double** %b.addr, align 8, !dbg !267, !tbaa !42
  %5 = load double*, double** %sum.addr, align 8, !dbg !267, !tbaa !42
  %6 = load i32, i32* %conv, align 8, !dbg !267, !tbaa !37
  %7 = load double*, double** %a.addr, align 8, !dbg !267, !tbaa !42
  %8 = load double*, double** %b.addr, align 8, !dbg !267, !tbaa !42
  call void @__omp_offloading_10308_be0449_main_l65_debug__(double* %5, i32 %6, i64 %1, double* %7, i64 %3, double* %8) #3, !dbg !267
  ret void, !dbg !267
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__.4(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, double* nonnull align 8 dereferenceable(8) %sum2, i64 %vla, double* nonnull align 8 dereferenceable(8) %a, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !268 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum2.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum25 = alloca double, align 8
  %i6 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp15 = alloca double, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !270, metadata !DIExpression()), !dbg !286
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !271, metadata !DIExpression()), !dbg !286
  store i32* %len, i32** %len.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !272, metadata !DIExpression()), !dbg !287
  store double* %sum2, double** %sum2.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %sum2.addr, metadata !273, metadata !DIExpression()), !dbg !288
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !274, metadata !DIExpression()), !dbg !286
  store double* %a, double** %a.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !275, metadata !DIExpression()), !dbg !289
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !276, metadata !DIExpression()), !dbg !286
  store double* %b, double** %b.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !277, metadata !DIExpression()), !dbg !290
  %0 = load i32*, i32** %len.addr, align 8, !dbg !291, !tbaa !42
  %1 = load double*, double** %sum2.addr, align 8, !dbg !291, !tbaa !42
  %2 = load i64, i64* %vla.addr, align 8, !dbg !291, !tbaa !89
  %3 = load double*, double** %a.addr, align 8, !dbg !291, !tbaa !42
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !291, !tbaa !89
  %5 = load double*, double** %b.addr, align 8, !dbg !291, !tbaa !42
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !278, metadata !DIExpression()), !dbg !286
  %7 = bitcast i32* %.capture_expr. to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !279, metadata !DIExpression()), !dbg !286
  %8 = load i32, i32* %0, align 4, !dbg !292, !tbaa !37
  store i32 %8, i32* %.capture_expr., align 4, !dbg !292, !tbaa !37
  %9 = bitcast i32* %.capture_expr.3 to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !279, metadata !DIExpression()), !dbg !286
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !292, !tbaa !37
  %sub = sub nsw i32 %10, 0, !dbg !291
  %div = sdiv i32 %sub, 1, !dbg !291
  %sub4 = sub nsw i32 %div, 1, !dbg !291
  store i32 %sub4, i32* %.capture_expr.3, align 4, !dbg !291, !tbaa !37
  %11 = bitcast i32* %i to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %i, metadata !280, metadata !DIExpression()), !dbg !286
  store i32 0, i32* %i, align 4, !dbg !293, !tbaa !37
  %12 = bitcast i32* %i to i8*, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3, !dbg !291
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !292, !tbaa !37
  %cmp = icmp slt i32 0, %13, !dbg !291
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !291

omp.precond.then:                                 ; preds = %entry
  %14 = bitcast i32* %.omp.lb to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !281, metadata !DIExpression()), !dbg !286
  store i32 0, i32* %.omp.lb, align 4, !dbg !294, !tbaa !37
  %15 = bitcast i32* %.omp.ub to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !282, metadata !DIExpression()), !dbg !286
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !291, !tbaa !37
  store i32 %16, i32* %.omp.ub, align 4, !dbg !294, !tbaa !37
  %17 = bitcast i32* %.omp.stride to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !283, metadata !DIExpression()), !dbg !286
  store i32 1, i32* %.omp.stride, align 4, !dbg !294, !tbaa !37
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !284, metadata !DIExpression()), !dbg !286
  store i32 0, i32* %.omp.is_last, align 4, !dbg !294, !tbaa !37
  %19 = bitcast double* %sum25 to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #3, !dbg !291
  call void @llvm.dbg.declare(metadata double* %sum25, metadata !285, metadata !DIExpression()), !dbg !286
  store double 0.000000e+00, double* %sum25, align 8, !dbg !295, !tbaa !52
  %20 = bitcast i32* %i6 to i8*, !dbg !291
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !280, metadata !DIExpression()), !dbg !286
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !291
  %22 = load i32, i32* %21, align 4, !dbg !291, !tbaa !37
  call void @__kmpc_for_static_init_4(%struct.ident_t* @15, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !296
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !294, !tbaa !37
  %24 = load i32, i32* %.capture_expr.3, align 4, !dbg !291, !tbaa !37
  %cmp7 = icmp sgt i32 %23, %24, !dbg !294
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !294

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.3, align 4, !dbg !291, !tbaa !37
  br label %cond.end, !dbg !294

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !294, !tbaa !37
  br label %cond.end, !dbg !294

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !294
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !294, !tbaa !37
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !294, !tbaa !37
  store i32 %27, i32* %.omp.iv, align 4, !dbg !294, !tbaa !37
  br label %omp.inner.for.cond, !dbg !291

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !294, !tbaa !37
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !294, !tbaa !37
  %cmp8 = icmp sle i32 %28, %29, !dbg !291
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !291

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !291

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !294, !tbaa !37
  %mul = mul nsw i32 %30, 1, !dbg !293
  %add = add nsw i32 0, %mul, !dbg !293
  store i32 %add, i32* %i6, align 4, !dbg !293, !tbaa !37
  %31 = load i32, i32* %i6, align 4, !dbg !297, !tbaa !37
  %idxprom = sext i32 %31 to i64, !dbg !298
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom, !dbg !298
  %32 = load double, double* %arrayidx, align 8, !dbg !298, !tbaa !52
  %33 = load i32, i32* %i6, align 4, !dbg !299, !tbaa !37
  %idxprom9 = sext i32 %33 to i64, !dbg !300
  %arrayidx10 = getelementptr inbounds double, double* %5, i64 %idxprom9, !dbg !300
  %34 = load double, double* %arrayidx10, align 8, !dbg !300, !tbaa !52
  %mul11 = fmul double %32, %34, !dbg !301
  %35 = load double, double* %sum25, align 8, !dbg !302, !tbaa !52
  %add12 = fadd double %35, %mul11, !dbg !302
  store double %add12, double* %sum25, align 8, !dbg !302, !tbaa !52
  br label %omp.body.continue, !dbg !303

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !296

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !294, !tbaa !37
  %add13 = add nsw i32 %36, 1, !dbg !291
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !291, !tbaa !37
  br label %omp.inner.for.cond, !dbg !296, !llvm.loop !304

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !296

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !296
  %38 = load i32, i32* %37, align 4, !dbg !296, !tbaa !37
  call void @__kmpc_for_static_fini(%struct.ident_t* @17, i32 %38), !dbg !305
  %39 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !296
  %40 = bitcast double* %sum25 to i8*, !dbg !296
  store i8* %40, i8** %39, align 8, !dbg !296
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !296
  %42 = load i32, i32* %41, align 4, !dbg !296, !tbaa !37
  %43 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !296
  %44 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @18, i32 %42, i32 1, i64 8, i8* %43, void (i8*, i8*)* @.omp.reduction.reduction_func.5, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !296
  switch i32 %44, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !296

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %45 = load double, double* %1, align 8, !dbg !295, !tbaa !52
  %46 = load double, double* %sum25, align 8, !dbg !295, !tbaa !52
  %add14 = fadd double %45, %46, !dbg !306
  store double %add14, double* %1, align 8, !dbg !306, !tbaa !52
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @18, i32 %42, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !296
  br label %.omp.reduction.default, !dbg !296

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %47 = load double, double* %sum25, align 8, !dbg !295, !tbaa !52
  %48 = bitcast double* %1 to i64*, !dbg !296
  %atomic-load = load atomic i64, i64* %48 monotonic, align 8, !dbg !296, !tbaa !52
  br label %atomic_cont, !dbg !296

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %49 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %57, %atomic_cont ], !dbg !296
  %50 = bitcast double* %atomic-temp to i64*, !dbg !296
  %51 = bitcast i64 %49 to double, !dbg !296
  store double %51, double* %tmp15, align 8, !dbg !296, !tbaa !52
  %52 = load double, double* %tmp15, align 8, !dbg !295, !tbaa !52
  %53 = load double, double* %sum25, align 8, !dbg !295, !tbaa !52
  %add16 = fadd double %52, %53, !dbg !306
  store double %add16, double* %atomic-temp, align 8, !dbg !296, !tbaa !52
  %54 = load i64, i64* %50, align 8, !dbg !296
  %55 = bitcast double* %1 to i64*, !dbg !296
  %56 = cmpxchg i64* %55, i64 %49, i64 %54 monotonic monotonic, !dbg !296
  %57 = extractvalue { i64, i1 } %56, 0, !dbg !296
  %58 = extractvalue { i64, i1 } %56, 1, !dbg !296
  br i1 %58, label %atomic_exit, label %atomic_cont, !dbg !296

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !296

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  %59 = bitcast i32* %i6 to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3, !dbg !296
  %60 = bitcast double* %sum25 to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %60) #3, !dbg !296
  %61 = bitcast i32* %.omp.is_last to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3, !dbg !296
  %62 = bitcast i32* %.omp.stride to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3, !dbg !296
  %63 = bitcast i32* %.omp.ub to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3, !dbg !296
  %64 = bitcast i32* %.omp.lb to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3, !dbg !296
  br label %omp.precond.end, !dbg !296

omp.precond.end:                                  ; preds = %.omp.reduction.default, %entry
  %65 = bitcast i32* %.capture_expr.3 to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3, !dbg !296
  %66 = bitcast i32* %.capture_expr. to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3, !dbg !296
  %67 = bitcast i32* %.omp.iv to i8*, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #3, !dbg !296
  ret void, !dbg !307
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func.5(i8* %0, i8* %1) #4 !dbg !308 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !310, metadata !DIExpression()), !dbg !312
  store i8* %1, i8** %.addr1, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !311, metadata !DIExpression()), !dbg !312
  %2 = load i8*, i8** %.addr, align 8, !dbg !313
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !313
  %4 = load i8*, i8** %.addr1, align 8, !dbg !313
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !313
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !313
  %7 = load i8*, i8** %6, align 8, !dbg !313
  %8 = bitcast i8* %7 to double*, !dbg !313
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !313
  %10 = load i8*, i8** %9, align 8, !dbg !313
  %11 = bitcast i8* %10 to double*, !dbg !313
  %12 = load double, double* %11, align 8, !dbg !314, !tbaa !52
  %13 = load double, double* %8, align 8, !dbg !314, !tbaa !52
  %add = fadd double %12, %13, !dbg !315
  store double %add, double* %11, align 8, !dbg !315, !tbaa !52
  ret void, !dbg !314
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined..6(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %len, double* nonnull align 8 dereferenceable(8) %sum2, i64 %vla, double* nonnull align 8 dereferenceable(8) %a, i64 %vla1, double* nonnull align 8 dereferenceable(8) %b) #4 !dbg !316 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum2.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !318, metadata !DIExpression()), !dbg !326
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !319, metadata !DIExpression()), !dbg !326
  store i32* %len, i32** %len.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !320, metadata !DIExpression()), !dbg !326
  store double* %sum2, double** %sum2.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %sum2.addr, metadata !321, metadata !DIExpression()), !dbg !326
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !322, metadata !DIExpression()), !dbg !326
  store double* %a, double** %a.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !323, metadata !DIExpression()), !dbg !326
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !89
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !324, metadata !DIExpression()), !dbg !326
  store double* %b, double** %b.addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load i32*, i32** %len.addr, align 8, !dbg !327, !tbaa !42
  %1 = load double*, double** %sum2.addr, align 8, !dbg !327, !tbaa !42
  %2 = load i64, i64* %vla.addr, align 8, !dbg !327, !tbaa !89
  %3 = load double*, double** %a.addr, align 8, !dbg !327, !tbaa !42
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !327, !tbaa !89
  %5 = load double*, double** %b.addr, align 8, !dbg !327, !tbaa !42
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !327, !tbaa !42
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !327, !tbaa !42
  %8 = load i32*, i32** %len.addr, align 8, !dbg !327, !tbaa !42
  %9 = load double*, double** %sum2.addr, align 8, !dbg !327, !tbaa !42
  %10 = load double*, double** %a.addr, align 8, !dbg !327, !tbaa !42
  %11 = load double*, double** %b.addr, align 8, !dbg !327, !tbaa !42
  call void @.omp_outlined._debug__.4(i32* %6, i32* %7, i32* %8, double* %9, i64 %2, double* %10, i64 %4, double* %11) #3, !dbg !327
  ret void, !dbg !327
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB097-target-teams-distribute-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"clang version 11.1.0"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !12, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !28, !32, !33}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !11, file: !1, line: 52, type: !14)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !11, file: !1, line: 52, type: !15)
!21 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 54, type: !14)
!22 = !DILocalVariable(name: "i2", scope: !11, file: !1, line: 54, type: !14)
!23 = !DILocalVariable(name: "len", scope: !11, file: !1, line: 55, type: !14)
!24 = !DILocalVariable(name: "sum", scope: !11, file: !1, line: 56, type: !4)
!25 = !DILocalVariable(name: "sum2", scope: !11, file: !1, line: 56, type: !4)
!26 = !DILocalVariable(name: "__vla_expr0", scope: !11, type: !27, flags: DIFlagArtificial)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocalVariable(name: "a", scope: !11, file: !1, line: 57, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: !26)
!32 = !DILocalVariable(name: "__vla_expr1", scope: !11, type: !27, flags: DIFlagArtificial)
!33 = !DILocalVariable(name: "b", scope: !11, file: !1, line: 57, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: !32)
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 52, column: 14, scope: !11)
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !39, i64 0}
!44 = !DILocation(line: 52, column: 26, scope: !11)
!45 = !DILocation(line: 54, column: 3, scope: !11)
!46 = !DILocation(line: 54, column: 7, scope: !11)
!47 = !DILocation(line: 54, column: 10, scope: !11)
!48 = !DILocation(line: 55, column: 3, scope: !11)
!49 = !DILocation(line: 55, column: 7, scope: !11)
!50 = !DILocation(line: 56, column: 3, scope: !11)
!51 = !DILocation(line: 56, column: 10, scope: !11)
!52 = !{!53, !53, i64 0}
!53 = !{!"double", !39, i64 0}
!54 = !DILocation(line: 56, column: 20, scope: !11)
!55 = !DILocation(line: 57, column: 12, scope: !11)
!56 = !DILocation(line: 57, column: 3, scope: !11)
!57 = !DILocation(line: 0, scope: !11)
!58 = !DILocation(line: 57, column: 10, scope: !11)
!59 = !DILocation(line: 57, column: 20, scope: !11)
!60 = !DILocation(line: 57, column: 18, scope: !11)
!61 = !DILocation(line: 59, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !11, file: !1, line: 59, column: 3)
!63 = !DILocation(line: 59, column: 8, scope: !62)
!64 = !DILocation(line: 59, column: 13, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 59, column: 3)
!66 = !DILocation(line: 59, column: 15, scope: !65)
!67 = !DILocation(line: 59, column: 14, scope: !65)
!68 = !DILocation(line: 59, column: 3, scope: !62)
!69 = !DILocation(line: 61, column: 20, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !1, line: 60, column: 3)
!71 = !DILocation(line: 61, column: 12, scope: !70)
!72 = !DILocation(line: 61, column: 22, scope: !70)
!73 = !DILocation(line: 61, column: 7, scope: !70)
!74 = !DILocation(line: 61, column: 5, scope: !70)
!75 = !DILocation(line: 61, column: 9, scope: !70)
!76 = !DILocation(line: 62, column: 20, scope: !70)
!77 = !DILocation(line: 62, column: 12, scope: !70)
!78 = !DILocation(line: 62, column: 22, scope: !70)
!79 = !DILocation(line: 62, column: 7, scope: !70)
!80 = !DILocation(line: 62, column: 5, scope: !70)
!81 = !DILocation(line: 62, column: 9, scope: !70)
!82 = !DILocation(line: 63, column: 3, scope: !70)
!83 = !DILocation(line: 59, column: 21, scope: !65)
!84 = !DILocation(line: 59, column: 3, scope: !65)
!85 = distinct !{!85, !68, !86, !87}
!86 = !DILocation(line: 63, column: 3, scope: !62)
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !DILocation(line: 65, column: 1, scope: !11)
!89 = !{!90, !90, i64 0}
!90 = !{!"long", !39, i64 0}
!91 = !DILocation(line: 65, column: 1, scope: !92)
!92 = distinct !DILexicalBlock(scope: !11, file: !1, line: 65, column: 1)
!93 = !DILocation(line: 74, column: 1, scope: !11)
!94 = !DILocation(line: 77, column: 31, scope: !11)
!95 = !DILocation(line: 77, column: 36, scope: !11)
!96 = !DILocation(line: 77, column: 3, scope: !11)
!97 = !DILocation(line: 78, column: 3, scope: !11)
!98 = !DILocation(line: 79, column: 1, scope: !11)
!99 = distinct !DISubprogram(name: "__omp_offloading_10308_be0449_main_l65_debug__", scope: !1, file: !1, line: 66, type: !100, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102, !14, !27, !102, !27, !102}
!102 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!103 = !{!104, !105, !106, !107, !108, !109}
!104 = !DILocalVariable(name: "sum", arg: 1, scope: !99, file: !1, line: 56, type: !102)
!105 = !DILocalVariable(name: "len", arg: 2, scope: !99, file: !1, line: 55, type: !14)
!106 = !DILocalVariable(name: "vla", arg: 3, scope: !99, type: !27, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "a", arg: 4, scope: !99, file: !1, line: 57, type: !102)
!108 = !DILocalVariable(name: "vla", arg: 5, scope: !99, type: !27, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "b", arg: 6, scope: !99, file: !1, line: 57, type: !102)
!110 = !DILocation(line: 56, column: 10, scope: !99)
!111 = !DILocation(line: 55, column: 7, scope: !99)
!112 = !DILocation(line: 0, scope: !99)
!113 = !DILocation(line: 57, column: 10, scope: !99)
!114 = !DILocation(line: 57, column: 18, scope: !99)
!115 = !DILocation(line: 66, column: 1, scope: !99)
!116 = !DILocation(line: 66, column: 69, scope: !99)
!117 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 67, type: !118, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !120, !120, !124, !102, !27, !102, !27, !102}
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!124 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !138, !139, !140, !141, !142, !143, !144, !140}
!126 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !117, type: !120, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !117, type: !120, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "len", arg: 3, scope: !117, file: !1, line: 55, type: !124)
!129 = !DILocalVariable(name: "sum", arg: 4, scope: !117, file: !1, line: 56, type: !102)
!130 = !DILocalVariable(name: "vla", arg: 5, scope: !117, type: !27, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "a", arg: 6, scope: !117, file: !1, line: 57, type: !102)
!132 = !DILocalVariable(name: "vla", arg: 7, scope: !117, type: !27, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "b", arg: 8, scope: !117, file: !1, line: 57, type: !102)
!134 = !DILocalVariable(name: "sum", scope: !117, type: !4, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".omp.iv", scope: !136, type: !137, flags: DIFlagArtificial)
!136 = distinct !DILexicalBlock(scope: !117, file: !1, line: 67, column: 1)
!137 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!138 = !DILocalVariable(name: ".capture_expr.", scope: !136, type: !14, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".capture_expr.", scope: !136, type: !137, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "i2", scope: !136, type: !14, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".omp.lb", scope: !136, type: !137, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: ".omp.ub", scope: !136, type: !137, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: ".omp.stride", scope: !136, type: !137, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: ".omp.is_last", scope: !136, type: !14, flags: DIFlagArtificial)
!145 = !DILocation(line: 0, scope: !117)
!146 = !DILocation(line: 55, column: 7, scope: !117)
!147 = !DILocation(line: 56, column: 10, scope: !117)
!148 = !DILocation(line: 57, column: 10, scope: !117)
!149 = !DILocation(line: 57, column: 18, scope: !117)
!150 = !DILocation(line: 67, column: 1, scope: !117)
!151 = !DILocation(line: 66, column: 64, scope: !117)
!152 = !DILocation(line: 0, scope: !136)
!153 = !DILocation(line: 68, column: 18, scope: !136)
!154 = !DILocation(line: 68, column: 3, scope: !136)
!155 = !DILocation(line: 68, column: 23, scope: !136)
!156 = !DILocation(line: 68, column: 8, scope: !136)
!157 = !DILocation(line: 69, column: 1, scope: !136)
!158 = !DILocation(line: 69, column: 43, scope: !159)
!159 = distinct !DILexicalBlock(scope: !136, file: !1, line: 69, column: 1)
!160 = !DILocation(line: 67, column: 1, scope: !136)
!161 = distinct !{!161, !160, !162}
!162 = !DILocation(line: 67, column: 23, scope: !136)
!163 = !DILocation(line: 66, column: 62, scope: !117)
!164 = !DILocation(line: 67, column: 23, scope: !117)
!165 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 70, type: !166, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !120, !120, !124, !124, !102, !27, !102, !27, !102}
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !179, !180, !181, !182, !183, !184, !185, !186, !181}
!169 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !165, type: !120, flags: DIFlagArtificial)
!170 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !165, type: !120, flags: DIFlagArtificial)
!171 = !DILocalVariable(name: "i2", arg: 3, scope: !165, file: !1, line: 54, type: !124)
!172 = !DILocalVariable(name: "len", arg: 4, scope: !165, file: !1, line: 55, type: !124)
!173 = !DILocalVariable(name: "sum", arg: 5, scope: !165, file: !1, line: 56, type: !102)
!174 = !DILocalVariable(name: "vla", arg: 6, scope: !165, type: !27, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: "a", arg: 7, scope: !165, file: !1, line: 57, type: !102)
!176 = !DILocalVariable(name: "vla", arg: 8, scope: !165, type: !27, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "b", arg: 9, scope: !165, file: !1, line: 57, type: !102)
!178 = !DILocalVariable(name: ".omp.iv", scope: !165, type: !137, flags: DIFlagArtificial)
!179 = !DILocalVariable(name: ".capture_expr.", scope: !165, type: !14, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: ".capture_expr.", scope: !165, type: !137, flags: DIFlagArtificial)
!181 = !DILocalVariable(name: "i", scope: !165, type: !14, flags: DIFlagArtificial)
!182 = !DILocalVariable(name: ".omp.lb", scope: !165, type: !137, flags: DIFlagArtificial)
!183 = !DILocalVariable(name: ".omp.ub", scope: !165, type: !137, flags: DIFlagArtificial)
!184 = !DILocalVariable(name: ".omp.stride", scope: !165, type: !137, flags: DIFlagArtificial)
!185 = !DILocalVariable(name: ".omp.is_last", scope: !165, type: !14, flags: DIFlagArtificial)
!186 = !DILocalVariable(name: "sum", scope: !165, type: !4, flags: DIFlagArtificial)
!187 = !DILocation(line: 0, scope: !165)
!188 = !DILocation(line: 54, column: 10, scope: !165)
!189 = !DILocation(line: 55, column: 7, scope: !165)
!190 = !DILocation(line: 56, column: 10, scope: !165)
!191 = !DILocation(line: 57, column: 10, scope: !165)
!192 = !DILocation(line: 57, column: 18, scope: !165)
!193 = !DILocation(line: 70, column: 5, scope: !165)
!194 = !DILocation(line: 70, column: 12, scope: !165)
!195 = !DILocation(line: 70, column: 18, scope: !165)
!196 = !DILocation(line: 70, column: 36, scope: !165)
!197 = !DILocation(line: 70, column: 10, scope: !165)
!198 = !DILocation(line: 69, column: 39, scope: !165)
!199 = !DILocation(line: 69, column: 1, scope: !165)
!200 = !DILocation(line: 71, column: 16, scope: !165)
!201 = !DILocation(line: 71, column: 14, scope: !165)
!202 = !DILocation(line: 71, column: 21, scope: !165)
!203 = !DILocation(line: 71, column: 19, scope: !165)
!204 = !DILocation(line: 71, column: 18, scope: !165)
!205 = !DILocation(line: 71, column: 11, scope: !165)
!206 = !DILocation(line: 71, column: 7, scope: !165)
!207 = distinct !{!207, !199, !208}
!208 = !DILocation(line: 69, column: 43, scope: !165)
!209 = !DILocation(line: 69, column: 37, scope: !165)
!210 = !DILocation(line: 71, column: 22, scope: !165)
!211 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 69, type: !212, scopeLine: 69, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !213)
!212 = !DISubroutineType(types: !2)
!213 = !{!214, !216}
!214 = !DILocalVariable(arg: 1, scope: !211, type: !215, flags: DIFlagArtificial)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!216 = !DILocalVariable(arg: 2, scope: !211, type: !215, flags: DIFlagArtificial)
!217 = !DILocation(line: 0, scope: !211)
!218 = !DILocation(line: 69, column: 43, scope: !211)
!219 = !DILocation(line: 69, column: 39, scope: !211)
!220 = !DILocation(line: 69, column: 37, scope: !211)
!221 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 69, type: !166, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231}
!223 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !221, type: !120, flags: DIFlagArtificial)
!224 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !221, type: !120, flags: DIFlagArtificial)
!225 = !DILocalVariable(name: "i2", arg: 3, scope: !221, type: !124, flags: DIFlagArtificial)
!226 = !DILocalVariable(name: "len", arg: 4, scope: !221, type: !124, flags: DIFlagArtificial)
!227 = !DILocalVariable(name: "sum", arg: 5, scope: !221, type: !102, flags: DIFlagArtificial)
!228 = !DILocalVariable(name: "vla", arg: 6, scope: !221, type: !27, flags: DIFlagArtificial)
!229 = !DILocalVariable(name: "a", arg: 7, scope: !221, type: !102, flags: DIFlagArtificial)
!230 = !DILocalVariable(name: "vla", arg: 8, scope: !221, type: !27, flags: DIFlagArtificial)
!231 = !DILocalVariable(name: "b", arg: 9, scope: !221, type: !102, flags: DIFlagArtificial)
!232 = !DILocation(line: 0, scope: !221)
!233 = !DILocation(line: 69, column: 1, scope: !221)
!234 = !{!235}
!235 = !{i64 2, i64 -1, i64 -1, i1 true}
!236 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !1, file: !1, line: 66, type: !212, scopeLine: 66, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!237 = !{!238, !239}
!238 = !DILocalVariable(arg: 1, scope: !236, type: !215, flags: DIFlagArtificial)
!239 = !DILocalVariable(arg: 2, scope: !236, type: !215, flags: DIFlagArtificial)
!240 = !DILocation(line: 0, scope: !236)
!241 = !DILocation(line: 66, column: 69, scope: !236)
!242 = !DILocation(line: 66, column: 64, scope: !236)
!243 = !DILocation(line: 66, column: 62, scope: !236)
!244 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 66, type: !118, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253}
!246 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !244, type: !120, flags: DIFlagArtificial)
!247 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !244, type: !120, flags: DIFlagArtificial)
!248 = !DILocalVariable(name: "len", arg: 3, scope: !244, type: !124, flags: DIFlagArtificial)
!249 = !DILocalVariable(name: "sum", arg: 4, scope: !244, type: !102, flags: DIFlagArtificial)
!250 = !DILocalVariable(name: "vla", arg: 5, scope: !244, type: !27, flags: DIFlagArtificial)
!251 = !DILocalVariable(name: "a", arg: 6, scope: !244, type: !102, flags: DIFlagArtificial)
!252 = !DILocalVariable(name: "vla", arg: 7, scope: !244, type: !27, flags: DIFlagArtificial)
!253 = !DILocalVariable(name: "b", arg: 8, scope: !244, type: !102, flags: DIFlagArtificial)
!254 = !DILocation(line: 0, scope: !244)
!255 = !DILocation(line: 66, column: 1, scope: !244)
!256 = distinct !DISubprogram(name: "__omp_offloading_10308_be0449_main_l65", scope: !1, file: !1, line: 65, type: !257, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !102, !27, !27, !102, !27, !102}
!259 = !{!260, !261, !262, !263, !264, !265}
!260 = !DILocalVariable(name: "sum", arg: 1, scope: !256, type: !102, flags: DIFlagArtificial)
!261 = !DILocalVariable(name: "len", arg: 2, scope: !256, type: !27, flags: DIFlagArtificial)
!262 = !DILocalVariable(name: "vla", arg: 3, scope: !256, type: !27, flags: DIFlagArtificial)
!263 = !DILocalVariable(name: "a", arg: 4, scope: !256, type: !102, flags: DIFlagArtificial)
!264 = !DILocalVariable(name: "vla", arg: 5, scope: !256, type: !27, flags: DIFlagArtificial)
!265 = !DILocalVariable(name: "b", arg: 6, scope: !256, type: !102, flags: DIFlagArtificial)
!266 = !DILocation(line: 0, scope: !256)
!267 = !DILocation(line: 65, column: 1, scope: !256)
!268 = distinct !DISubprogram(name: ".omp_outlined._debug__.4", scope: !1, file: !1, line: 75, type: !118, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !279, !280, !281, !282, !283, !284, !285, !280}
!270 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !268, type: !120, flags: DIFlagArtificial)
!271 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !268, type: !120, flags: DIFlagArtificial)
!272 = !DILocalVariable(name: "len", arg: 3, scope: !268, file: !1, line: 55, type: !124)
!273 = !DILocalVariable(name: "sum2", arg: 4, scope: !268, file: !1, line: 56, type: !102)
!274 = !DILocalVariable(name: "vla", arg: 5, scope: !268, type: !27, flags: DIFlagArtificial)
!275 = !DILocalVariable(name: "a", arg: 6, scope: !268, file: !1, line: 57, type: !102)
!276 = !DILocalVariable(name: "vla", arg: 7, scope: !268, type: !27, flags: DIFlagArtificial)
!277 = !DILocalVariable(name: "b", arg: 8, scope: !268, file: !1, line: 57, type: !102)
!278 = !DILocalVariable(name: ".omp.iv", scope: !268, type: !14, flags: DIFlagArtificial)
!279 = !DILocalVariable(name: ".capture_expr.", scope: !268, type: !14, flags: DIFlagArtificial)
!280 = !DILocalVariable(name: "i", scope: !268, type: !14, flags: DIFlagArtificial)
!281 = !DILocalVariable(name: ".omp.lb", scope: !268, type: !14, flags: DIFlagArtificial)
!282 = !DILocalVariable(name: ".omp.ub", scope: !268, type: !14, flags: DIFlagArtificial)
!283 = !DILocalVariable(name: ".omp.stride", scope: !268, type: !14, flags: DIFlagArtificial)
!284 = !DILocalVariable(name: ".omp.is_last", scope: !268, type: !14, flags: DIFlagArtificial)
!285 = !DILocalVariable(name: "sum2", scope: !268, type: !4, flags: DIFlagArtificial)
!286 = !DILocation(line: 0, scope: !268)
!287 = !DILocation(line: 55, column: 7, scope: !268)
!288 = !DILocation(line: 56, column: 20, scope: !268)
!289 = !DILocation(line: 57, column: 10, scope: !268)
!290 = !DILocation(line: 57, column: 18, scope: !268)
!291 = !DILocation(line: 75, column: 5, scope: !268)
!292 = !DILocation(line: 75, column: 17, scope: !268)
!293 = !DILocation(line: 75, column: 22, scope: !268)
!294 = !DILocation(line: 75, column: 10, scope: !268)
!295 = !DILocation(line: 74, column: 39, scope: !268)
!296 = !DILocation(line: 74, column: 1, scope: !268)
!297 = !DILocation(line: 76, column: 17, scope: !268)
!298 = !DILocation(line: 76, column: 15, scope: !268)
!299 = !DILocation(line: 76, column: 22, scope: !268)
!300 = !DILocation(line: 76, column: 20, scope: !268)
!301 = !DILocation(line: 76, column: 19, scope: !268)
!302 = !DILocation(line: 76, column: 12, scope: !268)
!303 = !DILocation(line: 76, column: 7, scope: !268)
!304 = distinct !{!304, !296, !305}
!305 = !DILocation(line: 74, column: 44, scope: !268)
!306 = !DILocation(line: 74, column: 37, scope: !268)
!307 = !DILocation(line: 76, column: 23, scope: !268)
!308 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.5", scope: !1, file: !1, line: 74, type: !212, scopeLine: 74, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!309 = !{!310, !311}
!310 = !DILocalVariable(arg: 1, scope: !308, type: !215, flags: DIFlagArtificial)
!311 = !DILocalVariable(arg: 2, scope: !308, type: !215, flags: DIFlagArtificial)
!312 = !DILocation(line: 0, scope: !308)
!313 = !DILocation(line: 74, column: 44, scope: !308)
!314 = !DILocation(line: 74, column: 39, scope: !308)
!315 = !DILocation(line: 74, column: 37, scope: !308)
!316 = distinct !DISubprogram(name: ".omp_outlined..6", scope: !1, file: !1, line: 74, type: !118, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325}
!318 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !316, type: !120, flags: DIFlagArtificial)
!319 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !316, type: !120, flags: DIFlagArtificial)
!320 = !DILocalVariable(name: "len", arg: 3, scope: !316, type: !124, flags: DIFlagArtificial)
!321 = !DILocalVariable(name: "sum2", arg: 4, scope: !316, type: !102, flags: DIFlagArtificial)
!322 = !DILocalVariable(name: "vla", arg: 5, scope: !316, type: !27, flags: DIFlagArtificial)
!323 = !DILocalVariable(name: "a", arg: 6, scope: !316, type: !102, flags: DIFlagArtificial)
!324 = !DILocalVariable(name: "vla", arg: 7, scope: !316, type: !27, flags: DIFlagArtificial)
!325 = !DILocalVariable(name: "b", arg: 8, scope: !316, type: !102, flags: DIFlagArtificial)
!326 = !DILocation(line: 0, scope: !316)
!327 = !DILocation(line: 74, column: 1, scope: !316)
