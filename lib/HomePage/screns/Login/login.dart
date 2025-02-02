import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiker/HomePage/screns/HomePage/homepage.dart';
import 'package:qwiker/HomePage/screns/Login/signUp.dart';
import 'package:qwiker/HomePage/widget/logo_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 20, top: 160, bottom: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoWidgetPage(),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                    width: 91.w,
                    height: 41.h,
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 28),
                    )),
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                    width: 234.w,
                    height: 24.h,
                    child: Text(
                      "Login with your phone number",
                      style: TextStyle(fontSize: 14),
                    )),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 350.w,
                  height: 55.h,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22)),
                        hintText: "Phone Number"),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 350.w,
                  height: 55.h,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomepageMap();
                        }));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Color(0xff3422F2))),
                      child: Text(
                        "Send Code",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 266.h,
                ),
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
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Color(0xff3422F2)),
                        ))
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
