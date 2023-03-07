import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/screens/doctor/All_doctors.dart';
import 'package:graduation_project/screens/blood_bank/bloodBank.dart';
import 'package:graduation_project/screens/blood_bank/donate.dart';
import 'package:graduation_project/screens/new_search.dart';
import 'package:graduation_project/widgets/componant.dart';
import '../nurse/All_nurse.dart';

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
List<String>suggestiondoctors=[
  "Soher abaas",
  "Menaa sameh",
  "Abeer zian",
  "vevian bachoy",
  "Zenb mahmoud",
  "hadeer samy",
];
String selecteddoctors="";
  @override
  Widget build(BuildContext context) {
  return Container();

  }
}
