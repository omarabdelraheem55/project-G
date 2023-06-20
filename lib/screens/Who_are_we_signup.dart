import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/screens/doctor/SignUpDoctor.dart';
import 'package:graduation_project/screens/patient/SignUpPatient.dart';

import 'nurse/SignU[Nurse.dart';
class WhoAreWe extends StatefulWidget {
  const WhoAreWe({Key? key}) : super(key: key);
  @override
  State<WhoAreWe> createState() => _WohAreWeState();
}
class _WohAreWeState extends State<WhoAreWe> {
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
                          child: Image.asset("lib/assets/images/welcomepage.png",scale: 1.5,),
                        ),
                    TextButton(onPressed: (){
                      Route route=MaterialPageRoute(builder: (context)=>SignUpDoctor());
                      Navigator.push(context, route);
                    }, child: Text("Doctor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: NewColor.primaryColour),))
                  ],
                ),
                SizedBox(height: height*0.07,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 6),
                      child: Image.asset("lib/assets/images/avatars2.png",scale: 1.5,),
                    ),
                    TextButton(onPressed: (){
                      Route route=MaterialPageRoute(builder: (context)=>SignUpPatient());
                      Navigator.push(context, route);
                    }, child: Text("patient",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: NewColor.primaryColour),))
                  ],
                ),
                SizedBox(height: height*0.07,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 5),
                      child: Image.asset("lib/assets/images/welcomepage1.png",scale: 1.5,),
                    ),
                    TextButton(onPressed: (){
                      Route route=MaterialPageRoute(builder: (context)=>SignUpNurse());
                      Navigator.push(context, route);
                    }, child: Text("Nurses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: NewColor.primaryColour),))
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
