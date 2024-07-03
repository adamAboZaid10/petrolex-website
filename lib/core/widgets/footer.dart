import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/widgets/custom_form_field.dart';
import 'package:lottie/lottie.dart';
import '../../features/contact_us/data/contact_us_data.dart';
import '../utils/app_colors.dart';
import 'custom_default_button.dart';

class FooterWidget extends StatelessWidget {
   FooterWidget({super.key});
final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.sp,
      decoration: BoxDecoration(
        color: AppColors.blackColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Form(
          key: formKey,
          child: Column(

            children: [
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.sp),
                      SizedBox(
                        width: 200.sp,
                        child: CustomTextField(
                          height: 30,
                          hintColor: Colors.grey,
                          textColor: Colors.white,
                          labelColor: Colors.white,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                          controller: ContactUsData.nameController,
                          label: 'Name',
                          hintText: 'Enter your name',
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      SizedBox(
                        width: 200.sp,
                        child: CustomTextField(
                          hintColor: Colors.grey,
                          textColor: Colors.white,
                          labelColor: Colors.white,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Email';
                            }
                            return null;
                          },
                          controller: ContactUsData.emailController,
                          label: 'Email',
                          hintText: 'Enter your Email',
                          height: 30,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      SizedBox(
                        width: 200.sp,
                        child: CustomTextField(
                          hintColor: Colors.grey,
                          textColor: Colors.white,
                          labelColor: Colors.white,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Number';
                            }
                            return null;
                          },
                          controller: ContactUsData.numberController,
                          label: 'Number',
                          hintText: 'Enter your Number',
                          height: 30,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      SizedBox(
                        width: 200.sp,
                        child: CustomTextField(
                          height: 60,
                          hintColor: Colors.grey,
                          textColor: Colors.white,
                          labelColor: Colors.white,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Message';
                            }
                            return null;
                          },
                          controller: ContactUsData.messageController,
                          label: 'Message',
                          maxLines: 5,
                          hintText: 'Enter your Message',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.sp),
                  Column(
                    children: [
                      Lottie.asset(
                        'assets/lotttie/submit.json',
                        width: 200.sp,
                        height: 200.sp,
                      ),
                      SizedBox(height: 60.sp),
                      CustomDefaultButton(
                        backgroundColor: AppColors.lightBrownColor,
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            formKey.currentState!.reset();
                          }
                        },
                        text: 'Submit',
                        width: 200,
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
