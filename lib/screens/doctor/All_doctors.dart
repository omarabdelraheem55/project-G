import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
class Doctors_Screen extends StatefulWidget {

  @override
  State<Doctors_Screen> createState() => _Doctors_ScreenState();
}

class _Doctors_ScreenState extends State<Doctors_Screen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(

        appBar: AppBar(
          backgroundColor:Color(0xffF4F8FB),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios_rounded),
            color: NewColor.primaryColour
            , onPressed: () { Navigator.pop(context); },),
          title: Text("All Doctors",
            style: TextStyle(
              color:NewColor.primaryColour,
              fontSize: MediaQuery.of(context).size.width*0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Column(
                  children:[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),

                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey.shade300,

                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage:AssetImage("lib/assets/images/doctora.jpg"),
                                ),
                              ),
                              Expanded(child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                                    child: Text("Dr:",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight:FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height*0.004,),
                                  Text(" Tomorrow 24 Agust 2023",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 9.0,
                                    ),
                                  ),
                                  SizedBox(height: height*0.01,),
                                  SizedBox(width:width*0.07,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.question_answer_sharp),
                                      SizedBox(width: 4.0,),
                                      Text("2 years",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      SizedBox(width:width*0.04,),
                                      Icon(Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text("4.5",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight:FontWeight.bold,
                                        ),
                                      ),
                                    ],),
                                ],
                              ))
                            ],
                          ),
                          SizedBox(height: height*0.01,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                            child: Text("Neurology specialized in pediatric",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 20.0),
                            child: Text("Mans: Ahmed Maher street",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                            child: Text("Frees:150 EGP",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          SizedBox(height: height*0.01),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(),
                                  ),
                                  child: Container(
                                    width: width*0.5,
                                    height: height*0.03,
                                    child: TextButton(onPressed: (){
                                    },
                                        child:
                                        Text(" First available on sunday 5/2 ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context).size.width*0.02,
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.1,),
                              Container(
                                width: width*0.23,
                                height: height*0.04,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(),
                                ),
                                child: TextButton(onPressed: (){
                                },
                                    child:
                                    Text("book",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.width*0.025,
                                      ),
                                    )),
                              ),
                            ],),
                        ],
                      ),
                    ),
                  ]
              ),
              Column(
                  children:[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey.shade300,

                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage:AssetImage("lib/assets/images/doc.jpg"),
                                ),
                              ),
                              Expanded(child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                                    child: Text("Dr:Ahmed Nabil",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight:FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height*0.004,),
                                  Text(" Tomorrow 24 Agust 2023",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 9.0,
                                    ),
                                  ),
                                  SizedBox(height: height*0.01,),
                                  SizedBox(width:width*0.07,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.question_answer_sharp),
                                      SizedBox(width: 4.0,),
                                      Text("20 years",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      SizedBox(width:width*0.04,),
                                      Icon(Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text("4",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight:FontWeight.bold,
                                        ),
                                      ),
                                    ],),
                                ],
                              ))
                            ],
                          ),
                          SizedBox(height: height*0.01,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                            child: Text("Neurology specialized in pediatric",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 20.0),
                            child: Text("Mans: Ahmed Maher street",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                            child: Text("Frees:150 EGP",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          SizedBox(height: height*0.01),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(),
                                  ),
                                  child: Container(
                                    width: width*0.5,
                                    height: height*0.03,
                                    child: TextButton(onPressed: (){
                                    },
                                        child:
                                        Text(" First available on monday 10/3 ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context).size.width*0.02,
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.1,),
                              Container(
                                width: width*0.23,
                                height: height*0.04,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(),
                                ),
                                child: TextButton(onPressed: (){
                                },
                                    child:
                                    Text("book",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.width*0.025,
                                      ),
                                    )),
                              ),
                            ],),
                        ],
                      ),
                    ),
                  ]
              ),
              Column(
                  children:[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey.shade300,

                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage:AssetImage("lib/assets/images/doc33.jpg",
                                  ),
                                ),
                              ),
                              Expanded(child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                                    child: Text("Dr:Amr Mohamed",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight:FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height*0.004,),
                                  Text(" Tomorrow 24 Agust 2023",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 9.0,
                                    ),
                                  ),
                                  SizedBox(height: height*0.01,),
                                  SizedBox(width:width*0.07,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.question_answer_sharp),
                                      SizedBox(width: 4.0,),
                                      Text("3 years",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      SizedBox(width:width*0.04,),
                                      Icon(Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text("4.5",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight:FontWeight.bold,
                                        ),
                                      ),
                                    ],),
                                ],
                              ))
                            ],
                          ),
                          SizedBox(height: height*0.01,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                            child: Text("Neurology specialized in pediatric",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 20.0),
                            child: Text("Mans: Ahmed Maher street",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                            child: Text("Frees:200 EGP",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          SizedBox(height: height*0.01),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(),
                                  ),
                                  child: Container(
                                    width: width*0.5,
                                    height: height*0.03,
                                    child: TextButton(onPressed: (){
                                    },
                                        child:
                                        Text(" available tomorrow from 7:00pm ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context).size.width*0.02,
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.1,),
                              Container(
                                width: width*0.23,
                                height: height*0.04,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(),
                                ),
                                child: TextButton(onPressed: (){
                                },
                                    child:
                                    Text("book",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.width*0.025,
                                      ),
                                    )),
                              ),
                            ],),
                        ],
                      ),
                    ),
                  ]
              ),
              Column(
                  children:[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey.shade300,

                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage:AssetImage("lib/assets/images/imageDoctor4.jpg"),
                                ),
                              ),
                              Expanded(child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                                    child: Text("Dr:Lobna Mortada",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight:FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height*0.004,),
                                  Text(" Tomorrow 24 Agust 2023",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 9.0,
                                    ),
                                  ),
                                  SizedBox(height: height*0.01,),
                                  SizedBox(width:width*0.07,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.question_answer_sharp),
                                      SizedBox(width: 4.0,),
                                      Text("2 years",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      SizedBox(width:width*0.04,),
                                      Icon(Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text("4.5",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight:FontWeight.bold,
                                        ),
                                      ),
                                    ],),
                                ],
                              ))
                            ],
                          ),
                          SizedBox(height: height*0.01,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                            child: Text("Neurology specialized in pediatric",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 20.0),
                            child: Text("Mans: Ahmed Maher street",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                            child: Text("Frees:200 EGP",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          SizedBox(height: height*0.01),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(),
                                  ),
                                  child: Container(
                                    width: width*0.5,
                                    height: height*0.03,
                                    child: TextButton(onPressed: (){
                                    },
                                        child:
                                        Text(" available tomorrow from 10",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context).size.width*0.02,
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.1,),
                              Container(
                                width: width*0.23,
                                height: height*0.04,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(),
                                ),
                                child: TextButton(onPressed: (){
                                },
                                    child:
                                    Text("book",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.width*0.025,
                                      ),
                                    )),
                              ),
                            ],),
                        ],
                      ),
                    ),
                  ]
              ),
            ],
          ),
        )
    );
  }
}
