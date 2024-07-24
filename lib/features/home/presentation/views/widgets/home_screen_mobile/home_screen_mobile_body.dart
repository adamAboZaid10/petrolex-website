import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petrolex/features/home/presentation/controller/home_bloc.dart';
import 'package:petrolex/features/home/presentation/views/widgets/custom_define_about_company_widget.dart';
import 'package:petrolex/features/home/presentation/views/widgets/custom_our_mission.dart';
import 'package:petrolex/features/home/presentation/views/widgets/custom_our_services.dart';

import '../../../../../../core/widgets/footer.dart';
import '../custom_carousal_widget.dart';

class HomeScreenMobileBody extends StatelessWidget {
  const HomeScreenMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/image/slider1.jpg',
      'assets/image/slider3.jpg',
    ];
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              IgnorePointer(
                child: CustomCarouselMobileWidget(
                  imgList: imgList,
                  onPageChanged: (index, reason) {
                    context.read<HomeBloc>().add(CarouselSliderEvent(index));
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomDefineAboutCompanyMobileWidget(),
              SizedBox(
                height: 20.h,
              ),
              const CustomMobileOurServices(),
              SizedBox(height: 20.h),
              const CustomOurMissionMobile(),
              SizedBox(
                height: 20.h,
              ),
              FooterMobileWidget(),
            ],
          ),
        );
      },
    );
  }
}
