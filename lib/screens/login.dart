
import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/screens/Button_nav_bar.dart';
import 'package:graduation_project/screens/Home_page.dart';

import '../widgets/componant.dart';
import 'SignUpDoctor.dart';
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
      appBar:AppBar(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        automaticallyImplyLeading: false,
        title:
        Center(
          child: Text("Login" ,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.058,
                color: Colors.white),),
        ),
        backgroundColor: NewColor.mint,
      ),
      body:SingleChildScrollView(
        child: Form(
          key:formkey ,
          child: Column(
            children: [
              SizedBox(height: 50,),
              // البريد
              Image.asset("lib/assets/images/logo/new logo.png",width: width*0.25,),
              SizedBox(
                height:height*0.02,
              ),
            Textfield1(emailcontroler, TextInputType.emailAddress, Icon(Icons.email,color: NewColor.mint), "Enter your email", "please enter your email"),
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
              return 'Please enter the password in at least 8 fields';
            }
            return null;
          },
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: NewColor.mint),borderRadius: BorderRadius.circular(25)),
            labelText: "Enter your password",
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
                  activeColor:NewColor.mint,
                  onChanged: (value)
                  {
                    setState(() {
                      agreement =value!;
                    });
                  },

                ),
                title: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(text: "I agree to the medidoc",
                      style: TextStyle(
                          fontSize:MediaQuery.of(context).size.width*0.04 ,
                          color: Colors.black
                      ),
                      children: [
                        TextSpan(text: " Terms of Service ",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.width*0.04 ,
                                color: NewColor.mint
                            )
                        ),
                        TextSpan(text: " and ",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.width*0.04 ,
                                color: Colors.black
                            )
                        ),
                        TextSpan(text: "Privacy Policy  ",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.width*0.04 ,
                                color:NewColor.mint
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
                  decoration: BoxDecoration(  color: agreement? NewColor.mint:Colors.grey[500],borderRadius: BorderRadius.circular(32)),
                  width: width * 0.9,
                  height: height * 0.073,
                  child: MaterialButton( onPressed: agreement ?(
                      ){
                    if(formkey.currentState!.validate()) {
                      Route route =MaterialPageRoute(builder: (context)=>BottomNavigation());
                      Navigator.pushReplacement(context,route);
                    }

                    // Navigator.push(context, MaterialPageRoute(builder:(context)=> MessengerScreen()));
                  }:null,
                    child: Text("Login",
                      style: TextStyle(
                        color: Colors.white ,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
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
                  Text("Don't have an account?",
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
                         Route route =MaterialPageRoute(builder: (context)=>SignUp());
                         Navigator.pushReplacement(context,route);
                       },child:  Text("Sign Up",
                         style: TextStyle(
                             color:NewColor.mint,
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