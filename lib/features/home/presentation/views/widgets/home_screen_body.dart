import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/features/home/presentation/controller/home_bloc.dart';
import 'package:flutter_web/features/home/presentation/views/widgets/custom_app_bar.dart';

import 'custom_carousal_widget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/image/first.jpg',
      'assets/image/second.webp',
      'assets/image/third.jpeg',
    ];
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(),
              SizedBox(
                height: 20.h,
              ),
              CustomCarouselWidget(
                imgList: imgList,
                onPageChanged: (index, reason) {
                  context.read<HomeBloc>().add(CarouselSliderEvent(index));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

