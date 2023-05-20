import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color:NewColor.mint   // gradient: LinearGradient(
        ),
        child: Column(
          children: [
            SizedBox(height: height*0.3),
            Image.asset("lib/assets/images/logo/new logo.png",height:height*0.3)
          ],
        ),
      ),
    );
  }
}
