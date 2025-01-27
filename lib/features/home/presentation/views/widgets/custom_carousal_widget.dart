import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselWidget extends StatelessWidget {
  const CustomCarouselWidget({
    super.key,
    required this.imgList,
    required this.onPageChanged,
  });

  final List<String> imgList;

  final Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0.sp,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 8,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 20),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        onPageChanged: onPageChanged,
      ),
      items: imgList
          .map(
            (item) => Container(
              margin: EdgeInsets.all(5.0.sp),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0.r),
                ),
                child: Image.asset(
                  item,
                  width: 1000.0.sp,
                  height: 1000.0.sp,
                  colorBlendMode: BlendMode.srcOver,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class CustomCarouselMobileWidget extends StatelessWidget {
  const CustomCarouselMobileWidget({
    super.key,
    required this.imgList,
    required this.onPageChanged,
  });

  final List<String> imgList;

  final Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1.0,
        height: 280.0.sp,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 8,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        scrollPhysics: const AlwaysScrollableScrollPhysics(),
        autoPlayInterval: const Duration(seconds: 20),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        onPageChanged: onPageChanged,
      ),
      items: imgList
          .map(
            (item) => Image.asset(
              item,
              width: 1300.0.sp,
              height: 1300.0.sp,
              colorBlendMode: BlendMode.srcOver,
            ),
          )
          .toList(),
    );
  }
}
