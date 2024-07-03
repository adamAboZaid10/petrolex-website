import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final int maxLines;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final Color labelColor;
  final Color hintColor;
  final Color textColor;
  final double height;
  final double labelFontSize;
  final double astricFontSize;
  final double textFontSize;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.validator,
    required this.controller,
    this.labelColor = Colors.black,
    this.hintColor = Colors.grey,
    this.textColor = Colors.black,
    this.height = 40,
    this.labelFontSize = 9,
    this.astricFontSize = 9,
    this.textFontSize = 9,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: labelFontSize.sp,
                fontWeight: FontWeight.bold,
                color: labelColor,
              ),
            ),
            SizedBox(
              width: 2.sp,
            ),
            Text(
              '*',
              style: TextStyle(
                fontSize: astricFontSize.sp,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.sp),
        SizedBox(
          height: height.sp,
          child: TextFormField(
            style: TextStyle(
              fontSize: textFontSize.sp,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              hintStyle: TextStyle(
                fontSize: textFontSize.sp,
                fontWeight: FontWeight.bold,
                color: hintColor,
              ),
            ),
            controller: controller,
            maxLines: maxLines,
            keyboardType: keyboardType,
            validator: validator,
          ),
        ),
      ],
    );
  }
}

