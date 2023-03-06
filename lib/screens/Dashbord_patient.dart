import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/screens/All_doctors.dart';
import 'package:graduation_project/widgets/componant.dart';
import 'All_nurse.dart';

class Dashbord extends StatefulWidget {
  Dashbord({Key? key}) : super(key: key);
  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
List<String>doctors=[
  "Dr: Soher abaas",
  "Dr: Menaa sameh",
  "Dr: Abeer zian",
  "Dr: vevian bachoy",
  "Dr: Zenb mahmoud",
  "Dr: hadeer samy",
];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
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
                          PopularDoctor(
                            width: width,
                            height: height,
                            image: "lib/assets/images/acc_doc4.jpg",
                            name:"${doctors[0].substring(0,15)}",
                            type: "type",
                            evaluation: 4.2,
                          ),
                          PopularDoctor(
                            width: width,
                            height: height,
                            image: "lib/assets/images/acc_doc4.jpg",
                            name: "${doctors[1].substring(0,15)}",
                            type: "type",
                            evaluation: 4.2,
                          ),
                          PopularDoctor(
                            width: width,
                            height: height,
                            image: "lib/assets/images/acc_doc4.jpg",
                            name: "${doctors[2].substring(0,14)}",
                            type: "type",
                            evaluation: 4.2,
                          ),
                          PopularDoctor(
                            width: width,
                            height: height,
                            image: "lib/assets/images/acc_doc4.jpg",
                            name:"${doctors[3].substring(0,15)}",
                            type: "type",
                            evaluation: 4.2,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
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
                              child: const Text(
                                "see all",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  UpComingAppoinment(width: width, height: height),
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
                            child: const Text(
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
                                      builder: (context) => Nurse_Screen()));
                            },
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PopularNurse(
                              width: width,
                              height: height,
                              image: "lib/assets/images/medical-1.jpg",
                              name: "sara",
                              type: "type",
                              evaluation: 4.4),
                          PopularNurse(
                              width: width,
                              height: height,
                              image: "lib/assets/images/medical-1.jpg",
                              name: "sara",
                              type: "type",
                              evaluation: 4.4),
                          PopularNurse(
                              width: width,
                              height: height,
                              image: "lib/assets/images/medical-1.jpg",
                              name: "sara",
                              type: "type",
                              evaluation: 4.4),
                          PopularNurse(
                              width: width,
                              height: height,
                              image: "lib/assets/images/medical-1.jpg",
                              name: "sara",
                              type: "type",
                              evaluation: 4.4),
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
        ],
      ),
    );
  }
}
