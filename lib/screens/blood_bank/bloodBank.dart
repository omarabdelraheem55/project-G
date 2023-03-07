import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/screens/blood_bank/donate.dart';
import 'package:lottie/lottie.dart';

import 'donateRequest.dart';

class BloodBank extends StatefulWidget {
  const BloodBank({Key? key}) : super(key: key);

  @override
  State<BloodBank> createState() => _BloodBankState();
}
class _BloodBankState extends State<BloodBank> {
  @override
  double Radiuss=40;
  double Widthanimation=120;
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Egypt",
          style: TextStyle(color: NewColor.mint),
        ),
        leading: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.locationDot,
            color: NewColor.mint,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.bars,
                color: NewColor.mint,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                ),
                Text(
                  "Give the gift of life ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "donate blood ",
                  style: TextStyle(color: NewColor.mint, fontSize: 36),
                ),
                // Row(
                //   children: [
                //     Container(
                //      width: 150,
                //         height: 150,
                //         decoration: BoxDecoration(
                //                 gradient: LinearGradient(
                //                   begin: Alignment.topRight,
                //                   end: Alignment.bottomLeft,
                //                   colors: [
                //                     Colors.blue,
                //                     Colors.red,
                //                   ],
                //                 ),
                //             borderRadius: BorderRadius.circular(16)),
                //         child: Padding(
                //           padding: EdgeInsets.all(12),
                //           child: Column(
                //             children: [
                //               Text("157",  style: TextStyle(color: Colors.white, fontSize: 42),),
                //               Text("New Blood Requested",  style: TextStyle(color: Colors.white, fontSize: 20),),
                //             ],
                //           ),
                //         )),
                //     SizedBox(width: 20,),
                //     Container(
                //      width: 150,
                //         height: 150,
                //         decoration: BoxDecoration(
                //           color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(16)),
                //         child: Padding(
                //           padding: EdgeInsets.all(12),
                //           child: Column(
                //             children: [
                //               Text("157",  style: TextStyle(color: Colors.white, fontSize: 42),),
                //               Text("Save Lives",  style: TextStyle(color: Colors.white, fontSize: 20),),
                //             ],
                //           ),
                //         )),
                //   ],
                // ),
                Container(
                  height: 30,
                ),
                Text(
                  "Each Donations can help save up to 3 lives!",
                  style: TextStyle(color:Colors.grey, fontSize: 14),
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Lottie.network("https://assets5.lottiefiles.com/packages/lf20_mw3to7io.json",width: Widthanimation),
                    Lottie.network("https://assets5.lottiefiles.com/packages/lf20_gze7ffbh.json",width: Widthanimation),
                    Lottie.network("https://assets5.lottiefiles.com/packages/lf20_ndukurao.json",width: Widthanimation),

                  ],
                ),
                Row(
                  children: [
                    Lottie.network("https://assets5.lottiefiles.com/packages/lf20_d6dmxlhi.json",width: Widthanimation),
                    Container(
                      width: 40,
                    ),
                    Lottie.network("https://assets5.lottiefiles.com/packages/lf20_qjvnamie.json",width: Widthanimation),
                  ],
                ),
                Lottie.network("https://assets5.lottiefiles.com/packages/lf20_6sbcdpys.json",width: Widthanimation),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Route route=MaterialPageRoute(builder: (context)=>Donate());
                        Navigator.push(context, route);
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: Radiuss,
                            backgroundColor: Color(0xFFFCDEE8),
                            child: Icon(FontAwesomeIcons.magnifyingGlass),
                          ),
                          Text("Find A Donor")
                        ],
                      ),
                    ),
                    Container(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: (){
                        Route route=MaterialPageRoute(builder: (context)=>DonateRequest());
                        Navigator.push(context, route);
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius:Radiuss,
                            backgroundColor: Color(0xFFFBEFCA),
                            child: Icon(FontAwesomeIcons.bell),
                          ),
                          Text("Blood Request")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
