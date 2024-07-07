import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
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
                      color: AppColors.lightBrownColor,
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
                        SizedBox(
                          width: 200.sp,
                          height: 200.sp,
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(),
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
                    color: AppColors.lightBrownColor,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  state.products[id].desc!,
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
                              '${state.products[id].points![0]} \n ${state.products[id].points![1]}',
                              //. \nHigh effective control over soot, wear, rust corrosion. \nA high level of detergency and disperancy ensure a clean engine. \n  Good control of oil consumption',
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
                          imageUrl:
                              'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
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
                        SizedBox(
                          width: 250.sp,
                          height: 250.sp,
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl:
                                'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(),
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
                    color: AppColors.lightBrownColor,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  state.products[id].desc!,
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
                              '${state.products[id].points![0]} \n ${state.products[id].points![1]}',
                              // 'Super Protection against oxidation, foaming, high-temperature deposits, and bore . \nHigh effective control over soot, wear, rust corrosion. \nA high level of detergency and disperancy ensure a clean engine. \n  Good control of oil consumption',
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
                      SizedBox(
                        width: 250.sp,
                        height: 250.sp,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
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
