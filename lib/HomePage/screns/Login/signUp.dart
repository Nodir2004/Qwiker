import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiker/HomePage/screns/Login/code.dart';
import 'package:qwiker/HomePage/screns/Login/login.dart';
import 'package:qwiker/HomePage/screns/Login/otp.dart';
import 'package:qwiker/HomePage/widget/get_widget.dart';
import 'package:qwiker/HomePage/widget/logo_widget.dart';
import 'package:qwiker/HomePage/widget/textformfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(top: 100, bottom: 20).r,
            child: Column(
              children: [
                LogoWidgetPage(),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                    width: 129.w,
                    height: 41.h,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 28),
                    )),
                SizedBox(
                  height: 60.h,
                ),
                Form(
                    key: _fromkey,
                    child: Column(
                      children: [
                        TextformfieldWidget(
                          name: "Full Name",
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        TextformfieldWidget(
                          name: "Email",
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        TextformfieldWidget(
                          name: "Phone Number",
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        GetStartedWidget(
                          text: "Sign Up",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OTPPage()));
                            // if (_fromkey.currentState!.validate()) {
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //     const SnackBar(
                            //         content: Text('Processing Data')),
                            //   );
                            // }
                          },
                        )
                      ],
                    )),
                SizedBox(
                  height: 220.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                        child: Text("Sign In",style: TextStyle(color: Color(0xff3422F2)),))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
