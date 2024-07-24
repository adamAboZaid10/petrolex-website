import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(BuildContext context, String message) {
  FToast fToast = FToast();
  fToast.init(context);
  Widget toast = Container(
    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.r),
      gradient: const LinearGradient(
        colors: [
          Colors.black,
          Colors.black,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: Text(
      message,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 14.sp,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: 'Circular Std',
      ),
    ),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 2),
  );
}
