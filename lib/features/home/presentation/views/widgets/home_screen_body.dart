import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/features/home/presentation/controller/home_bloc.dart';
import 'package:flutter_web/features/home/presentation/views/widgets/custom_define_about_company_widget.dart';
import 'package:flutter_web/features/home/presentation/views/widgets/custom_our_mission.dart';
import 'package:flutter_web/features/home/presentation/views/widgets/custom_our_services.dart';
import '../../../../../core/widgets/footer.dart';
import 'custom_carousal_widget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/image/slider1.jpg',
      'assets/image/slider2.jpg',
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
              CustomCarouselWidget(
                imgList: imgList,
                onPageChanged: (index, reason) {
                  context.read<HomeBloc>().add(CarouselSliderEvent(index));
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomDefineAboutCompanyWidget(),
              SizedBox(
                height: 20.h,
              ),
              const CustomOurServices(),
              SizedBox(height: 20.h),
              const CustomOurMission(),
              SizedBox(
                height: 20.h,
              ),
              FooterWidget(),

            ],
          ),
        );
      },
    );
  }
}
