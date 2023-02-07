import 'package:flutter/material.dart';
import 'package:graduation_project/Signup/sign_up.dart';
import 'package:graduation_project/new_color/New_Color.dart';
import 'package:graduation_project/pages/login/LoginScreen.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final data = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: width,
            child: Column(
              children: [
                SizedBox(
                  height:height*0.1,
                ),
                Image.asset("lib/assets/images/logo/new logo.png",
                    height: width*0.4),
                SizedBox(
                  height: height*0.06,
                ),
                Text(
                  "Let’s get started!",
                  style: TextStyle(
                      fontSize: width*0.072,
                      fontWeight: FontWeight.bold,
                      color: NewColor.blueBlack),
                ),
                SizedBox(height: height*0.03,),
                Text(
                  "Login to enjoy the features we’ve ",
                  style: TextStyle(
                      fontSize:  width*0.05,
                      color: NewColor.textColor),
                ),
                Text(
                  "provided, and stay healthy! ",
                  style: TextStyle(
                      fontSize: width*0.05,
                      color: NewColor.textColor),
                ),
                SizedBox(height: height*0.08,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Container(
                    width: width*0.73,
                    height: height*0.075,
                    decoration: BoxDecoration(
                      color: NewColor.mint,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Center(child: Text("Login",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 22),)),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                  child: Container(
                    width: width*0.73,
                    height: height*0.075,
                    decoration: BoxDecoration(
                      border: Border.all(color: NewColor.mint),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Center(child: Text("Sign Up",style: TextStyle(fontWeight:FontWeight.bold,color: NewColor.mint,fontSize: 22),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
