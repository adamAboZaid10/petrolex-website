import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/Routing/app_routes.dart';

class CustomGirdViewProducts extends StatelessWidget {
  const CustomGirdViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      mainAxisSpacing: 2.sp,
      crossAxisSpacing: 2.sp,
      children: List.generate(6, (index) {
        return CustomGridViewProductsItem(
          imgPath: 'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
          nameProducts: 'Products name ',
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.productDetails,
            );
          },
        );
      }),
    );
  }
}

class CustomGridViewProductsItem extends StatelessWidget {
  const CustomGridViewProductsItem({
    super.key,
    required this.imgPath,
    required this.nameProducts,
    required this.onTap,
  });

  final String nameProducts;
  final String imgPath;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: SizedBox(
            width: 100.sp,
            height: 100.sp,
            child:CachedNetworkImage(
              imageUrl: imgPath,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          nameProducts,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
