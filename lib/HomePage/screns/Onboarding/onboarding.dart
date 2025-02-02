import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiker/HomePage/screns/Onboarding/location.dart';
import 'package:qwiker/HomePage/screns/Onboarding/onboarding1.dart';
import 'package:qwiker/HomePage/screns/Onboarding/onboarding2.dart';
import 'package:qwiker/HomePage/screns/Onboarding/onboarding3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  bool onlastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onlastPage = (index == 2);
              });
            },
            controller: _controller,
            children: [Onboarding1Page(), Onboarding2Page(), Onboarding3Page()],
          ),
          Container(
            alignment: Alignment(0, 0.5),
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SmoothPageIndicator(controller: _controller, count: 3),
                SizedBox(
                  height: 140.h,
                ),
                onlastPage
                    ? Container(
                        width: 220.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                            color: Color(0xff3422F2),
                            borderRadius: BorderRadius.circular(28).w),
                        child: ElevatedButton(
                          onLongPress: () {},
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LocationPage();
                            }));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xff3422F2))),
                          child: Text(
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    : Container(
                        width: 220.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                            color: Color(0xff3422F2),
                            borderRadius: BorderRadius.circular(28).w),
                        child: ElevatedButton(
                          onLongPress: () {},
                          onPressed: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xff3422F2))),
                          child: Text(
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
