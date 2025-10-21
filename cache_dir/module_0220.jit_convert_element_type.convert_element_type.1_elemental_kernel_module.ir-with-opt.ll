; ModuleID = '__compute_module_convert_element_type.1_elemental_kernel_module'
source_filename = "__compute_module_convert_element_type.1_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@convert_element_type.1_parallel_bounds = private unnamed_addr constant [14 x [1 x [2 x i64]]] [[1 x [2 x i64]] [[2 x i64] [i64 0, i64 82]], [1 x [2 x i64]] [[2 x i64] [i64 82, i64 164]], [1 x [2 x i64]] [[2 x i64] [i64 164, i64 246]], [1 x [2 x i64]] [[2 x i64] [i64 246, i64 328]], [1 x [2 x i64]] [[2 x i64] [i64 328, i64 410]], [1 x [2 x i64]] [[2 x i64] [i64 410, i64 492]], [1 x [2 x i64]] [[2 x i64] [i64 492, i64 574]], [1 x [2 x i64]] [[2 x i64] [i64 574, i64 656]], [1 x [2 x i64]] [[2 x i64] [i64 656, i64 738]], [1 x [2 x i64]] [[2 x i64] [i64 738, i64 820]], [1 x [2 x i64]] [[2 x i64] [i64 820, i64 902]], [1 x [2 x i64]] [[2 x i64] [i64 902, i64 984]], [1 x [2 x i64]] [[2 x i64] [i64 984, i64 1066]], [1 x [2 x i64]] [[2 x i64] [i64 1066, i64 1152]]]

; Function Attrs: uwtable
define noalias noundef ptr @convert_element_type.1_kernel(ptr readonly captures(none) %0) local_unnamed_addr #0 {
  %workgroup_id_gep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %workgroup_id = load ptr, ptr %workgroup_id_gep, align 8
  %workgroup_id_x = load i64, ptr %workgroup_id, align 4
  %args_gep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %args = load ptr, ptr %args_gep, align 8
  %arg0 = load ptr, ptr %args, align 8, !invariant.load !3, !dereferenceable !4, !align !5
  %arg1_gep = getelementptr i8, ptr %args, i64 16
  %arg1 = load ptr, ptr %arg1_gep, align 8, !invariant.load !3, !dereferenceable !6, !align !5
  %lo_dim_0_gep = getelementptr inbounds [14 x [1 x [2 x i64]]], ptr @convert_element_type.1_parallel_bounds, i64 0, i64 %workgroup_id_x
  %up_dim_0_gep = getelementptr inbounds [14 x [1 x [2 x i64]]], ptr @convert_element_type.1_parallel_bounds, i64 0, i64 %workgroup_id_x, i64 0, i64 1
  %lo_dim_0 = load i64, ptr %lo_dim_0_gep, align 16
  %up_dim_0 = load i64, ptr %up_dim_0_gep, align 8
  %.not18 = icmp ult i64 %lo_dim_0, %up_dim_0
  br i1 %.not18, label %convert_element_type.1.loop_header.dim.1.preheader, label %return

convert_element_type.1.loop_header.dim.1.preheader: ; preds = %1, %convert_element_type.1.loop_exit.dim.1
  %convert_element_type.1.invar_address.dim.0.019 = phi i64 [ %invar.inc, %convert_element_type.1.loop_exit.dim.1 ], [ %lo_dim_0, %1 ]
  %.split = getelementptr inbounds [1152 x [3 x [2 x [16 x [16 x float]]]]], ptr %arg0, i64 0, i64 %convert_element_type.1.invar_address.dim.0.019
  %.split10 = getelementptr inbounds [1152 x [3 x [2 x [16 x [16 x bfloat]]]]], ptr %arg1, i64 0, i64 %convert_element_type.1.invar_address.dim.0.019
  br label %convert_element_type.1.loop_header.dim.2.preheader

convert_element_type.1.loop_header.dim.2.preheader: ; preds = %convert_element_type.1.loop_header.dim.1.preheader, %convert_element_type.1.loop_exit.dim.2
  %convert_element_type.1.invar_address.dim.1.017 = phi i64 [ 0, %convert_element_type.1.loop_header.dim.1.preheader ], [ %invar.inc3, %convert_element_type.1.loop_exit.dim.2 ]
  %.split7 = getelementptr inbounds nuw [3 x [2 x [16 x [16 x float]]]], ptr %.split, i64 0, i64 %convert_element_type.1.invar_address.dim.1.017
  %.split11 = getelementptr inbounds nuw [3 x [2 x [16 x [16 x bfloat]]]], ptr %.split10, i64 0, i64 %convert_element_type.1.invar_address.dim.1.017
  br label %convert_element_type.1.loop_header.dim.3.preheader

convert_element_type.1.loop_header.dim.3.preheader: ; preds = %convert_element_type.1.loop_header.dim.2.preheader, %convert_element_type.1.loop_exit.dim.3
  %.not20 = phi i1 [ true, %convert_element_type.1.loop_header.dim.2.preheader ], [ false, %convert_element_type.1.loop_exit.dim.3 ]
  %convert_element_type.1.invar_address.dim.2.016 = phi i64 [ 0, %convert_element_type.1.loop_header.dim.2.preheader ], [ 1, %convert_element_type.1.loop_exit.dim.3 ]
  %.split8 = getelementptr inbounds nuw [2 x [16 x [16 x float]]], ptr %.split7, i64 0, i64 %convert_element_type.1.invar_address.dim.2.016
  %.split12 = getelementptr inbounds nuw [2 x [16 x [16 x bfloat]]], ptr %.split11, i64 0, i64 %convert_element_type.1.invar_address.dim.2.016
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %convert_element_type.1.loop_header.dim.3.preheader
  %index = phi i64 [ 0, %convert_element_type.1.loop_header.dim.3.preheader ], [ %index.next, %vector.body ]
  %2 = or disjoint i64 %index, 1
  %3 = or disjoint i64 %index, 2
  %4 = or disjoint i64 %index, 3
  %5 = or disjoint i64 %index, 4
  %6 = or disjoint i64 %index, 5
  %7 = or disjoint i64 %index, 6
  %8 = or disjoint i64 %index, 7
  %9 = getelementptr inbounds nuw [16 x [16 x float]], ptr %.split8, i64 0, i64 %index
  %10 = getelementptr inbounds nuw [16 x [16 x float]], ptr %.split8, i64 0, i64 %2
  %11 = getelementptr inbounds nuw [16 x [16 x float]], ptr %.split8, i64 0, i64 %3
  %12 = getelementptr inbounds nuw [16 x [16 x float]], ptr %.split8, i64 0, i64 %4
  %13 = getelementptr inbounds nuw [16 x [16 x float]], ptr %.split8, i64 0, i64 %5
  %14 = getelementptr inbounds nuw [16 x [16 x float]], ptr %.split8, i64 0, i64 %6
  %15 = getelementptr inbounds nuw [16 x [16 x float]], ptr %.split8, i64 0, i64 %7
  %16 = getelementptr inbounds nuw [16 x [16 x float]], ptr %.split8, i64 0, i64 %8
  %17 = getelementptr inbounds nuw [16 x [16 x bfloat]], ptr %.split12, i64 0, i64 %index
  %18 = getelementptr inbounds nuw [16 x [16 x bfloat]], ptr %.split12, i64 0, i64 %2
  %19 = getelementptr inbounds nuw [16 x [16 x bfloat]], ptr %.split12, i64 0, i64 %3
  %20 = getelementptr inbounds nuw [16 x [16 x bfloat]], ptr %.split12, i64 0, i64 %4
  %21 = getelementptr inbounds nuw [16 x [16 x bfloat]], ptr %.split12, i64 0, i64 %5
  %22 = getelementptr inbounds nuw [16 x [16 x bfloat]], ptr %.split12, i64 0, i64 %6
  %23 = getelementptr inbounds nuw [16 x [16 x bfloat]], ptr %.split12, i64 0, i64 %7
  %24 = getelementptr inbounds nuw [16 x [16 x bfloat]], ptr %.split12, i64 0, i64 %8
  %25 = load float, ptr %9, align 64, !invariant.load !3, !noalias !7
  %26 = load float, ptr %10, align 64, !invariant.load !3, !noalias !7
  %27 = load float, ptr %11, align 64, !invariant.load !3, !noalias !7
  %28 = load float, ptr %12, align 64, !invariant.load !3, !noalias !7
  %29 = load float, ptr %13, align 64, !invariant.load !3, !noalias !7
  %30 = load float, ptr %14, align 64, !invariant.load !3, !noalias !7
  %31 = load float, ptr %15, align 64, !invariant.load !3, !noalias !7
  %32 = load float, ptr %16, align 64, !invariant.load !3, !noalias !7
  %33 = insertelement <8 x float> poison, float %25, i64 0
  %34 = insertelement <8 x float> %33, float %26, i64 1
  %35 = insertelement <8 x float> %34, float %27, i64 2
  %36 = insertelement <8 x float> %35, float %28, i64 3
  %37 = insertelement <8 x float> %36, float %29, i64 4
  %38 = insertelement <8 x float> %37, float %30, i64 5
  %39 = insertelement <8 x float> %38, float %31, i64 6
  %40 = insertelement <8 x float> %39, float %32, i64 7
  %41 = bitcast <8 x float> %40 to <8 x i32>
  %42 = lshr <8 x i32> %41, splat (i32 16)
  %43 = and <8 x i32> %42, splat (i32 1)
  %44 = add nuw nsw <8 x i32> %43, splat (i32 32767)
  %45 = fcmp uno <8 x float> %40, zeroinitializer
  %46 = and <8 x i32> %41, splat (i32 -8388608)
  %47 = or disjoint <8 x i32> %46, splat (i32 4194304)
  %48 = add <8 x i32> %44, %41
  %49 = select <8 x i1> %45, <8 x i32> %47, <8 x i32> %48
  %50 = lshr <8 x i32> %49, splat (i32 16)
  %51 = trunc nuw <8 x i32> %50 to <8 x i16>
  %52 = bitcast <8 x i16> %51 to <8 x bfloat>
  %53 = extractelement <8 x bfloat> %52, i64 0
  store bfloat %53, ptr %17, align 64, !alias.scope !7
  %54 = extractelement <8 x bfloat> %52, i64 1
  store bfloat %54, ptr %18, align 32, !alias.scope !7
  %55 = extractelement <8 x bfloat> %52, i64 2
  store bfloat %55, ptr %19, align 64, !alias.scope !7
  %56 = extractelement <8 x bfloat> %52, i64 3
  store bfloat %56, ptr %20, align 32, !alias.scope !7
  %57 = extractelement <8 x bfloat> %52, i64 4
  store bfloat %57, ptr %21, align 64, !alias.scope !7
  %58 = extractelement <8 x bfloat> %52, i64 5
  store bfloat %58, ptr %22, align 32, !alias.scope !7
  %59 = extractelement <8 x bfloat> %52, i64 6
  store bfloat %59, ptr %23, align 64, !alias.scope !7
  %60 = extractelement <8 x bfloat> %52, i64 7
  store bfloat %60, ptr %24, align 32, !alias.scope !7
  %61 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %62 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %63 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %64 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %65 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %66 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %68 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %69 = load float, ptr %61, align 4, !invariant.load !3, !noalias !7
  %70 = load float, ptr %62, align 4, !invariant.load !3, !noalias !7
  %71 = load float, ptr %63, align 4, !invariant.load !3, !noalias !7
  %72 = load float, ptr %64, align 4, !invariant.load !3, !noalias !7
  %73 = load float, ptr %65, align 4, !invariant.load !3, !noalias !7
  %74 = load float, ptr %66, align 4, !invariant.load !3, !noalias !7
  %75 = load float, ptr %67, align 4, !invariant.load !3, !noalias !7
  %76 = load float, ptr %68, align 4, !invariant.load !3, !noalias !7
  %77 = insertelement <8 x float> poison, float %69, i64 0
  %78 = insertelement <8 x float> %77, float %70, i64 1
  %79 = insertelement <8 x float> %78, float %71, i64 2
  %80 = insertelement <8 x float> %79, float %72, i64 3
  %81 = insertelement <8 x float> %80, float %73, i64 4
  %82 = insertelement <8 x float> %81, float %74, i64 5
  %83 = insertelement <8 x float> %82, float %75, i64 6
  %84 = insertelement <8 x float> %83, float %76, i64 7
  %85 = bitcast <8 x float> %84 to <8 x i32>
  %86 = lshr <8 x i32> %85, splat (i32 16)
  %87 = and <8 x i32> %86, splat (i32 1)
  %88 = add nuw nsw <8 x i32> %87, splat (i32 32767)
  %89 = fcmp uno <8 x float> %84, zeroinitializer
  %90 = and <8 x i32> %85, splat (i32 -8388608)
  %91 = or disjoint <8 x i32> %90, splat (i32 4194304)
  %92 = add <8 x i32> %88, %85
  %93 = select <8 x i1> %89, <8 x i32> %91, <8 x i32> %92
  %94 = lshr <8 x i32> %93, splat (i32 16)
  %95 = trunc nuw <8 x i32> %94 to <8 x i16>
  %96 = bitcast <8 x i16> %95 to <8 x bfloat>
  %97 = getelementptr inbounds nuw i8, ptr %17, i64 2
  %98 = getelementptr inbounds nuw i8, ptr %18, i64 2
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 2
  %100 = getelementptr inbounds nuw i8, ptr %20, i64 2
  %101 = getelementptr inbounds nuw i8, ptr %21, i64 2
  %102 = getelementptr inbounds nuw i8, ptr %22, i64 2
  %103 = getelementptr inbounds nuw i8, ptr %23, i64 2
  %104 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %105 = extractelement <8 x bfloat> %96, i64 0
  store bfloat %105, ptr %97, align 2, !alias.scope !7
  %106 = extractelement <8 x bfloat> %96, i64 1
  store bfloat %106, ptr %98, align 2, !alias.scope !7
  %107 = extractelement <8 x bfloat> %96, i64 2
  store bfloat %107, ptr %99, align 2, !alias.scope !7
  %108 = extractelement <8 x bfloat> %96, i64 3
  store bfloat %108, ptr %100, align 2, !alias.scope !7
  %109 = extractelement <8 x bfloat> %96, i64 4
  store bfloat %109, ptr %101, align 2, !alias.scope !7
  %110 = extractelement <8 x bfloat> %96, i64 5
  store bfloat %110, ptr %102, align 2, !alias.scope !7
  %111 = extractelement <8 x bfloat> %96, i64 6
  store bfloat %111, ptr %103, align 2, !alias.scope !7
  %112 = extractelement <8 x bfloat> %96, i64 7
  store bfloat %112, ptr %104, align 2, !alias.scope !7
  %113 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %114 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %115 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %116 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %117 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %118 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %119 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %120 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %121 = load float, ptr %113, align 8, !invariant.load !3, !noalias !7
  %122 = load float, ptr %114, align 8, !invariant.load !3, !noalias !7
  %123 = load float, ptr %115, align 8, !invariant.load !3, !noalias !7
  %124 = load float, ptr %116, align 8, !invariant.load !3, !noalias !7
  %125 = load float, ptr %117, align 8, !invariant.load !3, !noalias !7
  %126 = load float, ptr %118, align 8, !invariant.load !3, !noalias !7
  %127 = load float, ptr %119, align 8, !invariant.load !3, !noalias !7
  %128 = load float, ptr %120, align 8, !invariant.load !3, !noalias !7
  %129 = insertelement <8 x float> poison, float %121, i64 0
  %130 = insertelement <8 x float> %129, float %122, i64 1
  %131 = insertelement <8 x float> %130, float %123, i64 2
  %132 = insertelement <8 x float> %131, float %124, i64 3
  %133 = insertelement <8 x float> %132, float %125, i64 4
  %134 = insertelement <8 x float> %133, float %126, i64 5
  %135 = insertelement <8 x float> %134, float %127, i64 6
  %136 = insertelement <8 x float> %135, float %128, i64 7
  %137 = bitcast <8 x float> %136 to <8 x i32>
  %138 = lshr <8 x i32> %137, splat (i32 16)
  %139 = and <8 x i32> %138, splat (i32 1)
  %140 = add nuw nsw <8 x i32> %139, splat (i32 32767)
  %141 = fcmp uno <8 x float> %136, zeroinitializer
  %142 = and <8 x i32> %137, splat (i32 -8388608)
  %143 = or disjoint <8 x i32> %142, splat (i32 4194304)
  %144 = add <8 x i32> %140, %137
  %145 = select <8 x i1> %141, <8 x i32> %143, <8 x i32> %144
  %146 = lshr <8 x i32> %145, splat (i32 16)
  %147 = trunc nuw <8 x i32> %146 to <8 x i16>
  %148 = bitcast <8 x i16> %147 to <8 x bfloat>
  %149 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %150 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %152 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %153 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %154 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %155 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %156 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %157 = extractelement <8 x bfloat> %148, i64 0
  store bfloat %157, ptr %149, align 4, !alias.scope !7
  %158 = extractelement <8 x bfloat> %148, i64 1
  store bfloat %158, ptr %150, align 4, !alias.scope !7
  %159 = extractelement <8 x bfloat> %148, i64 2
  store bfloat %159, ptr %151, align 4, !alias.scope !7
  %160 = extractelement <8 x bfloat> %148, i64 3
  store bfloat %160, ptr %152, align 4, !alias.scope !7
  %161 = extractelement <8 x bfloat> %148, i64 4
  store bfloat %161, ptr %153, align 4, !alias.scope !7
  %162 = extractelement <8 x bfloat> %148, i64 5
  store bfloat %162, ptr %154, align 4, !alias.scope !7
  %163 = extractelement <8 x bfloat> %148, i64 6
  store bfloat %163, ptr %155, align 4, !alias.scope !7
  %164 = extractelement <8 x bfloat> %148, i64 7
  store bfloat %164, ptr %156, align 4, !alias.scope !7
  %165 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %166 = getelementptr inbounds nuw i8, ptr %10, i64 12
  %167 = getelementptr inbounds nuw i8, ptr %11, i64 12
  %168 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %169 = getelementptr inbounds nuw i8, ptr %13, i64 12
  %170 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %171 = getelementptr inbounds nuw i8, ptr %15, i64 12
  %172 = getelementptr inbounds nuw i8, ptr %16, i64 12
  %173 = load float, ptr %165, align 4, !invariant.load !3, !noalias !7
  %174 = load float, ptr %166, align 4, !invariant.load !3, !noalias !7
  %175 = load float, ptr %167, align 4, !invariant.load !3, !noalias !7
  %176 = load float, ptr %168, align 4, !invariant.load !3, !noalias !7
  %177 = load float, ptr %169, align 4, !invariant.load !3, !noalias !7
  %178 = load float, ptr %170, align 4, !invariant.load !3, !noalias !7
  %179 = load float, ptr %171, align 4, !invariant.load !3, !noalias !7
  %180 = load float, ptr %172, align 4, !invariant.load !3, !noalias !7
  %181 = insertelement <8 x float> poison, float %173, i64 0
  %182 = insertelement <8 x float> %181, float %174, i64 1
  %183 = insertelement <8 x float> %182, float %175, i64 2
  %184 = insertelement <8 x float> %183, float %176, i64 3
  %185 = insertelement <8 x float> %184, float %177, i64 4
  %186 = insertelement <8 x float> %185, float %178, i64 5
  %187 = insertelement <8 x float> %186, float %179, i64 6
  %188 = insertelement <8 x float> %187, float %180, i64 7
  %189 = bitcast <8 x float> %188 to <8 x i32>
  %190 = lshr <8 x i32> %189, splat (i32 16)
  %191 = and <8 x i32> %190, splat (i32 1)
  %192 = add nuw nsw <8 x i32> %191, splat (i32 32767)
  %193 = fcmp uno <8 x float> %188, zeroinitializer
  %194 = and <8 x i32> %189, splat (i32 -8388608)
  %195 = or disjoint <8 x i32> %194, splat (i32 4194304)
  %196 = add <8 x i32> %192, %189
  %197 = select <8 x i1> %193, <8 x i32> %195, <8 x i32> %196
  %198 = lshr <8 x i32> %197, splat (i32 16)
  %199 = trunc nuw <8 x i32> %198 to <8 x i16>
  %200 = bitcast <8 x i16> %199 to <8 x bfloat>
  %201 = getelementptr inbounds nuw i8, ptr %17, i64 6
  %202 = getelementptr inbounds nuw i8, ptr %18, i64 6
  %203 = getelementptr inbounds nuw i8, ptr %19, i64 6
  %204 = getelementptr inbounds nuw i8, ptr %20, i64 6
  %205 = getelementptr inbounds nuw i8, ptr %21, i64 6
  %206 = getelementptr inbounds nuw i8, ptr %22, i64 6
  %207 = getelementptr inbounds nuw i8, ptr %23, i64 6
  %208 = getelementptr inbounds nuw i8, ptr %24, i64 6
  %209 = extractelement <8 x bfloat> %200, i64 0
  store bfloat %209, ptr %201, align 2, !alias.scope !7
  %210 = extractelement <8 x bfloat> %200, i64 1
  store bfloat %210, ptr %202, align 2, !alias.scope !7
  %211 = extractelement <8 x bfloat> %200, i64 2
  store bfloat %211, ptr %203, align 2, !alias.scope !7
  %212 = extractelement <8 x bfloat> %200, i64 3
  store bfloat %212, ptr %204, align 2, !alias.scope !7
  %213 = extractelement <8 x bfloat> %200, i64 4
  store bfloat %213, ptr %205, align 2, !alias.scope !7
  %214 = extractelement <8 x bfloat> %200, i64 5
  store bfloat %214, ptr %206, align 2, !alias.scope !7
  %215 = extractelement <8 x bfloat> %200, i64 6
  store bfloat %215, ptr %207, align 2, !alias.scope !7
  %216 = extractelement <8 x bfloat> %200, i64 7
  store bfloat %216, ptr %208, align 2, !alias.scope !7
  %217 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %218 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %219 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %220 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %221 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %222 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %223 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %224 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %225 = load float, ptr %217, align 16, !invariant.load !3, !noalias !7
  %226 = load float, ptr %218, align 16, !invariant.load !3, !noalias !7
  %227 = load float, ptr %219, align 16, !invariant.load !3, !noalias !7
  %228 = load float, ptr %220, align 16, !invariant.load !3, !noalias !7
  %229 = load float, ptr %221, align 16, !invariant.load !3, !noalias !7
  %230 = load float, ptr %222, align 16, !invariant.load !3, !noalias !7
  %231 = load float, ptr %223, align 16, !invariant.load !3, !noalias !7
  %232 = load float, ptr %224, align 16, !invariant.load !3, !noalias !7
  %233 = insertelement <8 x float> poison, float %225, i64 0
  %234 = insertelement <8 x float> %233, float %226, i64 1
  %235 = insertelement <8 x float> %234, float %227, i64 2
  %236 = insertelement <8 x float> %235, float %228, i64 3
  %237 = insertelement <8 x float> %236, float %229, i64 4
  %238 = insertelement <8 x float> %237, float %230, i64 5
  %239 = insertelement <8 x float> %238, float %231, i64 6
  %240 = insertelement <8 x float> %239, float %232, i64 7
  %241 = bitcast <8 x float> %240 to <8 x i32>
  %242 = lshr <8 x i32> %241, splat (i32 16)
  %243 = and <8 x i32> %242, splat (i32 1)
  %244 = add nuw nsw <8 x i32> %243, splat (i32 32767)
  %245 = fcmp uno <8 x float> %240, zeroinitializer
  %246 = and <8 x i32> %241, splat (i32 -8388608)
  %247 = or disjoint <8 x i32> %246, splat (i32 4194304)
  %248 = add <8 x i32> %244, %241
  %249 = select <8 x i1> %245, <8 x i32> %247, <8 x i32> %248
  %250 = lshr <8 x i32> %249, splat (i32 16)
  %251 = trunc nuw <8 x i32> %250 to <8 x i16>
  %252 = bitcast <8 x i16> %251 to <8 x bfloat>
  %253 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %254 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %255 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %256 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %257 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %258 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %259 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %260 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %261 = extractelement <8 x bfloat> %252, i64 0
  store bfloat %261, ptr %253, align 8, !alias.scope !7
  %262 = extractelement <8 x bfloat> %252, i64 1
  store bfloat %262, ptr %254, align 8, !alias.scope !7
  %263 = extractelement <8 x bfloat> %252, i64 2
  store bfloat %263, ptr %255, align 8, !alias.scope !7
  %264 = extractelement <8 x bfloat> %252, i64 3
  store bfloat %264, ptr %256, align 8, !alias.scope !7
  %265 = extractelement <8 x bfloat> %252, i64 4
  store bfloat %265, ptr %257, align 8, !alias.scope !7
  %266 = extractelement <8 x bfloat> %252, i64 5
  store bfloat %266, ptr %258, align 8, !alias.scope !7
  %267 = extractelement <8 x bfloat> %252, i64 6
  store bfloat %267, ptr %259, align 8, !alias.scope !7
  %268 = extractelement <8 x bfloat> %252, i64 7
  store bfloat %268, ptr %260, align 8, !alias.scope !7
  %269 = getelementptr inbounds nuw i8, ptr %9, i64 20
  %270 = getelementptr inbounds nuw i8, ptr %10, i64 20
  %271 = getelementptr inbounds nuw i8, ptr %11, i64 20
  %272 = getelementptr inbounds nuw i8, ptr %12, i64 20
  %273 = getelementptr inbounds nuw i8, ptr %13, i64 20
  %274 = getelementptr inbounds nuw i8, ptr %14, i64 20
  %275 = getelementptr inbounds nuw i8, ptr %15, i64 20
  %276 = getelementptr inbounds nuw i8, ptr %16, i64 20
  %277 = load float, ptr %269, align 4, !invariant.load !3, !noalias !7
  %278 = load float, ptr %270, align 4, !invariant.load !3, !noalias !7
  %279 = load float, ptr %271, align 4, !invariant.load !3, !noalias !7
  %280 = load float, ptr %272, align 4, !invariant.load !3, !noalias !7
  %281 = load float, ptr %273, align 4, !invariant.load !3, !noalias !7
  %282 = load float, ptr %274, align 4, !invariant.load !3, !noalias !7
  %283 = load float, ptr %275, align 4, !invariant.load !3, !noalias !7
  %284 = load float, ptr %276, align 4, !invariant.load !3, !noalias !7
  %285 = insertelement <8 x float> poison, float %277, i64 0
  %286 = insertelement <8 x float> %285, float %278, i64 1
  %287 = insertelement <8 x float> %286, float %279, i64 2
  %288 = insertelement <8 x float> %287, float %280, i64 3
  %289 = insertelement <8 x float> %288, float %281, i64 4
  %290 = insertelement <8 x float> %289, float %282, i64 5
  %291 = insertelement <8 x float> %290, float %283, i64 6
  %292 = insertelement <8 x float> %291, float %284, i64 7
  %293 = bitcast <8 x float> %292 to <8 x i32>
  %294 = lshr <8 x i32> %293, splat (i32 16)
  %295 = and <8 x i32> %294, splat (i32 1)
  %296 = add nuw nsw <8 x i32> %295, splat (i32 32767)
  %297 = fcmp uno <8 x float> %292, zeroinitializer
  %298 = and <8 x i32> %293, splat (i32 -8388608)
  %299 = or disjoint <8 x i32> %298, splat (i32 4194304)
  %300 = add <8 x i32> %296, %293
  %301 = select <8 x i1> %297, <8 x i32> %299, <8 x i32> %300
  %302 = lshr <8 x i32> %301, splat (i32 16)
  %303 = trunc nuw <8 x i32> %302 to <8 x i16>
  %304 = bitcast <8 x i16> %303 to <8 x bfloat>
  %305 = getelementptr inbounds nuw i8, ptr %17, i64 10
  %306 = getelementptr inbounds nuw i8, ptr %18, i64 10
  %307 = getelementptr inbounds nuw i8, ptr %19, i64 10
  %308 = getelementptr inbounds nuw i8, ptr %20, i64 10
  %309 = getelementptr inbounds nuw i8, ptr %21, i64 10
  %310 = getelementptr inbounds nuw i8, ptr %22, i64 10
  %311 = getelementptr inbounds nuw i8, ptr %23, i64 10
  %312 = getelementptr inbounds nuw i8, ptr %24, i64 10
  %313 = extractelement <8 x bfloat> %304, i64 0
  store bfloat %313, ptr %305, align 2, !alias.scope !7
  %314 = extractelement <8 x bfloat> %304, i64 1
  store bfloat %314, ptr %306, align 2, !alias.scope !7
  %315 = extractelement <8 x bfloat> %304, i64 2
  store bfloat %315, ptr %307, align 2, !alias.scope !7
  %316 = extractelement <8 x bfloat> %304, i64 3
  store bfloat %316, ptr %308, align 2, !alias.scope !7
  %317 = extractelement <8 x bfloat> %304, i64 4
  store bfloat %317, ptr %309, align 2, !alias.scope !7
  %318 = extractelement <8 x bfloat> %304, i64 5
  store bfloat %318, ptr %310, align 2, !alias.scope !7
  %319 = extractelement <8 x bfloat> %304, i64 6
  store bfloat %319, ptr %311, align 2, !alias.scope !7
  %320 = extractelement <8 x bfloat> %304, i64 7
  store bfloat %320, ptr %312, align 2, !alias.scope !7
  %321 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %322 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %323 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %324 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %325 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %326 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %327 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %328 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %329 = load float, ptr %321, align 8, !invariant.load !3, !noalias !7
  %330 = load float, ptr %322, align 8, !invariant.load !3, !noalias !7
  %331 = load float, ptr %323, align 8, !invariant.load !3, !noalias !7
  %332 = load float, ptr %324, align 8, !invariant.load !3, !noalias !7
  %333 = load float, ptr %325, align 8, !invariant.load !3, !noalias !7
  %334 = load float, ptr %326, align 8, !invariant.load !3, !noalias !7
  %335 = load float, ptr %327, align 8, !invariant.load !3, !noalias !7
  %336 = load float, ptr %328, align 8, !invariant.load !3, !noalias !7
  %337 = insertelement <8 x float> poison, float %329, i64 0
  %338 = insertelement <8 x float> %337, float %330, i64 1
  %339 = insertelement <8 x float> %338, float %331, i64 2
  %340 = insertelement <8 x float> %339, float %332, i64 3
  %341 = insertelement <8 x float> %340, float %333, i64 4
  %342 = insertelement <8 x float> %341, float %334, i64 5
  %343 = insertelement <8 x float> %342, float %335, i64 6
  %344 = insertelement <8 x float> %343, float %336, i64 7
  %345 = bitcast <8 x float> %344 to <8 x i32>
  %346 = lshr <8 x i32> %345, splat (i32 16)
  %347 = and <8 x i32> %346, splat (i32 1)
  %348 = add nuw nsw <8 x i32> %347, splat (i32 32767)
  %349 = fcmp uno <8 x float> %344, zeroinitializer
  %350 = and <8 x i32> %345, splat (i32 -8388608)
  %351 = or disjoint <8 x i32> %350, splat (i32 4194304)
  %352 = add <8 x i32> %348, %345
  %353 = select <8 x i1> %349, <8 x i32> %351, <8 x i32> %352
  %354 = lshr <8 x i32> %353, splat (i32 16)
  %355 = trunc nuw <8 x i32> %354 to <8 x i16>
  %356 = bitcast <8 x i16> %355 to <8 x bfloat>
  %357 = getelementptr inbounds nuw i8, ptr %17, i64 12
  %358 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %359 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %360 = getelementptr inbounds nuw i8, ptr %20, i64 12
  %361 = getelementptr inbounds nuw i8, ptr %21, i64 12
  %362 = getelementptr inbounds nuw i8, ptr %22, i64 12
  %363 = getelementptr inbounds nuw i8, ptr %23, i64 12
  %364 = getelementptr inbounds nuw i8, ptr %24, i64 12
  %365 = extractelement <8 x bfloat> %356, i64 0
  store bfloat %365, ptr %357, align 4, !alias.scope !7
  %366 = extractelement <8 x bfloat> %356, i64 1
  store bfloat %366, ptr %358, align 4, !alias.scope !7
  %367 = extractelement <8 x bfloat> %356, i64 2
  store bfloat %367, ptr %359, align 4, !alias.scope !7
  %368 = extractelement <8 x bfloat> %356, i64 3
  store bfloat %368, ptr %360, align 4, !alias.scope !7
  %369 = extractelement <8 x bfloat> %356, i64 4
  store bfloat %369, ptr %361, align 4, !alias.scope !7
  %370 = extractelement <8 x bfloat> %356, i64 5
  store bfloat %370, ptr %362, align 4, !alias.scope !7
  %371 = extractelement <8 x bfloat> %356, i64 6
  store bfloat %371, ptr %363, align 4, !alias.scope !7
  %372 = extractelement <8 x bfloat> %356, i64 7
  store bfloat %372, ptr %364, align 4, !alias.scope !7
  %373 = getelementptr inbounds nuw i8, ptr %9, i64 28
  %374 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %375 = getelementptr inbounds nuw i8, ptr %11, i64 28
  %376 = getelementptr inbounds nuw i8, ptr %12, i64 28
  %377 = getelementptr inbounds nuw i8, ptr %13, i64 28
  %378 = getelementptr inbounds nuw i8, ptr %14, i64 28
  %379 = getelementptr inbounds nuw i8, ptr %15, i64 28
  %380 = getelementptr inbounds nuw i8, ptr %16, i64 28
  %381 = load float, ptr %373, align 4, !invariant.load !3, !noalias !7
  %382 = load float, ptr %374, align 4, !invariant.load !3, !noalias !7
  %383 = load float, ptr %375, align 4, !invariant.load !3, !noalias !7
  %384 = load float, ptr %376, align 4, !invariant.load !3, !noalias !7
  %385 = load float, ptr %377, align 4, !invariant.load !3, !noalias !7
  %386 = load float, ptr %378, align 4, !invariant.load !3, !noalias !7
  %387 = load float, ptr %379, align 4, !invariant.load !3, !noalias !7
  %388 = load float, ptr %380, align 4, !invariant.load !3, !noalias !7
  %389 = insertelement <8 x float> poison, float %381, i64 0
  %390 = insertelement <8 x float> %389, float %382, i64 1
  %391 = insertelement <8 x float> %390, float %383, i64 2
  %392 = insertelement <8 x float> %391, float %384, i64 3
  %393 = insertelement <8 x float> %392, float %385, i64 4
  %394 = insertelement <8 x float> %393, float %386, i64 5
  %395 = insertelement <8 x float> %394, float %387, i64 6
  %396 = insertelement <8 x float> %395, float %388, i64 7
  %397 = bitcast <8 x float> %396 to <8 x i32>
  %398 = lshr <8 x i32> %397, splat (i32 16)
  %399 = and <8 x i32> %398, splat (i32 1)
  %400 = add nuw nsw <8 x i32> %399, splat (i32 32767)
  %401 = fcmp uno <8 x float> %396, zeroinitializer
  %402 = and <8 x i32> %397, splat (i32 -8388608)
  %403 = or disjoint <8 x i32> %402, splat (i32 4194304)
  %404 = add <8 x i32> %400, %397
  %405 = select <8 x i1> %401, <8 x i32> %403, <8 x i32> %404
  %406 = lshr <8 x i32> %405, splat (i32 16)
  %407 = trunc nuw <8 x i32> %406 to <8 x i16>
  %408 = bitcast <8 x i16> %407 to <8 x bfloat>
  %409 = getelementptr inbounds nuw i8, ptr %17, i64 14
  %410 = getelementptr inbounds nuw i8, ptr %18, i64 14
  %411 = getelementptr inbounds nuw i8, ptr %19, i64 14
  %412 = getelementptr inbounds nuw i8, ptr %20, i64 14
  %413 = getelementptr inbounds nuw i8, ptr %21, i64 14
  %414 = getelementptr inbounds nuw i8, ptr %22, i64 14
  %415 = getelementptr inbounds nuw i8, ptr %23, i64 14
  %416 = getelementptr inbounds nuw i8, ptr %24, i64 14
  %417 = extractelement <8 x bfloat> %408, i64 0
  store bfloat %417, ptr %409, align 2, !alias.scope !7
  %418 = extractelement <8 x bfloat> %408, i64 1
  store bfloat %418, ptr %410, align 2, !alias.scope !7
  %419 = extractelement <8 x bfloat> %408, i64 2
  store bfloat %419, ptr %411, align 2, !alias.scope !7
  %420 = extractelement <8 x bfloat> %408, i64 3
  store bfloat %420, ptr %412, align 2, !alias.scope !7
  %421 = extractelement <8 x bfloat> %408, i64 4
  store bfloat %421, ptr %413, align 2, !alias.scope !7
  %422 = extractelement <8 x bfloat> %408, i64 5
  store bfloat %422, ptr %414, align 2, !alias.scope !7
  %423 = extractelement <8 x bfloat> %408, i64 6
  store bfloat %423, ptr %415, align 2, !alias.scope !7
  %424 = extractelement <8 x bfloat> %408, i64 7
  store bfloat %424, ptr %416, align 2, !alias.scope !7
  %425 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %426 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %427 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %428 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %429 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %430 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %431 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %432 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %433 = load float, ptr %425, align 32, !invariant.load !3, !noalias !7
  %434 = load float, ptr %426, align 32, !invariant.load !3, !noalias !7
  %435 = load float, ptr %427, align 32, !invariant.load !3, !noalias !7
  %436 = load float, ptr %428, align 32, !invariant.load !3, !noalias !7
  %437 = load float, ptr %429, align 32, !invariant.load !3, !noalias !7
  %438 = load float, ptr %430, align 32, !invariant.load !3, !noalias !7
  %439 = load float, ptr %431, align 32, !invariant.load !3, !noalias !7
  %440 = load float, ptr %432, align 32, !invariant.load !3, !noalias !7
  %441 = insertelement <8 x float> poison, float %433, i64 0
  %442 = insertelement <8 x float> %441, float %434, i64 1
  %443 = insertelement <8 x float> %442, float %435, i64 2
  %444 = insertelement <8 x float> %443, float %436, i64 3
  %445 = insertelement <8 x float> %444, float %437, i64 4
  %446 = insertelement <8 x float> %445, float %438, i64 5
  %447 = insertelement <8 x float> %446, float %439, i64 6
  %448 = insertelement <8 x float> %447, float %440, i64 7
  %449 = bitcast <8 x float> %448 to <8 x i32>
  %450 = lshr <8 x i32> %449, splat (i32 16)
  %451 = and <8 x i32> %450, splat (i32 1)
  %452 = add nuw nsw <8 x i32> %451, splat (i32 32767)
  %453 = fcmp uno <8 x float> %448, zeroinitializer
  %454 = and <8 x i32> %449, splat (i32 -8388608)
  %455 = or disjoint <8 x i32> %454, splat (i32 4194304)
  %456 = add <8 x i32> %452, %449
  %457 = select <8 x i1> %453, <8 x i32> %455, <8 x i32> %456
  %458 = lshr <8 x i32> %457, splat (i32 16)
  %459 = trunc nuw <8 x i32> %458 to <8 x i16>
  %460 = bitcast <8 x i16> %459 to <8 x bfloat>
  %461 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %462 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %463 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %464 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %465 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %466 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %467 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %468 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %469 = extractelement <8 x bfloat> %460, i64 0
  store bfloat %469, ptr %461, align 16, !alias.scope !7
  %470 = extractelement <8 x bfloat> %460, i64 1
  store bfloat %470, ptr %462, align 16, !alias.scope !7
  %471 = extractelement <8 x bfloat> %460, i64 2
  store bfloat %471, ptr %463, align 16, !alias.scope !7
  %472 = extractelement <8 x bfloat> %460, i64 3
  store bfloat %472, ptr %464, align 16, !alias.scope !7
  %473 = extractelement <8 x bfloat> %460, i64 4
  store bfloat %473, ptr %465, align 16, !alias.scope !7
  %474 = extractelement <8 x bfloat> %460, i64 5
  store bfloat %474, ptr %466, align 16, !alias.scope !7
  %475 = extractelement <8 x bfloat> %460, i64 6
  store bfloat %475, ptr %467, align 16, !alias.scope !7
  %476 = extractelement <8 x bfloat> %460, i64 7
  store bfloat %476, ptr %468, align 16, !alias.scope !7
  %477 = getelementptr inbounds nuw i8, ptr %9, i64 36
  %478 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %479 = getelementptr inbounds nuw i8, ptr %11, i64 36
  %480 = getelementptr inbounds nuw i8, ptr %12, i64 36
  %481 = getelementptr inbounds nuw i8, ptr %13, i64 36
  %482 = getelementptr inbounds nuw i8, ptr %14, i64 36
  %483 = getelementptr inbounds nuw i8, ptr %15, i64 36
  %484 = getelementptr inbounds nuw i8, ptr %16, i64 36
  %485 = load float, ptr %477, align 4, !invariant.load !3, !noalias !7
  %486 = load float, ptr %478, align 4, !invariant.load !3, !noalias !7
  %487 = load float, ptr %479, align 4, !invariant.load !3, !noalias !7
  %488 = load float, ptr %480, align 4, !invariant.load !3, !noalias !7
  %489 = load float, ptr %481, align 4, !invariant.load !3, !noalias !7
  %490 = load float, ptr %482, align 4, !invariant.load !3, !noalias !7
  %491 = load float, ptr %483, align 4, !invariant.load !3, !noalias !7
  %492 = load float, ptr %484, align 4, !invariant.load !3, !noalias !7
  %493 = insertelement <8 x float> poison, float %485, i64 0
  %494 = insertelement <8 x float> %493, float %486, i64 1
  %495 = insertelement <8 x float> %494, float %487, i64 2
  %496 = insertelement <8 x float> %495, float %488, i64 3
  %497 = insertelement <8 x float> %496, float %489, i64 4
  %498 = insertelement <8 x float> %497, float %490, i64 5
  %499 = insertelement <8 x float> %498, float %491, i64 6
  %500 = insertelement <8 x float> %499, float %492, i64 7
  %501 = bitcast <8 x float> %500 to <8 x i32>
  %502 = lshr <8 x i32> %501, splat (i32 16)
  %503 = and <8 x i32> %502, splat (i32 1)
  %504 = add nuw nsw <8 x i32> %503, splat (i32 32767)
  %505 = fcmp uno <8 x float> %500, zeroinitializer
  %506 = and <8 x i32> %501, splat (i32 -8388608)
  %507 = or disjoint <8 x i32> %506, splat (i32 4194304)
  %508 = add <8 x i32> %504, %501
  %509 = select <8 x i1> %505, <8 x i32> %507, <8 x i32> %508
  %510 = lshr <8 x i32> %509, splat (i32 16)
  %511 = trunc nuw <8 x i32> %510 to <8 x i16>
  %512 = bitcast <8 x i16> %511 to <8 x bfloat>
  %513 = getelementptr inbounds nuw i8, ptr %17, i64 18
  %514 = getelementptr inbounds nuw i8, ptr %18, i64 18
  %515 = getelementptr inbounds nuw i8, ptr %19, i64 18
  %516 = getelementptr inbounds nuw i8, ptr %20, i64 18
  %517 = getelementptr inbounds nuw i8, ptr %21, i64 18
  %518 = getelementptr inbounds nuw i8, ptr %22, i64 18
  %519 = getelementptr inbounds nuw i8, ptr %23, i64 18
  %520 = getelementptr inbounds nuw i8, ptr %24, i64 18
  %521 = extractelement <8 x bfloat> %512, i64 0
  store bfloat %521, ptr %513, align 2, !alias.scope !7
  %522 = extractelement <8 x bfloat> %512, i64 1
  store bfloat %522, ptr %514, align 2, !alias.scope !7
  %523 = extractelement <8 x bfloat> %512, i64 2
  store bfloat %523, ptr %515, align 2, !alias.scope !7
  %524 = extractelement <8 x bfloat> %512, i64 3
  store bfloat %524, ptr %516, align 2, !alias.scope !7
  %525 = extractelement <8 x bfloat> %512, i64 4
  store bfloat %525, ptr %517, align 2, !alias.scope !7
  %526 = extractelement <8 x bfloat> %512, i64 5
  store bfloat %526, ptr %518, align 2, !alias.scope !7
  %527 = extractelement <8 x bfloat> %512, i64 6
  store bfloat %527, ptr %519, align 2, !alias.scope !7
  %528 = extractelement <8 x bfloat> %512, i64 7
  store bfloat %528, ptr %520, align 2, !alias.scope !7
  %529 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %530 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %531 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %532 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %533 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %534 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %535 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %536 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %537 = load float, ptr %529, align 8, !invariant.load !3, !noalias !7
  %538 = load float, ptr %530, align 8, !invariant.load !3, !noalias !7
  %539 = load float, ptr %531, align 8, !invariant.load !3, !noalias !7
  %540 = load float, ptr %532, align 8, !invariant.load !3, !noalias !7
  %541 = load float, ptr %533, align 8, !invariant.load !3, !noalias !7
  %542 = load float, ptr %534, align 8, !invariant.load !3, !noalias !7
  %543 = load float, ptr %535, align 8, !invariant.load !3, !noalias !7
  %544 = load float, ptr %536, align 8, !invariant.load !3, !noalias !7
  %545 = insertelement <8 x float> poison, float %537, i64 0
  %546 = insertelement <8 x float> %545, float %538, i64 1
  %547 = insertelement <8 x float> %546, float %539, i64 2
  %548 = insertelement <8 x float> %547, float %540, i64 3
  %549 = insertelement <8 x float> %548, float %541, i64 4
  %550 = insertelement <8 x float> %549, float %542, i64 5
  %551 = insertelement <8 x float> %550, float %543, i64 6
  %552 = insertelement <8 x float> %551, float %544, i64 7
  %553 = bitcast <8 x float> %552 to <8 x i32>
  %554 = lshr <8 x i32> %553, splat (i32 16)
  %555 = and <8 x i32> %554, splat (i32 1)
  %556 = add nuw nsw <8 x i32> %555, splat (i32 32767)
  %557 = fcmp uno <8 x float> %552, zeroinitializer
  %558 = and <8 x i32> %553, splat (i32 -8388608)
  %559 = or disjoint <8 x i32> %558, splat (i32 4194304)
  %560 = add <8 x i32> %556, %553
  %561 = select <8 x i1> %557, <8 x i32> %559, <8 x i32> %560
  %562 = lshr <8 x i32> %561, splat (i32 16)
  %563 = trunc nuw <8 x i32> %562 to <8 x i16>
  %564 = bitcast <8 x i16> %563 to <8 x bfloat>
  %565 = getelementptr inbounds nuw i8, ptr %17, i64 20
  %566 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %567 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %568 = getelementptr inbounds nuw i8, ptr %20, i64 20
  %569 = getelementptr inbounds nuw i8, ptr %21, i64 20
  %570 = getelementptr inbounds nuw i8, ptr %22, i64 20
  %571 = getelementptr inbounds nuw i8, ptr %23, i64 20
  %572 = getelementptr inbounds nuw i8, ptr %24, i64 20
  %573 = extractelement <8 x bfloat> %564, i64 0
  store bfloat %573, ptr %565, align 4, !alias.scope !7
  %574 = extractelement <8 x bfloat> %564, i64 1
  store bfloat %574, ptr %566, align 4, !alias.scope !7
  %575 = extractelement <8 x bfloat> %564, i64 2
  store bfloat %575, ptr %567, align 4, !alias.scope !7
  %576 = extractelement <8 x bfloat> %564, i64 3
  store bfloat %576, ptr %568, align 4, !alias.scope !7
  %577 = extractelement <8 x bfloat> %564, i64 4
  store bfloat %577, ptr %569, align 4, !alias.scope !7
  %578 = extractelement <8 x bfloat> %564, i64 5
  store bfloat %578, ptr %570, align 4, !alias.scope !7
  %579 = extractelement <8 x bfloat> %564, i64 6
  store bfloat %579, ptr %571, align 4, !alias.scope !7
  %580 = extractelement <8 x bfloat> %564, i64 7
  store bfloat %580, ptr %572, align 4, !alias.scope !7
  %581 = getelementptr inbounds nuw i8, ptr %9, i64 44
  %582 = getelementptr inbounds nuw i8, ptr %10, i64 44
  %583 = getelementptr inbounds nuw i8, ptr %11, i64 44
  %584 = getelementptr inbounds nuw i8, ptr %12, i64 44
  %585 = getelementptr inbounds nuw i8, ptr %13, i64 44
  %586 = getelementptr inbounds nuw i8, ptr %14, i64 44
  %587 = getelementptr inbounds nuw i8, ptr %15, i64 44
  %588 = getelementptr inbounds nuw i8, ptr %16, i64 44
  %589 = load float, ptr %581, align 4, !invariant.load !3, !noalias !7
  %590 = load float, ptr %582, align 4, !invariant.load !3, !noalias !7
  %591 = load float, ptr %583, align 4, !invariant.load !3, !noalias !7
  %592 = load float, ptr %584, align 4, !invariant.load !3, !noalias !7
  %593 = load float, ptr %585, align 4, !invariant.load !3, !noalias !7
  %594 = load float, ptr %586, align 4, !invariant.load !3, !noalias !7
  %595 = load float, ptr %587, align 4, !invariant.load !3, !noalias !7
  %596 = load float, ptr %588, align 4, !invariant.load !3, !noalias !7
  %597 = insertelement <8 x float> poison, float %589, i64 0
  %598 = insertelement <8 x float> %597, float %590, i64 1
  %599 = insertelement <8 x float> %598, float %591, i64 2
  %600 = insertelement <8 x float> %599, float %592, i64 3
  %601 = insertelement <8 x float> %600, float %593, i64 4
  %602 = insertelement <8 x float> %601, float %594, i64 5
  %603 = insertelement <8 x float> %602, float %595, i64 6
  %604 = insertelement <8 x float> %603, float %596, i64 7
  %605 = bitcast <8 x float> %604 to <8 x i32>
  %606 = lshr <8 x i32> %605, splat (i32 16)
  %607 = and <8 x i32> %606, splat (i32 1)
  %608 = add nuw nsw <8 x i32> %607, splat (i32 32767)
  %609 = fcmp uno <8 x float> %604, zeroinitializer
  %610 = and <8 x i32> %605, splat (i32 -8388608)
  %611 = or disjoint <8 x i32> %610, splat (i32 4194304)
  %612 = add <8 x i32> %608, %605
  %613 = select <8 x i1> %609, <8 x i32> %611, <8 x i32> %612
  %614 = lshr <8 x i32> %613, splat (i32 16)
  %615 = trunc nuw <8 x i32> %614 to <8 x i16>
  %616 = bitcast <8 x i16> %615 to <8 x bfloat>
  %617 = getelementptr inbounds nuw i8, ptr %17, i64 22
  %618 = getelementptr inbounds nuw i8, ptr %18, i64 22
  %619 = getelementptr inbounds nuw i8, ptr %19, i64 22
  %620 = getelementptr inbounds nuw i8, ptr %20, i64 22
  %621 = getelementptr inbounds nuw i8, ptr %21, i64 22
  %622 = getelementptr inbounds nuw i8, ptr %22, i64 22
  %623 = getelementptr inbounds nuw i8, ptr %23, i64 22
  %624 = getelementptr inbounds nuw i8, ptr %24, i64 22
  %625 = extractelement <8 x bfloat> %616, i64 0
  store bfloat %625, ptr %617, align 2, !alias.scope !7
  %626 = extractelement <8 x bfloat> %616, i64 1
  store bfloat %626, ptr %618, align 2, !alias.scope !7
  %627 = extractelement <8 x bfloat> %616, i64 2
  store bfloat %627, ptr %619, align 2, !alias.scope !7
  %628 = extractelement <8 x bfloat> %616, i64 3
  store bfloat %628, ptr %620, align 2, !alias.scope !7
  %629 = extractelement <8 x bfloat> %616, i64 4
  store bfloat %629, ptr %621, align 2, !alias.scope !7
  %630 = extractelement <8 x bfloat> %616, i64 5
  store bfloat %630, ptr %622, align 2, !alias.scope !7
  %631 = extractelement <8 x bfloat> %616, i64 6
  store bfloat %631, ptr %623, align 2, !alias.scope !7
  %632 = extractelement <8 x bfloat> %616, i64 7
  store bfloat %632, ptr %624, align 2, !alias.scope !7
  %633 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %634 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %635 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %636 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %637 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %638 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %639 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %640 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %641 = load float, ptr %633, align 16, !invariant.load !3, !noalias !7
  %642 = load float, ptr %634, align 16, !invariant.load !3, !noalias !7
  %643 = load float, ptr %635, align 16, !invariant.load !3, !noalias !7
  %644 = load float, ptr %636, align 16, !invariant.load !3, !noalias !7
  %645 = load float, ptr %637, align 16, !invariant.load !3, !noalias !7
  %646 = load float, ptr %638, align 16, !invariant.load !3, !noalias !7
  %647 = load float, ptr %639, align 16, !invariant.load !3, !noalias !7
  %648 = load float, ptr %640, align 16, !invariant.load !3, !noalias !7
  %649 = insertelement <8 x float> poison, float %641, i64 0
  %650 = insertelement <8 x float> %649, float %642, i64 1
  %651 = insertelement <8 x float> %650, float %643, i64 2
  %652 = insertelement <8 x float> %651, float %644, i64 3
  %653 = insertelement <8 x float> %652, float %645, i64 4
  %654 = insertelement <8 x float> %653, float %646, i64 5
  %655 = insertelement <8 x float> %654, float %647, i64 6
  %656 = insertelement <8 x float> %655, float %648, i64 7
  %657 = bitcast <8 x float> %656 to <8 x i32>
  %658 = lshr <8 x i32> %657, splat (i32 16)
  %659 = and <8 x i32> %658, splat (i32 1)
  %660 = add nuw nsw <8 x i32> %659, splat (i32 32767)
  %661 = fcmp uno <8 x float> %656, zeroinitializer
  %662 = and <8 x i32> %657, splat (i32 -8388608)
  %663 = or disjoint <8 x i32> %662, splat (i32 4194304)
  %664 = add <8 x i32> %660, %657
  %665 = select <8 x i1> %661, <8 x i32> %663, <8 x i32> %664
  %666 = lshr <8 x i32> %665, splat (i32 16)
  %667 = trunc nuw <8 x i32> %666 to <8 x i16>
  %668 = bitcast <8 x i16> %667 to <8 x bfloat>
  %669 = getelementptr inbounds nuw i8, ptr %17, i64 24
  %670 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %671 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %672 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %673 = getelementptr inbounds nuw i8, ptr %21, i64 24
  %674 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %675 = getelementptr inbounds nuw i8, ptr %23, i64 24
  %676 = getelementptr inbounds nuw i8, ptr %24, i64 24
  %677 = extractelement <8 x bfloat> %668, i64 0
  store bfloat %677, ptr %669, align 8, !alias.scope !7
  %678 = extractelement <8 x bfloat> %668, i64 1
  store bfloat %678, ptr %670, align 8, !alias.scope !7
  %679 = extractelement <8 x bfloat> %668, i64 2
  store bfloat %679, ptr %671, align 8, !alias.scope !7
  %680 = extractelement <8 x bfloat> %668, i64 3
  store bfloat %680, ptr %672, align 8, !alias.scope !7
  %681 = extractelement <8 x bfloat> %668, i64 4
  store bfloat %681, ptr %673, align 8, !alias.scope !7
  %682 = extractelement <8 x bfloat> %668, i64 5
  store bfloat %682, ptr %674, align 8, !alias.scope !7
  %683 = extractelement <8 x bfloat> %668, i64 6
  store bfloat %683, ptr %675, align 8, !alias.scope !7
  %684 = extractelement <8 x bfloat> %668, i64 7
  store bfloat %684, ptr %676, align 8, !alias.scope !7
  %685 = getelementptr inbounds nuw i8, ptr %9, i64 52
  %686 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %687 = getelementptr inbounds nuw i8, ptr %11, i64 52
  %688 = getelementptr inbounds nuw i8, ptr %12, i64 52
  %689 = getelementptr inbounds nuw i8, ptr %13, i64 52
  %690 = getelementptr inbounds nuw i8, ptr %14, i64 52
  %691 = getelementptr inbounds nuw i8, ptr %15, i64 52
  %692 = getelementptr inbounds nuw i8, ptr %16, i64 52
  %693 = load float, ptr %685, align 4, !invariant.load !3, !noalias !7
  %694 = load float, ptr %686, align 4, !invariant.load !3, !noalias !7
  %695 = load float, ptr %687, align 4, !invariant.load !3, !noalias !7
  %696 = load float, ptr %688, align 4, !invariant.load !3, !noalias !7
  %697 = load float, ptr %689, align 4, !invariant.load !3, !noalias !7
  %698 = load float, ptr %690, align 4, !invariant.load !3, !noalias !7
  %699 = load float, ptr %691, align 4, !invariant.load !3, !noalias !7
  %700 = load float, ptr %692, align 4, !invariant.load !3, !noalias !7
  %701 = insertelement <8 x float> poison, float %693, i64 0
  %702 = insertelement <8 x float> %701, float %694, i64 1
  %703 = insertelement <8 x float> %702, float %695, i64 2
  %704 = insertelement <8 x float> %703, float %696, i64 3
  %705 = insertelement <8 x float> %704, float %697, i64 4
  %706 = insertelement <8 x float> %705, float %698, i64 5
  %707 = insertelement <8 x float> %706, float %699, i64 6
  %708 = insertelement <8 x float> %707, float %700, i64 7
  %709 = bitcast <8 x float> %708 to <8 x i32>
  %710 = lshr <8 x i32> %709, splat (i32 16)
  %711 = and <8 x i32> %710, splat (i32 1)
  %712 = add nuw nsw <8 x i32> %711, splat (i32 32767)
  %713 = fcmp uno <8 x float> %708, zeroinitializer
  %714 = and <8 x i32> %709, splat (i32 -8388608)
  %715 = or disjoint <8 x i32> %714, splat (i32 4194304)
  %716 = add <8 x i32> %712, %709
  %717 = select <8 x i1> %713, <8 x i32> %715, <8 x i32> %716
  %718 = lshr <8 x i32> %717, splat (i32 16)
  %719 = trunc nuw <8 x i32> %718 to <8 x i16>
  %720 = bitcast <8 x i16> %719 to <8 x bfloat>
  %721 = getelementptr inbounds nuw i8, ptr %17, i64 26
  %722 = getelementptr inbounds nuw i8, ptr %18, i64 26
  %723 = getelementptr inbounds nuw i8, ptr %19, i64 26
  %724 = getelementptr inbounds nuw i8, ptr %20, i64 26
  %725 = getelementptr inbounds nuw i8, ptr %21, i64 26
  %726 = getelementptr inbounds nuw i8, ptr %22, i64 26
  %727 = getelementptr inbounds nuw i8, ptr %23, i64 26
  %728 = getelementptr inbounds nuw i8, ptr %24, i64 26
  %729 = extractelement <8 x bfloat> %720, i64 0
  store bfloat %729, ptr %721, align 2, !alias.scope !7
  %730 = extractelement <8 x bfloat> %720, i64 1
  store bfloat %730, ptr %722, align 2, !alias.scope !7
  %731 = extractelement <8 x bfloat> %720, i64 2
  store bfloat %731, ptr %723, align 2, !alias.scope !7
  %732 = extractelement <8 x bfloat> %720, i64 3
  store bfloat %732, ptr %724, align 2, !alias.scope !7
  %733 = extractelement <8 x bfloat> %720, i64 4
  store bfloat %733, ptr %725, align 2, !alias.scope !7
  %734 = extractelement <8 x bfloat> %720, i64 5
  store bfloat %734, ptr %726, align 2, !alias.scope !7
  %735 = extractelement <8 x bfloat> %720, i64 6
  store bfloat %735, ptr %727, align 2, !alias.scope !7
  %736 = extractelement <8 x bfloat> %720, i64 7
  store bfloat %736, ptr %728, align 2, !alias.scope !7
  %737 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %738 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %739 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %740 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %741 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %742 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %743 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %744 = getelementptr inbounds nuw i8, ptr %16, i64 56
  %745 = load float, ptr %737, align 8, !invariant.load !3, !noalias !7
  %746 = load float, ptr %738, align 8, !invariant.load !3, !noalias !7
  %747 = load float, ptr %739, align 8, !invariant.load !3, !noalias !7
  %748 = load float, ptr %740, align 8, !invariant.load !3, !noalias !7
  %749 = load float, ptr %741, align 8, !invariant.load !3, !noalias !7
  %750 = load float, ptr %742, align 8, !invariant.load !3, !noalias !7
  %751 = load float, ptr %743, align 8, !invariant.load !3, !noalias !7
  %752 = load float, ptr %744, align 8, !invariant.load !3, !noalias !7
  %753 = insertelement <8 x float> poison, float %745, i64 0
  %754 = insertelement <8 x float> %753, float %746, i64 1
  %755 = insertelement <8 x float> %754, float %747, i64 2
  %756 = insertelement <8 x float> %755, float %748, i64 3
  %757 = insertelement <8 x float> %756, float %749, i64 4
  %758 = insertelement <8 x float> %757, float %750, i64 5
  %759 = insertelement <8 x float> %758, float %751, i64 6
  %760 = insertelement <8 x float> %759, float %752, i64 7
  %761 = bitcast <8 x float> %760 to <8 x i32>
  %762 = lshr <8 x i32> %761, splat (i32 16)
  %763 = and <8 x i32> %762, splat (i32 1)
  %764 = add nuw nsw <8 x i32> %763, splat (i32 32767)
  %765 = fcmp uno <8 x float> %760, zeroinitializer
  %766 = and <8 x i32> %761, splat (i32 -8388608)
  %767 = or disjoint <8 x i32> %766, splat (i32 4194304)
  %768 = add <8 x i32> %764, %761
  %769 = select <8 x i1> %765, <8 x i32> %767, <8 x i32> %768
  %770 = lshr <8 x i32> %769, splat (i32 16)
  %771 = trunc nuw <8 x i32> %770 to <8 x i16>
  %772 = bitcast <8 x i16> %771 to <8 x bfloat>
  %773 = getelementptr inbounds nuw i8, ptr %17, i64 28
  %774 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %775 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %776 = getelementptr inbounds nuw i8, ptr %20, i64 28
  %777 = getelementptr inbounds nuw i8, ptr %21, i64 28
  %778 = getelementptr inbounds nuw i8, ptr %22, i64 28
  %779 = getelementptr inbounds nuw i8, ptr %23, i64 28
  %780 = getelementptr inbounds nuw i8, ptr %24, i64 28
  %781 = extractelement <8 x bfloat> %772, i64 0
  store bfloat %781, ptr %773, align 4, !alias.scope !7
  %782 = extractelement <8 x bfloat> %772, i64 1
  store bfloat %782, ptr %774, align 4, !alias.scope !7
  %783 = extractelement <8 x bfloat> %772, i64 2
  store bfloat %783, ptr %775, align 4, !alias.scope !7
  %784 = extractelement <8 x bfloat> %772, i64 3
  store bfloat %784, ptr %776, align 4, !alias.scope !7
  %785 = extractelement <8 x bfloat> %772, i64 4
  store bfloat %785, ptr %777, align 4, !alias.scope !7
  %786 = extractelement <8 x bfloat> %772, i64 5
  store bfloat %786, ptr %778, align 4, !alias.scope !7
  %787 = extractelement <8 x bfloat> %772, i64 6
  store bfloat %787, ptr %779, align 4, !alias.scope !7
  %788 = extractelement <8 x bfloat> %772, i64 7
  store bfloat %788, ptr %780, align 4, !alias.scope !7
  %789 = getelementptr inbounds nuw i8, ptr %9, i64 60
  %790 = getelementptr inbounds nuw i8, ptr %10, i64 60
  %791 = getelementptr inbounds nuw i8, ptr %11, i64 60
  %792 = getelementptr inbounds nuw i8, ptr %12, i64 60
  %793 = getelementptr inbounds nuw i8, ptr %13, i64 60
  %794 = getelementptr inbounds nuw i8, ptr %14, i64 60
  %795 = getelementptr inbounds nuw i8, ptr %15, i64 60
  %796 = getelementptr inbounds nuw i8, ptr %16, i64 60
  %797 = load float, ptr %789, align 4, !invariant.load !3, !noalias !7
  %798 = load float, ptr %790, align 4, !invariant.load !3, !noalias !7
  %799 = load float, ptr %791, align 4, !invariant.load !3, !noalias !7
  %800 = load float, ptr %792, align 4, !invariant.load !3, !noalias !7
  %801 = load float, ptr %793, align 4, !invariant.load !3, !noalias !7
  %802 = load float, ptr %794, align 4, !invariant.load !3, !noalias !7
  %803 = load float, ptr %795, align 4, !invariant.load !3, !noalias !7
  %804 = load float, ptr %796, align 4, !invariant.load !3, !noalias !7
  %805 = insertelement <8 x float> poison, float %797, i64 0
  %806 = insertelement <8 x float> %805, float %798, i64 1
  %807 = insertelement <8 x float> %806, float %799, i64 2
  %808 = insertelement <8 x float> %807, float %800, i64 3
  %809 = insertelement <8 x float> %808, float %801, i64 4
  %810 = insertelement <8 x float> %809, float %802, i64 5
  %811 = insertelement <8 x float> %810, float %803, i64 6
  %812 = insertelement <8 x float> %811, float %804, i64 7
  %813 = bitcast <8 x float> %812 to <8 x i32>
  %814 = lshr <8 x i32> %813, splat (i32 16)
  %815 = and <8 x i32> %814, splat (i32 1)
  %816 = add nuw nsw <8 x i32> %815, splat (i32 32767)
  %817 = fcmp uno <8 x float> %812, zeroinitializer
  %818 = and <8 x i32> %813, splat (i32 -8388608)
  %819 = or disjoint <8 x i32> %818, splat (i32 4194304)
  %820 = add <8 x i32> %816, %813
  %821 = select <8 x i1> %817, <8 x i32> %819, <8 x i32> %820
  %822 = lshr <8 x i32> %821, splat (i32 16)
  %823 = trunc nuw <8 x i32> %822 to <8 x i16>
  %824 = bitcast <8 x i16> %823 to <8 x bfloat>
  %825 = getelementptr inbounds nuw i8, ptr %17, i64 30
  %826 = getelementptr inbounds nuw i8, ptr %18, i64 30
  %827 = getelementptr inbounds nuw i8, ptr %19, i64 30
  %828 = getelementptr inbounds nuw i8, ptr %20, i64 30
  %829 = getelementptr inbounds nuw i8, ptr %21, i64 30
  %830 = getelementptr inbounds nuw i8, ptr %22, i64 30
  %831 = getelementptr inbounds nuw i8, ptr %23, i64 30
  %832 = getelementptr inbounds nuw i8, ptr %24, i64 30
  %833 = extractelement <8 x bfloat> %824, i64 0
  store bfloat %833, ptr %825, align 2, !alias.scope !7
  %834 = extractelement <8 x bfloat> %824, i64 1
  store bfloat %834, ptr %826, align 2, !alias.scope !7
  %835 = extractelement <8 x bfloat> %824, i64 2
  store bfloat %835, ptr %827, align 2, !alias.scope !7
  %836 = extractelement <8 x bfloat> %824, i64 3
  store bfloat %836, ptr %828, align 2, !alias.scope !7
  %837 = extractelement <8 x bfloat> %824, i64 4
  store bfloat %837, ptr %829, align 2, !alias.scope !7
  %838 = extractelement <8 x bfloat> %824, i64 5
  store bfloat %838, ptr %830, align 2, !alias.scope !7
  %839 = extractelement <8 x bfloat> %824, i64 6
  store bfloat %839, ptr %831, align 2, !alias.scope !7
  %840 = extractelement <8 x bfloat> %824, i64 7
  store bfloat %840, ptr %832, align 2, !alias.scope !7
  %index.next = add nuw i64 %index, 8
  %841 = icmp eq i64 %index.next, 16
  br i1 %841, label %convert_element_type.1.loop_exit.dim.3, label %vector.body, !llvm.loop !10

convert_element_type.1.loop_exit.dim.3:           ; preds = %vector.body
  br i1 %.not20, label %convert_element_type.1.loop_header.dim.3.preheader, label %convert_element_type.1.loop_exit.dim.2, !llvm.loop !14

convert_element_type.1.loop_exit.dim.2:           ; preds = %convert_element_type.1.loop_exit.dim.3
  %invar.inc3 = add nuw nsw i64 %convert_element_type.1.invar_address.dim.1.017, 1
  %exitcond21 = icmp eq i64 %invar.inc3, 3
  br i1 %exitcond21, label %convert_element_type.1.loop_exit.dim.1, label %convert_element_type.1.loop_header.dim.2.preheader, !llvm.loop !15

convert_element_type.1.loop_exit.dim.1:           ; preds = %convert_element_type.1.loop_exit.dim.2
  %invar.inc = add i64 %convert_element_type.1.invar_address.dim.0.019, 1
  %exitcond22.not = icmp eq i64 %invar.inc, %up_dim_0
  br i1 %exitcond22.not, label %return, label %convert_element_type.1.loop_header.dim.1.preheader, !llvm.loop !16

return:                                           ; preds = %convert_element_type.1.loop_exit.dim.1, %1
  ret ptr null
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }

!xla_cpu_memory_region_name = !{!0, !1}
!llvm.module.flags = !{!2}

!0 = !{!"xla_cpu_emitter__elemental_kernel_emitter__hlo_opcode__convert"}
!1 = !{!"ir_emitter"}
!2 = !{i32 1, !"xla_dylib_index", i64 0}
!3 = !{}
!4 = !{i64 7077888}
!5 = !{i64 64}
!6 = !{i64 3538944}
!7 = !{!8}
!8 = !{!"result slice: {index:1, offset:0, size:3538944}", !9}
!9 = !{!"XLA host kernel convert_element_type.1_kernel AA domain"}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
