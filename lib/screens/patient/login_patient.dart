import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/screens/Button_nav_bar.dart';
import 'package:graduation_project/screens/Who_are_we_login.dart';
import 'package:graduation_project/screens/nurse/SignU%5BNurse.dart';
import 'package:http/http.dart';
import '../../widgets/componant.dart';
import 'loginrespons.dart';

class LoginPatient extends StatefulWidget {
  @override
  State<LoginPatient> createState() => __LoginPatientState();
}

class __LoginPatientState extends State<LoginPatient> {
  final emailcontroler = TextEditingController();
  final passcontroler = TextEditingController();
  final namecontroler = TextEditingController();
  bool ispassword = false;
  bool agreement = false;
  bool isLoading = false;
  IconData? suffix;
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Login",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.058,
                color: Colors.white),
          ),
        ),
        backgroundColor: NewColor.primaryColour,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              // البريد
              Image.asset(
                "lib/assets/images/logo/new logo.png",
                width: width * 0.25,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Textfield1(
                  emailcontroler,
                  TextInputType.emailAddress,
                  Icon(Icons.email, color: NewColor.primaryColour),
                  "Enter your email",
                  "please enter your email"),
              //كلمه المرور
              Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
                child: TextFormField(
                  controller: passcontroler,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: ispassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Valid Password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: NewColor.primaryColour),
                        borderRadius: BorderRadius.circular(25)),
                    labelText: "Enter your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: NewColor.primaryColour,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ispassword = !ispassword;
                        });
                      },
                      icon: ispassword
                          ? Icon(
                              Icons.visibility,
                              color: NewColor.primaryColour,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: NewColor.primaryColour,
                            ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ListTile(
                leading: Checkbox(
                  value: agreement,
                  activeColor: NewColor.primaryColour,
                  onChanged: (value) {
                    setState(() {
                      agreement = value!;
                    });
                  },
                ),
                title: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      text: "I agree to the medidoc",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: " Terms of Service ",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                color: NewColor.primaryColour)),
                        TextSpan(
                            text: " and ",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                color: Colors.black)),
                        TextSpan(
                            text: "Privacy Policy  ",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                color: NewColor.primaryColour)),
                      ]),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child:
                isLoading ? Center(child: CircularProgressIndicator(),): Container(
                  decoration: BoxDecoration(
                      color: agreement ? NewColor.primaryColour : Colors.grey[500],
                      borderRadius: BorderRadius.circular(32)),
                  width: width * 0.9,
                  height: height * 0.073,
                  child:
                  MaterialButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));
                      }
                    }

                    ,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontSize: width * 0.035, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: TextButton(
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => WhoAreWeLogin());
                            Navigator.pushReplacement(context, route);
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: NewColor.primaryColour,
                                fontSize: width * 0.035,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future login() async {
    setState(() {
      isLoading = true;
    });
    Response response =
        await post(Uri.parse("http://alcaptin.com/api/login"), body: {
      //  هنا باصيت قيمه التيكست الي جوا الكنترولر للبودي الي بيتبعت
      "email": emailcontroler.text,
      "password": passcontroler.text,
    });
    dynamic jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      LoginResponse loginResponse = LoginResponse.fromJson(jsonResponse);
      print(",,,z");
     Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpNurse()));
    } else {
      print("please enter curret email or password");
    }
    setState(() {
      isLoading = false;
    });
  }

}
