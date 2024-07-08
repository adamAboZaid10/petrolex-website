import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/Helpers/enum_state.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/core/utils/show_toast.dart';
import 'package:flutter_web/core/widgets/custom_default_button.dart';
import 'package:flutter_web/features/contact_us/presentation/controller/contact_us_bloc.dart';
import '../../../../../core/widgets/custom_form_field.dart';
import '../../../data/contact_us_data.dart';

class ContactUsForm extends StatelessWidget {
  const ContactUsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
      child: Container(
        width: 500.sp,
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
                  maxWidth: double.infinity,
                  focusNode: ContactUsData.nameFocusNode,
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
                  maxWidth: double.infinity,
                  focusNode: ContactUsData.numberFocusNode,
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
                  maxWidth: double.infinity,
                  focusNode: ContactUsData.emailFocusNode,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@')) {
                      return 'Please enter invalid Email';
                    }
                    return null;
                  },
                  controller: ContactUsData.emailController,
                  label: "Email",
                  hintText: "Enter your Email",
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  maxWidth: double.infinity,
                  focusNode: ContactUsData.messageFocusNode,
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
                BlocConsumer<ContactUsBloc, ContactUsState>(
                  listener: (context, state) {
                    if (state.sendInfoStatus == ApiStatus.success) {
                      ContactUsData.nameController.clear();
                      ContactUsData.numberController.clear();
                      ContactUsData.emailController.clear();
                      ContactUsData.messageController.clear();
                      showToast(context, 'Message sent successfully');
                    }
                  },
                  builder: (context, state) {
                    if (state.sendInfoStatus == ApiStatus.loading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state.sendInfoStatus == ApiStatus.error) {
                      return Text(
                        state.sendInfoMessage,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      );
                    }
                    return CustomDefaultButton(
                      backgroundColor: AppColors.lightBrownColor,
                      onTap: () {
                        print(ContactUsData.nameController.text.trim());
                        print(ContactUsData.numberController.text.trim());
                        print(ContactUsData.emailController.text.trim());
                        print(ContactUsData.messageController.text.trim());
                        if (ContactUsData.formKey.currentState!.validate()) {
                          context
                              .read<ContactUsBloc>()
                              .add(const SendInfoEvent());
                        }
                      },
                      text: 'Send',
                      width: 95,
                      height: 35,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactUsMobileForm extends StatelessWidget {
  const ContactUsMobileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
      child: Container(
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
                  maxWidth: double.infinity,
                  errorFontSize: 30,
                  focusNode: ContactUsData.nameFocusNode,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  controller: ContactUsData.nameController,
                  label: "Name",
                  hintText: "Enter your name",
                  labelFontSize: 30,
                  height: 70,
                  textFontSize: 25,
                  astricFontSize: 25,
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  maxWidth: double.infinity,
                  errorFontSize: 30,
                  focusNode: ContactUsData.numberFocusNode,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Number';
                    }
                    return null;
                  },
                  controller: ContactUsData.numberController,
                  label: "Number",
                  hintText: "Enter your Number",
                  labelFontSize: 30,
                  height: 70,
                  textFontSize: 25,
                  astricFontSize: 25,
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  maxWidth: double.infinity,
                  errorFontSize: 30,
                  focusNode: ContactUsData.emailFocusNode,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@')) {
                      return 'Please enter your Email';
                    }
                    return null;
                  },
                  controller: ContactUsData.emailController,
                  label: "Email",
                  hintText: "Enter your Email",
                  labelFontSize: 30,
                  height: 70,
                  textFontSize: 25,
                  astricFontSize: 25,
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  errorFontSize: 30,
                  maxWidth: double.infinity,
                  focusNode: ContactUsData.messageFocusNode,
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
                  labelFontSize: 30,
                  height: 70,
                  textFontSize: 25,
                  astricFontSize: 25,
                ),
                SizedBox(height: 15.h),
                BlocConsumer<ContactUsBloc, ContactUsState>(
                  listener: (context, state) {
                    if (state.sendInfoStatus == ApiStatus.success) {
                      ContactUsData.nameController.clear();
                      ContactUsData.numberController.clear();
                      ContactUsData.emailController.clear();
                      ContactUsData.messageController.clear();
                      showToast(context, 'Message sent successfully');
                    }
                  },
                  builder: (context, state) {
                    if (state.sendInfoStatus == ApiStatus.loading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state.sendInfoStatus == ApiStatus.error) {
                      return Text(
                        state.sendInfoMessage,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                        ),
                      );
                    }
                    return CustomDefaultButton(
                      backgroundColor: AppColors.lightBrownColor,
                      onTap: () {
                        if (ContactUsData.formKey.currentState!.validate()) {
                          context
                              .read<ContactUsBloc>()
                              .add(const SendInfoEvent());
                        }
                      },
                      text: 'Send',
                      fontSize: 50.sp,
                      width: double.infinity,
                      height: 50,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
