import 'package:flutter/material.dart';
import 'package:graduation_project/new_color/New_Color.dart';
import 'package:graduation_project/pages/All_Doctors/All_doctors.dart';

import 'All_nurse/All_nurse.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return  SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Icon(
                  //   Icons.list_outlined,
                  //   size: width * 0.09,
                  // ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.add_alert_rounded,
                    size: width * 0.075,
                    color: NewColor.mint,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/images/d.jpg"),
                  )
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       Container(
              //         width: width * 0.9,
              //         height: 50,
              //         decoration: BoxDecoration(
              //             color: Colors.grey.shade50,
              //             border: Border.all(color: Colors.grey.shade400),
              //             borderRadius: BorderRadius.circular(25)),
              //         child: Center(
              //           child: TextField(
              //             decoration: InputDecoration(
              //               prefixIcon: const Icon(
              //                 Icons.search,
              //                 color: Colors.grey,
              //               ),
              //               border: InputBorder.none,
              //               hintText: 'search for doctor and categaries..',
              //             ),
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "popular doctor",
                          style: TextStyle(
                              color: NewColor.mint,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: width * 0.6,
                                height: height * 0.18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                  Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "lib/assets/images/acc_doc2.jpg"),
                                        borderRadius:
                                        BorderRadius.circular(25),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Text(
                                          "Dentists",
                                          style: TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Text(
                                          "DR: Factorya",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Expanded(child: Container()),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "4.5",
                                          style:
                                          TextStyle(fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        )
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
                                width: width * 0.6,
                                height: height * 0.18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                  Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "lib/assets/images/acc_doc4.jpg"),
                                        borderRadius:
                                        BorderRadius.circular(25),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Text(
                                          "Dentists",
                                          style: TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Text(
                                          "DR:Sasha",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Expanded(child: Container()),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "4.5",
                                          style:
                                          TextStyle(fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        )
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
                                width: width * 0.6,
                                height: height * 0.18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                  Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "lib/assets/images/medical-1.jpg"),
                                        borderRadius:
                                        BorderRadius.circular(25),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Text(
                                          "Dentists",
                                          style: TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Text(
                                          "DR: Sodeka",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Expanded(child: Container()),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "4.5",
                                          style:
                                          TextStyle(fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        )
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
                                width: width * 0.6,
                                height: height * 0.18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                  Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "lib/assets/images/acc5.jpg"),
                                        borderRadius:
                                        BorderRadius.circular(25),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Text(
                                          "Dentists",
                                          style: TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Text(
                                          "DR: Son",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Expanded(child: Container()),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "4.5",
                                          style:
                                          TextStyle(fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
              , Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Appoinment",
                          style: TextStyle(
                              color: NewColor.mint,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Doctors_Screen()));
                            },
                            child: Text(
                              "see all",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "lib/assets/images/doctora.jpg"),
                                radius: 50,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DR:Omar Saleh",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Tomorrow 24 Agust 2023",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/appoiment.png",
                                      width: width * 0.05,
                                    ),
                                    SizedBox(
                                      width: height * 0.005,
                                    ),
                                    Text("3 years"),
                                    SizedBox(
                                      width: height * 0.05,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset("lib/assets/images/img_1.png",
                                  width: width * 0.06),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text("Neurology specialized in pediatric")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset("lib/assets/images/img_2.png",
                                  width: width * 0.06),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text("Mans: Ahmed Maher street")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset("lib/assets/images/img_3.png",
                                  width: width * 0.06),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text("Frees:200 EGP")
                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.90,
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: Colors.white10),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Available Today from 7:00 pm"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " Categories",
                          style: TextStyle(
                              color: NewColor.mint,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "see all",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: width * 0.15,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.hearing,
                            color: NewColor.mint,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Container(
                          width: width * 0.15,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: NewColor.mint,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Container(
                          width: width * 0.15,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.accessible,
                            color: NewColor.mint,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Container(
                          width: width * 0.15,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.elderly,
                            color: NewColor.mint,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Container(
                          width: width * 0.15,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.remove_red_eye_sharp,
                            color: NewColor.mint,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Container(
                          width: width * 0.15,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.face_retouching_natural,
                            color: NewColor.mint,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Text(
                            "popular nurse",
                            style: TextStyle(
                                color: NewColor.mint,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Nurse_Screen()));
                          },
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: width * 0.6,
                                height: height * 0.18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                  Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "lib/assets/images/acc_doc4.jpg"),
                                        borderRadius:
                                        BorderRadius.circular(25),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Text(
                                          "Nurse",
                                          style: TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Text(
                                          "DR:Safaa",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: width * 0.09,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "4.5",
                                          style:
                                          TextStyle(fontSize: 18),
                                        )
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
                                width: width * 0.6,
                                height: height * 0.18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                  Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "lib/assets/images/acc_doc2.jpg"),
                                        borderRadius:
                                        BorderRadius.circular(25),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Text(
                                          "Nurse",
                                          style: TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Text(
                                          "DR:Safaa",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: width * 0.09,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "4.5",
                                          style:
                                          TextStyle(fontSize: 18),
                                        )
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
                                width: width * 0.6,
                                height: height * 0.18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                  Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "lib/assets/images/doc33.jpg"),
                                        borderRadius:
                                        BorderRadius.circular(25),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Text(
                                          "Nurse",
                                          style: TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Text(
                                          "DR: Samih",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: width * 0.09,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "4.5",
                                          style:
                                          TextStyle(fontSize: 18),
                                        )
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
                                width: width * 0.6,
                                height: height * 0.18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                  Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "lib/assets/images/medical-1.jpg"),
                                        borderRadius:
                                        BorderRadius.circular(25),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Text(
                                          "Nurse",
                                          style: TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.06,
                                        ),
                                        Text(
                                          "DR:Safaa",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: width * 0.09,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "4.5",
                                          style:
                                          TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                child: Container(
                  width: width * 0.92,
                  height: height * 0.18,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("lib/assets/images/img_4.png"),
                        Expanded(
                          child: Text("A service that allows you to donate or"
                              " request a donation and communicate "
                              "with institutions to provide the service"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
