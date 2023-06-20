import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/widgets/mydrawer.dart';
import '../../widgets/componant.dart';
import '../blood_bank/bloodBank.dart';
import '../doctor/All_doctors.dart';
import '../doctor/Dashbord_doctor.dart';
import '../nurse/All_nurse.dart';
class HomePage extends StatefulWidget {
   HomePage({ Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  TextEditingController doctorName = TextEditingController();
  TextEditingController doctorCity = TextEditingController();
  TextEditingController doctorSp = TextEditingController();
  TextEditingController nurseName = TextEditingController();
  TextEditingController nurseCity = TextEditingController();
  TextEditingController bloodCity = TextEditingController();
  TextEditingController bloodType = TextEditingController();
  List<String> doctors = [
    "Dr: Soher abaas",
    "Dr: Menaa sameh",
    "Dr: Abeer zian",
    "Dr: vevian bachoy",
    "Dr: Zenb mahmoud",
    "Dr: hadeer samy",
    "Dr: hadeer samy",
    "Dr: hadeer samy",
    "Dr: hadeer samy",
  ];
  List<String> suggestiondoctors = [
    "Soher abaas",
    "Menaa sameh",
    "Abeer zian",
    "vevian bachoy",
    "Zenb mahmoud",
    "hadeer samy",
  ];
  String selecteddoctors = "";
  String? dropdownValue;
  var formkey = GlobalKey<FormState>();
  bool ShowDoctors=true;
  bool ShowDoctors2=true;

  @override
  Widget build(c) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(child: MyDrawer(width: 20,),),
        appBar: AppBar(
          leading: Image.asset("lib/assets/images/logo-white.png"),
          automaticallyImplyLeading: false,
          backgroundColor: NewColor.primaryColour,
          elevation: 1,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BloodBank()));
                    },
                    child: Text(
                      "Blood Bank",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>DashBordDoctor()));
                    },
                    child: Text(
                      "Medical History",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Appointments",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xffF4F8FB),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child:
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        child: Center(
                          child: DropdownButton<String>(
                            iconSize: 20,
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Doctor','Nurse',"Blood Donator","Blood Request"]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    SizedBox(width: 25,),

                  ],
                ),
                if (dropdownValue=="Doctor") Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   SearchFaild(controller: doctorName, name: "name"),
                    SizedBox(height: 10,),
                   SearchFaild(controller: doctorSp, name: "specialization"),
                    SizedBox(height: 10,),
                    SearchFaild(controller: doctorCity, name: "city")
                  ],
                ) else dropdownValue=="Nurse"?
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   SearchFaild(controller: nurseName, name: "name"),
                    SizedBox(height: 10,),
                    SearchFaild(controller: nurseCity, name: "city")
                  ],
                ):dropdownValue=="Blood Donator"?
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  SearchFaild(controller: bloodCity, name: "city"),
                    SizedBox(height: 10,),
                  SearchFaild(controller: bloodType, name: "bloodType")
                  ],
                ):dropdownValue=="Blood Request"?dropdownValue=="Blood Request"?  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchFaild(controller: bloodCity, name: "city"),
                    SizedBox(height: 10,),
                    SearchFaild(controller: bloodType, name: "bloodType")
                  ],
                ):SizedBox():SizedBox(),
                SizedBox(
                  width: 100,
                  child: Center(
                    child:
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(

                       backgroundColor: NewColor.primaryColour// Background color
                      ),

                      onPressed: (){
                      },child: Row(
                      children: [
                        Icon(Icons.search,size: 20,),
                        Text("Search")
                      ],
                    ),),
                  ),
                ),
              Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "popular doctor",
                              style: TextStyle(
                                  color: NewColor.primaryColour,
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
                              image: "lib/assets/images/imageDoctor4.jpg",
                              name: "${doctors[0]}",
                              type: "type",
                              evaluation: 4.2,
                            ),
                            PopularDoctor(
                              width: width,
                              height: height,
                              image: "lib/assets/images/imageDoctor4.jpg",
                              name: "${doctors[1]}",
                              type: "type",
                              evaluation: 4.2,
                            ),
                            PopularDoctor(
                              width: width,
                              height: height,
                              image: "lib/assets/images/imageDoctor4.jpg",
                              name: "${doctors[2]}",
                              type: "type",
                              evaluation: 4.2,
                            ),
                            PopularDoctor(
                              width: width,
                              height: height,
                              image: "lib/assets/images/imageDoctor4.jpg",
                              name: "${doctors[3]}",
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
                                  color: NewColor.primaryColour,
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
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        UpComingAppoinment(
                            width: width,
                            height: height,
                            name: "sama",
                            specilaized: "Bones",
                            address: "Jahan Street",
                            money: "299",
                            rate: "4.2",
                            expertise: "3",
                            image: "lib/assets/images/imageDoctor4.jpg"),
                        SizedBox(width: 25,),
                        UpComingAppoinment(
                            width: width,
                            height: height,
                            name: "fatma Omar",
                            specilaized: "Bones",
                            address: "Jahan Street",
                            money: "299",
                            rate: "4.2",
                            expertise: "3",
                            image: "lib/assets/images/imageDoctor3.jpg"),

                      ],
                    ),
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
                                  color: NewColor.primaryColour,
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
                                color: NewColor.primaryColour,
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
                                color: NewColor.primaryColour,
                              )
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
                                color: NewColor.primaryColour,
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
                                color: NewColor.primaryColour,
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
                                color: NewColor.primaryColour,
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
                                color: NewColor.primaryColour,
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
                                    color: NewColor.primaryColour,
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
                              color: NewColor.primaryColour,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BloodBank()));
                    },
                    child: Padding(
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
                              Image.asset("lib/assets/images/avatars.png"),
                              Expanded(
                                child: Text(
                                    "A service that allows you to donate or"
                                        " request a donation and communicate "
                                        "with institutions to provide the service"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
              ],
            ),
          ),
        ));
  }
}