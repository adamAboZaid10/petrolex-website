import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/Helpers/enum_state.dart';
import 'package:flutter_web/features/products/presentation/controller/products_bloc.dart';
import 'package:flutter_web/features/products/presentation/view/screeens/base_products_details.dart';
import 'package:shimmer/shimmer.dart';

class CustomGirdViewProducts extends StatelessWidget {
  const CustomGirdViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        if (state.getProductsStatus == ApiStatus.loading) {
          return Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.grey.shade300,
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              mainAxisSpacing: 2.sp,
              crossAxisSpacing: 2.sp,
              children: List.generate(6, (index) {
                return CustomGridViewProductsItem(
                  imgPath:
                      'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
                  nameProducts: 'Products name ',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BaseProductsDetails(id: 1,),
                      ),
                    );
                  },
                );
              }),
            ),
          );
        }
        if (state.getProductsStatus == ApiStatus.success) {
          return GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 2.sp,
            crossAxisSpacing: 2.sp,
            children: List.generate(state.products.length, (index) {
              return CustomGridViewProductsItem(
                imgPath:state.products[index].img!,
                    // 'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
                nameProducts: state.products[index].name!,
                onTap: () {

                  // print(state.products[index].img);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  BaseProductsDetails(id: index,),
                    ),

                  );
                },
              );
            }),
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

class CustomGirdViewMobileProducts extends StatelessWidget {
  const CustomGirdViewMobileProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        if (state.getProductsStatus == ApiStatus.loading) {
          return Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.grey.shade300,
            child:GridView.count(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              shrinkWrap: true,
              mainAxisSpacing: 2.sp,
              crossAxisSpacing: 2.sp,
              childAspectRatio: 1 / 1.5,
              children: List.generate(6, (index) {
                return CustomGridViewProductsItem(
                  imgHeight: 200,
                  imgWidth: 200,
                  fontSize: 30,
                  imgPath:
                  'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
                  nameProducts: 'Products name ',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BaseProductsDetails(id: 1,),
                      ),
                    );
                  },
                );
              }),
            ),
          );
        }
        if (state.getProductsStatus == ApiStatus.success) {
          return GridView.count(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 2.sp,
            crossAxisSpacing: 2.sp,
            childAspectRatio: 1 / 1.5,
            children: List.generate(state.products.length, (index) {
              return CustomGridViewProductsItem(
                imgHeight: 200,
                imgWidth: 200,
                fontSize: 25,
                imgPath:state.products[index].img!,
                // 'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
                nameProducts: state.products[index].name!,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  BaseProductsDetails(id: index,),
                    ),
                  );
                },
              );
            }),
          );
        } else {
          return Text(
            'Error',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
            ),
          );
        }
      },
    );
  }
}

class CustomGridViewProductsItem extends StatelessWidget {
  const CustomGridViewProductsItem({
    super.key,
    required this.imgPath,
    required this.nameProducts,
    required this.onTap,
    this.imgHeight = 100,
    this.imgWidth = 100,
    this.fontSize = 10,
  });

  final String nameProducts;
  final String imgPath;
  final Function()? onTap;
  final double imgHeight;
  final double imgWidth;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: SizedBox(
            width: imgWidth.sp,
            height: imgHeight.sp,
            child: CachedNetworkImage(
              imageUrl: imgPath,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),

            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          nameProducts,
          style: TextStyle(
            fontSize: fontSize.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
