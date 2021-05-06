; ModuleID = 'DRB058-jacobikernel-orig-no.c'
source_filename = "DRB058-jacobikernel-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@u = dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !0
@f = dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !8
@uold = dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !14
@dx = dso_local global double 0.000000e+00, align 8, !dbg !16
@dy = dso_local global double 0.000000e+00, align 8, !dbg !18
@n = dso_local global i32 200, align 4, !dbg !20
@m = dso_local global i32 200, align 4, !dbg !22
@mits = dso_local global i32 1000, align 4, !dbg !24
@tol = dso_local global double 1.000000e-10, align 8, !dbg !26
@relax = dso_local global double 1.000000e+00, align 8, !dbg !28
@alpha = dso_local global double 5.430000e-02, align 8, !dbg !30
@0 = private unnamed_addr constant [46 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;109;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant [47 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;109;29;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [46 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;113;1;;\00", align 1
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @5, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [47 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;113;61;;\00", align 1
@8 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @7, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @7, i32 0, i32 0) }, align 8
@10 = private unnamed_addr constant [46 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;107;1;;\00", align 1
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @10, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [31 x i8] c"Total Number of Iterations:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Residual:%E\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @initialize() #0 !dbg !38 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %0 = bitcast i32* %i to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i, metadata !42, metadata !DIExpression()), !dbg !47
  %1 = bitcast i32* %j to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %j, metadata !43, metadata !DIExpression()), !dbg !48
  %2 = bitcast i32* %xx to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !44, metadata !DIExpression()), !dbg !49
  %3 = bitcast i32* %yy to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %yy, metadata !45, metadata !DIExpression()), !dbg !50
  %4 = load i32, i32* @n, align 4, !dbg !51, !tbaa !52
  %sub = sub nsw i32 %4, 1, !dbg !56
  %conv = sitofp i32 %sub to double, !dbg !57
  %div = fdiv double 2.000000e+00, %conv, !dbg !58
  store double %div, double* @dx, align 8, !dbg !59, !tbaa !60
  %5 = load i32, i32* @m, align 4, !dbg !62, !tbaa !52
  %sub1 = sub nsw i32 %5, 1, !dbg !63
  %conv2 = sitofp i32 %sub1 to double, !dbg !64
  %div3 = fdiv double 2.000000e+00, %conv2, !dbg !65
  store double %div3, double* @dy, align 8, !dbg !66, !tbaa !60
  store i32 0, i32* %i, align 4, !dbg !67, !tbaa !52
  br label %for.cond, !dbg !69

for.cond:                                         ; preds = %for.inc42, %entry
  %6 = load i32, i32* %i, align 4, !dbg !70, !tbaa !52
  %7 = load i32, i32* @n, align 4, !dbg !72, !tbaa !52
  %cmp = icmp slt i32 %6, %7, !dbg !73
  br i1 %cmp, label %for.body, label %for.end44, !dbg !74

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !75, !tbaa !52
  br label %for.cond5, !dbg !77

for.cond5:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4, !dbg !78, !tbaa !52
  %9 = load i32, i32* @m, align 4, !dbg !80, !tbaa !52
  %cmp6 = icmp slt i32 %8, %9, !dbg !81
  br i1 %cmp6, label %for.body8, label %for.end, !dbg !82

for.body8:                                        ; preds = %for.cond5
  %10 = load double, double* @dx, align 8, !dbg !83, !tbaa !60
  %11 = load i32, i32* %i, align 4, !dbg !85, !tbaa !52
  %sub9 = sub nsw i32 %11, 1, !dbg !86
  %conv10 = sitofp i32 %sub9 to double, !dbg !87
  %mul = fmul double %10, %conv10, !dbg !88
  %add = fadd double -1.000000e+00, %mul, !dbg !89
  %conv11 = fptosi double %add to i32, !dbg !90
  store i32 %conv11, i32* %xx, align 4, !dbg !91, !tbaa !52
  %12 = load double, double* @dy, align 8, !dbg !92, !tbaa !60
  %13 = load i32, i32* %j, align 4, !dbg !93, !tbaa !52
  %sub12 = sub nsw i32 %13, 1, !dbg !94
  %conv13 = sitofp i32 %sub12 to double, !dbg !95
  %mul14 = fmul double %12, %conv13, !dbg !96
  %add15 = fadd double -1.000000e+00, %mul14, !dbg !97
  %conv16 = fptosi double %add15 to i32, !dbg !98
  store i32 %conv16, i32* %yy, align 4, !dbg !99, !tbaa !52
  %14 = load i32, i32* %i, align 4, !dbg !100, !tbaa !52
  %idxprom = sext i32 %14 to i64, !dbg !101
  %arrayidx = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom, !dbg !101
  %15 = load i32, i32* %j, align 4, !dbg !102, !tbaa !52
  %idxprom17 = sext i32 %15 to i64, !dbg !101
  %arrayidx18 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx, i64 0, i64 %idxprom17, !dbg !101
  store double 0.000000e+00, double* %arrayidx18, align 8, !dbg !103, !tbaa !60
  %16 = load double, double* @alpha, align 8, !dbg !104, !tbaa !60
  %mul19 = fmul double -1.000000e+00, %16, !dbg !105
  %17 = load i32, i32* %xx, align 4, !dbg !106, !tbaa !52
  %18 = load i32, i32* %xx, align 4, !dbg !107, !tbaa !52
  %mul20 = mul nsw i32 %17, %18, !dbg !108
  %conv21 = sitofp i32 %mul20 to double, !dbg !106
  %sub22 = fsub double 1.000000e+00, %conv21, !dbg !109
  %mul23 = fmul double %mul19, %sub22, !dbg !110
  %19 = load i32, i32* %yy, align 4, !dbg !111, !tbaa !52
  %20 = load i32, i32* %yy, align 4, !dbg !112, !tbaa !52
  %mul24 = mul nsw i32 %19, %20, !dbg !113
  %conv25 = sitofp i32 %mul24 to double, !dbg !111
  %sub26 = fsub double 1.000000e+00, %conv25, !dbg !114
  %mul27 = fmul double %mul23, %sub26, !dbg !115
  %21 = load i32, i32* %xx, align 4, !dbg !116, !tbaa !52
  %22 = load i32, i32* %xx, align 4, !dbg !117, !tbaa !52
  %mul28 = mul nsw i32 %21, %22, !dbg !118
  %conv29 = sitofp i32 %mul28 to double, !dbg !116
  %sub30 = fsub double 1.000000e+00, %conv29, !dbg !119
  %mul31 = fmul double 2.000000e+00, %sub30, !dbg !120
  %sub32 = fsub double %mul27, %mul31, !dbg !121
  %23 = load i32, i32* %yy, align 4, !dbg !122, !tbaa !52
  %24 = load i32, i32* %yy, align 4, !dbg !123, !tbaa !52
  %mul33 = mul nsw i32 %23, %24, !dbg !124
  %conv34 = sitofp i32 %mul33 to double, !dbg !122
  %sub35 = fsub double 1.000000e+00, %conv34, !dbg !125
  %mul36 = fmul double 2.000000e+00, %sub35, !dbg !126
  %sub37 = fsub double %sub32, %mul36, !dbg !127
  %25 = load i32, i32* %i, align 4, !dbg !128, !tbaa !52
  %idxprom38 = sext i32 %25 to i64, !dbg !129
  %arrayidx39 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %idxprom38, !dbg !129
  %26 = load i32, i32* %j, align 4, !dbg !130, !tbaa !52
  %idxprom40 = sext i32 %26 to i64, !dbg !129
  %arrayidx41 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx39, i64 0, i64 %idxprom40, !dbg !129
  store double %sub37, double* %arrayidx41, align 8, !dbg !131, !tbaa !60
  br label %for.inc, !dbg !132

for.inc:                                          ; preds = %for.body8
  %27 = load i32, i32* %j, align 4, !dbg !133, !tbaa !52
  %inc = add nsw i32 %27, 1, !dbg !133
  store i32 %inc, i32* %j, align 4, !dbg !133, !tbaa !52
  br label %for.cond5, !dbg !134, !llvm.loop !135

for.end:                                          ; preds = %for.cond5
  br label %for.inc42, !dbg !136

for.inc42:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4, !dbg !138, !tbaa !52
  %inc43 = add nsw i32 %28, 1, !dbg !138
  store i32 %inc43, i32* %i, align 4, !dbg !138, !tbaa !52
  br label %for.cond, !dbg !139, !llvm.loop !140

for.end44:                                        ; preds = %for.cond
  %29 = bitcast i32* %yy to i8*, !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !142
  %30 = bitcast i32* %xx to i8*, !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !142
  %31 = bitcast i32* %j to i8*, !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !142
  %32 = bitcast i32* %i to i8*, !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !142
  ret void, !dbg !142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @jacobi() #0 !dbg !143 {
entry:
  %omega = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %error = alloca double, align 8
  %resid = alloca double, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %b = alloca double, align 8
  %0 = bitcast double* %omega to i8*, !dbg !154
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #4, !dbg !154
  call void @llvm.dbg.declare(metadata double* %omega, metadata !145, metadata !DIExpression()), !dbg !155
  %1 = bitcast i32* %i to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !156
  call void @llvm.dbg.declare(metadata i32* %i, metadata !146, metadata !DIExpression()), !dbg !157
  %2 = bitcast i32* %j to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !156
  call void @llvm.dbg.declare(metadata i32* %j, metadata !147, metadata !DIExpression()), !dbg !158
  %3 = bitcast i32* %k to i8*, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !156
  call void @llvm.dbg.declare(metadata i32* %k, metadata !148, metadata !DIExpression()), !dbg !159
  %4 = bitcast double* %error to i8*, !dbg !160
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4, !dbg !160
  call void @llvm.dbg.declare(metadata double* %error, metadata !149, metadata !DIExpression()), !dbg !161
  %5 = bitcast double* %resid to i8*, !dbg !160
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #4, !dbg !160
  call void @llvm.dbg.declare(metadata double* %resid, metadata !150, metadata !DIExpression()), !dbg !162
  %6 = bitcast double* %ax to i8*, !dbg !160
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !160
  call void @llvm.dbg.declare(metadata double* %ax, metadata !151, metadata !DIExpression()), !dbg !163
  %7 = bitcast double* %ay to i8*, !dbg !160
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #4, !dbg !160
  call void @llvm.dbg.declare(metadata double* %ay, metadata !152, metadata !DIExpression()), !dbg !164
  %8 = bitcast double* %b to i8*, !dbg !160
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !160
  call void @llvm.dbg.declare(metadata double* %b, metadata !153, metadata !DIExpression()), !dbg !165
  %9 = load double, double* @relax, align 8, !dbg !166, !tbaa !60
  store double %9, double* %omega, align 8, !dbg !167, !tbaa !60
  %10 = load i32, i32* @n, align 4, !dbg !168, !tbaa !52
  %sub = sub nsw i32 %10, 1, !dbg !169
  %conv = sitofp i32 %sub to double, !dbg !170
  %div = fdiv double 2.000000e+00, %conv, !dbg !171
  store double %div, double* @dx, align 8, !dbg !172, !tbaa !60
  %11 = load i32, i32* @m, align 4, !dbg !173, !tbaa !52
  %sub1 = sub nsw i32 %11, 1, !dbg !174
  %conv2 = sitofp i32 %sub1 to double, !dbg !175
  %div3 = fdiv double 2.000000e+00, %conv2, !dbg !176
  store double %div3, double* @dy, align 8, !dbg !177, !tbaa !60
  %12 = load double, double* @dx, align 8, !dbg !178, !tbaa !60
  %13 = load double, double* @dx, align 8, !dbg !179, !tbaa !60
  %mul = fmul double %12, %13, !dbg !180
  %div4 = fdiv double 1.000000e+00, %mul, !dbg !181
  store double %div4, double* %ax, align 8, !dbg !182, !tbaa !60
  %14 = load double, double* @dy, align 8, !dbg !183, !tbaa !60
  %15 = load double, double* @dy, align 8, !dbg !184, !tbaa !60
  %mul5 = fmul double %14, %15, !dbg !185
  %div6 = fdiv double 1.000000e+00, %mul5, !dbg !186
  store double %div6, double* %ay, align 8, !dbg !187, !tbaa !60
  %16 = load double, double* @dx, align 8, !dbg !188, !tbaa !60
  %17 = load double, double* @dx, align 8, !dbg !189, !tbaa !60
  %mul7 = fmul double %16, %17, !dbg !190
  %div8 = fdiv double -2.000000e+00, %mul7, !dbg !191
  %18 = load double, double* @dy, align 8, !dbg !192, !tbaa !60
  %19 = load double, double* @dy, align 8, !dbg !193, !tbaa !60
  %mul9 = fmul double %18, %19, !dbg !194
  %div10 = fdiv double 2.000000e+00, %mul9, !dbg !195
  %sub11 = fsub double %div8, %div10, !dbg !196
  %20 = load double, double* @alpha, align 8, !dbg !197, !tbaa !60
  %sub12 = fsub double %sub11, %20, !dbg !198
  store double %sub12, double* %b, align 8, !dbg !199, !tbaa !60
  %21 = load double, double* @tol, align 8, !dbg !200, !tbaa !60
  %mul13 = fmul double 1.000000e+01, %21, !dbg !201
  store double %mul13, double* %error, align 8, !dbg !202, !tbaa !60
  store i32 1, i32* %k, align 4, !dbg !203, !tbaa !52
  br label %while.cond, !dbg !204

while.cond:                                       ; preds = %while.body, %entry
  %22 = load i32, i32* %k, align 4, !dbg !205, !tbaa !52
  %23 = load i32, i32* @mits, align 4, !dbg !206, !tbaa !52
  %cmp = icmp sle i32 %22, %23, !dbg !207
  br i1 %cmp, label %while.body, label %while.end, !dbg !204

while.body:                                       ; preds = %while.cond
  store double 0.000000e+00, double* %error, align 8, !dbg !208, !tbaa !60
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @11, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*, double*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %error, double* %ax, double* %ay, double* %b, double* %omega), !dbg !210
  %24 = load i32, i32* %k, align 4, !dbg !211, !tbaa !52
  %add = add nsw i32 %24, 1, !dbg !212
  store i32 %add, i32* %k, align 4, !dbg !213, !tbaa !52
  %25 = load double, double* %error, align 8, !dbg !214, !tbaa !60
  %call = call double @sqrt(double %25) #4, !dbg !215
  %26 = load i32, i32* @n, align 4, !dbg !216, !tbaa !52
  %27 = load i32, i32* @m, align 4, !dbg !217, !tbaa !52
  %mul15 = mul nsw i32 %26, %27, !dbg !218
  %conv16 = sitofp i32 %mul15 to double, !dbg !219
  %div17 = fdiv double %call, %conv16, !dbg !220
  store double %div17, double* %error, align 8, !dbg !221, !tbaa !60
  br label %while.cond, !dbg !204, !llvm.loop !222

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* %k, align 4, !dbg !224, !tbaa !52
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28), !dbg !225
  %29 = load double, double* %error, align 8, !dbg !226, !tbaa !60
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), double %29), !dbg !227
  %30 = bitcast double* %b to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #4, !dbg !228
  %31 = bitcast double* %ay to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #4, !dbg !228
  %32 = bitcast double* %ax to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #4, !dbg !228
  %33 = bitcast double* %resid to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #4, !dbg !228
  %34 = bitcast double* %error to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #4, !dbg !228
  %35 = bitcast i32* %k to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !228
  %36 = bitcast i32* %j to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !228
  %37 = bitcast i32* %i to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !228
  %38 = bitcast double* %omega to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %38) #4, !dbg !228
  ret void, !dbg !228
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* nonnull align 8 dereferenceable(8) %error, double* nonnull align 8 dereferenceable(8) %ax, double* nonnull align 8 dereferenceable(8) %ay, double* nonnull align 8 dereferenceable(8) %b, double* nonnull align 8 dereferenceable(8) %omega) #3 !dbg !229 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %error.addr = alloca double*, align 8
  %ax.addr = alloca double*, align 8
  %ay.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %omega.addr = alloca double*, align 8
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
  %j = alloca i32, align 4
  %i4 = alloca i32, align 4
  %.omp.iv15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %.capture_expr.17 = alloca i32, align 4
  %.capture_expr.19 = alloca i32, align 4
  %i23 = alloca i32, align 4
  %.omp.lb26 = alloca i32, align 4
  %.omp.ub27 = alloca i32, align 4
  %.omp.stride28 = alloca i32, align 4
  %.omp.is_last29 = alloca i32, align 4
  %i30 = alloca i32, align 4
  %j31 = alloca i32, align 4
  %resid = alloca double, align 8
  %error32 = alloca double, align 8
  %i33 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp107 = alloca double, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !238, metadata !DIExpression()), !dbg !268
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !239, metadata !DIExpression()), !dbg !268
  store double* %error, double** %error.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %error.addr, metadata !240, metadata !DIExpression()), !dbg !269
  store double* %ax, double** %ax.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %ax.addr, metadata !241, metadata !DIExpression()), !dbg !270
  store double* %ay, double** %ay.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %ay.addr, metadata !242, metadata !DIExpression()), !dbg !271
  store double* %b, double** %b.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !243, metadata !DIExpression()), !dbg !272
  store double* %omega, double** %omega.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %omega.addr, metadata !244, metadata !DIExpression()), !dbg !273
  %0 = load double*, double** %error.addr, align 8, !dbg !274, !tbaa !266
  %1 = load double*, double** %ax.addr, align 8, !dbg !274, !tbaa !266
  %2 = load double*, double** %ay.addr, align 8, !dbg !274, !tbaa !266
  %3 = load double*, double** %b.addr, align 8, !dbg !274, !tbaa !266
  %4 = load double*, double** %omega.addr, align 8, !dbg !274, !tbaa !266
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !245, metadata !DIExpression()), !dbg !276
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !248, metadata !DIExpression()), !dbg !276
  %7 = load i32, i32* @n, align 4, !dbg !277, !tbaa !52
  store i32 %7, i32* %.capture_expr., align 4, !dbg !277, !tbaa !52
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !248, metadata !DIExpression()), !dbg !276
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !277, !tbaa !52
  %sub = sub nsw i32 %9, 0, !dbg !278
  %div = sdiv i32 %sub, 1, !dbg !278
  %sub2 = sub nsw i32 %div, 1, !dbg !278
  store i32 %sub2, i32* %.capture_expr.1, align 4, !dbg !278, !tbaa !52
  %10 = bitcast i32* %i to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %i, metadata !249, metadata !DIExpression()), !dbg !276
  store i32 0, i32* %i, align 4, !dbg !279, !tbaa !52
  %11 = bitcast i32* %i to i8*, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !275
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !277, !tbaa !52
  %cmp = icmp slt i32 0, %12, !dbg !278
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !275

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !250, metadata !DIExpression()), !dbg !276
  store i32 0, i32* %.omp.lb, align 4, !dbg !280, !tbaa !52
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !251, metadata !DIExpression()), !dbg !276
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !278, !tbaa !52
  store i32 %15, i32* %.omp.ub, align 4, !dbg !280, !tbaa !52
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !252, metadata !DIExpression()), !dbg !276
  store i32 1, i32* %.omp.stride, align 4, !dbg !280, !tbaa !52
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !253, metadata !DIExpression()), !dbg !276
  store i32 0, i32* %.omp.is_last, align 4, !dbg !280, !tbaa !52
  %18 = bitcast i32* %i3 to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !249, metadata !DIExpression()), !dbg !276
  %19 = bitcast i32* %j to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %j, metadata !254, metadata !DIExpression()), !dbg !276
  %20 = bitcast i32* %i4 to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !249, metadata !DIExpression()), !dbg !276
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !275
  %22 = load i32, i32* %21, align 4, !dbg !275, !tbaa !52
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !281
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !280, !tbaa !52
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !278, !tbaa !52
  %cmp5 = icmp sgt i32 %23, %24, !dbg !280
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !280

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !278, !tbaa !52
  br label %cond.end, !dbg !280

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !280, !tbaa !52
  br label %cond.end, !dbg !280

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !280
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !280, !tbaa !52
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !280, !tbaa !52
  store i32 %27, i32* %.omp.iv, align 4, !dbg !280, !tbaa !52
  br label %omp.inner.for.cond, !dbg !275

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !280, !tbaa !52
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !280, !tbaa !52
  %cmp6 = icmp sle i32 %28, %29, !dbg !278
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !275

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !275

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !280, !tbaa !52
  %mul = mul nsw i32 %30, 1, !dbg !279
  %add = add nsw i32 0, %mul, !dbg !279
  store i32 %add, i32* %i3, align 4, !dbg !279, !tbaa !52
  store i32 0, i32* %j, align 4, !dbg !282, !tbaa !52
  br label %for.cond, !dbg !284

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %31 = load i32, i32* %j, align 4, !dbg !285, !tbaa !52
  %32 = load i32, i32* @m, align 4, !dbg !287, !tbaa !52
  %cmp7 = icmp slt i32 %31, %32, !dbg !288
  br i1 %cmp7, label %for.body, label %for.end, !dbg !289

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i3, align 4, !dbg !290, !tbaa !52
  %idxprom = sext i32 %33 to i64, !dbg !291
  %arrayidx = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom, !dbg !291
  %34 = load i32, i32* %j, align 4, !dbg !292, !tbaa !52
  %idxprom8 = sext i32 %34 to i64, !dbg !291
  %arrayidx9 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx, i64 0, i64 %idxprom8, !dbg !291
  %35 = load double, double* %arrayidx9, align 8, !dbg !291, !tbaa !60
  %36 = load i32, i32* %i3, align 4, !dbg !293, !tbaa !52
  %idxprom10 = sext i32 %36 to i64, !dbg !294
  %arrayidx11 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom10, !dbg !294
  %37 = load i32, i32* %j, align 4, !dbg !295, !tbaa !52
  %idxprom12 = sext i32 %37 to i64, !dbg !294
  %arrayidx13 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx11, i64 0, i64 %idxprom12, !dbg !294
  store double %35, double* %arrayidx13, align 8, !dbg !296, !tbaa !60
  br label %for.inc, !dbg !294

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %j, align 4, !dbg !297, !tbaa !52
  %inc = add nsw i32 %38, 1, !dbg !297
  store i32 %inc, i32* %j, align 4, !dbg !297, !tbaa !52
  br label %for.cond, !dbg !298, !llvm.loop !299

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !300

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !281

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !280, !tbaa !52
  %add14 = add nsw i32 %39, 1, !dbg !278
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !278, !tbaa !52
  br label %omp.inner.for.cond, !dbg !281, !llvm.loop !301

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !281

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %40 = load i32*, i32** %.global_tid..addr, align 8, !dbg !281
  %41 = load i32, i32* %40, align 4, !dbg !281, !tbaa !52
  call void @__kmpc_for_static_fini(%struct.ident_t* @3, i32 %41), !dbg !302
  %42 = bitcast i32* %i4 to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !281
  %43 = bitcast i32* %j to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !281
  %44 = bitcast i32* %i3 to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !281
  %45 = bitcast i32* %.omp.is_last to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !281
  %46 = bitcast i32* %.omp.stride to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !281
  %47 = bitcast i32* %.omp.ub to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !281
  %48 = bitcast i32* %.omp.lb to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !281
  br label %omp.precond.end, !dbg !281

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %49 = bitcast i32* %.capture_expr.1 to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !281
  %50 = bitcast i32* %.capture_expr. to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !281
  %51 = bitcast i32* %.omp.iv to i8*, !dbg !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !281
  %52 = load i32*, i32** %.global_tid..addr, align 8, !dbg !302
  %53 = load i32, i32* %52, align 4, !dbg !302, !tbaa !52
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %53), !dbg !302
  %54 = bitcast i32* %.omp.iv15 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %54) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %.omp.iv15, metadata !255, metadata !DIExpression()), !dbg !304
  %55 = bitcast i32* %.capture_expr.17 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %55) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.17, metadata !257, metadata !DIExpression()), !dbg !304
  %56 = load i32, i32* @n, align 4, !dbg !305, !tbaa !52
  %sub18 = sub nsw i32 %56, 1, !dbg !306
  store i32 %sub18, i32* %.capture_expr.17, align 4, !dbg !307, !tbaa !52
  %57 = bitcast i32* %.capture_expr.19 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %57) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.19, metadata !257, metadata !DIExpression()), !dbg !304
  %58 = load i32, i32* %.capture_expr.17, align 4, !dbg !307, !tbaa !52
  %sub20 = sub nsw i32 %58, 1, !dbg !308
  %div21 = sdiv i32 %sub20, 1, !dbg !308
  %sub22 = sub nsw i32 %div21, 1, !dbg !308
  store i32 %sub22, i32* %.capture_expr.19, align 4, !dbg !308, !tbaa !52
  %59 = bitcast i32* %i23 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %59) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %i23, metadata !258, metadata !DIExpression()), !dbg !304
  store i32 1, i32* %i23, align 4, !dbg !309, !tbaa !52
  %60 = bitcast i32* %i23 to i8*, !dbg !303
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !303
  %61 = load i32, i32* %.capture_expr.17, align 4, !dbg !307, !tbaa !52
  %cmp24 = icmp slt i32 1, %61, !dbg !308
  br i1 %cmp24, label %omp.precond.then25, label %omp.precond.end109, !dbg !303

omp.precond.then25:                               ; preds = %omp.precond.end
  %62 = bitcast i32* %.omp.lb26 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %62) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %.omp.lb26, metadata !259, metadata !DIExpression()), !dbg !304
  store i32 0, i32* %.omp.lb26, align 4, !dbg !310, !tbaa !52
  %63 = bitcast i32* %.omp.ub27 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %63) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %.omp.ub27, metadata !260, metadata !DIExpression()), !dbg !304
  %64 = load i32, i32* %.capture_expr.19, align 4, !dbg !308, !tbaa !52
  store i32 %64, i32* %.omp.ub27, align 4, !dbg !310, !tbaa !52
  %65 = bitcast i32* %.omp.stride28 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %65) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %.omp.stride28, metadata !261, metadata !DIExpression()), !dbg !304
  store i32 1, i32* %.omp.stride28, align 4, !dbg !310, !tbaa !52
  %66 = bitcast i32* %.omp.is_last29 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %66) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last29, metadata !262, metadata !DIExpression()), !dbg !304
  store i32 0, i32* %.omp.is_last29, align 4, !dbg !310, !tbaa !52
  %67 = bitcast i32* %i30 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %67) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %i30, metadata !258, metadata !DIExpression()), !dbg !304
  %68 = bitcast i32* %j31 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %68) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %j31, metadata !263, metadata !DIExpression()), !dbg !304
  %69 = bitcast double* %resid to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %69) #4, !dbg !303
  call void @llvm.dbg.declare(metadata double* %resid, metadata !264, metadata !DIExpression()), !dbg !304
  %70 = bitcast double* %error32 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %70) #4, !dbg !303
  call void @llvm.dbg.declare(metadata double* %error32, metadata !265, metadata !DIExpression()), !dbg !304
  store double 0.000000e+00, double* %error32, align 8, !dbg !311, !tbaa !60
  %71 = bitcast i32* %i33 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %71) #4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %i33, metadata !258, metadata !DIExpression()), !dbg !304
  %72 = load i32*, i32** %.global_tid..addr, align 8, !dbg !303
  %73 = load i32, i32* %72, align 4, !dbg !303, !tbaa !52
  call void @__kmpc_for_static_init_4(%struct.ident_t* @6, i32 %73, i32 34, i32* %.omp.is_last29, i32* %.omp.lb26, i32* %.omp.ub27, i32* %.omp.stride28, i32 1, i32 1), !dbg !312
  %74 = load i32, i32* %.omp.ub27, align 4, !dbg !310, !tbaa !52
  %75 = load i32, i32* %.capture_expr.19, align 4, !dbg !308, !tbaa !52
  %cmp34 = icmp sgt i32 %74, %75, !dbg !310
  br i1 %cmp34, label %cond.true35, label %cond.false36, !dbg !310

cond.true35:                                      ; preds = %omp.precond.then25
  %76 = load i32, i32* %.capture_expr.19, align 4, !dbg !308, !tbaa !52
  br label %cond.end37, !dbg !310

cond.false36:                                     ; preds = %omp.precond.then25
  %77 = load i32, i32* %.omp.ub27, align 4, !dbg !310, !tbaa !52
  br label %cond.end37, !dbg !310

cond.end37:                                       ; preds = %cond.false36, %cond.true35
  %cond38 = phi i32 [ %76, %cond.true35 ], [ %77, %cond.false36 ], !dbg !310
  store i32 %cond38, i32* %.omp.ub27, align 4, !dbg !310, !tbaa !52
  %78 = load i32, i32* %.omp.lb26, align 4, !dbg !310, !tbaa !52
  store i32 %78, i32* %.omp.iv15, align 4, !dbg !310, !tbaa !52
  br label %omp.inner.for.cond39, !dbg !303

omp.inner.for.cond39:                             ; preds = %omp.inner.for.inc102, %cond.end37
  %79 = load i32, i32* %.omp.iv15, align 4, !dbg !310, !tbaa !52
  %80 = load i32, i32* %.omp.ub27, align 4, !dbg !310, !tbaa !52
  %cmp40 = icmp sle i32 %79, %80, !dbg !308
  br i1 %cmp40, label %omp.inner.for.body42, label %omp.inner.for.cond.cleanup41, !dbg !303

omp.inner.for.cond.cleanup41:                     ; preds = %omp.inner.for.cond39
  br label %omp.inner.for.end104, !dbg !303

omp.inner.for.body42:                             ; preds = %omp.inner.for.cond39
  %81 = load i32, i32* %.omp.iv15, align 4, !dbg !310, !tbaa !52
  %mul43 = mul nsw i32 %81, 1, !dbg !309
  %add44 = add nsw i32 1, %mul43, !dbg !309
  store i32 %add44, i32* %i30, align 4, !dbg !309, !tbaa !52
  store i32 1, i32* %j31, align 4, !dbg !313, !tbaa !52
  br label %for.cond45, !dbg !315

for.cond45:                                       ; preds = %for.inc98, %omp.inner.for.body42
  %82 = load i32, i32* %j31, align 4, !dbg !316, !tbaa !52
  %83 = load i32, i32* @m, align 4, !dbg !318, !tbaa !52
  %sub46 = sub nsw i32 %83, 1, !dbg !319
  %cmp47 = icmp slt i32 %82, %sub46, !dbg !320
  br i1 %cmp47, label %for.body48, label %for.end100, !dbg !321

for.body48:                                       ; preds = %for.cond45
  %84 = load double, double* %1, align 8, !dbg !322, !tbaa !60
  %85 = load i32, i32* %i30, align 4, !dbg !324, !tbaa !52
  %sub49 = sub nsw i32 %85, 1, !dbg !325
  %idxprom50 = sext i32 %sub49 to i64, !dbg !326
  %arrayidx51 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom50, !dbg !326
  %86 = load i32, i32* %j31, align 4, !dbg !327, !tbaa !52
  %idxprom52 = sext i32 %86 to i64, !dbg !326
  %arrayidx53 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx51, i64 0, i64 %idxprom52, !dbg !326
  %87 = load double, double* %arrayidx53, align 8, !dbg !326, !tbaa !60
  %88 = load i32, i32* %i30, align 4, !dbg !328, !tbaa !52
  %add54 = add nsw i32 %88, 1, !dbg !329
  %idxprom55 = sext i32 %add54 to i64, !dbg !330
  %arrayidx56 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom55, !dbg !330
  %89 = load i32, i32* %j31, align 4, !dbg !331, !tbaa !52
  %idxprom57 = sext i32 %89 to i64, !dbg !330
  %arrayidx58 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx56, i64 0, i64 %idxprom57, !dbg !330
  %90 = load double, double* %arrayidx58, align 8, !dbg !330, !tbaa !60
  %add59 = fadd double %87, %90, !dbg !332
  %mul60 = fmul double %84, %add59, !dbg !333
  %91 = load double, double* %2, align 8, !dbg !334, !tbaa !60
  %92 = load i32, i32* %i30, align 4, !dbg !335, !tbaa !52
  %idxprom61 = sext i32 %92 to i64, !dbg !336
  %arrayidx62 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom61, !dbg !336
  %93 = load i32, i32* %j31, align 4, !dbg !337, !tbaa !52
  %sub63 = sub nsw i32 %93, 1, !dbg !338
  %idxprom64 = sext i32 %sub63 to i64, !dbg !336
  %arrayidx65 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx62, i64 0, i64 %idxprom64, !dbg !336
  %94 = load double, double* %arrayidx65, align 8, !dbg !336, !tbaa !60
  %95 = load i32, i32* %i30, align 4, !dbg !339, !tbaa !52
  %idxprom66 = sext i32 %95 to i64, !dbg !340
  %arrayidx67 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom66, !dbg !340
  %96 = load i32, i32* %j31, align 4, !dbg !341, !tbaa !52
  %add68 = add nsw i32 %96, 1, !dbg !342
  %idxprom69 = sext i32 %add68 to i64, !dbg !340
  %arrayidx70 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx67, i64 0, i64 %idxprom69, !dbg !340
  %97 = load double, double* %arrayidx70, align 8, !dbg !340, !tbaa !60
  %add71 = fadd double %94, %97, !dbg !343
  %mul72 = fmul double %91, %add71, !dbg !344
  %add73 = fadd double %mul60, %mul72, !dbg !345
  %98 = load double, double* %3, align 8, !dbg !346, !tbaa !60
  %99 = load i32, i32* %i30, align 4, !dbg !347, !tbaa !52
  %idxprom74 = sext i32 %99 to i64, !dbg !348
  %arrayidx75 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom74, !dbg !348
  %100 = load i32, i32* %j31, align 4, !dbg !349, !tbaa !52
  %idxprom76 = sext i32 %100 to i64, !dbg !348
  %arrayidx77 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx75, i64 0, i64 %idxprom76, !dbg !348
  %101 = load double, double* %arrayidx77, align 8, !dbg !348, !tbaa !60
  %mul78 = fmul double %98, %101, !dbg !350
  %add79 = fadd double %add73, %mul78, !dbg !351
  %102 = load i32, i32* %i30, align 4, !dbg !352, !tbaa !52
  %idxprom80 = sext i32 %102 to i64, !dbg !353
  %arrayidx81 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %idxprom80, !dbg !353
  %103 = load i32, i32* %j31, align 4, !dbg !354, !tbaa !52
  %idxprom82 = sext i32 %103 to i64, !dbg !353
  %arrayidx83 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx81, i64 0, i64 %idxprom82, !dbg !353
  %104 = load double, double* %arrayidx83, align 8, !dbg !353, !tbaa !60
  %sub84 = fsub double %add79, %104, !dbg !355
  %105 = load double, double* %3, align 8, !dbg !356, !tbaa !60
  %div85 = fdiv double %sub84, %105, !dbg !357
  store double %div85, double* %resid, align 8, !dbg !358, !tbaa !60
  %106 = load i32, i32* %i30, align 4, !dbg !359, !tbaa !52
  %idxprom86 = sext i32 %106 to i64, !dbg !360
  %arrayidx87 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom86, !dbg !360
  %107 = load i32, i32* %j31, align 4, !dbg !361, !tbaa !52
  %idxprom88 = sext i32 %107 to i64, !dbg !360
  %arrayidx89 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx87, i64 0, i64 %idxprom88, !dbg !360
  %108 = load double, double* %arrayidx89, align 8, !dbg !360, !tbaa !60
  %109 = load double, double* %4, align 8, !dbg !362, !tbaa !60
  %110 = load double, double* %resid, align 8, !dbg !363, !tbaa !60
  %mul90 = fmul double %109, %110, !dbg !364
  %sub91 = fsub double %108, %mul90, !dbg !365
  %111 = load i32, i32* %i30, align 4, !dbg !366, !tbaa !52
  %idxprom92 = sext i32 %111 to i64, !dbg !367
  %arrayidx93 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom92, !dbg !367
  %112 = load i32, i32* %j31, align 4, !dbg !368, !tbaa !52
  %idxprom94 = sext i32 %112 to i64, !dbg !367
  %arrayidx95 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx93, i64 0, i64 %idxprom94, !dbg !367
  store double %sub91, double* %arrayidx95, align 8, !dbg !369, !tbaa !60
  %113 = load double, double* %error32, align 8, !dbg !370, !tbaa !60
  %114 = load double, double* %resid, align 8, !dbg !371, !tbaa !60
  %115 = load double, double* %resid, align 8, !dbg !372, !tbaa !60
  %mul96 = fmul double %114, %115, !dbg !373
  %add97 = fadd double %113, %mul96, !dbg !374
  store double %add97, double* %error32, align 8, !dbg !375, !tbaa !60
  br label %for.inc98, !dbg !376

for.inc98:                                        ; preds = %for.body48
  %116 = load i32, i32* %j31, align 4, !dbg !377, !tbaa !52
  %inc99 = add nsw i32 %116, 1, !dbg !377
  store i32 %inc99, i32* %j31, align 4, !dbg !377, !tbaa !52
  br label %for.cond45, !dbg !378, !llvm.loop !379

for.end100:                                       ; preds = %for.cond45
  br label %omp.body.continue101, !dbg !380

omp.body.continue101:                             ; preds = %for.end100
  br label %omp.inner.for.inc102, !dbg !312

omp.inner.for.inc102:                             ; preds = %omp.body.continue101
  %117 = load i32, i32* %.omp.iv15, align 4, !dbg !310, !tbaa !52
  %add103 = add nsw i32 %117, 1, !dbg !308
  store i32 %add103, i32* %.omp.iv15, align 4, !dbg !308, !tbaa !52
  br label %omp.inner.for.cond39, !dbg !312, !llvm.loop !381

omp.inner.for.end104:                             ; preds = %omp.inner.for.cond.cleanup41
  br label %omp.loop.exit105, !dbg !312

omp.loop.exit105:                                 ; preds = %omp.inner.for.end104
  %118 = load i32*, i32** %.global_tid..addr, align 8, !dbg !312
  %119 = load i32, i32* %118, align 4, !dbg !312, !tbaa !52
  call void @__kmpc_for_static_fini(%struct.ident_t* @8, i32 %119), !dbg !382
  %120 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !312
  %121 = bitcast double* %error32 to i8*, !dbg !312
  store i8* %121, i8** %120, align 8, !dbg !312
  %122 = load i32*, i32** %.global_tid..addr, align 8, !dbg !312
  %123 = load i32, i32* %122, align 4, !dbg !312, !tbaa !52
  %124 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !312
  %125 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @9, i32 %123, i32 1, i64 8, i8* %124, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !312
  switch i32 %125, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !312

.omp.reduction.case1:                             ; preds = %omp.loop.exit105
  %126 = load double, double* %0, align 8, !dbg !311, !tbaa !60
  %127 = load double, double* %error32, align 8, !dbg !311, !tbaa !60
  %add106 = fadd double %126, %127, !dbg !383
  store double %add106, double* %0, align 8, !dbg !383, !tbaa !60
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @9, i32 %123, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !312
  br label %.omp.reduction.default, !dbg !312

.omp.reduction.case2:                             ; preds = %omp.loop.exit105
  %128 = load double, double* %error32, align 8, !dbg !311, !tbaa !60
  %129 = bitcast double* %0 to i64*, !dbg !312
  %atomic-load = load atomic i64, i64* %129 monotonic, align 8, !dbg !312, !tbaa !60
  br label %atomic_cont, !dbg !312

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %130 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %138, %atomic_cont ], !dbg !312
  %131 = bitcast double* %atomic-temp to i64*, !dbg !312
  %132 = bitcast i64 %130 to double, !dbg !312
  store double %132, double* %tmp107, align 8, !dbg !312, !tbaa !60
  %133 = load double, double* %tmp107, align 8, !dbg !311, !tbaa !60
  %134 = load double, double* %error32, align 8, !dbg !311, !tbaa !60
  %add108 = fadd double %133, %134, !dbg !383
  store double %add108, double* %atomic-temp, align 8, !dbg !312, !tbaa !60
  %135 = load i64, i64* %131, align 8, !dbg !312
  %136 = bitcast double* %0 to i64*, !dbg !312
  %137 = cmpxchg i64* %136, i64 %130, i64 %135 monotonic monotonic, !dbg !312
  %138 = extractvalue { i64, i1 } %137, 0, !dbg !312
  %139 = extractvalue { i64, i1 } %137, 1, !dbg !312
  br i1 %139, label %atomic_exit, label %atomic_cont, !dbg !312

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !312

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit105
  %140 = bitcast i32* %i33 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #4, !dbg !312
  %141 = bitcast double* %error32 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %141) #4, !dbg !312
  %142 = bitcast double* %resid to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %142) #4, !dbg !312
  %143 = bitcast i32* %j31 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #4, !dbg !312
  %144 = bitcast i32* %i30 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %144) #4, !dbg !312
  %145 = bitcast i32* %.omp.is_last29 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %145) #4, !dbg !312
  %146 = bitcast i32* %.omp.stride28 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %146) #4, !dbg !312
  %147 = bitcast i32* %.omp.ub27 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %147) #4, !dbg !312
  %148 = bitcast i32* %.omp.lb26 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %148) #4, !dbg !312
  br label %omp.precond.end109, !dbg !312

omp.precond.end109:                               ; preds = %.omp.reduction.default, %omp.precond.end
  %149 = bitcast i32* %.capture_expr.19 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %149) #4, !dbg !312
  %150 = bitcast i32* %.capture_expr.17 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %150) #4, !dbg !312
  %151 = bitcast i32* %.omp.iv15 to i8*, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %151) #4, !dbg !312
  ret void, !dbg !384
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

declare void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !385 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !388, metadata !DIExpression()), !dbg !391
  store i8* %1, i8** %.addr1, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !390, metadata !DIExpression()), !dbg !391
  %2 = load i8*, i8** %.addr, align 8, !dbg !392
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !392
  %4 = load i8*, i8** %.addr1, align 8, !dbg !392
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !392
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !392
  %7 = load i8*, i8** %6, align 8, !dbg !392
  %8 = bitcast i8* %7 to double*, !dbg !392
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !392
  %10 = load i8*, i8** %9, align 8, !dbg !392
  %11 = bitcast i8* %10 to double*, !dbg !392
  %12 = load double, double* %11, align 8, !dbg !393, !tbaa !60
  %13 = load double, double* %8, align 8, !dbg !393, !tbaa !60
  %add = fadd double %12, %13, !dbg !394
  store double %add, double* %11, align 8, !dbg !394, !tbaa !60
  ret void, !dbg !393
}

; Function Attrs: nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* nonnull align 8 dereferenceable(8) %error, double* nonnull align 8 dereferenceable(8) %ax, double* nonnull align 8 dereferenceable(8) %ay, double* nonnull align 8 dereferenceable(8) %b, double* nonnull align 8 dereferenceable(8) %omega) #3 !dbg !395 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %error.addr = alloca double*, align 8
  %ax.addr = alloca double*, align 8
  %ay.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %omega.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !397, metadata !DIExpression()), !dbg !404
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !398, metadata !DIExpression()), !dbg !404
  store double* %error, double** %error.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %error.addr, metadata !399, metadata !DIExpression()), !dbg !404
  store double* %ax, double** %ax.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %ax.addr, metadata !400, metadata !DIExpression()), !dbg !404
  store double* %ay, double** %ay.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %ay.addr, metadata !401, metadata !DIExpression()), !dbg !404
  store double* %b, double** %b.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !402, metadata !DIExpression()), !dbg !404
  store double* %omega, double** %omega.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %omega.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load double*, double** %error.addr, align 8, !dbg !405, !tbaa !266
  %1 = load double*, double** %ax.addr, align 8, !dbg !405, !tbaa !266
  %2 = load double*, double** %ay.addr, align 8, !dbg !405, !tbaa !266
  %3 = load double*, double** %b.addr, align 8, !dbg !405, !tbaa !266
  %4 = load double*, double** %omega.addr, align 8, !dbg !405, !tbaa !266
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !405, !tbaa !266
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !405, !tbaa !266
  %7 = load double*, double** %error.addr, align 8, !dbg !405, !tbaa !266
  %8 = load double*, double** %ax.addr, align 8, !dbg !405, !tbaa !266
  %9 = load double*, double** %ay.addr, align 8, !dbg !405, !tbaa !266
  %10 = load double*, double** %b.addr, align 8, !dbg !405, !tbaa !266
  %11 = load double*, double** %omega.addr, align 8, !dbg !405, !tbaa !266
  call void @.omp_outlined._debug__(i32* %5, i32* %6, double* %7, double* %8, double* %9, double* %10, double* %11) #4, !dbg !405
  ret void, !dbg !405
}

; Function Attrs: nounwind
declare !callback !406 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind
declare double @sqrt(double) #5

declare i32 @printf(i8*, ...) #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !408 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @initialize(), !dbg !410
  call void @jacobi(), !dbg !411
  ret i32 0, !dbg !412
}

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "u", scope: !2, file: !3, line: 57, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB058-jacobikernel-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "f", scope: !2, file: !3, line: 57, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2560000, elements: !12)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{!13, !13}
!13 = !DISubrange(count: 200)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "uold", scope: !2, file: !3, line: 57, type: !10, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "dx", scope: !2, file: !3, line: 58, type: !11, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "dy", scope: !2, file: !3, line: 58, type: !11, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 55, type: !6, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 55, type: !6, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "mits", scope: !2, file: !3, line: 55, type: !6, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "tol", scope: !2, file: !3, line: 56, type: !11, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "relax", scope: !2, file: !3, line: 56, type: !11, isLocal: false, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !3, line: 56, type: !11, isLocal: false, isDefinition: true)
!32 = !{i32 7, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{!"clang version 11.1.0"}
!38 = distinct !DISubprogram(name: "initialize", scope: !3, file: !3, line: 61, type: !39, scopeLine: 62, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{null}
!41 = !{!42, !43, !44, !45}
!42 = !DILocalVariable(name: "i", scope: !38, file: !3, line: 63, type: !6)
!43 = !DILocalVariable(name: "j", scope: !38, file: !3, line: 63, type: !6)
!44 = !DILocalVariable(name: "xx", scope: !38, file: !3, line: 63, type: !6)
!45 = !DILocalVariable(name: "yy", scope: !38, file: !3, line: 63, type: !6)
!46 = !DILocation(line: 63, column: 3, scope: !38)
!47 = !DILocation(line: 63, column: 7, scope: !38)
!48 = !DILocation(line: 63, column: 10, scope: !38)
!49 = !DILocation(line: 63, column: 13, scope: !38)
!50 = !DILocation(line: 63, column: 17, scope: !38)
!51 = !DILocation(line: 65, column: 15, scope: !38)
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 65, column: 17, scope: !38)
!57 = !DILocation(line: 65, column: 14, scope: !38)
!58 = !DILocation(line: 65, column: 12, scope: !38)
!59 = !DILocation(line: 65, column: 6, scope: !38)
!60 = !{!61, !61, i64 0}
!61 = !{!"double", !54, i64 0}
!62 = !DILocation(line: 66, column: 15, scope: !38)
!63 = !DILocation(line: 66, column: 17, scope: !38)
!64 = !DILocation(line: 66, column: 14, scope: !38)
!65 = !DILocation(line: 66, column: 12, scope: !38)
!66 = !DILocation(line: 66, column: 6, scope: !38)
!67 = !DILocation(line: 70, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !38, file: !3, line: 70, column: 3)
!69 = !DILocation(line: 70, column: 8, scope: !68)
!70 = !DILocation(line: 70, column: 15, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !3, line: 70, column: 3)
!72 = !DILocation(line: 70, column: 19, scope: !71)
!73 = !DILocation(line: 70, column: 17, scope: !71)
!74 = !DILocation(line: 70, column: 3, scope: !68)
!75 = !DILocation(line: 71, column: 12, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !3, line: 71, column: 5)
!77 = !DILocation(line: 71, column: 10, scope: !76)
!78 = !DILocation(line: 71, column: 17, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !3, line: 71, column: 5)
!80 = !DILocation(line: 71, column: 21, scope: !79)
!81 = !DILocation(line: 71, column: 19, scope: !79)
!82 = !DILocation(line: 71, column: 5, scope: !76)
!83 = !DILocation(line: 73, column: 26, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !3, line: 72, column: 5)
!85 = !DILocation(line: 73, column: 32, scope: !84)
!86 = !DILocation(line: 73, column: 34, scope: !84)
!87 = !DILocation(line: 73, column: 31, scope: !84)
!88 = !DILocation(line: 73, column: 29, scope: !84)
!89 = !DILocation(line: 73, column: 24, scope: !84)
!90 = !DILocation(line: 73, column: 12, scope: !84)
!91 = !DILocation(line: 73, column: 10, scope: !84)
!92 = !DILocation(line: 74, column: 26, scope: !84)
!93 = !DILocation(line: 74, column: 32, scope: !84)
!94 = !DILocation(line: 74, column: 34, scope: !84)
!95 = !DILocation(line: 74, column: 31, scope: !84)
!96 = !DILocation(line: 74, column: 29, scope: !84)
!97 = !DILocation(line: 74, column: 24, scope: !84)
!98 = !DILocation(line: 74, column: 12, scope: !84)
!99 = !DILocation(line: 74, column: 10, scope: !84)
!100 = !DILocation(line: 75, column: 9, scope: !84)
!101 = !DILocation(line: 75, column: 7, scope: !84)
!102 = !DILocation(line: 75, column: 12, scope: !84)
!103 = !DILocation(line: 75, column: 15, scope: !84)
!104 = !DILocation(line: 76, column: 24, scope: !84)
!105 = !DILocation(line: 76, column: 22, scope: !84)
!106 = !DILocation(line: 76, column: 39, scope: !84)
!107 = !DILocation(line: 76, column: 44, scope: !84)
!108 = !DILocation(line: 76, column: 42, scope: !84)
!109 = !DILocation(line: 76, column: 37, scope: !84)
!110 = !DILocation(line: 76, column: 30, scope: !84)
!111 = !DILocation(line: 76, column: 57, scope: !84)
!112 = !DILocation(line: 76, column: 62, scope: !84)
!113 = !DILocation(line: 76, column: 60, scope: !84)
!114 = !DILocation(line: 76, column: 55, scope: !84)
!115 = !DILocation(line: 76, column: 48, scope: !84)
!116 = !DILocation(line: 77, column: 24, scope: !84)
!117 = !DILocation(line: 77, column: 29, scope: !84)
!118 = !DILocation(line: 77, column: 27, scope: !84)
!119 = !DILocation(line: 77, column: 22, scope: !84)
!120 = !DILocation(line: 77, column: 15, scope: !84)
!121 = !DILocation(line: 77, column: 9, scope: !84)
!122 = !DILocation(line: 77, column: 48, scope: !84)
!123 = !DILocation(line: 77, column: 53, scope: !84)
!124 = !DILocation(line: 77, column: 51, scope: !84)
!125 = !DILocation(line: 77, column: 46, scope: !84)
!126 = !DILocation(line: 77, column: 39, scope: !84)
!127 = !DILocation(line: 77, column: 33, scope: !84)
!128 = !DILocation(line: 76, column: 9, scope: !84)
!129 = !DILocation(line: 76, column: 7, scope: !84)
!130 = !DILocation(line: 76, column: 12, scope: !84)
!131 = !DILocation(line: 76, column: 15, scope: !84)
!132 = !DILocation(line: 79, column: 5, scope: !84)
!133 = !DILocation(line: 71, column: 25, scope: !79)
!134 = !DILocation(line: 71, column: 5, scope: !79)
!135 = distinct !{!135, !82, !136, !137}
!136 = !DILocation(line: 79, column: 5, scope: !76)
!137 = !{!"llvm.loop.unroll.disable"}
!138 = !DILocation(line: 70, column: 23, scope: !71)
!139 = !DILocation(line: 70, column: 3, scope: !71)
!140 = distinct !{!140, !74, !141, !137}
!141 = !DILocation(line: 79, column: 5, scope: !68)
!142 = !DILocation(line: 80, column: 1, scope: !38)
!143 = distinct !DISubprogram(name: "jacobi", scope: !3, file: !3, line: 83, type: !39, scopeLine: 84, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153}
!145 = !DILocalVariable(name: "omega", scope: !143, file: !3, line: 85, type: !11)
!146 = !DILocalVariable(name: "i", scope: !143, file: !3, line: 86, type: !6)
!147 = !DILocalVariable(name: "j", scope: !143, file: !3, line: 86, type: !6)
!148 = !DILocalVariable(name: "k", scope: !143, file: !3, line: 86, type: !6)
!149 = !DILocalVariable(name: "error", scope: !143, file: !3, line: 87, type: !11)
!150 = !DILocalVariable(name: "resid", scope: !143, file: !3, line: 87, type: !11)
!151 = !DILocalVariable(name: "ax", scope: !143, file: !3, line: 87, type: !11)
!152 = !DILocalVariable(name: "ay", scope: !143, file: !3, line: 87, type: !11)
!153 = !DILocalVariable(name: "b", scope: !143, file: !3, line: 87, type: !11)
!154 = !DILocation(line: 85, column: 3, scope: !143)
!155 = !DILocation(line: 85, column: 10, scope: !143)
!156 = !DILocation(line: 86, column: 3, scope: !143)
!157 = !DILocation(line: 86, column: 7, scope: !143)
!158 = !DILocation(line: 86, column: 10, scope: !143)
!159 = !DILocation(line: 86, column: 13, scope: !143)
!160 = !DILocation(line: 87, column: 3, scope: !143)
!161 = !DILocation(line: 87, column: 10, scope: !143)
!162 = !DILocation(line: 87, column: 17, scope: !143)
!163 = !DILocation(line: 87, column: 25, scope: !143)
!164 = !DILocation(line: 87, column: 29, scope: !143)
!165 = !DILocation(line: 87, column: 33, scope: !143)
!166 = !DILocation(line: 89, column: 11, scope: !143)
!167 = !DILocation(line: 89, column: 9, scope: !143)
!168 = !DILocation(line: 92, column: 15, scope: !143)
!169 = !DILocation(line: 92, column: 17, scope: !143)
!170 = !DILocation(line: 92, column: 14, scope: !143)
!171 = !DILocation(line: 92, column: 12, scope: !143)
!172 = !DILocation(line: 92, column: 6, scope: !143)
!173 = !DILocation(line: 93, column: 15, scope: !143)
!174 = !DILocation(line: 93, column: 17, scope: !143)
!175 = !DILocation(line: 93, column: 14, scope: !143)
!176 = !DILocation(line: 93, column: 12, scope: !143)
!177 = !DILocation(line: 93, column: 6, scope: !143)
!178 = !DILocation(line: 95, column: 15, scope: !143)
!179 = !DILocation(line: 95, column: 20, scope: !143)
!180 = !DILocation(line: 95, column: 18, scope: !143)
!181 = !DILocation(line: 95, column: 12, scope: !143)
!182 = !DILocation(line: 95, column: 6, scope: !143)
!183 = !DILocation(line: 96, column: 15, scope: !143)
!184 = !DILocation(line: 96, column: 20, scope: !143)
!185 = !DILocation(line: 96, column: 18, scope: !143)
!186 = !DILocation(line: 96, column: 12, scope: !143)
!187 = !DILocation(line: 96, column: 6, scope: !143)
!188 = !DILocation(line: 97, column: 15, scope: !143)
!189 = !DILocation(line: 97, column: 20, scope: !143)
!190 = !DILocation(line: 97, column: 18, scope: !143)
!191 = !DILocation(line: 97, column: 12, scope: !143)
!192 = !DILocation(line: 97, column: 33, scope: !143)
!193 = !DILocation(line: 97, column: 38, scope: !143)
!194 = !DILocation(line: 97, column: 36, scope: !143)
!195 = !DILocation(line: 97, column: 30, scope: !143)
!196 = !DILocation(line: 97, column: 24, scope: !143)
!197 = !DILocation(line: 97, column: 44, scope: !143)
!198 = !DILocation(line: 97, column: 42, scope: !143)
!199 = !DILocation(line: 97, column: 5, scope: !143)
!200 = !DILocation(line: 99, column: 18, scope: !143)
!201 = !DILocation(line: 99, column: 16, scope: !143)
!202 = !DILocation(line: 99, column: 9, scope: !143)
!203 = !DILocation(line: 100, column: 5, scope: !143)
!204 = !DILocation(line: 102, column: 3, scope: !143)
!205 = !DILocation(line: 102, column: 10, scope: !143)
!206 = !DILocation(line: 102, column: 15, scope: !143)
!207 = !DILocation(line: 102, column: 12, scope: !143)
!208 = !DILocation(line: 104, column: 13, scope: !209)
!209 = distinct !DILexicalBlock(scope: !143, file: !3, line: 103, column: 5)
!210 = !DILocation(line: 107, column: 1, scope: !209)
!211 = !DILocation(line: 129, column: 10, scope: !209)
!212 = !DILocation(line: 129, column: 12, scope: !209)
!213 = !DILocation(line: 129, column: 8, scope: !209)
!214 = !DILocation(line: 130, column: 21, scope: !209)
!215 = !DILocation(line: 130, column: 15, scope: !209)
!216 = !DILocation(line: 130, column: 31, scope: !209)
!217 = !DILocation(line: 130, column: 35, scope: !209)
!218 = !DILocation(line: 130, column: 33, scope: !209)
!219 = !DILocation(line: 130, column: 30, scope: !209)
!220 = !DILocation(line: 130, column: 28, scope: !209)
!221 = !DILocation(line: 130, column: 13, scope: !209)
!222 = distinct !{!222, !204, !223, !137}
!223 = !DILocation(line: 131, column: 5, scope: !143)
!224 = !DILocation(line: 133, column: 46, scope: !143)
!225 = !DILocation(line: 133, column: 3, scope: !143)
!226 = !DILocation(line: 134, column: 28, scope: !143)
!227 = !DILocation(line: 134, column: 3, scope: !143)
!228 = !DILocation(line: 135, column: 1, scope: !143)
!229 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 108, type: !230, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !232, !232, !236, !236, !236, !236, !236}
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!236 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !248, !248, !249, !250, !251, !252, !253, !249, !254, !249, !255, !257, !257, !258, !259, !260, !261, !262, !258, !263, !264, !265, !258}
!238 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !229, type: !232, flags: DIFlagArtificial)
!239 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !229, type: !232, flags: DIFlagArtificial)
!240 = !DILocalVariable(name: "error", arg: 3, scope: !229, file: !3, line: 87, type: !236)
!241 = !DILocalVariable(name: "ax", arg: 4, scope: !229, file: !3, line: 87, type: !236)
!242 = !DILocalVariable(name: "ay", arg: 5, scope: !229, file: !3, line: 87, type: !236)
!243 = !DILocalVariable(name: "b", arg: 6, scope: !229, file: !3, line: 87, type: !236)
!244 = !DILocalVariable(name: "omega", arg: 7, scope: !229, file: !3, line: 85, type: !236)
!245 = !DILocalVariable(name: ".omp.iv", scope: !246, type: !6, flags: DIFlagArtificial)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 109, column: 1)
!247 = distinct !DILexicalBlock(scope: !229, file: !3, line: 108, column: 7)
!248 = !DILocalVariable(name: ".capture_expr.", scope: !246, type: !6, flags: DIFlagArtificial)
!249 = !DILocalVariable(name: "i", scope: !246, type: !6, flags: DIFlagArtificial)
!250 = !DILocalVariable(name: ".omp.lb", scope: !246, type: !6, flags: DIFlagArtificial)
!251 = !DILocalVariable(name: ".omp.ub", scope: !246, type: !6, flags: DIFlagArtificial)
!252 = !DILocalVariable(name: ".omp.stride", scope: !246, type: !6, flags: DIFlagArtificial)
!253 = !DILocalVariable(name: ".omp.is_last", scope: !246, type: !6, flags: DIFlagArtificial)
!254 = !DILocalVariable(name: "j", scope: !246, type: !6, flags: DIFlagArtificial)
!255 = !DILocalVariable(name: ".omp.iv", scope: !256, type: !6, flags: DIFlagArtificial)
!256 = distinct !DILexicalBlock(scope: !247, file: !3, line: 113, column: 1)
!257 = !DILocalVariable(name: ".capture_expr.", scope: !256, type: !6, flags: DIFlagArtificial)
!258 = !DILocalVariable(name: "i", scope: !256, type: !6, flags: DIFlagArtificial)
!259 = !DILocalVariable(name: ".omp.lb", scope: !256, type: !6, flags: DIFlagArtificial)
!260 = !DILocalVariable(name: ".omp.ub", scope: !256, type: !6, flags: DIFlagArtificial)
!261 = !DILocalVariable(name: ".omp.stride", scope: !256, type: !6, flags: DIFlagArtificial)
!262 = !DILocalVariable(name: ".omp.is_last", scope: !256, type: !6, flags: DIFlagArtificial)
!263 = !DILocalVariable(name: "j", scope: !256, type: !6, flags: DIFlagArtificial)
!264 = !DILocalVariable(name: "resid", scope: !256, type: !11, flags: DIFlagArtificial)
!265 = !DILocalVariable(name: "error", scope: !256, type: !11, flags: DIFlagArtificial)
!266 = !{!267, !267, i64 0}
!267 = !{!"any pointer", !54, i64 0}
!268 = !DILocation(line: 0, scope: !229)
!269 = !DILocation(line: 87, column: 10, scope: !229)
!270 = !DILocation(line: 87, column: 25, scope: !229)
!271 = !DILocation(line: 87, column: 29, scope: !229)
!272 = !DILocation(line: 87, column: 33, scope: !229)
!273 = !DILocation(line: 85, column: 10, scope: !229)
!274 = !DILocation(line: 108, column: 7, scope: !229)
!275 = !DILocation(line: 109, column: 1, scope: !247)
!276 = !DILocation(line: 0, scope: !246)
!277 = !DILocation(line: 110, column: 25, scope: !246)
!278 = !DILocation(line: 110, column: 9, scope: !246)
!279 = !DILocation(line: 110, column: 28, scope: !246)
!280 = !DILocation(line: 110, column: 14, scope: !246)
!281 = !DILocation(line: 109, column: 1, scope: !246)
!282 = !DILocation(line: 111, column: 18, scope: !283)
!283 = distinct !DILexicalBlock(scope: !246, file: !3, line: 111, column: 11)
!284 = !DILocation(line: 111, column: 16, scope: !283)
!285 = !DILocation(line: 111, column: 23, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 111, column: 11)
!287 = !DILocation(line: 111, column: 27, scope: !286)
!288 = !DILocation(line: 111, column: 25, scope: !286)
!289 = !DILocation(line: 111, column: 11, scope: !283)
!290 = !DILocation(line: 112, column: 28, scope: !286)
!291 = !DILocation(line: 112, column: 26, scope: !286)
!292 = !DILocation(line: 112, column: 31, scope: !286)
!293 = !DILocation(line: 112, column: 18, scope: !286)
!294 = !DILocation(line: 112, column: 13, scope: !286)
!295 = !DILocation(line: 112, column: 21, scope: !286)
!296 = !DILocation(line: 112, column: 24, scope: !286)
!297 = !DILocation(line: 111, column: 31, scope: !286)
!298 = !DILocation(line: 111, column: 11, scope: !286)
!299 = distinct !{!299, !289, !300, !137}
!300 = !DILocation(line: 112, column: 32, scope: !283)
!301 = distinct !{!301, !281, !302}
!302 = !DILocation(line: 109, column: 29, scope: !246)
!303 = !DILocation(line: 113, column: 1, scope: !247)
!304 = !DILocation(line: 0, scope: !256)
!305 = !DILocation(line: 114, column: 26, scope: !256)
!306 = !DILocation(line: 114, column: 28, scope: !256)
!307 = !DILocation(line: 114, column: 25, scope: !256)
!308 = !DILocation(line: 114, column: 9, scope: !256)
!309 = !DILocation(line: 114, column: 34, scope: !256)
!310 = !DILocation(line: 114, column: 14, scope: !256)
!311 = !DILocation(line: 113, column: 48, scope: !256)
!312 = !DILocation(line: 113, column: 1, scope: !256)
!313 = !DILocation(line: 115, column: 18, scope: !314)
!314 = distinct !DILexicalBlock(scope: !256, file: !3, line: 115, column: 11)
!315 = !DILocation(line: 115, column: 16, scope: !314)
!316 = !DILocation(line: 115, column: 23, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !3, line: 115, column: 11)
!318 = !DILocation(line: 115, column: 28, scope: !317)
!319 = !DILocation(line: 115, column: 30, scope: !317)
!320 = !DILocation(line: 115, column: 25, scope: !317)
!321 = !DILocation(line: 115, column: 11, scope: !314)
!322 = !DILocation(line: 117, column: 24, scope: !323)
!323 = distinct !DILexicalBlock(scope: !317, file: !3, line: 116, column: 13)
!324 = !DILocation(line: 117, column: 35, scope: !323)
!325 = !DILocation(line: 117, column: 37, scope: !323)
!326 = !DILocation(line: 117, column: 30, scope: !323)
!327 = !DILocation(line: 117, column: 42, scope: !323)
!328 = !DILocation(line: 117, column: 52, scope: !323)
!329 = !DILocation(line: 117, column: 54, scope: !323)
!330 = !DILocation(line: 117, column: 47, scope: !323)
!331 = !DILocation(line: 117, column: 59, scope: !323)
!332 = !DILocation(line: 117, column: 45, scope: !323)
!333 = !DILocation(line: 117, column: 27, scope: !323)
!334 = !DILocation(line: 118, column: 26, scope: !323)
!335 = !DILocation(line: 118, column: 37, scope: !323)
!336 = !DILocation(line: 118, column: 32, scope: !323)
!337 = !DILocation(line: 118, column: 40, scope: !323)
!338 = !DILocation(line: 118, column: 42, scope: !323)
!339 = !DILocation(line: 118, column: 54, scope: !323)
!340 = !DILocation(line: 118, column: 49, scope: !323)
!341 = !DILocation(line: 118, column: 57, scope: !323)
!342 = !DILocation(line: 118, column: 59, scope: !323)
!343 = !DILocation(line: 118, column: 47, scope: !323)
!344 = !DILocation(line: 118, column: 29, scope: !323)
!345 = !DILocation(line: 118, column: 24, scope: !323)
!346 = !DILocation(line: 119, column: 24, scope: !323)
!347 = !DILocation(line: 119, column: 33, scope: !323)
!348 = !DILocation(line: 119, column: 28, scope: !323)
!349 = !DILocation(line: 119, column: 36, scope: !323)
!350 = !DILocation(line: 119, column: 26, scope: !323)
!351 = !DILocation(line: 118, column: 65, scope: !323)
!352 = !DILocation(line: 119, column: 43, scope: !323)
!353 = !DILocation(line: 119, column: 41, scope: !323)
!354 = !DILocation(line: 119, column: 46, scope: !323)
!355 = !DILocation(line: 119, column: 39, scope: !323)
!356 = !DILocation(line: 119, column: 52, scope: !323)
!357 = !DILocation(line: 119, column: 50, scope: !323)
!358 = !DILocation(line: 117, column: 21, scope: !323)
!359 = !DILocation(line: 121, column: 30, scope: !323)
!360 = !DILocation(line: 121, column: 25, scope: !323)
!361 = !DILocation(line: 121, column: 33, scope: !323)
!362 = !DILocation(line: 121, column: 38, scope: !323)
!363 = !DILocation(line: 121, column: 46, scope: !323)
!364 = !DILocation(line: 121, column: 44, scope: !323)
!365 = !DILocation(line: 121, column: 36, scope: !323)
!366 = !DILocation(line: 121, column: 17, scope: !323)
!367 = !DILocation(line: 121, column: 15, scope: !323)
!368 = !DILocation(line: 121, column: 20, scope: !323)
!369 = !DILocation(line: 121, column: 23, scope: !323)
!370 = !DILocation(line: 122, column: 23, scope: !323)
!371 = !DILocation(line: 122, column: 31, scope: !323)
!372 = !DILocation(line: 122, column: 39, scope: !323)
!373 = !DILocation(line: 122, column: 37, scope: !323)
!374 = !DILocation(line: 122, column: 29, scope: !323)
!375 = !DILocation(line: 122, column: 21, scope: !323)
!376 = !DILocation(line: 123, column: 13, scope: !323)
!377 = !DILocation(line: 115, column: 37, scope: !317)
!378 = !DILocation(line: 115, column: 11, scope: !317)
!379 = distinct !{!379, !321, !380, !137}
!380 = !DILocation(line: 123, column: 13, scope: !314)
!381 = distinct !{!381, !312, !382}
!382 = !DILocation(line: 113, column: 61, scope: !256)
!383 = !DILocation(line: 113, column: 46, scope: !256)
!384 = !DILocation(line: 124, column: 7, scope: !229)
!385 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !3, file: !3, line: 113, type: !386, scopeLine: 113, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !387)
!386 = !DISubroutineType(types: !4)
!387 = !{!388, !390}
!388 = !DILocalVariable(arg: 1, scope: !385, type: !389, flags: DIFlagArtificial)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!390 = !DILocalVariable(arg: 2, scope: !385, type: !389, flags: DIFlagArtificial)
!391 = !DILocation(line: 0, scope: !385)
!392 = !DILocation(line: 113, column: 61, scope: !385)
!393 = !DILocation(line: 113, column: 48, scope: !385)
!394 = !DILocation(line: 113, column: 46, scope: !385)
!395 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 107, type: !230, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403}
!397 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !395, type: !232, flags: DIFlagArtificial)
!398 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !395, type: !232, flags: DIFlagArtificial)
!399 = !DILocalVariable(name: "error", arg: 3, scope: !395, type: !236, flags: DIFlagArtificial)
!400 = !DILocalVariable(name: "ax", arg: 4, scope: !395, type: !236, flags: DIFlagArtificial)
!401 = !DILocalVariable(name: "ay", arg: 5, scope: !395, type: !236, flags: DIFlagArtificial)
!402 = !DILocalVariable(name: "b", arg: 6, scope: !395, type: !236, flags: DIFlagArtificial)
!403 = !DILocalVariable(name: "omega", arg: 7, scope: !395, type: !236, flags: DIFlagArtificial)
!404 = !DILocation(line: 0, scope: !395)
!405 = !DILocation(line: 107, column: 1, scope: !395)
!406 = !{!407}
!407 = !{i64 2, i64 -1, i64 -1, i1 true}
!408 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 137, type: !409, scopeLine: 138, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!409 = !DISubroutineType(types: !5)
!410 = !DILocation(line: 139, column: 3, scope: !408)
!411 = !DILocation(line: 140, column: 3, scope: !408)
!412 = !DILocation(line: 141, column: 3, scope: !408)
