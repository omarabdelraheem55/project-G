import 'package:flutter/material.dart';
import 'package:graduation_project/Home_page.dart';
import 'package:graduation_project/pages/first_page/First_Page.dart';

import '../../new_color/New_Color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isPassword = true;
  bool isLoading = false;
  bool value = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: width,
          height: height,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios_new)),
                        SizedBox(
                          width: width * 0.32,
                        ),
                        Text(
                          "login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.058,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: width * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      controller:email ,
                      keyboardType:TextInputType.name ,
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
                          return 'name not must be embty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                        ),
                        labelText: "Enter your name",
                        border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                          borderSide: BorderSide(),
                        ),
                        prefixIcon: Icon(
                          Icons.account_circle_rounded,color: NewColor.mint,
                        ),
                      ),
                    ),

                  ),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                        if(value!.isEmpty)
                        {
                          return 'password not must be empty';
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
                              isPassword = !isPassword;
                            });
                          },
                          icon: isPassword ? Icon(
                            Icons.visibility,color: NewColor.mint,
                          ):Icon(
                            Icons.visibility_off,color: NewColor.mint,
                          ) ,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: height * 0.02, left: height * 0.3),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: width * 0.035,
                          fontWeight: FontWeight.bold,
                          color: NewColor.mint),
                    ),
                  ),
                  SizedBox(
                    height: width * 0.1,
                  ),
                  GestureDetector(
                    onTap: () {
                      if(_formKey.currentState!.validate()){
                      }
                   Navigator.push(context, MaterialPageRoute(builder: ((context)=>HomePage())));
                    },
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.073,
                      decoration: BoxDecoration(
                        color: NewColor.mint,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: width * 0.06,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Don’t have an account? ',
                            style: TextStyle(color: NewColor.textColor)),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: NewColor.mint),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: width * 0.06,
                  ),
                  Row(
                    children: [
                      SizedBox(width: width * 0.05),
                      SizedBox(
                        width: width * 0.37,
                        child:
                            Divider(color: Color(0xffA1A8B0), thickness: 1.4),
                      ),
                      Text(
                        "   OR   ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA1A8B0),
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: width * 0.4,
                        child:
                            Divider(color: Color(0xffA1A8B0), thickness: 1.4),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: width * 0.06,
                  ),
                  Container(
                    width: width * 0.9,
                    height: height * 0.075,
                    decoration: BoxDecoration(
                      border: Border.all(color: NewColor.border),
                      color: NewColor.white2,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.07,
                        ),
                        Image.asset(
                          "lib/assets/images/imggogale.png",
                          width: width * 0.06,
                          height: width * 0.1,
                        ),
                        SizedBox(
                          width: width * 0.15,
                        ),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: width * 0.06,
                  ),
                  Container(
                    width: width * 0.9,
                    height: height * 0.075,
                    decoration: BoxDecoration(
                      border: Border.all(color: NewColor.border),
                      color: NewColor.white2,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.07,
                        ),
                        Image.asset(
                          "lib/assets/images/apple.png",
                          width: width * 0.06,
                          height: width * 0.1,
                        ),
                        SizedBox(
                          width: width * 0.15,
                        ),
                        Text(
                          "Sign in with Apple",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: width * 0.06,
                  ),
                  Container(
                    width: width * 0.9,
                    height: height * 0.075,
                    decoration: BoxDecoration(
                      border: Border.all(color: NewColor.border),
                      color: NewColor.white2,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.07,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "lib/assets/images/faceboock.png",
                              width: width * 0.08,
                              height: width * 0.1,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "lib/assets/images/img.png",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.15,
                        ),
                        Text(
                          "Sign in with Facebook",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
