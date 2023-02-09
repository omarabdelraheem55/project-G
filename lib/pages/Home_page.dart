import 'package:flutter/material.dart';
import 'package:graduation_project/new_color/New_Color.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF4F8FB),
      body:
      SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.list_outlined,
                      size: width * 0.09,
                    ),
                    SizedBox(
                      width: width * 0.68,
                    ),
                    Icon(
                      Icons.add_alert_rounded,
                      size: width * 0.075,
                      color: NewColor.mint,
                    ),
                    SizedBox(
                      width: width * 0.012,
                    ),
                    CircleAvatar(
                      backgroundColor: NewColor.mint,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: width * 0.9,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            border: Border.all(color: Colors.grey.shade400)),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                    Icons.clear,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    /* Clear the search field */
                                  },
                                ),
                                hintText: 'بحث...',
                                border: InputBorder.none),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "قائمه الاطباء",
                        style: TextStyle(
                            color: NewColor.mint,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child:Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: width*0.6,
                            height: height*0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:  Column(
                              children: [
                                SizedBox(height: height*0.01,),
                                Expanded(
                                  child: Container(
                                    width: width*0.5,
                                    height: height*0.1,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.08,),
                                    Text("أطباء الأسنان",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.06,),
                                    Text("د:عمر صالح",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(width: width*0.09,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text("4.5",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: width*0.6,
                            height: height*0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:  Column(
                              children: [
                                SizedBox(height: height*0.01,),
                                Expanded(
                                  child: Container(
                                    width: width*0.5,
                                    height: height*0.1,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.08,),
                                    Text("أطباء الأسنان",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.06,),
                                    Text("د:عمر صالح",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(width: width*0.09,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text("4.5",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: width*0.6,
                            height: height*0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:  Column(
                              children: [
                                SizedBox(height: height*0.01,),
                                Expanded(
                                  child: Container(
                                    width: width*0.5,
                                    height: height*0.1,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.08,),
                                    Text("أطباء الأسنان",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.06,),
                                    Text("د:عمر صالح",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(width: width*0.09,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text("4.5",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: width*0.6,
                            height: height*0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:  Column(
                              children: [
                                SizedBox(height: height*0.01,),
                                Expanded(
                                  child: Container(
                                    width: width*0.5,
                                    height: height*0.1,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.08,),
                                    Text("أطباء الأسنان",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.06,),
                                    Text("د:عمر صالح",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(width: width*0.09,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text("4.5",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Upcoming Appoinment",
                        style: TextStyle(
                            color: NewColor.mint,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                      SizedBox(width: width*0.15,),
                      TextButton(onPressed: (){}, child: Text("see all",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),))
                    ],
                  ),
                ),
                Container(
                  width: width*0.95,
                  height: height*0.36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  Column(
                    children: [
                   Row(children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CircleAvatar(
                         backgroundColor: NewColor.mint,
                         radius: 50,
                       ),
                     ),
                     SizedBox(width: width*0.1,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("DR:Omar Saleh",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                         SizedBox(height: height*0.005,),
                         Text("Tomorrow 24 Agust 2023",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),),
                         SizedBox(height: height*0.005,),
                         Row(
                           children: [
                          Image.asset("lib/assets/images/appoiment.png",width: width*0.05,),
                           SizedBox(width: height*0.005,),
                           Text("3 years"),
                           SizedBox(width: height*0.05,),
                           Icon(Icons.star,color: Colors.yellow,),
                           Text("4.5",style: TextStyle(fontSize: 18),)
                         ],),
                       ],
                     ),
                   ],),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Image.asset("lib/assets/images/img_1.png",width: width*0.06),
                          SizedBox(width: width*0.02,),
                          Text("Neurology specialized in pediatric")
                        ],),
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Image.asset("lib/assets/images/img_2.png",width: width*0.06),
                          SizedBox(width: width*0.02,),
                          Text("Mans: Ahmed Maher street")
                        ],),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Image.asset("lib/assets/images/img_3.png",width: width*0.06),
                          SizedBox(width: width*0.02,),
                          Text("Frees:200 EGP")
                        ],),

                      ),
                      Container( width: width*0.90,
                        height: height*0.05,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.white10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:  Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Available Today from 7:00 pm"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            color: NewColor.mint,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                      SizedBox(width: width*0.45,),
                     TextButton(onPressed: (){}, child: Text("see all",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),))
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      width: width*0.15,
                      height: height*0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child:Icon(Icons.monitor_heart_outlined,color: NewColor.mint,),
                    ),
                    SizedBox(width: width*0.03,),
                    Container(
                      width: width*0.15,
                      height: height*0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child:Icon(Icons.monitor_heart_outlined,color: NewColor.mint,),
                    ),
                    SizedBox(width: width*0.03,),
                    Container(
                      width: width*0.15,
                      height: height*0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child:Icon(Icons.monitor_heart_outlined,color: NewColor.mint,),
                    ),
                    SizedBox(width: width*0.03,),
                    Container(
                      width: width*0.15,
                      height: height*0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child:Icon(Icons.monitor_heart_outlined,color: NewColor.mint,),
                    ),
                    SizedBox(width: width*0.03,),
                    Container(
                      width: width*0.15,
                      height: height*0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child:Icon(Icons.monitor_heart_outlined,color: NewColor.mint,),
                    ),
                    SizedBox(width: width*0.03,),
                    Container(
                      width: width*0.15,
                      height: height*0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child:Icon(Icons.monitor_heart_outlined,color: NewColor.mint,),
                    ),
                    SizedBox(width: width*0.03,),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "popular nurse",
                        style: TextStyle(
                            color: NewColor.mint,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child:Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: width*0.6,
                            height: height*0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:  Column(
                              children: [
                                SizedBox(height: height*0.01,),
                                Container(
                                  width: width*0.5,
                                  height: height*0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.08,),
                                    Text("Nurse",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.06,),
                                    Text("DR:Safaa",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(width: width*0.09,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text("4.5",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: width*0.6,
                            height: height*0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:  Column(
                              children: [
                                SizedBox(height: height*0.01,),
                                Container(
                                  width: width*0.5,
                                  height: height*0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.08,),
                                    Text("Nurse",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.06,),
                                    Text("DR:Safaa",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(width: width*0.09,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text("4.5",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: width*0.6,
                            height: height*0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:  Column(
                              children: [
                                SizedBox(height: height*0.01,),
                                Container(
                                  width: width*0.5,
                                  height: height*0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.08,),
                                    Text("Nurse",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.06,),
                                    Text("DR:Safaa",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(width: width*0.09,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text("4.5",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: width*0.6,
                            height: height*0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:  Column(
                              children: [
                                SizedBox(height: height*0.01,),
                                Container(
                                  width: width*0.5,
                                  height: height*0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.08,),
                                    Text("Nurse",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width*0.06,),
                                    Text("DR:Safaa",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                    SizedBox(width: width*0.09,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text("4.5",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Other Services",
                        style: TextStyle(
                            color: NewColor.mint,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: width*0.92,
                        height: height*0.18,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Image.asset("lib/assets/images/img_4.png"),
                            Expanded(
                              child: Text("A service that allows you to donate or"
                                  " request a donation and communicate "
                                  "with institutions to provide the service"),
                            )
                          ],),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
