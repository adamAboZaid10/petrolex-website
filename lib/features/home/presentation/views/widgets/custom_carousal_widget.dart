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
        height: 200.0.h,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 8,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        onPageChanged: onPageChanged,
      ),
      items: imgList
          .map((item) => Container(
        margin: EdgeInsets.all(5.0.sp),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0.r),
          ),
          child: Stack(
            children: <Widget>[
              Image.network(
                item,
                fit: BoxFit.cover,
                width: 1000.0.w,
                height: 1000.0.h,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. ${imgList.indexOf(item) + 1} image',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ))
          .toList(),
    );
  }
}
