import 'package:flutter/material.dart';
import 'package:graduation_project/screens/Who_are_we_login.dart';
import 'package:graduation_project/widgets/componant.dart';
import 'package:graduation_project/screens/Button_nav_bar.dart';
import 'package:graduation_project/screens/doctor/login_doctor.dart';
import '../../helper/New_Color.dart';

class SignUpDoctor extends StatefulWidget {
  const SignUpDoctor({Key? key}) : super(key: key);

  @override
  State<SignUpDoctor> createState() => _SignUpDoctorState();
}

class _SignUpDoctorState extends State<SignUpDoctor> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController reservationPrice = TextEditingController();
  TextEditingController specialization = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController EmailReception = TextEditingController();
  TextEditingController PasswordReception = TextEditingController();
  bool isPassword = true;
  bool isLoading = false;
  bool value = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar:
        AppBar(
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
          backgroundColor: NewColor.mint,
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
                // Padding(
                //   padding: const EdgeInsets.all(18),
                //   child: Row(
                //     children: [
                //       GestureDetector(
                //           onTap: () {
                //             Navigator.pop(context);
                //           },
                //           child: Icon(Icons.arrow_back_ios_new)),
                //       SizedBox(
                //         width: width * 0.22,
                //       ),
                //       Text(
                //         "تسجيل الدخول",
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //             fontSize: width * 0.058,
                //             color: Colors.black),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: width * 0.1,
                ),
                //الاسم
                Textfield1(name, TextInputType.name, Icon(Icons.account_circle_outlined,color: NewColor.mint,), "Enter your name", "*please enter your name")
                // البريد
                ,Textfield1(email, TextInputType.emailAddress, Icon(Icons.email,color: NewColor.mint), "Enter your email", "please enter your email"),
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
                //رقم الهاتف
               Textfield1(phone, TextInputType.phone, Icon(Icons.phone,color: NewColor.mint,), "Phone number", "Please enter your hone number")
                // المدينه
                ,Textfield1(city, TextInputType.text, Icon(Icons.location_city_rounded,color: NewColor.mint,), "city", 'Please enter your city')
                //الوصف
               , Textfield1(description, TextInputType.text, Icon(Icons.title,color: NewColor.mint,), "description", "Please enter your description")
                // سعر الحجز
               ,Textfield1(reservationPrice, TextInputType.number, Icon(Icons.price_check,color: NewColor.mint,), "reservationPrice", "Please enter your reservationPrice")
                // التخصص
                ,Textfield1(specialization, TextInputType.text, Icon(Icons.local_hospital_outlined,color: NewColor.mint,), "specialization", "Please enter your specialization")
                // العنوان
               ,Textfield1(address, TextInputType.streetAddress, Icon(Icons.location_city_rounded,color: NewColor.mint,), "Address", "Please enter your address"),
                // البريد
                Textfield1(EmailReception, TextInputType.emailAddress,Icon(Icons.email,color: NewColor.mint), "EmailReception", "please enter email reception"),
                // كلمه المرور
                Padding(
                  padding:  EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(
                    controller: PasswordReception,
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
                        return 'Please enter the password in at least 8 fields';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: NewColor.mint),borderRadius: BorderRadius.circular(25)),
                      labelText: " Enter the password ",
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
                SizedBox(
                  height: width * 0.1,
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
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.073,
                      decoration: BoxDecoration(
                        color: NewColor.mint,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      )),
                    ),
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
                              color: NewColor.mint),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.06,
                ),
                // Row(
                //   children: [
                //     SizedBox(width: width * 0.05),
                //     SizedBox(
                //       width: width * 0.37,
                //       child:
                //           Divider(color: Color(0xffA1A8B0), thickness: 1.4),
                //     ),
                //     Text(
                //       "   OR   ",
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           color: Color(0xffA1A8B0),
                //           fontSize: 18),
                //     ),
                //     SizedBox(
                //       width: width * 0.4,
                //       child:
                //           Divider(color: Color(0xffA1A8B0), thickness: 1.4),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: width * 0.06,
                // ),
                // Container(
                //   width: width * 0.9,
                //   height: height * 0.075,
                //   decoration: BoxDecoration(
                //     border: Border.all(color: NewColor.border),
                //     color: NewColor.white2,
                //     borderRadius: BorderRadius.circular(32),
                //   ),
                //   child: Row(
                //     children: [
                //       SizedBox(
                //         width: width * 0.07,
                //       ),
                //       Image.asset(
                //         "lib/assets/images/imggogale.png",
                //         width: width * 0.06,
                //         height: width * 0.1,
                //       ),
                //       SizedBox(
                //         width: width * 0.15,
                //       ),
                //       Text(
                //         "Sign in with Google",
                //         style: TextStyle(
                //             fontSize: 18, fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: width * 0.06,
                // ),
                // Container(
                //   width: width * 0.9,
                //   height: height * 0.075,
                //   decoration: BoxDecoration(
                //     border: Border.all(color: NewColor.border),
                //     color: NewColor.white2,
                //     borderRadius: BorderRadius.circular(32),
                //   ),
                //   child: Row(
                //     children: [
                //       SizedBox(
                //         width: width * 0.07,
                //       ),
                //       Image.asset(
                //         "lib/assets/images/apple.png",
                //         width: width * 0.06,
                //         height: width * 0.1,
                //       ),
                //       SizedBox(
                //         width: width * 0.15,
                //       ),
                //       Text(
                //         "Sign in with Apple",
                //         style: TextStyle(
                //             fontSize: 18, fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: width * 0.06,
                // ),
                // Container(
                //   width: width * 0.9,
                //   height: height * 0.075,
                //   decoration: BoxDecoration(
                //     border: Border.all(color: NewColor.border),
                //     color: NewColor.white2,
                //     borderRadius: BorderRadius.circular(32),
                //   ),
                //   child: Row(
                //     children: [
                //       SizedBox(
                //         width: width * 0.07,
                //       ),
                //       Stack(
                //         children: [
                //           Image.asset(
                //             "lib/assets/images/faceboock.png",
                //             width: width * 0.08,
                //             height: width * 0.1,
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: Image.asset(
                //               "lib/assets/images/img.png",
                //             ),
                //           ),
                //         ],
                //       ),
                //       SizedBox(
                //         width: width * 0.15,
                //       ),
                //       Text(
                //         "Sign in with Facebook",
                //         style: TextStyle(
                //             fontSize: 18, fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
