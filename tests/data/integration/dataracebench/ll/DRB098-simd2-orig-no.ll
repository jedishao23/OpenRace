; ModuleID = 'DRB098-simd2-orig-no.c'
source_filename = "DRB098-simd2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"c[50][50]=%f\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.24 = alloca i32, align 4
  %.capture_expr.25 = alloca i64, align 8
  %i32 = alloca i32, align 4
  %j33 = alloca i32, align 4
  %.omp.iv = alloca i64, align 8
  %i40 = alloca i32, align 4
  %j41 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %len to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %len, metadata !16, metadata !DIExpression()), !dbg !49
  store i32 100, i32* %len, align 4, !dbg !49, !tbaa !50
  %1 = load i32, i32* %len, align 4, !dbg !54, !tbaa !50
  %2 = zext i32 %1 to i64, !dbg !55
  %3 = load i32, i32* %len, align 4, !dbg !56, !tbaa !50
  %4 = zext i32 %3 to i64, !dbg !55
  %5 = call i8* @llvm.stacksave(), !dbg !55
  store i8* %5, i8** %saved_stack, align 8, !dbg !55
  %6 = mul nuw i64 %2, %4, !dbg !55
  %vla = alloca double, i64 %6, align 16, !dbg !55
  store i64 %2, i64* %__vla_expr0, align 8, !dbg !55
  store i64 %4, i64* %__vla_expr1, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !17, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !19, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata double* %vla, metadata !20, metadata !DIExpression()), !dbg !58
  %7 = load i32, i32* %len, align 4, !dbg !59, !tbaa !50
  %8 = zext i32 %7 to i64, !dbg !55
  %9 = load i32, i32* %len, align 4, !dbg !60, !tbaa !50
  %10 = zext i32 %9 to i64, !dbg !55
  %11 = mul nuw i64 %8, %10, !dbg !55
  %vla1 = alloca double, i64 %11, align 16, !dbg !55
  store i64 %8, i64* %__vla_expr2, align 8, !dbg !55
  store i64 %10, i64* %__vla_expr3, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i64* %__vla_expr2, metadata !25, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i64* %__vla_expr3, metadata !26, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata double* %vla1, metadata !27, metadata !DIExpression()), !dbg !61
  %12 = load i32, i32* %len, align 4, !dbg !62, !tbaa !50
  %13 = zext i32 %12 to i64, !dbg !55
  %14 = load i32, i32* %len, align 4, !dbg !63, !tbaa !50
  %15 = zext i32 %14 to i64, !dbg !55
  %16 = mul nuw i64 %13, %15, !dbg !55
  %vla2 = alloca double, i64 %16, align 16, !dbg !55
  store i64 %13, i64* %__vla_expr4, align 8, !dbg !55
  store i64 %15, i64* %__vla_expr5, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i64* %__vla_expr4, metadata !32, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i64* %__vla_expr5, metadata !33, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata double* %vla2, metadata !34, metadata !DIExpression()), !dbg !64
  %17 = bitcast i32* %i to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %i, metadata !39, metadata !DIExpression()), !dbg !66
  %18 = bitcast i32* %j to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %j, metadata !40, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %i, align 4, !dbg !68, !tbaa !50
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc20, %entry
  %19 = load i32, i32* %i, align 4, !dbg !71, !tbaa !50
  %20 = load i32, i32* %len, align 4, !dbg !73, !tbaa !50
  %cmp = icmp slt i32 %19, %20, !dbg !74
  br i1 %cmp, label %for.body, label %for.end22, !dbg !75

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !76, !tbaa !50
  br label %for.cond3, !dbg !78

for.cond3:                                        ; preds = %for.inc, %for.body
  %21 = load i32, i32* %j, align 4, !dbg !79, !tbaa !50
  %22 = load i32, i32* %len, align 4, !dbg !81, !tbaa !50
  %cmp4 = icmp slt i32 %21, %22, !dbg !82
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !83

for.body5:                                        ; preds = %for.cond3
  %23 = load i32, i32* %i, align 4, !dbg !84, !tbaa !50
  %conv = sitofp i32 %23 to double, !dbg !86
  %div = fdiv double %conv, 2.000000e+00, !dbg !87
  %24 = load i32, i32* %i, align 4, !dbg !88, !tbaa !50
  %idxprom = sext i32 %24 to i64, !dbg !89
  %25 = mul nsw i64 %idxprom, %4, !dbg !89
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %25, !dbg !89
  %26 = load i32, i32* %j, align 4, !dbg !90, !tbaa !50
  %idxprom6 = sext i32 %26 to i64, !dbg !89
  %arrayidx7 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom6, !dbg !89
  store double %div, double* %arrayidx7, align 8, !dbg !91, !tbaa !92
  %27 = load i32, i32* %i, align 4, !dbg !94, !tbaa !50
  %conv8 = sitofp i32 %27 to double, !dbg !95
  %div9 = fdiv double %conv8, 3.000000e+00, !dbg !96
  %28 = load i32, i32* %i, align 4, !dbg !97, !tbaa !50
  %idxprom10 = sext i32 %28 to i64, !dbg !98
  %29 = mul nsw i64 %idxprom10, %10, !dbg !98
  %arrayidx11 = getelementptr inbounds double, double* %vla1, i64 %29, !dbg !98
  %30 = load i32, i32* %j, align 4, !dbg !99, !tbaa !50
  %idxprom12 = sext i32 %30 to i64, !dbg !98
  %arrayidx13 = getelementptr inbounds double, double* %arrayidx11, i64 %idxprom12, !dbg !98
  store double %div9, double* %arrayidx13, align 8, !dbg !100, !tbaa !92
  %31 = load i32, i32* %i, align 4, !dbg !101, !tbaa !50
  %conv14 = sitofp i32 %31 to double, !dbg !102
  %div15 = fdiv double %conv14, 7.000000e+00, !dbg !103
  %32 = load i32, i32* %i, align 4, !dbg !104, !tbaa !50
  %idxprom16 = sext i32 %32 to i64, !dbg !105
  %33 = mul nsw i64 %idxprom16, %15, !dbg !105
  %arrayidx17 = getelementptr inbounds double, double* %vla2, i64 %33, !dbg !105
  %34 = load i32, i32* %j, align 4, !dbg !106, !tbaa !50
  %idxprom18 = sext i32 %34 to i64, !dbg !105
  %arrayidx19 = getelementptr inbounds double, double* %arrayidx17, i64 %idxprom18, !dbg !105
  store double %div15, double* %arrayidx19, align 8, !dbg !107, !tbaa !92
  br label %for.inc, !dbg !108

for.inc:                                          ; preds = %for.body5
  %35 = load i32, i32* %j, align 4, !dbg !109, !tbaa !50
  %inc = add nsw i32 %35, 1, !dbg !109
  store i32 %inc, i32* %j, align 4, !dbg !109, !tbaa !50
  br label %for.cond3, !dbg !110, !llvm.loop !111

for.end:                                          ; preds = %for.cond3
  br label %for.inc20, !dbg !112

for.inc20:                                        ; preds = %for.end
  %36 = load i32, i32* %i, align 4, !dbg !114, !tbaa !50
  %inc21 = add nsw i32 %36, 1, !dbg !114
  store i32 %inc21, i32* %i, align 4, !dbg !114, !tbaa !50
  br label %for.cond, !dbg !115, !llvm.loop !116

for.end22:                                        ; preds = %for.cond
  %37 = bitcast i32* %.capture_expr. to i8*, !dbg !118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %37) #3, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !41, metadata !DIExpression()), !dbg !119
  %38 = load i32, i32* %len, align 4, !dbg !120, !tbaa !50
  store i32 %38, i32* %.capture_expr., align 4, !dbg !120, !tbaa !50
  %39 = bitcast i32* %.capture_expr.24 to i8*, !dbg !118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #3, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.24, metadata !41, metadata !DIExpression()), !dbg !119
  %40 = load i32, i32* %len, align 4, !dbg !121, !tbaa !50
  store i32 %40, i32* %.capture_expr.24, align 4, !dbg !121, !tbaa !50
  %41 = bitcast i64* %.capture_expr.25 to i8*, !dbg !118
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %41) #3, !dbg !118
  call void @llvm.dbg.declare(metadata i64* %.capture_expr.25, metadata !43, metadata !DIExpression()), !dbg !119
  %42 = load i32, i32* %.capture_expr., align 4, !dbg !120, !tbaa !50
  %sub = sub nsw i32 %42, 0, !dbg !122
  %div26 = sdiv i32 %sub, 1, !dbg !122
  %conv27 = sext i32 %div26 to i64, !dbg !122
  %43 = load i32, i32* %.capture_expr.24, align 4, !dbg !121, !tbaa !50
  %sub28 = sub nsw i32 %43, 0, !dbg !123
  %div29 = sdiv i32 %sub28, 1, !dbg !123
  %conv30 = sext i32 %div29 to i64, !dbg !123
  %mul = mul nsw i64 %conv27, %conv30, !dbg !123
  %sub31 = sub nsw i64 %mul, 1, !dbg !123
  store i64 %sub31, i64* %.capture_expr.25, align 8, !dbg !122, !tbaa !124
  %44 = bitcast i32* %i32 to i8*, !dbg !118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #3, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %i32, metadata !45, metadata !DIExpression()), !dbg !119
  %45 = bitcast i32* %j33 to i8*, !dbg !118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %45) #3, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %j33, metadata !46, metadata !DIExpression()), !dbg !119
  store i32 0, i32* %i32, align 4, !dbg !126, !tbaa !50
  store i32 0, i32* %j33, align 4, !dbg !127, !tbaa !50
  %46 = bitcast i32* %j33 to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !118
  %47 = bitcast i32* %i32 to i8*, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3, !dbg !118
  %48 = load i32, i32* %.capture_expr., align 4, !dbg !120, !tbaa !50
  %cmp34 = icmp slt i32 0, %48, !dbg !122
  br i1 %cmp34, label %land.lhs.true, label %simd.if.end, !dbg !128

land.lhs.true:                                    ; preds = %for.end22
  %49 = load i32, i32* %.capture_expr.24, align 4, !dbg !121, !tbaa !50
  %cmp37 = icmp slt i32 0, %49, !dbg !123
  br i1 %cmp37, label %simd.if.then, label %simd.if.end, !dbg !118

simd.if.then:                                     ; preds = %land.lhs.true
  %50 = bitcast i64* %.omp.iv to i8*, !dbg !118
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %50) #3, !dbg !118
  call void @llvm.dbg.declare(metadata i64* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !119
  store i64 0, i64* %.omp.iv, align 8, !dbg !129, !tbaa !124
  %51 = bitcast i32* %i40 to i8*, !dbg !118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %51) #3, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %i40, metadata !45, metadata !DIExpression()), !dbg !119
  %52 = bitcast i32* %j41 to i8*, !dbg !118
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %52) #3, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %j41, metadata !46, metadata !DIExpression()), !dbg !119
  br label %omp.inner.for.cond, !dbg !118

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %53 = load i64, i64* %.omp.iv, align 8, !dbg !129, !tbaa !124, !llvm.access.group !130
  %54 = load i64, i64* %.capture_expr.25, align 8, !dbg !123, !tbaa !124, !llvm.access.group !130
  %add = add nsw i64 %54, 1, !dbg !123
  %cmp42 = icmp slt i64 %53, %add, !dbg !122
  br i1 %cmp42, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !118

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !118

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %55 = load i64, i64* %.omp.iv, align 8, !dbg !129, !tbaa !124, !llvm.access.group !130
  %56 = load i32, i32* %.capture_expr.24, align 4, !dbg !121, !tbaa !50, !llvm.access.group !130
  %sub44 = sub nsw i32 %56, 0, !dbg !123
  %div45 = sdiv i32 %sub44, 1, !dbg !123
  %mul46 = mul nsw i32 1, %div45, !dbg !126
  %conv47 = sext i32 %mul46 to i64, !dbg !119
  %div48 = sdiv i64 %55, %conv47, !dbg !126
  %mul49 = mul nsw i64 %div48, 1, !dbg !126
  %add50 = add nsw i64 0, %mul49, !dbg !126
  %conv51 = trunc i64 %add50 to i32, !dbg !128
  store i32 %conv51, i32* %i40, align 4, !dbg !126, !tbaa !50, !llvm.access.group !130
  %57 = load i64, i64* %.omp.iv, align 8, !dbg !129, !tbaa !124, !llvm.access.group !130
  %58 = load i64, i64* %.omp.iv, align 8, !dbg !129, !tbaa !124, !llvm.access.group !130
  %59 = load i32, i32* %.capture_expr.24, align 4, !dbg !121, !tbaa !50, !llvm.access.group !130
  %sub52 = sub nsw i32 %59, 0, !dbg !123
  %div53 = sdiv i32 %sub52, 1, !dbg !123
  %mul54 = mul nsw i32 1, %div53, !dbg !126
  %conv55 = sext i32 %mul54 to i64, !dbg !119
  %div56 = sdiv i64 %58, %conv55, !dbg !126
  %60 = load i32, i32* %.capture_expr.24, align 4, !dbg !121, !tbaa !50, !llvm.access.group !130
  %sub57 = sub nsw i32 %60, 0, !dbg !123
  %div58 = sdiv i32 %sub57, 1, !dbg !123
  %mul59 = mul nsw i32 1, %div58, !dbg !126
  %conv60 = sext i32 %mul59 to i64, !dbg !119
  %mul61 = mul nsw i64 %div56, %conv60, !dbg !126
  %sub62 = sub nsw i64 %57, %mul61, !dbg !126
  %mul63 = mul nsw i64 %sub62, 1, !dbg !127
  %add64 = add nsw i64 0, %mul63, !dbg !127
  %conv65 = trunc i64 %add64 to i32, !dbg !131
  store i32 %conv65, i32* %j41, align 4, !dbg !127, !tbaa !50, !llvm.access.group !130
  %61 = load i32, i32* %i40, align 4, !dbg !132, !tbaa !50, !llvm.access.group !130
  %idxprom66 = sext i32 %61 to i64, !dbg !133
  %62 = mul nsw i64 %idxprom66, %4, !dbg !133
  %arrayidx67 = getelementptr inbounds double, double* %vla, i64 %62, !dbg !133
  %63 = load i32, i32* %j41, align 4, !dbg !134, !tbaa !50, !llvm.access.group !130
  %idxprom68 = sext i32 %63 to i64, !dbg !133
  %arrayidx69 = getelementptr inbounds double, double* %arrayidx67, i64 %idxprom68, !dbg !133
  %64 = load double, double* %arrayidx69, align 8, !dbg !133, !tbaa !92, !llvm.access.group !130
  %65 = load i32, i32* %i40, align 4, !dbg !135, !tbaa !50, !llvm.access.group !130
  %idxprom70 = sext i32 %65 to i64, !dbg !136
  %66 = mul nsw i64 %idxprom70, %10, !dbg !136
  %arrayidx71 = getelementptr inbounds double, double* %vla1, i64 %66, !dbg !136
  %67 = load i32, i32* %j41, align 4, !dbg !137, !tbaa !50, !llvm.access.group !130
  %idxprom72 = sext i32 %67 to i64, !dbg !136
  %arrayidx73 = getelementptr inbounds double, double* %arrayidx71, i64 %idxprom72, !dbg !136
  %68 = load double, double* %arrayidx73, align 8, !dbg !136, !tbaa !92, !llvm.access.group !130
  %mul74 = fmul double %64, %68, !dbg !138
  %69 = load i32, i32* %i40, align 4, !dbg !139, !tbaa !50, !llvm.access.group !130
  %idxprom75 = sext i32 %69 to i64, !dbg !140
  %70 = mul nsw i64 %idxprom75, %15, !dbg !140
  %arrayidx76 = getelementptr inbounds double, double* %vla2, i64 %70, !dbg !140
  %71 = load i32, i32* %j41, align 4, !dbg !141, !tbaa !50, !llvm.access.group !130
  %idxprom77 = sext i32 %71 to i64, !dbg !140
  %arrayidx78 = getelementptr inbounds double, double* %arrayidx76, i64 %idxprom77, !dbg !140
  store double %mul74, double* %arrayidx78, align 8, !dbg !142, !tbaa !92, !llvm.access.group !130
  br label %omp.body.continue, !dbg !140

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !143

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %72 = load i64, i64* %.omp.iv, align 8, !dbg !129, !tbaa !124, !llvm.access.group !130
  %add79 = add nsw i64 %72, 1, !dbg !122
  store i64 %add79, i64* %.omp.iv, align 8, !dbg !122, !tbaa !124, !llvm.access.group !130
  br label %omp.inner.for.cond, !dbg !143, !llvm.loop !144

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %73 = load i32, i32* %.capture_expr., align 4, !dbg !120, !tbaa !50
  %sub80 = sub nsw i32 %73, 0, !dbg !122
  %div81 = sdiv i32 %sub80, 1, !dbg !122
  %mul82 = mul nsw i32 %div81, 1, !dbg !126
  %add83 = add nsw i32 0, %mul82, !dbg !126
  store i32 %add83, i32* %i, align 4, !dbg !126, !tbaa !50
  %74 = load i32, i32* %.capture_expr.24, align 4, !dbg !121, !tbaa !50
  %sub84 = sub nsw i32 %74, 0, !dbg !123
  %div85 = sdiv i32 %sub84, 1, !dbg !123
  %mul86 = mul nsw i32 %div85, 1, !dbg !127
  %add87 = add nsw i32 0, %mul86, !dbg !127
  store i32 %add87, i32* %j, align 4, !dbg !127, !tbaa !50
  %75 = bitcast i32* %j41 to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3, !dbg !143
  %76 = bitcast i32* %i40 to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3, !dbg !143
  br label %simd.if.end, !dbg !143

simd.if.end:                                      ; preds = %omp.inner.for.end, %land.lhs.true, %for.end22
  %77 = bitcast i64* %.omp.iv to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #3, !dbg !143
  %78 = bitcast i64* %.capture_expr.25 to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %78) #3, !dbg !143
  %79 = bitcast i32* %.capture_expr.24 to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #3, !dbg !143
  %80 = bitcast i32* %.capture_expr. to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #3, !dbg !143
  %81 = mul nsw i64 50, %15, !dbg !148
  %arrayidx88 = getelementptr inbounds double, double* %vla2, i64 %81, !dbg !148
  %arrayidx89 = getelementptr inbounds double, double* %arrayidx88, i64 50, !dbg !148
  %82 = load double, double* %arrayidx89, align 8, !dbg !148, !tbaa !92
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %82), !dbg !149
  store i32 0, i32* %retval, align 4, !dbg !150
  %83 = bitcast i32* %j to i8*, !dbg !151
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #3, !dbg !151
  %84 = bitcast i32* %i to i8*, !dbg !151
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #3, !dbg !151
  %85 = load i8*, i8** %saved_stack, align 8, !dbg !151
  call void @llvm.stackrestore(i8* %85), !dbg !151
  %86 = bitcast i32* %len to i8*, !dbg !151
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #3, !dbg !151
  %87 = load i32, i32* %retval, align 4, !dbg !151
  ret i32 %87, !dbg !151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @printf(i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.1.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB098-simd2-orig-no.c", directory: "/home/peiming/Documents/projects/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"clang version 11.1.0"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !12, scopeLine: 53, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !19, !20, !25, !26, !27, !32, !33, !34, !39, !40, !41, !41, !43, !45, !46, !47, !45, !46}
!16 = !DILocalVariable(name: "len", scope: !11, file: !1, line: 54, type: !14)
!17 = !DILocalVariable(name: "__vla_expr0", scope: !11, type: !18, flags: DIFlagArtificial)
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DILocalVariable(name: "__vla_expr1", scope: !11, type: !18, flags: DIFlagArtificial)
!20 = !DILocalVariable(name: "a", scope: !11, file: !1, line: 55, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !22)
!22 = !{!23, !24}
!23 = !DISubrange(count: !17)
!24 = !DISubrange(count: !19)
!25 = !DILocalVariable(name: "__vla_expr2", scope: !11, type: !18, flags: DIFlagArtificial)
!26 = !DILocalVariable(name: "__vla_expr3", scope: !11, type: !18, flags: DIFlagArtificial)
!27 = !DILocalVariable(name: "b", scope: !11, file: !1, line: 55, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !29)
!29 = !{!30, !31}
!30 = !DISubrange(count: !25)
!31 = !DISubrange(count: !26)
!32 = !DILocalVariable(name: "__vla_expr4", scope: !11, type: !18, flags: DIFlagArtificial)
!33 = !DILocalVariable(name: "__vla_expr5", scope: !11, type: !18, flags: DIFlagArtificial)
!34 = !DILocalVariable(name: "c", scope: !11, file: !1, line: 55, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !36)
!36 = !{!37, !38}
!37 = !DISubrange(count: !32)
!38 = !DISubrange(count: !33)
!39 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 56, type: !14)
!40 = !DILocalVariable(name: "j", scope: !11, file: !1, line: 56, type: !14)
!41 = !DILocalVariable(name: ".capture_expr.", scope: !42, type: !14, flags: DIFlagArtificial)
!42 = distinct !DILexicalBlock(scope: !11, file: !1, line: 66, column: 1)
!43 = !DILocalVariable(name: ".capture_expr.", scope: !42, type: !44, flags: DIFlagArtificial)
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DILocalVariable(name: "i", scope: !42, type: !14, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "j", scope: !42, type: !14, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.iv", scope: !42, type: !44, flags: DIFlagArtificial)
!48 = !DILocation(line: 54, column: 3, scope: !11)
!49 = !DILocation(line: 54, column: 7, scope: !11)
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 55, column: 12, scope: !11)
!55 = !DILocation(line: 55, column: 3, scope: !11)
!56 = !DILocation(line: 55, column: 17, scope: !11)
!57 = !DILocation(line: 0, scope: !11)
!58 = !DILocation(line: 55, column: 10, scope: !11)
!59 = !DILocation(line: 55, column: 25, scope: !11)
!60 = !DILocation(line: 55, column: 30, scope: !11)
!61 = !DILocation(line: 55, column: 23, scope: !11)
!62 = !DILocation(line: 55, column: 38, scope: !11)
!63 = !DILocation(line: 55, column: 43, scope: !11)
!64 = !DILocation(line: 55, column: 36, scope: !11)
!65 = !DILocation(line: 56, column: 3, scope: !11)
!66 = !DILocation(line: 56, column: 7, scope: !11)
!67 = !DILocation(line: 56, column: 9, scope: !11)
!68 = !DILocation(line: 58, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !11, file: !1, line: 58, column: 3)
!70 = !DILocation(line: 58, column: 8, scope: !69)
!71 = !DILocation(line: 58, column: 12, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 58, column: 3)
!73 = !DILocation(line: 58, column: 14, scope: !72)
!74 = !DILocation(line: 58, column: 13, scope: !72)
!75 = !DILocation(line: 58, column: 3, scope: !69)
!76 = !DILocation(line: 59, column: 11, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 59, column: 5)
!78 = !DILocation(line: 59, column: 10, scope: !77)
!79 = !DILocation(line: 59, column: 14, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 59, column: 5)
!81 = !DILocation(line: 59, column: 16, scope: !80)
!82 = !DILocation(line: 59, column: 15, scope: !80)
!83 = !DILocation(line: 59, column: 5, scope: !77)
!84 = !DILocation(line: 61, column: 24, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 60, column: 5)
!86 = !DILocation(line: 61, column: 16, scope: !85)
!87 = !DILocation(line: 61, column: 26, scope: !85)
!88 = !DILocation(line: 61, column: 9, scope: !85)
!89 = !DILocation(line: 61, column: 7, scope: !85)
!90 = !DILocation(line: 61, column: 12, scope: !85)
!91 = !DILocation(line: 61, column: 14, scope: !85)
!92 = !{!93, !93, i64 0}
!93 = !{!"double", !52, i64 0}
!94 = !DILocation(line: 62, column: 24, scope: !85)
!95 = !DILocation(line: 62, column: 16, scope: !85)
!96 = !DILocation(line: 62, column: 26, scope: !85)
!97 = !DILocation(line: 62, column: 9, scope: !85)
!98 = !DILocation(line: 62, column: 7, scope: !85)
!99 = !DILocation(line: 62, column: 12, scope: !85)
!100 = !DILocation(line: 62, column: 14, scope: !85)
!101 = !DILocation(line: 63, column: 24, scope: !85)
!102 = !DILocation(line: 63, column: 16, scope: !85)
!103 = !DILocation(line: 63, column: 26, scope: !85)
!104 = !DILocation(line: 63, column: 9, scope: !85)
!105 = !DILocation(line: 63, column: 7, scope: !85)
!106 = !DILocation(line: 63, column: 12, scope: !85)
!107 = !DILocation(line: 63, column: 14, scope: !85)
!108 = !DILocation(line: 64, column: 5, scope: !85)
!109 = !DILocation(line: 59, column: 21, scope: !80)
!110 = !DILocation(line: 59, column: 5, scope: !80)
!111 = distinct !{!111, !83, !112, !113}
!112 = !DILocation(line: 64, column: 5, scope: !77)
!113 = !{!"llvm.loop.unroll.disable"}
!114 = !DILocation(line: 58, column: 19, scope: !72)
!115 = !DILocation(line: 58, column: 3, scope: !72)
!116 = distinct !{!116, !75, !117, !113}
!117 = !DILocation(line: 64, column: 5, scope: !69)
!118 = !DILocation(line: 66, column: 1, scope: !11)
!119 = !DILocation(line: 0, scope: !42)
!120 = !DILocation(line: 67, column: 14, scope: !42)
!121 = !DILocation(line: 68, column: 16, scope: !42)
!122 = !DILocation(line: 67, column: 3, scope: !42)
!123 = !DILocation(line: 68, column: 5, scope: !42)
!124 = !{!125, !125, i64 0}
!125 = !{!"long", !52, i64 0}
!126 = !DILocation(line: 67, column: 18, scope: !42)
!127 = !DILocation(line: 68, column: 20, scope: !42)
!128 = !DILocation(line: 67, column: 10, scope: !42)
!129 = !DILocation(line: 67, column: 8, scope: !42)
!130 = distinct !{}
!131 = !DILocation(line: 68, column: 12, scope: !42)
!132 = !DILocation(line: 69, column: 17, scope: !42)
!133 = !DILocation(line: 69, column: 15, scope: !42)
!134 = !DILocation(line: 69, column: 20, scope: !42)
!135 = !DILocation(line: 69, column: 25, scope: !42)
!136 = !DILocation(line: 69, column: 23, scope: !42)
!137 = !DILocation(line: 69, column: 28, scope: !42)
!138 = !DILocation(line: 69, column: 22, scope: !42)
!139 = !DILocation(line: 69, column: 9, scope: !42)
!140 = !DILocation(line: 69, column: 7, scope: !42)
!141 = !DILocation(line: 69, column: 12, scope: !42)
!142 = !DILocation(line: 69, column: 14, scope: !42)
!143 = !DILocation(line: 66, column: 1, scope: !42)
!144 = distinct !{!144, !143, !145, !146, !147}
!145 = !DILocation(line: 66, column: 29, scope: !42)
!146 = !{!"llvm.loop.parallel_accesses", !130}
!147 = !{!"llvm.loop.vectorize.enable", i1 true}
!148 = !DILocation(line: 71, column: 28, scope: !11)
!149 = !DILocation(line: 71, column: 3, scope: !11)
!150 = !DILocation(line: 72, column: 3, scope: !11)
!151 = !DILocation(line: 73, column: 1, scope: !11)
