import 'package:flutter/material.dart';
import 'package:graduation_project/new_color/New_Color.dart';
import 'package:graduation_project/pages/LogIn/login.dart';
import 'package:graduation_project/pages/SignupPage/SignUpPatient.dart';
class WhoAreWeLogin extends StatefulWidget {
  const WhoAreWeLogin({Key? key}) : super(key: key);
  @override
  State<WhoAreWeLogin> createState() => _WhoAreWeLoginState();
}
class _WhoAreWeLoginState extends State<WhoAreWeLogin> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF4F8FB),
      body: Column(
        children: [
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 35, 30, 30),
                  child: Row(
                    children: [
                      Image.asset("lib/assets/images/logo/new logo.png",width: width*0.18,),
                    ],
                  ),
                ),
                SizedBox(height: height*0.04,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 5),
                      child: Image.asset("lib/assets/images/img_6.png",scale: 1.5,),
                    ),
                    TextButton(onPressed: (){
                      Route route=MaterialPageRoute(builder: (context)=>Login());
                      Navigator.push(context, route);
                    }, child: Text("Doctor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: NewColor.mint),))
                  ],
                ),
                SizedBox(height: height*0.07,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 6),
                      child: Image.asset("lib/assets/images/img_5.png",scale: 1.5,),
                    ),
                    TextButton(onPressed: (){
                      Route route=MaterialPageRoute(builder: (context)=>Login());
                      Navigator.push(context, route);
                    }, child: Text("patient",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: NewColor.mint),))
                  ],
                ),
                SizedBox(height: height*0.07,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 5),
                      child: Image.asset("lib/assets/images/img_7.png",scale: 1.5,),
                    ),
                    TextButton(onPressed: (){
                      Route route=MaterialPageRoute(builder: (context)=>Login());
                      Navigator.push(context, route);
                    }, child: Text("Nurses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: NewColor.mint),))
                  ],
                ),
                SizedBox(height: height*0.07,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 5),
                      child: Image.asset("lib/assets/images/img_7.png",scale: 1.5,),
                    ),
                    TextButton(onPressed: (){
                      Route route=MaterialPageRoute(builder: (context)=>Login());
                      Navigator.push(context, route);
                    }, child: Text("Recepion",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: NewColor.mint),))
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
