import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../helper/New_Color.dart';
import '../../widgets/componant.dart';

class DonateRequest extends StatefulWidget {
  const DonateRequest({Key? key}) : super(key: key);
  @override
  State<DonateRequest> createState() => _DonateRequestState();
}
class _DonateRequestState extends State<DonateRequest> {
  final name=TextEditingController();
  final email=TextEditingController();
  final reasos=TextEditingController();
  final Quantity=TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Donation request",
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
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key:formkey ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("lib/assets/images/img_11.png"),
             TextFaildDonate(controller:name, TextInputType: TextInputType.name, icon: Icon(FontAwesomeIcons.user), labelText: "Name", valiedText: "Enter Your Name"),
              TextFaildDonate(controller: email, TextInputType: TextInputType.emailAddress, icon: Icon(FontAwesomeIcons.envelope), labelText: "Email", valiedText: "Enter Your Email"),
              TextFaildDonate(controller: reasos, TextInputType: TextInputType.text, icon: Icon(FontAwesomeIcons.lightbulb), labelText: "The reason for the request  ...", valiedText: "Enter Your reason"),
              TextFaildDonate(controller: Quantity, TextInputType: TextInputType.text, icon: Icon(FontAwesomeIcons.rulerVertical), labelText: "Quantity ...", valiedText: "Enter Your Quantity"),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Select Blood Group",style: TextStyle(fontSize: 24,color: Colors.black54),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:   Row(
                  children: [
                   build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "A+"),
                   build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "A-"),
                   build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "B+"),
                   build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "B-"),
                   build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "O+"),
                   build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "O-"),
                   build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "AB+"),
                   build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "AB-"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
