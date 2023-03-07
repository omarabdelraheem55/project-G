import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import '../../helper/New_Color.dart';
class Donate extends StatefulWidget {
  @override
  State<Donate> createState() => _DonateState();
}
class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:
        AppBar(
          title: Text(
            "All donators",
            style: TextStyle(color: NewColor.mint),
          ),
          leading: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: NewColor.mint,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Lottie.network("https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json",width:100,),
                        Expanded(child: Text("A positive (B+)",  style: TextStyle(color: Colors.black, fontSize: 16),)),
                      ],
                    ),
                  )),
              Text("Your 7 request available! ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 1,
                        ),
                        height: height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade300,

                            )
                        ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 23.0,
                                ),
                              ),
                              SizedBox(width: width*0.04,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Khaled Mohamed",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),

                                    ),
                                    Row(children: [
                                      Icon(Icons.location_on_outlined,
                                        color: Color(0xff2d9b95),
                                        size: 20,
                                      ),
                                      Text("Mansoura",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                        ),

                                      ),
                                    ],),
                                    SizedBox(width: width*0.19,),
                                  ],
                                ),
                              ),
                              SizedBox(width: width*0.26,),
                              Container(
                                height: height*0.045,
                                width: width*0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red
                                ),
                                child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(" 5 Km ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]), )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
