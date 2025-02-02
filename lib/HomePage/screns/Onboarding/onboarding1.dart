import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding1Page extends StatefulWidget {
  const Onboarding1Page({super.key});

  @override
  State<Onboarding1Page> createState() => __Onboarding1PageState();
}

class __Onboarding1PageState extends State<Onboarding1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.r, right: 20.r, bottom: 190, top: 0.r).r,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Accept a job",
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
              height: 45.h,
            ),
            SizedBox(
              width: 389.9.w,
              height: 289.4.h,
              child: Image.asset(
                "assets/image/onboarding1.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
