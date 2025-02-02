import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding2Page extends StatefulWidget {
  const Onboarding2Page({super.key});

  @override
  State<Onboarding2Page> createState() => _Onboarding2PageState();
}

class _Onboarding2PageState extends State<Onboarding2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.r, right: 0.r, bottom: 140, top: 0.r).r,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tracking Realtime",
              style: TextStyle(
                fontSize: 32.sp,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the \n printing and typesetting industry.",
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              width: 426.95.w,
              height: 387.06.h,
              child: Image.asset(
                "assets/image/onboarding2.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
