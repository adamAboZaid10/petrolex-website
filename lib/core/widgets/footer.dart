import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/widgets/custom_form_field.dart';
import 'package:lottie/lottie.dart';
import '../../features/contact_us/data/contact_us_data.dart';
import '../../features/contact_us/presentation/controller/contact_us_bloc.dart';
import '../Helpers/enum_state.dart';
import '../Helpers/service_locator.dart';
import '../utils/app_colors.dart';
import '../utils/show_toast.dart';
import 'custom_default_button.dart';

class FooterWidget extends StatelessWidget {
  FooterWidget({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ContactUsBloc>(),
      child: Container(
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
                            focusNode: ContactUsData.nameFocusNode,
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
                            focusNode: ContactUsData.emailFocusNode,
                            hintColor: Colors.grey,
                            textColor: Colors.white,
                            labelColor: Colors.white,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.contains('@')) {
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
                            focusNode: ContactUsData.numberFocusNode,
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
                            focusNode: ContactUsData.messageFocusNode,
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
                                if (formKey.currentState!.validate()) {
                                  context
                                      .read<ContactUsBloc>()
                                      .add(const SendInfoEvent());
                                }
                              },
                              text: 'Submit',
                              width: 200,
                              height: 20,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FooterMobileWidget extends StatelessWidget {
  FooterMobileWidget({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ContactUsBloc>(),
      child: Container(
        width: double.infinity,
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
                    fontSize: 30.sp,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    IgnorePointer(
                      child: Lottie.asset(
                        'assets/lotttie/submit.json',
                        animate: true,
                        width: 180.sp,
                        height: 180.sp,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 20.sp),
                    Column(
                      children: [
                        CustomTextField(
                          maxWidth: double.infinity,
                          errorFontSize: 40.sp,

                          focusNode: ContactUsData.nameFocusNode,
                          height: 70,
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
                          labelFontSize: 30,
                          hintText: 'Enter your name',
                          textFontSize: 25,
                          astricFontSize: 25,
                        ),
                        SizedBox(height: 15.sp),
                        CustomTextField(
                          maxWidth: double.infinity,
                          errorFontSize: 40.sp,
                          focusNode: ContactUsData.emailFocusNode,
                          hintColor: Colors.grey,
                          textColor: Colors.white,
                          labelColor: Colors.white,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !value.contains('@')) {
                              return 'Please enter your Email';
                            }
                            return null;
                          },
                          controller: ContactUsData.emailController,
                          label: 'Email',
                          hintText: 'Enter your Email',
                          labelFontSize: 30,
                          height: 70,
                          textFontSize: 25,
                          astricFontSize: 25,
                        ),
                        SizedBox(height: 15.sp),
                        CustomTextField(
                          maxWidth: double.infinity,
                          errorFontSize: 40.sp,
                          focusNode: ContactUsData.numberFocusNode,
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
                          labelFontSize: 30,
                          height: 70,
                          textFontSize: 25,
                          astricFontSize: 25,
                        ),
                        SizedBox(height: 15.sp),
                        CustomTextField(
                          maxWidth: double.infinity,
                          errorFontSize: 40.sp,
                          focusNode: ContactUsData.messageFocusNode,
                          labelFontSize: 30,
                          height: 70,
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
                          textFontSize: 25,
                          astricFontSize: 25,
                        ),
                        SizedBox(height: 20.sp),
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
                                if (formKey.currentState!.validate()) {
                                  context
                                      .read<ContactUsBloc>()
                                      .add(const SendInfoEvent());
                                }
                              },
                              text: 'Submit',
                              fontSize: 50.sp,
                              width: double.infinity,
                              height: 50,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
