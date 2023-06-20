import 'package:flutter/material.dart';
import 'package:graduation_project/screens/Who_are_we_login.dart';
import 'package:graduation_project/widgets/componant.dart';
import 'package:graduation_project/screens/Button_nav_bar.dart';
import '../../helper/New_Color.dart';

class SignUpNurse extends StatefulWidget {
  const SignUpNurse({Key? key}) : super(key: key);

  @override
  State<SignUpNurse> createState() => _SignUpNurseState();
}

class _SignUpNurseState extends State<SignUpNurse> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController city = TextEditingController();
  bool isPassword = true;
  bool isLoading = false;
  bool value = true;
  bool ispassword = false;
  bool agreement = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
            child: Text("Sign Up" ,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.058,
                  color: Colors.white),),
          ),
          backgroundColor: NewColor.primaryColour,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Image.asset("lib/assets/images/logo/new logo.png",width: width*0.25,),
                SizedBox(
                  height: width * 0.1,
                ),
                //الاسم
                Textfield1(name, TextInputType.name, Icon(Icons.account_circle_outlined,color: NewColor.primaryColour,), "Enter your name", "*please enter your name")
                // البريد
                ,Textfield1(email, TextInputType.emailAddress, Icon(Icons.email,color: NewColor.primaryColour), "Enter your email", "please enter your email"),
                Textfield1(price, TextInputType.number,Icon(Icons.monetization_on,color: NewColor.primaryColour), "Price", "Enter your price!"),
                Textfield1(city, TextInputType.streetAddress,Icon(Icons.location_city_rounded,color: NewColor.primaryColour), "Address", "Enter your Address"),
                //كلمه المرور
               Padding(
                  padding:  EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(
                    controller: password,
                    keyboardType:TextInputType.visiblePassword,
                    obscureText: isPassword,
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
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: NewColor.primaryColour),borderRadius: BorderRadius.circular(25)),
                      labelText: "Enter your password",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),),
                      prefixIcon: Icon(
                        Icons.lock,color: NewColor.primaryColour,
                      ),
                      suffixIcon: IconButton(
                        onPressed: ()
                        {

                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                        icon: isPassword ? Icon(
                          Icons.visibility,color: NewColor.primaryColour,
                        ):Icon(
                          Icons.visibility_off,color: NewColor.primaryColour,
                        ) ,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.1,
                ),
                ListTile(
                  leading: Checkbox(value:agreement ,
                    activeColor:NewColor.primaryColour,
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
                                  color: NewColor.primaryColour
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
                                  color: NewColor.primaryColour
                              )
                          ),

                        ]

                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.06,
                ),
                GestureDetector(
                  onTap: () {
                    if(_formKey.currentState!.validate()){ Navigator.push(context, MaterialPageRoute(builder: ((context)=>BottomNavigation())));}
                    else{
                      return null;
                    }
                  },
                  child:
                  Padding(
                      padding:  EdgeInsets.fromLTRB(25, 0, 25, 12),
                      child:Container(
                        decoration: BoxDecoration(  color: agreement? NewColor.primaryColour:Colors.grey[500],borderRadius: BorderRadius.circular(32)),
                        width: width * 0.9,
                        height: height * 0.073,
                        child: MaterialButton( onPressed: agreement ?(
                            ){
                          if(_formKey.currentState!.validate()) {
                            Route route =MaterialPageRoute(builder: (context)=>BottomNavigation());
                            Navigator.pushReplacement(context,route);
                          }

                          // Navigator.push(context, MaterialPageRoute(builder:(context)=> MessengerScreen()));
                        }:null,
                          child: Text("Sign Up",
                            style: TextStyle(
                                color: Colors.white ,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),

                        ),
                      )
                  ),
                ),
                SizedBox(
                  height: width * 0.06,
                ),
                GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>WhoAreWeLogin()));},
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Do you have an account? ',
                            style: TextStyle(color: NewColor.textColor)),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: NewColor.primaryColour),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.06,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
