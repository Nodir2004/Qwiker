import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationImagePage extends StatelessWidget {
  const LocationImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 278.53.w,
      height: 256.h,
      child: Stack(
        children: [
          Container(
            width: 278.53.w,
            height: 256.h,
            child: Image.asset("assets/image/shape.png"),
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment(2.2, 0),
                children: [
                  Container(
                    alignment: Alignment(30, 0),
                    width: 88.w,
                    height: 88.h,
                    child: Image.asset("assets/image/ellipse.png"),
                  ),
                  Stack(
                    alignment: Alignment(-0.5, -2),
                    children: [
                      Container(
                        width: 54.11.w,
                        height: 54.11.h,
                        child: Image.asset("assets/image/land.png"),
                      ),
                      Container(
                        width: 24.w,
                        height: 32.h,
                        child: Image.asset("assets/image/location.png"),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 137.66.w,
                height: 278.92.h,
                child: Image.asset("assets/image/person.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
