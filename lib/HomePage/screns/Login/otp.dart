import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiker/HomePage/screns/HomePage/homepage.dart';
import 'package:qwiker/HomePage/screns/Login/signUp.dart';
import 'package:qwiker/HomePage/widget/get_widget.dart';
import 'package:qwiker/HomePage/widget/otp_widget.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(margin: EdgeInsets.only(left: 12,top: 12,bottom: 12, right:12 ).r,
        width: 41.w,
        height: 41.h,
        decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.all(Radius.circular(8).r)),
        child: Icon(
         Icons.arrow_back_ios_new_outlined
        ),
      )),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 140, bottom: 20).r
                    .r,
            child: Column(
              children: [
                Text("Enter verification code"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignupPage();
                          }));
                        },
                        child: Text("Sign Up"))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Form(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OtpWidget(),
                    SizedBox(
                      width: 10.w,
                    ),
                    OtpWidget(),
                    SizedBox(
                      width: 10.w,
                    ),
                    OtpWidget(),
                    SizedBox(
                      width: 10.w,
                    ),
                    OtpWidget()
                  ],
                )),
                SizedBox(
                  height: 450.h,
                ),
                GetStartedWidget(
                    text: "Verify Now",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomepageMap()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
