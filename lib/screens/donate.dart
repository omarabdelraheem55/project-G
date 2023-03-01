import 'package:flutter/material.dart';

class Donate extends StatefulWidget {


  @override
  State<Donate> createState() => _DonateState();
}
class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back_outlined),
            color: Colors.black
            , onPressed: () {  },),
          title: Text("All Donate ",
            style: TextStyle(
              color:Colors.black,
              fontSize:width*0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [Icon(Icons.menu,
            color: Colors.black,
            size: 30.0,
          )],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              Container(
                width: 120,
                height: 190,
                child: Image.asset("asset/images/donate.png",
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),

              Text("Your 7 request available! ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 1,
                        ),
                        height: height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade300,

                            )
                        ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 23.0,
                                  backgroundImage:AssetImage("asset/images/doctor1.jpg"),
                                ),
                              ),
                              SizedBox(width: width*0.04,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Khaled Mohamed",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),

                                    ),
                                    Row(children: [
                                      Icon(Icons.location_on_outlined,
                                        color: Color(0xff2d9b95),
                                        size: 20,
                                      ),
                                      Text("Mansoura",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                        ),

                                      ),
                                    ],),
                                    SizedBox(width: width*0.19,),
                                  ],
                                ),
                              ),
                              SizedBox(width: width*0.26,),
                              Container(
                                height: height*0.045,
                                width: width*0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(" 5 Km ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              )
                            ]), )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 1,
                        ),
                        height: height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade300,

                            )
                        ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 23.0,
                                  backgroundImage:AssetImage("asset/images/doctor1.jpg"),
                                ),
                              ),
                              SizedBox(width: width*0.04,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Khaled Mohamed",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),

                                    ),
                                    Row(children: [
                                      Icon(Icons.location_on_outlined,
                                        color: Color(0xff2d9b95),
                                        size: 20,
                                      ),
                                      Text("Mansoura",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                        ),

                                      ),
                                    ],),
                                    SizedBox(width: width*0.19,),
                                  ],
                                ),
                              ),
                              SizedBox(width: width*0.26,),
                              Container(
                                height: height*0.045,
                                width: width*0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(" 5 Km ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              )
                            ]), )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 1,
                        ),
                        height: height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade300,

                            )
                        ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 23.0,
                                  backgroundImage:AssetImage("asset/images/doctor1.jpg"),
                                ),
                              ),
                              SizedBox(width: width*0.04,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Khaled Mohamed",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),

                                    ),
                                    Row(children: [
                                      Icon(Icons.location_on_outlined,
                                        color: Color(0xff2d9b95),
                                        size: 20,
                                      ),
                                      Text("Mansoura",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                        ),

                                      ),
                                    ],),
                                    SizedBox(width: width*0.19,),
                                  ],
                                ),
                              ),
                              SizedBox(width: width*0.26,),
                              Container(
                                height: height*0.045,
                                width: width*0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(" 5 Km ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              )
                            ]), )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 1,
                        ),
                        height: height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade300,

                            )
                        ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 23.0,
                                  backgroundImage:AssetImage("asset/images/doctor1.jpg"),
                                ),
                              ),
                              SizedBox(width: width*0.04,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Khaled Mohamed",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),

                                    ),
                                    Row(children: [
                                      Icon(Icons.location_on_outlined,
                                        color: Color(0xff2d9b95),
                                        size: 20,
                                      ),
                                      Text("Mansoura",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                        ),

                                      ),
                                    ],),
                                    SizedBox(width: width*0.19,),
                                  ],
                                ),
                              ),
                              SizedBox(width: width*0.26,),
                              Container(
                                height: height*0.045,
                                width: width*0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(" 5 Km ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              )
                            ]), )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 1,
                        ),
                        height: height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade300,

                            )
                        ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 23.0,
                                  backgroundImage:AssetImage("asset/images/doctor1.jpg"),
                                ),
                              ),
                              SizedBox(width: width*0.04,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Khaled Mohamed",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),

                                    ),
                                    Row(children: [
                                      Icon(Icons.location_on_outlined,
                                        color: Color(0xff2d9b95),
                                        size: 20,
                                      ),
                                      Text("Mansoura",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                        ),

                                      ),
                                    ],),
                                    SizedBox(width: width*0.19,),
                                  ],
                                ),
                              ),
                              SizedBox(width: width*0.26,),
                              Container(
                                height: height*0.045,
                                width: width*0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(" 5 Km ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              )
                            ]), )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 1,
                        ),
                        height: height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade300,

                            )
                        ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 23.0,
                                  backgroundImage:AssetImage("asset/images/doctor1.jpg"),
                                ),
                              ),
                              SizedBox(width: width*0.04,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Khaled Mohamed",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),

                                    ),
                                    Row(children: [
                                      Icon(Icons.location_on_outlined,
                                        color: Color(0xff2d9b95),
                                        size: 20,
                                      ),
                                      Text("Mansoura",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                        ),

                                      ),
                                    ],),
                                    SizedBox(width: width*0.19,),
                                  ],
                                ),
                              ),
                              SizedBox(width: width*0.26,),
                              Container(
                                height: height*0.045,
                                width: width*0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(" 5 Km ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              )
                            ]), )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 1,
                        ),
                        height: height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade300,

                            )
                        ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 23.0,
                                  backgroundImage:AssetImage("asset/images/doctor1.jpg"),
                                ),
                              ),
                              SizedBox(width: width*0.04,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Khaled Mohamed",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),

                                    ),
                                    Row(children: [
                                      Icon(Icons.location_on_outlined,
                                        color: Color(0xff2d9b95),
                                        size: 20,
                                      ),
                                      Text("Mansoura",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                        ),

                                      ),
                                    ],),
                                    SizedBox(width: width*0.19,),
                                  ],
                                ),
                              ),
                              SizedBox(width: width*0.26,),
                              Container(
                                height: height*0.045,
                                width: width*0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(" 5 Km ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              )
                            ]), )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
