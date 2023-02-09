
import 'package:flutter/material.dart';
import 'package:graduation_project/new_color/New_Color.dart';

import '../SignupPage/SignUp.dart';
class Login extends StatefulWidget {

  @override
  State<Login> createState() => __LoginState();
}

class __LoginState extends State<Login> {
  var emailcontroler = TextEditingController();

  var passcontroler = TextEditingController();

  var namecontroler = TextEditingController();
  bool ispassword = false;
  bool agreement = false;
  IconData? suffix ;
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: NewColor.mint,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_rounded),
          color: Colors.black
          , onPressed: () { Navigator.pop(context); },),
        title: Text("            تسجيل دخول",
          style: TextStyle(
            color: Colors.black,
            fontSize: width*0.06,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body:SingleChildScrollView(
        child: Form(
          key:formkey ,
          child: Column(
            children: [
              SizedBox(
                height:height*0.07,
              ),
              // البريد
              Image.asset("lib/assets/images/logo/new logo.png",width: width*0.25,),
              SizedBox(
                height:height*0.02,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 12),
                child: TextFormField(

                  controller:emailcontroler ,
                  keyboardType:TextInputType.emailAddress ,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  onChanged: (value){
                    print(value);
                  },
                  validator: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'يرجي ادخال البريد الالكتروني الخاص بك';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                    ),
                    labelText: "البريد الالكتروني",
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                      borderSide: BorderSide(),
                    ),
                    prefixIcon: Icon(
                      Icons.email,color: NewColor.mint,
                    ),
                  ),
                ),

              ),
              //كلمه المرور
              Padding(
                padding:  EdgeInsets.fromLTRB(25, 0, 25, 12),
                child: TextFormField(
                  controller: passcontroler,
                  keyboardType:TextInputType.visiblePassword,
                  obscureText: ispassword,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  onChanged: (value){
                    print(value);
                  },
                  validator: (value)
                  {
                    if(value!.length<8)
                    {
                      return ' يرجي ادخال كلمه المرور لا تقل عن 8 حقول';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: NewColor.mint),borderRadius: BorderRadius.circular(25)),
                    labelText: "كلمه المرور",
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                      borderSide: BorderSide(),),
                    prefixIcon: Icon(
                      Icons.lock,color: NewColor.mint,
                    ),

                    suffixIcon: IconButton(
                      onPressed: ()
                      {

                        setState(() {
                          ispassword = !ispassword;
                        });
                      },
                      icon: ispassword ? Icon(
                        Icons.visibility,color: NewColor.mint,
                      ):Icon(
                        Icons.visibility_off,color: NewColor.mint,
                      ) ,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height:  MediaQuery.of(context).size.height*0.02,
              ),
              ListTile(
                leading: Checkbox(value:agreement ,
                  activeColor: Color(0xff2d9b95),
                  onChanged: (value)
                  {
                    setState(() {
                      agreement =value!;
                    });
                  },

                ),
                title: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(text: "اوافق علي شروط الخدمه  ",
                      style: TextStyle(
                          fontSize:MediaQuery.of(context).size.width*0.04 ,
                          color: Colors.black
                      ),
                      children: [
                        TextSpan(text: "و ",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.width*0.04 ,
                                color: Color(0xff2d9b95)
                            )
                        ),
                        TextSpan(text: "سياسه الخصوصيه ",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.width*0.04 ,
                                color: Colors.black
                            )
                        ),
                      ]

                  ),
                ),
              ),
              SizedBox(
                height:  MediaQuery.of(context).size.height*0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: agreement? Color(0xff2d9b95):Colors.grey[500],
                  child: MaterialButton( onPressed: agreement ?(
                      ){
                    if(formkey.currentState!.validate()) {
                      print(emailcontroler.text);
                      print(passcontroler.text);
                    }

                    // Navigator.push(context, MaterialPageRoute(builder:(context)=> MessengerScreen()));
                  }:null,
                    child: Text("تسجيل دخول",

                      style: TextStyle(
                        color: Colors.white ,
                      ),
                    ),

                  ),
                ),
              ),
              SizedBox(
                height:height*0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("لا تمتلك حساب ؟ ",
                    style: TextStyle(
                      fontSize:width*0.035
                      ,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(onPressed: (){
                    },
                        child:
                       TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                       },child:  Text("تسجيل",
                         style: TextStyle(
                             color: Color(0xff2d9b95),
                             fontSize:width*0.035,
                             fontWeight: FontWeight.bold
                         ),
                       ),)
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}