import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';


class ContactUsForm extends StatelessWidget {
  const ContactUsForm({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
      child: Container(
        height: 350.h,
        width: 500.w,
        decoration: BoxDecoration(
          color:AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Form(
          child: Padding(
            padding:  EdgeInsets.all(24.0.sp),
            child: Column(
              children: [
              _buildTextField(
              label: "Name",
              hintText: "Enter your name",),
              SizedBox(height: 10.h,),
              _buildTextField(
              label: "Number",
              hintText: "Enter your Number",),
                            SizedBox(height: 10.h,),

              _buildTextField(
              label: "Email",
              hintText: "Enter your Email",),
                            SizedBox(height: 10.h,),

              _buildTextField(
              label: "Message",
              hintText: "Enter your Message",
              maxLines: 5),
              SizedBox(height: 15.h,),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 95.h,
                  height: 35.h,
                  decoration:BoxDecoration(
                  color: AppColors.lightBrownColor,
                  borderRadius: BorderRadius.circular(5.r),),
                  child: Center(
                    child: Text('Send',
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),),
                  ),
                
                ),
              )

              
            ],),
          ),
        ),
      ),
    );
  }
}


Widget _buildTextField({
    required String label,
    required String hintText,
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 9.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          maxLines: maxLines,
          keyboardType: keyboardType,
          validator: validator,
        ),
      ],
    );
  }
