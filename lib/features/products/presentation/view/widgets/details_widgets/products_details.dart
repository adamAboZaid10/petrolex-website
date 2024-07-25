import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petrolex/core/utils/app_colors.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/Helpers/enum_state.dart';
import '../../../controller/products_bloc.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        if (state.getProductsStatus == ApiStatus.loading) {
          return Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.grey.shade300,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                children: [
                  Text(
                    'Name Products',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'An excellent Quality of oil formulated with highly refined base stocks and advanced additive packages',
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.sp),
                    decoration: BoxDecoration(
                      color: AppColors.darkGreenColor,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SUMMARY OF BENEFITS',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightBrownColor,
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                'Super Protection against oxidation, foaming, high-temperature deposits, and bore . \nHigh effective control over soot, wear, rust corrosion. \nA high level of detergency and disperancy ensure a clean engine. \n  Good control of oil consumption',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          width: 200.sp,
                          height: 200.sp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          );
        }
        if (state.getProductsStatus == ApiStatus.success) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              children: [
                Text(
                  state.products[id].name!,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  state.products[id].desc!,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.all(20.sp),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SUMMARY OF BENEFITS',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.lightBrownColor,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            state.products[id].points!.length == 1
                                ? Text(
                                    '1: ${state.products[id].points![0]} .',
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      color: Colors.white,
                                    ),
                                  )
                                : state.products[id].points!.length == 2
                                    ? Text(
                                        '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]}.',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          color: Colors.white,
                                        ),
                                      )
                                    : state.products[id].points!.length == 3
                                        ? Text(
                                            '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]} .\n3: ${state.products[id].points![2]}.',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              color: Colors.white,
                                            ),
                                          )
                                        : state.products[id].points!.length == 4
                                            ? Text(
                                                '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]} .\n3: ${state.products[id].points![2]} .\n4: ${state.products[id].points![3]} .',
                                                style: TextStyle(
                                                  fontSize: 11.sp,
                                                  color: Colors.white,
                                                ),
                                              )
                                            : state.products[id].points!
                                                        .length ==
                                                    5
                                                ? Text(
                                                    '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]} .\n3: ${state.products[id].points![2]} .\n4: ${state.products[id].points![3]} .\n5: ${state.products[id].points![4]} .',
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                : Text(
                                                    '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]} .\n3: ${state.products[id].points![2]} .\n4: ${state.products[id].points![3]} .\n5: ${state.products[id].points![4]} .\n6: ${state.products[id].points![5]}.',
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SizedBox(
                        width: 200.sp,
                        height: 200.sp,
                        child: CachedNetworkImage(
                          colorBlendMode: BlendMode.srcOver,
                          imageUrl: state.products[id].img!,
                          placeholder: (context, url) => Center(
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey,
                              highlightColor: Colors.grey.shade300,
                              child: Container(
                                width: 200.sp,
                                height: 200.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          );
        } else {
          return Text(
            'Error',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.sp,
            ),
          );
        }
      },
    );
  }
}

class ProductsMobileDetails extends StatelessWidget {
  const ProductsMobileDetails({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        if (state.getProductsStatus == ApiStatus.loading) {
          return Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.grey.shade300,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                children: [
                  Text(
                    'Name Products',
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightBrownColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'An excellent Quality of oil formulated with highly refined base stocks and advanced additive packages',
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.sp),
                    height: 400.sp,
                    decoration: BoxDecoration(
                      color: AppColors.darkGreenColor,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SUMMARY OF BENEFITS',
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightBrownColor,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Super Protection against oxidation, foaming, high-temperature deposits, and bore . \nHigh effective control over soot, wear, rust corrosion. \nA high level of detergency and disperancy ensure a clean engine. \n  Good control of oil consumption',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          width: 250.sp,
                          height: 250.sp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          );
        }
        if (state.getProductsStatus == ApiStatus.success) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              children: [
                Text(
                  state.products[id].name!,
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  state.products[id].desc!,
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.all(20.sp),
                  height: 400.sp,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SUMMARY OF BENEFITS',
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.lightBrownColor,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            state.products[id].points!.length == 1
                                ? Text(
                                    '1: ${state.products[id].points![0]} .',
                                    style: TextStyle(
                                      fontSize: 30.sp,
                                      color: Colors.white,
                                    ),
                                  )
                                : state.products[id].points!.length == 2
                                    ? Text(
                                        '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]}.',
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          color: Colors.white,
                                        ),
                                      )
                                    : state.products[id].points!.length == 3
                                        ? Text(
                                            '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]} .\n3: ${state.products[id].points![2]}.',
                                            style: TextStyle(
                                              fontSize: 30.sp,
                                              color: Colors.white,
                                            ),
                                          )
                                        : state.products[id].points!.length == 4
                                            ? Text(
                                                '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]} .\n3: ${state.products[id].points![2]} .\n4: ${state.products[id].points![3]} .',
                                                style: TextStyle(
                                                  fontSize: 30.sp,
                                                  color: Colors.white,
                                                ),
                                              )
                                            : state.products[id].points!
                                                        .length ==
                                                    5
                                                ? Text(
                                                    '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]} .\n3: ${state.products[id].points![2]} .\n4: ${state.products[id].points![3]} .\n5: ${state.products[id].points![4]} .',
                                                    style: TextStyle(
                                                      fontSize: 30.sp,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                : Text(
                                                    '1: ${state.products[id].points![0]} .\n2: ${state.products[id].points![1]} .\n3: ${state.products[id].points![2]} .\n4: ${state.products[id].points![3]} .\n5: ${state.products[id].points![4]} .\n6: ${state.products[id].points![5]}.',
                                                    style: TextStyle(
                                                      fontSize: 30.sp,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SizedBox(
                        width: 250.sp,
                        height: 250.sp,
                        child: CachedNetworkImage(
                          colorBlendMode: BlendMode.srcOver,
                          fit: BoxFit.cover,
                          imageUrl: state.products[id].img!,
                          placeholder: (context, url) => Center(
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey,
                              highlightColor: Colors.grey.shade300,
                              child: Container(
                                width: 250.sp,
                                height: 250.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          );
        } else {
          return Text(
            'Error',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30.sp,
            ),
          );
        }
      },
    );
  }
}
