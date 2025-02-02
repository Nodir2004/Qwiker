import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding3Page extends StatefulWidget {
  const Onboarding3Page({super.key});

  @override
  State<Onboarding3Page> createState() => _Onboarding3PageState();
}

class _Onboarding3PageState extends State<Onboarding3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding:  EdgeInsets.only(left: 20.r, right: 0.r, bottom: 130, top: 0.r).r,
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
              style: TextStyle(fontSize: 16.sp,),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              width: 426.95.w,
              height: 387.06.h,
              child: Image.asset(
                "assets/image/onboarding3.png",
              ),
            ),
          
          ],
        ),
      ),

    );
  }
}