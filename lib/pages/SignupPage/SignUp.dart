import 'package:flutter/material.dart';
import 'package:graduation_project/pages/Button_nav_bar.dart';
import 'package:graduation_project/pages/LogIn/login.dart';
import '../../new_color/New_Color.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
    final data = MediaQuery.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: Text("حساب جديد" ,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.058,
                color: Colors.black),),
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
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(

                    controller:name ,
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
                        return 'يرجي ادخال الاسم';
                      }
                      return null;
                    },
                    decoration:
                    InputDecoration(
                      focusColor: Colors.black12,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                      ),
                      labelText: "الاسم بالكامل",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(
                        Icons.account_circle_rounded,color: NewColor.mint,
                      ),
                    ),
                  ),

                ),
                // البريد
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(

                    controller:email ,
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
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(
                    controller:phone ,
                    keyboardType:TextInputType.phone ,
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
                        return 'يرجي ادخال رقم هاتف';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                      ),
                      labelText: "رقم الهاتف",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(
                        Icons.phone,color: NewColor.mint,
                      ),
                    ),
                  ),

                ),
                // المدينه
                Padding(
                  padding:  EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(
                    controller:city ,
                    keyboardType:TextInputType.text ,
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
                        return 'يرجي ادخال المدينه';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                      ),
                      labelText: "المدينه",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(
                        Icons.location_city,color: NewColor.mint,
                      ),
                    ),
                  ),

                ),
                //الوصف
                Padding(
                  padding:  EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(
                    controller:description ,
                    keyboardType:TextInputType.text ,
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
                        return 'يرجي ادخال وصف';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                      ),
                      labelText: "الوصف",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(
                        Icons.accessibility,color: NewColor.mint,
                      ),
                    ),
                  ),

                ),
                // سعر الحجز
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(
                    controller:reservationPrice ,
                    keyboardType:TextInputType.number ,
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
                        return 'يرجي ادخال سعر الحجز';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                      ),
                      labelText: "سعر الحجز",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(
                        Icons.monetization_on_rounded,color: NewColor.mint,
                      ),
                    ),
                  ),

                ),
                // التخصص
                Padding(
                  padding:  EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(
                    controller:specialization ,
                    keyboardType:TextInputType.text ,
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
                        return 'يرجي ادخال التخصص';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                      ),
                      labelText: "التخصص",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(
                        Icons.health_and_safety,color: NewColor.mint,
                      ),
                    ),
                  ),

                ),
                // العنوان
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(
                    controller:address ,
                    keyboardType:TextInputType.text ,
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
                        return 'يرجي ادخال العنوان';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                      ),
                      labelText: "العنوان",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(
                        Icons.location_city_sharp,color: NewColor.mint,
                      ),
                    ),
                  ),

                ),
                // البريد
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
                  child: TextFormField(
                    controller:EmailReception ,
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
                        return 'يرجي ادخال البريد الالكتروني';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
                      ),
                      labelText: "البريد الالكتروني الخاص بموظف الاستقبال",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(
                        Icons.email,color: NewColor.mint,
                      ),
                    ),
                  ),

                ),
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
                        return 'يرجي ادخال كلمه المرور';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: NewColor.mint),borderRadius: BorderRadius.circular(25)),
                      labelText: "كلمه المرور  الخاص بموظف الاستقبال ",
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
                  child: Padding(
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
                        "تسجيل الدخول",
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
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'هل تمتلك حساب؟',
                            style: TextStyle(color: NewColor.textColor)),
                        TextSpan(
                          text: 'تسجيل',
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
