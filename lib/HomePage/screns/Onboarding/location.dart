import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiker/HomePage/screns/Login/login.dart';
import 'package:qwiker/HomePage/widget/location_image.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 180, bottom: 20).r,
        child: Column(
          children: [
            LocationImagePage(),
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Text("Don't worry your data is private"),
            ),
            SizedBox(
              height: 340.h,
            ),
            SizedBox(
              width: 350.w,
              height: 55.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff3422F2))),
                child: Text(
                  "Allow Location",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
