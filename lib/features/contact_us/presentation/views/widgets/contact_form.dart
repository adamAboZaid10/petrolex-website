import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/core/widgets/custom_default_button.dart';
import '../../../../../core/widgets/custom_form_field.dart';
import '../../../data/contact_us_data.dart';

class ContactUsForm extends StatelessWidget {
  const ContactUsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
      child: Container(
        width: 500.w,
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(24.0.sp),
          child: Form(
            key: ContactUsData.formKey,
            child: Column(
              children: [
                CustomTextField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  controller: ContactUsData.nameController,
                  label: "Name",
                  hintText: "Enter your name",
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Number';
                    }
                    return null;
                  },
                  controller: ContactUsData.numberController,
                  label: "Number",
                  hintText: "Enter your Number",
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
                    }
                    return null;
                  },
                  controller: ContactUsData.emailController,
                  label: "Email",
                  hintText: "Enter your Email",
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Message';
                    }
                    return null;
                  },
                  controller: ContactUsData.messageController,
                  label: "Message",
                  hintText: "Enter your Message",
                  maxLines: 5,
                ),
                SizedBox(height: 15.h),
                CustomDefaultButton(
                  backgroundColor: AppColors.lightBrownColor,
                  onTap: () {
                    if (ContactUsData.formKey.currentState!.validate()) {
                      ContactUsData.formKey.currentState!.save();
                      ContactUsData.formKey.currentState!.reset();
                    }
                  },
                  text: 'Send',
                  width: 95,
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
