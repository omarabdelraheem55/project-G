import 'package:flutter/material.dart';
import 'package:graduation_project/screens/Who_are_we_login.dart';
import 'package:graduation_project/screens/Who_are_we_signup.dart';
import 'package:graduation_project/helper/New_Color.dart';

class SelectForm extends StatefulWidget {
  const SelectForm({Key? key}) : super(key: key);

  @override
  State<SelectForm> createState() => _SelectFormState();
}

class _SelectFormState extends State<SelectForm> {
  @override
  double fontsize = 24;
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: NewColor.border,
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: Image.asset(
              "lib/assets/images/logo/new logo.png",
              height: height * 0.3,
            )),
            RichText(
              textScaleFactor: 1.5,
              textAlign: TextAlign.start,
              text: TextSpan(
                  text: "C",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: "a", style: TextStyle(color: NewColor.primaryColour)),
                    TextSpan(
                        text: "re__رعــــ",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(text: "ا", style: TextStyle(color: NewColor.primaryColour)),
                    TextSpan(
                        text: "يــة", style: TextStyle(color: Colors.black)),
                  ]),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Let’s get started!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 18,),
          const  Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Center(
                child: Text(
                  "Login to enjoy the features we’ve",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
          const  Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Center(
                child: Text(
                  "provided,and stay healthy!",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WhoAreWeLogin()));
              },
              child: Container(
                height: 70,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: NewColor.primaryColour,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                    child: Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22),
                )),
              ),
            ),SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WhoAreWe()));
              },
              child: Container(
                height: 70,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: NewColor.border,
                  border: Border.all(color: NewColor.primaryColour),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                    child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: NewColor.primaryColour,
                      fontSize: 22),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
