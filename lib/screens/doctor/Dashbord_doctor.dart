import 'package:flutter/material.dart';
import 'package:graduation_project/widgets/mydrawer.dart';
import '../../helper/New_Color.dart';
import '../blood_bank/bloodBank.dart';
import '../patient/Home_page.dart';
class DashBordDoctor extends StatefulWidget {
  const DashBordDoctor({Key? key}) : super(key: key);
  @override
  State<DashBordDoctor> createState() => _DashBordDoctorState();
}

class _DashBordDoctorState extends State<DashBordDoctor> {
  TextEditingController controller = TextEditingController();
  String text = '';
  final List<String> doctors = ["Safaa Emad", "Safia Emad", "Akram  ", "Omar "];
  final List<String> texts = [
    'Brands',
    'Categories',
    'Community Market ',
  ];
  List<String> searched = [];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        child: MyDrawer(
          width: 20,
        ),
      ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (contex)=>HomePage()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBordDoctor()));
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: height * 0.2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      NewColor.primaryColour,
                      NewColor.blueBlack,
                    ],
                    stops: [0.1, 0.9],
                  ),
                ),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Diagnosis()));
                  },
                  height: height * 0.4,
                  child: Text(
                    "Diagnosis",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: height * 0.2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      NewColor.primaryColour,
                      NewColor.blueBlack,
                    ],
                    stops: [0.1, 0.9],
                  ),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Medicine()));
                  },
                  height: height * 0.4,
                  child: Text(
                    "Medicines",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: height * 0.2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      NewColor.primaryColour,
                      NewColor.blueBlack,
                    ],
                    stops: [0.1, 0.9],
                  ),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  height: height * 0.4,
                  child: Text(
                    "Diseases",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: height * 0.2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      NewColor.primaryColour,
                      NewColor.blueBlack,
                    ],
                    stops: [0.1, 0.9],
                  ),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Diagnosis2()));
                  },
                  height: height * 0.4,
                  child: Text(
                    "+Diagnosis",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addSearchedForSearchedList({required String searchedCharacter}) {
    searched = doctors
        .where((character) =>
            character.contains(searchedCharacter) |
            character.toLowerCase().contains(searchedCharacter))
        .toList();
    setState(() {});
  }
}

OutlineInputBorder decoration() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Colors.grey.shade200,
      ),
    );

class Medicine extends StatefulWidget {
  const Medicine({Key? key}) : super(key: key);

  @override
  State<Medicine> createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: NewColor.primaryColour,
        title: Text(
          "Medicine",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              color: Color(0xff0e4067),
              child: Row(
                children: [
                  Text(
                    "Medicine name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Dose",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Text(
                    "Duration",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(
                          "Panadol",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "three time aday after eating",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "2 weeks",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Row(
                      children: [
                        Text(
                          "omega-3",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "three time aday after eating",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "2 weeks",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(
                          "Panadol",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "three time aday after eating",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "2 weeks",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Row(
                      children: [
                        Text(
                          "omega-3",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "three time aday after eating",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "2 weeks",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class Diagnosis extends StatefulWidget {
  const Diagnosis({Key? key}) : super(key: key);

  @override
  State<Diagnosis> createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  var Specializations = TextEditingController();
  var date = TextEditingController();
  bool isSpecializations = false;
  bool isdate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: NewColor.primaryColour,
        title: Text(
          "Diagnosis",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: Specializations,
              obscureText: isSpecializations,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                print(value);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Specializations  not must be empty';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Specializations ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    color: Color(0xff0e4067),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: date,
              obscureText: isdate,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                print(value);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'date not must be empty';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Date ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    color: Color(0xff0e4067),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              width: double.infinity,
              color: Color(0xff0e4067),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Search",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Diagnosis2 extends StatefulWidget {
  const Diagnosis2({Key? key}) : super(key: key);

  @override
  State<Diagnosis2> createState() => _Diagnosis2State();
}

class _Diagnosis2State extends State<Diagnosis2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0e4067),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: NewColor.primaryColour,
        title: Text(
          "+Diagnosis",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
              child: Container(
                color: Colors.white,
                child: TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: "description ",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Medicine Name",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Dosage Aday",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Duration weeks",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "description",
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style:ElevatedButton.styleFrom(backgroundColor:Colors.white),
                onPressed: (){}, child:Text("   Save   ",style: TextStyle(color:NewColor.primaryColour),)
            )
          ],
        ),
      ),
    );
  }
}
