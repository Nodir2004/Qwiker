import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidgetPage extends StatelessWidget {
  const LogoWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      height: 60.h,
      child: 
    Image.asset("assets/image/logo.png"),);
  }
}