import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/screens/Dashbord_patient.dart';
import 'package:graduation_project/screens/SignU%5BNurse.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  var c;
  TextEditingController controller = TextEditingController();
  String text = '';
  final List<String> doctors = [
    "Safaa Emad",
    "Safia Emad",
    "Akram  ",
    "Omar "
  ];
  final List <String>texts = [
    'Brands',
    'Categories',
    'Community Market ',
  ];
  List<String> searched = [];

  @override
  Widget build(c) {

    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            // The search area here
            backgroundColor:NewColor.mint,
            elevation: 1,
            iconTheme: const IconThemeData(color: Colors.black),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextField(
                        cursorColor: Colors.black,
                        controller: controller,
                        onChanged: (value) {
                          addSearchedForSearchedList(searchedCharacter: value);
                          if (controller.text.isEmpty) {
                            searched.clear();
                            setState(() {});
                          }
                        },
                        enabled: true,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(0),
                            prefixIcon: const Icon(Icons.search),
                            enabledBorder: decoration(),
                            focusedBorder: decoration(),
                            errorBorder: decoration(),
                            errorStyle: const TextStyle(color: Colors.white),
                            focusedErrorBorder: decoration(),
                            hintText: '  Search...',
                            border: decoration()),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //AppNavigator.pop(context: context);
                    controller.clear();
                    setState(() {
                      searched = [];
                    });
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
      backgroundColor: Color(0xffF4F8FB),
      body:searched.isEmpty?SingleChildScrollView(
        child: Column(children: [
          Dashbord()
        ],),
      ): ListView.builder(
        itemCount: searched.length,
        itemBuilder: (context, index) => Text(searched[index]),
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
}OutlineInputBorder decoration() => OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: Colors.grey.shade200,
  ),
);