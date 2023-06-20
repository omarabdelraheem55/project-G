import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
  var _formkey = GlobalKey<FormState>();
  bool Ap =false;
  bool An =false;
  bool Bp =false;
  bool Bn =false;
  bool Op =false;
  bool On =false;
  bool ABp =false;
  bool ABn =false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Donor request",
          style: TextStyle(color: NewColor.primaryColour),
        ),
        leading: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: NewColor.primaryColour,
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
                color: NewColor.primaryColour,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key:_formkey ,
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
                   GestureDetector(onTap: (){
                     setState(() {
                         Ap =true;
                         An =false;
                         Bp =false;
                         Bn =false;
                         Op =false;
                         On =false;
                         ABp =false;
                         ABn =false;
                     });
                   },child: Container(
                     decoration: BoxDecoration(
                       color: Ap==true?NewColor.primaryColour:null,
                     ),
                       child: build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "A+"))),
                   GestureDetector(onTap: (){
                   setState(() {
                     Ap =false;
                     An =true;
                     Bp =false;
                     Bn =false;
                     Op =false;
                     On =false;
                     ABp =false;
                     ABn =false;
                   });
                   },child: Container(
                       decoration: BoxDecoration(
                         color: An==true?NewColor.primaryColour:null,
                       ),
                   child: build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "A-"))),
                   GestureDetector(onTap: (){
                     setState(() {
                       Ap =false;
                       An =false;
                       Bp =true;
                       Bn =false;
                       Op =false;
                       On =false;
                       ABp =false;
                       ABn =false;
                     });
                   },child: Container(
                       decoration: BoxDecoration(
                         color: Bp==true?NewColor.primaryColour:null,
                       ),
                       child: build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "B+"))),
                   GestureDetector(onTap: (){
                     setState(() {
                       Ap =false;
                       An =false;
                       Bp =false;
                       Bn =true;
                       Op =false;
                       On =false;
                       ABp =false;
                       ABn =false;
                     });
                   },child: Container(
                       decoration: BoxDecoration(
                         color: Bn==true?NewColor.primaryColour:null,
                       ),
                       child: build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "B-"))),
                   GestureDetector(onTap: (){
                     setState(() {
                       Ap =false;
                       An =false;
                       Bp =false;
                       Bn =false;
                       Op =true;
                       On =false;
                       ABp =false;
                       ABn =false;
                     });
                   },child: Container(
                       decoration: BoxDecoration(
                         color: Op==true?NewColor.primaryColour:null,
                       ),
                       child: build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "O+"))),
                   GestureDetector(onTap: (){
                     setState(() {
                       Ap =false;
                       An =false;
                       Bp =false;
                       Bn =false;
                       Op =false;
                       On =true;
                       ABp =false;
                       ABn =false;
                     });
                   },child: Container(
                       decoration: BoxDecoration(
                         color: On==true?NewColor.primaryColour:null,
                       ),
                       child: build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "O-"))),
                   GestureDetector(onTap: (){
                     setState(() {
                       Ap =false;
                       An =false;
                       Bp =false;
                       Bn =false;
                       Op =false;
                       On =false;
                       ABp =true;
                       ABn =false;
                     });
                   },child: Container(
                       decoration: BoxDecoration(
                         color: ABp==true?NewColor.primaryColour:null,
                       ),
                       child: build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "AB+"))),
                   GestureDetector(onTap: (){
                     setState(() {
                       Ap =false;
                       An =false;
                       Bp =false;
                       Bn =false;
                       Op =false;
                       On =false;
                       ABp =false;
                       ABn =true;
                     });
                   },child: Container(
                       decoration: BoxDecoration(
                         color: ABn==true?NewColor.primaryColour:null,
                       ),
                       child: build_Blood_Type(image: "https://assets2.lottiefiles.com/packages/lf20_lsfhjhqp.json", type: "AB-"))),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  if(_formkey.currentState!.validate()){
                    print("done");
                  }else{
                    return null;
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: build_containar(h: height*0.07,text: "Supmit"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
