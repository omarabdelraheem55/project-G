
import 'package:flutter/material.dart';
import 'package:graduation_project/new_color/New_Color.dart';
class SignUp extends StatefulWidget {

  @override
  State<SignUp> createState() => __SignUpState();
}

class __SignUpState extends State<SignUp> {
  var emailcontroler = TextEditingController();

  var passcontroler = TextEditingController();

  var namecontroler = TextEditingController();
  bool ispassword = false;
  bool agreement = false;
  IconData? suffix ;
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_rounded),
          color: Colors.black
          , onPressed: () {  },),
        title: Text("              SignUp",
          style: TextStyle(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.width*0.06,
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
                height: MediaQuery.of(context).size.height*0.09,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  controller:namecontroler ,
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
                height:  MediaQuery.of(context).size.height*0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      return 'email not must be embty';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: NewColor.mint),borderRadius: BorderRadius.circular(25)),
                      labelText: "Enter your email",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
                        borderSide: BorderSide(),),
                      prefixIcon: Icon(
                          Icons.email,color: NewColor.mint
                      )
                  ),
                ),
              ),
              SizedBox(
                height:  MediaQuery.of(context).size.height*0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                  text: TextSpan(text: "I agree to the medidoc ",
                      style: TextStyle(
                          fontSize:MediaQuery.of(context).size.width*0.04 ,
                          color: Colors.black
                      ),
                      children: [
                        TextSpan(text: "Terms of Service ",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.width*0.04 ,
                                color: Color(0xff2d9b95)
                            )
                        ),
                        TextSpan(text: "and ",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.width*0.04 ,
                                color: Colors.black
                            )
                        ),
                        TextSpan(text: "Privacy Policy",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.width*0.04 ,
                                color: Color(0xff2d9b95)
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
                    child: Text("SignUp",

                      style: TextStyle(
                        color: Colors.white ,
                      ),
                    ),

                  ),
                ),
              ),
              SizedBox(
                height:  MediaQuery.of(context).size.height*0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don\'t have an accont ?",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width*0.03,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(onPressed: (){
                    },
                        child:
                        Text("SignUp",
                          style: TextStyle(
                            color: Color(0xff2d9b95),
                            fontSize: MediaQuery.of(context).size.width*0.03,
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
}