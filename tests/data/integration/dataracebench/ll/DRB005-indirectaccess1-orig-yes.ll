; ModuleID = 'DRB005-indirectaccess1-orig-yes.c'
source_filename = "DRB005-indirectaccess1-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@indexSet = dso_local global [180 x i32] [i32 521, i32 523, i32 525, i32 527, i32 529, i32 531, i32 547, i32 549, i32 551, i32 553, i32 555, i32 557, i32 573, i32 575, i32 577, i32 579, i32 581, i32 583, i32 599, i32 601, i32 603, i32 605, i32 607, i32 609, i32 625, i32 627, i32 629, i32 631, i32 633, i32 635, i32 651, i32 653, i32 655, i32 657, i32 659, i32 661, i32 859, i32 861, i32 863, i32 865, i32 867, i32 869, i32 885, i32 887, i32 889, i32 891, i32 893, i32 895, i32 911, i32 913, i32 915, i32 917, i32 919, i32 923, i32 937, i32 939, i32 941, i32 943, i32 945, i32 947, i32 963, i32 965, i32 967, i32 969, i32 971, i32 973, i32 989, i32 991, i32 993, i32 995, i32 997, i32 999, i32 1197, i32 1199, i32 1201, i32 1203, i32 1205, i32 1207, i32 1223, i32 1225, i32 1227, i32 1229, i32 1231, i32 1233, i32 1249, i32 1251, i32 1253, i32 1255, i32 1257, i32 1259, i32 1275, i32 1277, i32 1279, i32 1281, i32 1283, i32 1285, i32 1301, i32 1303, i32 1305, i32 1307, i32 1309, i32 1311, i32 1327, i32 1329, i32 1331, i32 1333, i32 1335, i32 1337, i32 1535, i32 1537, i32 1539, i32 1541, i32 1543, i32 1545, i32 1561, i32 1563, i32 1565, i32 1567, i32 1569, i32 1571, i32 1587, i32 1589, i32 1591, i32 1593, i32 1595, i32 1597, i32 1613, i32 1615, i32 1617, i32 1619, i32 1621, i32 1623, i32 1639, i32 1641, i32 1643, i32 1645, i32 1647, i32 1649, i32 1665, i32 1667, i32 1669, i32 1671, i32 1673, i32 1675, i32 1873, i32 1875, i32 1877, i32 1879, i32 1881, i32 1883, i32 1899, i32 1901, i32 1903, i32 1905, i32 1907, i32 1909, i32 1925, i32 1927, i32 1929, i32 1931, i32 1933, i32 1935, i32 1951, i32 1953, i32 1955, i32 1957, i32 1959, i32 1961, i32 1977, i32 1979, i32 1981, i32 1983, i32 1985, i32 1987, i32 2003, i32 2005, i32 2007, i32 2009, i32 2011, i32 2013], align 16, !dbg !0
@.str = private unnamed_addr constant [33 x i8] c"Error in malloc(). Aborting ...\0A\00", align 1
@0 = private unnamed_addr constant [48 x i8] c";DRB005-indirectaccess1-orig-yes.c;main;124;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [49 x i8] c";DRB005-indirectaccess1-orig-yes.c;main;124;44;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"x1[999]=%f xa2[1285]=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %base = alloca double*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %xa1 = alloca double*, align 8
  %xa2 = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !32
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !26, metadata !DIExpression()), !dbg !36
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !27, metadata !DIExpression()), !dbg !39
  %0 = bitcast double** %base to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #6, !dbg !40
  call void @llvm.dbg.declare(metadata double** %base, metadata !28, metadata !DIExpression()), !dbg !41
  %call = call noalias i8* @malloc(i64 16208) #6, !dbg !42
  %1 = bitcast i8* %call to double*, !dbg !43
  store double* %1, double** %base, align 8, !dbg !41, !tbaa !37
  %2 = load double*, double** %base, align 8, !dbg !44, !tbaa !37
  %cmp = icmp eq double* %2, null, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)), !dbg !48
  store i32 1, i32* %retval, align 4, !dbg !50
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !50

if.end:                                           ; preds = %entry
  %3 = bitcast double** %xa1 to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6, !dbg !51
  call void @llvm.dbg.declare(metadata double** %xa1, metadata !29, metadata !DIExpression()), !dbg !52
  %4 = load double*, double** %base, align 8, !dbg !53, !tbaa !37
  store double* %4, double** %xa1, align 8, !dbg !52, !tbaa !37
  %5 = bitcast double** %xa2 to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6, !dbg !54
  call void @llvm.dbg.declare(metadata double** %xa2, metadata !30, metadata !DIExpression()), !dbg !55
  %6 = load double*, double** %xa1, align 8, !dbg !56, !tbaa !37
  %add.ptr = getelementptr inbounds double, double* %6, i64 12, !dbg !57
  store double* %add.ptr, double** %xa2, align 8, !dbg !55, !tbaa !37
  %7 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !DIExpression()), !dbg !59
  store i32 521, i32* %i, align 4, !dbg !60, !tbaa !32
  br label %for.cond, !dbg !62

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !63, !tbaa !32
  %cmp2 = icmp sle i32 %8, 2025, !dbg !65
  br i1 %cmp2, label %for.body, label %for.end, !dbg !66

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !67, !tbaa !32
  %conv = sitofp i32 %9 to double, !dbg !67
  %mul = fmul double 5.000000e-01, %conv, !dbg !69
  %10 = load double*, double** %base, align 8, !dbg !70, !tbaa !37
  %11 = load i32, i32* %i, align 4, !dbg !71, !tbaa !32
  %idxprom = sext i32 %11 to i64, !dbg !70
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom, !dbg !70
  store double %mul, double* %arrayidx, align 8, !dbg !72, !tbaa !73
  br label %for.inc, !dbg !75

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !76, !tbaa !32
  %inc = add nsw i32 %12, 1, !dbg !76
  store i32 %inc, i32* %i, align 4, !dbg !76, !tbaa !32
  br label %for.cond, !dbg !77, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), double** %xa1, double** %xa2), !dbg !81
  %13 = load double*, double** %xa1, align 8, !dbg !82, !tbaa !37
  %arrayidx3 = getelementptr inbounds double, double* %13, i64 999, !dbg !82
  %14 = load double, double* %arrayidx3, align 8, !dbg !82, !tbaa !73
  %15 = load double*, double** %xa2, align 8, !dbg !83, !tbaa !37
  %arrayidx4 = getelementptr inbounds double, double* %15, i64 1285, !dbg !83
  %16 = load double, double* %arrayidx4, align 8, !dbg !83, !tbaa !73
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), double %14, double %16), !dbg !84
  %17 = load double*, double** %base, align 8, !dbg !85, !tbaa !37
  %18 = bitcast double* %17 to i8*, !dbg !85
  call void @free(i8* %18) #6, !dbg !86
  store i32 0, i32* %retval, align 4, !dbg !87
  store i32 1, i32* %cleanup.dest.slot, align 4
  %19 = bitcast i32* %i to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #6, !dbg !88
  %20 = bitcast double** %xa2 to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #6, !dbg !88
  %21 = bitcast double** %xa1 to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #6, !dbg !88
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %22 = bitcast double** %base to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %22) #6, !dbg !88
  %23 = load i32, i32* %retval, align 4, !dbg !88
  ret i32 %23, !dbg !88
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @printf(i8*, ...) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double** nonnull align 8 dereferenceable(8) %xa1, double** nonnull align 8 dereferenceable(8) %xa2) #5 !dbg !89 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %xa1.addr = alloca double**, align 8
  %xa2.addr = alloca double**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !110
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !110
  store double** %xa1, double*** %xa1.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata double*** %xa1.addr, metadata !100, metadata !DIExpression()), !dbg !111
  store double** %xa2, double*** %xa2.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata double*** %xa2.addr, metadata !101, metadata !DIExpression()), !dbg !112
  %0 = load double**, double*** %xa1.addr, align 8, !dbg !113, !tbaa !37
  %1 = load double**, double*** %xa2.addr, align 8, !dbg !113, !tbaa !37
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !102, metadata !DIExpression()), !dbg !110
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !103, metadata !DIExpression()), !dbg !110
  store i32 0, i32* %.omp.lb, align 4, !dbg !114, !tbaa !32
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !104, metadata !DIExpression()), !dbg !110
  store i32 179, i32* %.omp.ub, align 4, !dbg !114, !tbaa !32
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !105, metadata !DIExpression()), !dbg !110
  store i32 1, i32* %.omp.stride, align 4, !dbg !114, !tbaa !32
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !106, metadata !DIExpression()), !dbg !110
  store i32 0, i32* %.omp.is_last, align 4, !dbg !114, !tbaa !32
  %7 = bitcast i32* %i to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %i, metadata !107, metadata !DIExpression()), !dbg !110
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !113
  %9 = load i32, i32* %8, align 4, !dbg !113, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %9, i32 33, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !115
  br label %omp.dispatch.cond, !dbg !113

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !32
  %cmp = icmp sgt i32 %10, 179, !dbg !114
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !114

cond.true:                                        ; preds = %omp.dispatch.cond
  br label %cond.end, !dbg !114

cond.false:                                       ; preds = %omp.dispatch.cond
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !32
  br label %cond.end, !dbg !114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 179, %cond.true ], [ %11, %cond.false ], !dbg !114
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !114, !tbaa !32
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !114, !tbaa !32
  store i32 %12, i32* %.omp.iv, align 4, !dbg !114, !tbaa !32
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !32
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !32
  %cmp1 = icmp sle i32 %13, %14, !dbg !113
  br i1 %cmp1, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !113

omp.dispatch.cleanup:                             ; preds = %cond.end
  br label %omp.dispatch.end, !dbg !113

omp.dispatch.body:                                ; preds = %cond.end
  br label %omp.inner.for.cond, !dbg !113

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !32
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !32
  %cmp2 = icmp sle i32 %15, %16, !dbg !113
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !113

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !113

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !32
  %mul = mul nsw i32 %17, 1, !dbg !116
  %add = add nsw i32 0, %mul, !dbg !116
  store i32 %add, i32* %i, align 4, !dbg !116, !tbaa !32
  %18 = bitcast i32* %idx to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #6, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !108, metadata !DIExpression()), !dbg !118
  %19 = load i32, i32* %i, align 4, !dbg !119, !tbaa !32
  %idxprom = sext i32 %19 to i64, !dbg !120
  %arrayidx = getelementptr inbounds [180 x i32], [180 x i32]* @indexSet, i64 0, i64 %idxprom, !dbg !120
  %20 = load i32, i32* %arrayidx, align 4, !dbg !120, !tbaa !32
  store i32 %20, i32* %idx, align 4, !dbg !118, !tbaa !32
  %21 = load i32, i32* %i, align 4, !dbg !121, !tbaa !32
  %conv = sitofp i32 %21 to double, !dbg !121
  %add3 = fadd double 1.000000e+00, %conv, !dbg !122
  %22 = load double*, double** %0, align 8, !dbg !123, !tbaa !37
  %23 = load i32, i32* %idx, align 4, !dbg !124, !tbaa !32
  %idxprom4 = sext i32 %23 to i64, !dbg !123
  %arrayidx5 = getelementptr inbounds double, double* %22, i64 %idxprom4, !dbg !123
  %24 = load double, double* %arrayidx5, align 8, !dbg !125, !tbaa !73
  %add6 = fadd double %24, %add3, !dbg !125
  store double %add6, double* %arrayidx5, align 8, !dbg !125, !tbaa !73
  %25 = load i32, i32* %i, align 4, !dbg !126, !tbaa !32
  %conv7 = sitofp i32 %25 to double, !dbg !126
  %add8 = fadd double 3.000000e+00, %conv7, !dbg !127
  %26 = load double*, double** %1, align 8, !dbg !128, !tbaa !37
  %27 = load i32, i32* %idx, align 4, !dbg !129, !tbaa !32
  %idxprom9 = sext i32 %27 to i64, !dbg !128
  %arrayidx10 = getelementptr inbounds double, double* %26, i64 %idxprom9, !dbg !128
  %28 = load double, double* %arrayidx10, align 8, !dbg !130, !tbaa !73
  %add11 = fadd double %28, %add8, !dbg !130
  store double %add11, double* %arrayidx10, align 8, !dbg !130, !tbaa !73
  %29 = bitcast i32* %idx to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6, !dbg !131
  br label %omp.body.continue, !dbg !132

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !115

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !32
  %add12 = add nsw i32 %30, 1, !dbg !113
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !113, !tbaa !32
  br label %omp.inner.for.cond, !dbg !115, !llvm.loop !133

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !115

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  %31 = load i32, i32* %.omp.lb, align 4, !dbg !114, !tbaa !32
  %32 = load i32, i32* %.omp.stride, align 4, !dbg !114, !tbaa !32
  %add13 = add nsw i32 %31, %32, !dbg !113
  store i32 %add13, i32* %.omp.lb, align 4, !dbg !113, !tbaa !32
  %33 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !32
  %34 = load i32, i32* %.omp.stride, align 4, !dbg !114, !tbaa !32
  %add14 = add nsw i32 %33, %34, !dbg !113
  store i32 %add14, i32* %.omp.ub, align 4, !dbg !113, !tbaa !32
  br label %omp.dispatch.cond, !dbg !115, !llvm.loop !135

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %9), !dbg !134
  %35 = bitcast i32* %i to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #6, !dbg !115
  %36 = bitcast i32* %.omp.is_last to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #6, !dbg !115
  %37 = bitcast i32* %.omp.stride to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #6, !dbg !115
  %38 = bitcast i32* %.omp.ub to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6, !dbg !115
  %39 = bitcast i32* %.omp.lb to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6, !dbg !115
  %40 = bitcast i32* %.omp.iv to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #6, !dbg !115
  ret void, !dbg !131
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #6

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double** nonnull align 8 dereferenceable(8) %xa1, double** nonnull align 8 dereferenceable(8) %xa2) #5 !dbg !136 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %xa1.addr = alloca double**, align 8
  %xa2.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !138, metadata !DIExpression()), !dbg !142
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !139, metadata !DIExpression()), !dbg !142
  store double** %xa1, double*** %xa1.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata double*** %xa1.addr, metadata !140, metadata !DIExpression()), !dbg !142
  store double** %xa2, double*** %xa2.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata double*** %xa2.addr, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load double**, double*** %xa1.addr, align 8, !dbg !143, !tbaa !37
  %1 = load double**, double*** %xa2.addr, align 8, !dbg !143, !tbaa !37
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !143, !tbaa !37
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !143, !tbaa !37
  %4 = load double**, double*** %xa1.addr, align 8, !dbg !143, !tbaa !37
  %5 = load double**, double*** %xa2.addr, align 8, !dbg !143, !tbaa !37
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double** %4, double** %5) #6, !dbg !143
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare !callback !144 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #6

; Function Attrs: nounwind
declare !dbg !146 void @free(i8*) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "indexSet", scope: !2, file: !3, line: 66, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB005-indirectaccess1-orig-yes.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!0}
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 5760, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 180)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{!"clang version 11.1.0"}
!19 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 103, type: !20, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{!10, !10, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DILocalVariable(name: "argc", arg: 1, scope: !19, file: !3, line: 103, type: !10)
!27 = !DILocalVariable(name: "argv", arg: 2, scope: !19, file: !3, line: 103, type: !22)
!28 = !DILocalVariable(name: "base", scope: !19, file: !3, line: 107, type: !6)
!29 = !DILocalVariable(name: "xa1", scope: !19, file: !3, line: 114, type: !6)
!30 = !DILocalVariable(name: "xa2", scope: !19, file: !3, line: 115, type: !6)
!31 = !DILocalVariable(name: "i", scope: !19, file: !3, line: 116, type: !10)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 103, column: 15, scope: !19)
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !34, i64 0}
!39 = !DILocation(line: 103, column: 27, scope: !19)
!40 = !DILocation(line: 107, column: 3, scope: !19)
!41 = !DILocation(line: 107, column: 12, scope: !19)
!42 = !DILocation(line: 107, column: 29, scope: !19)
!43 = !DILocation(line: 107, column: 19, scope: !19)
!44 = !DILocation(line: 108, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !19, file: !3, line: 108, column: 7)
!46 = !DILocation(line: 108, column: 12, scope: !45)
!47 = !DILocation(line: 108, column: 7, scope: !19)
!48 = !DILocation(line: 110, column: 5, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 109, column: 3)
!50 = !DILocation(line: 111, column: 5, scope: !49)
!51 = !DILocation(line: 114, column: 3, scope: !19)
!52 = !DILocation(line: 114, column: 12, scope: !19)
!53 = !DILocation(line: 114, column: 18, scope: !19)
!54 = !DILocation(line: 115, column: 3, scope: !19)
!55 = !DILocation(line: 115, column: 12, scope: !19)
!56 = !DILocation(line: 115, column: 18, scope: !19)
!57 = !DILocation(line: 115, column: 22, scope: !19)
!58 = !DILocation(line: 116, column: 3, scope: !19)
!59 = !DILocation(line: 116, column: 7, scope: !19)
!60 = !DILocation(line: 119, column: 10, scope: !61)
!61 = distinct !DILexicalBlock(scope: !19, file: !3, line: 119, column: 3)
!62 = !DILocation(line: 119, column: 8, scope: !61)
!63 = !DILocation(line: 119, column: 16, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !3, line: 119, column: 3)
!65 = !DILocation(line: 119, column: 17, scope: !64)
!66 = !DILocation(line: 119, column: 3, scope: !61)
!67 = !DILocation(line: 121, column: 17, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !3, line: 120, column: 3)
!69 = !DILocation(line: 121, column: 16, scope: !68)
!70 = !DILocation(line: 121, column: 5, scope: !68)
!71 = !DILocation(line: 121, column: 10, scope: !68)
!72 = !DILocation(line: 121, column: 12, scope: !68)
!73 = !{!74, !74, i64 0}
!74 = !{!"double", !34, i64 0}
!75 = !DILocation(line: 122, column: 3, scope: !68)
!76 = !DILocation(line: 119, column: 26, scope: !64)
!77 = !DILocation(line: 119, column: 3, scope: !64)
!78 = distinct !{!78, !66, !79, !80}
!79 = !DILocation(line: 122, column: 3, scope: !61)
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !DILocation(line: 124, column: 1, scope: !19)
!82 = !DILocation(line: 132, column: 39, scope: !19)
!83 = !DILocation(line: 132, column: 49, scope: !19)
!84 = !DILocation(line: 132, column: 3, scope: !19)
!85 = !DILocation(line: 133, column: 9, scope: !19)
!86 = !DILocation(line: 133, column: 3, scope: !19)
!87 = !DILocation(line: 134, column: 3, scope: !19)
!88 = !DILocation(line: 135, column: 1, scope: !19)
!89 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 125, type: !90, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !92, !92, !96, !96}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !92, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !92, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "xa1", arg: 3, scope: !89, file: !3, line: 114, type: !96)
!101 = !DILocalVariable(name: "xa2", arg: 4, scope: !89, file: !3, line: 115, type: !96)
!102 = !DILocalVariable(name: ".omp.iv", scope: !89, type: !10, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.lb", scope: !89, type: !10, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.ub", scope: !89, type: !10, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.stride", scope: !89, type: !10, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".omp.is_last", scope: !89, type: !10, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "i", scope: !89, type: !10, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "idx", scope: !109, file: !3, line: 127, type: !10)
!109 = distinct !DILexicalBlock(scope: !89, file: !3, line: 126, column: 3)
!110 = !DILocation(line: 0, scope: !89)
!111 = !DILocation(line: 114, column: 12, scope: !89)
!112 = !DILocation(line: 115, column: 12, scope: !89)
!113 = !DILocation(line: 125, column: 3, scope: !89)
!114 = !DILocation(line: 125, column: 8, scope: !89)
!115 = !DILocation(line: 124, column: 1, scope: !89)
!116 = !DILocation(line: 125, column: 20, scope: !89)
!117 = !DILocation(line: 127, column: 5, scope: !109)
!118 = !DILocation(line: 127, column: 9, scope: !109)
!119 = !DILocation(line: 127, column: 24, scope: !109)
!120 = !DILocation(line: 127, column: 15, scope: !109)
!121 = !DILocation(line: 128, column: 22, scope: !109)
!122 = !DILocation(line: 128, column: 20, scope: !109)
!123 = !DILocation(line: 128, column: 5, scope: !109)
!124 = !DILocation(line: 128, column: 9, scope: !109)
!125 = !DILocation(line: 128, column: 13, scope: !109)
!126 = !DILocation(line: 129, column: 22, scope: !109)
!127 = !DILocation(line: 129, column: 20, scope: !109)
!128 = !DILocation(line: 129, column: 5, scope: !109)
!129 = !DILocation(line: 129, column: 9, scope: !109)
!130 = !DILocation(line: 129, column: 13, scope: !109)
!131 = !DILocation(line: 130, column: 3, scope: !89)
!132 = !DILocation(line: 130, column: 3, scope: !109)
!133 = distinct !{!133, !115, !134}
!134 = !DILocation(line: 124, column: 44, scope: !89)
!135 = distinct !{!135, !115, !134}
!136 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 124, type: !90, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!137 = !{!138, !139, !140, !141}
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !136, type: !92, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !136, type: !92, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "xa1", arg: 3, scope: !136, type: !96, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "xa2", arg: 4, scope: !136, type: !96, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !136)
!143 = !DILocation(line: 124, column: 1, scope: !136)
!144 = !{!145}
!145 = !{i64 2, i64 -1, i64 -1, i1 true}
!146 = !DISubprogram(name: "free", scope: !147, file: !147, line: 565, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!147 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!148 = !DISubroutineType(types: !149)
!149 = !{null, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
