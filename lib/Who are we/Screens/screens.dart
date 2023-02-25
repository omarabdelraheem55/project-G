import 'package:flutter/material.dart';
import 'package:graduation_project/Select_Form/Select_form.dart';
import 'package:graduation_project/Who%20are%20we/Who_are_we.dart';
import 'package:graduation_project/new_color/New_Color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screens extends StatefulWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  final controller =PageController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF4F8FB),
      body:
      Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                SingleChildScrollView(
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
                      SizedBox(height: height*0.1,),
                      Image.asset("lib/assets/images/img_8.png",scale: 1.5,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("In our application you will find everything you need..",style: TextStyle(fontSize: 12),),
                      ),
                    ],
                  ),
                ),
             SingleChildScrollView(child:    Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(15, 35, 30, 30),
                   child: Row(
                     children: [
                       Image.asset("lib/assets/images/logo/new logo.png",width: width*0.18,),
                     ],
                   ),
                 ),
                 SizedBox(height: height*0.1,),
                 Image.asset("lib/assets/images/img_9.png",scale: 1.5,),
                 Text("Advantages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                 Padding(
                   padding: const EdgeInsets.all(18),
                   child: Text("You can communicate with them online and follow up your condition through the patient history and follow your condition through us",style: TextStyle(fontSize: 15),),
                 ),
               ],
             ),),
              SingleChildScrollView(child:   Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 35, 30, 30),
                    child: Row(
                      children: [
                        Image.asset("lib/assets/images/logo/new logo.png",width: width*0.18,),
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.1,),
                  Image.asset("lib/assets/images/img_10.png",scale: 1.5,),
                  Text("nursing staff",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Text(" There are nurses all over Egypt, and we will be able to communicate with them, and the nearest nurse is available to you",style: TextStyle(fontSize: 15),),
                  ),
                  TextButton(onPressed: (){
                    Route route=MaterialPageRoute(builder: (context)=>SelectForm());
                    Navigator.pushReplacement(context, route);
                  }, child:  Text("Let's Go..!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),)
                ],
              ),)
              ],
            ),
          ),
          SmoothPageIndicator(controller: controller, count: 3,effect: SwapEffect(dotHeight: 18,dotWidth: 18,activeDotColor: NewColor.mint),)
        ],
      ),
    );
  }
}
