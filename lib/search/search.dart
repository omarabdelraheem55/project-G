import 'package:flutter/material.dart';
class SearchScreenTest extends StatefulWidget {
  const SearchScreenTest({Key? key}) : super(key: key);
  @override
  State<SearchScreenTest> createState() => _SearchScreenTestState();
}

class _SearchScreenTestState extends State<SearchScreenTest> {
  TextEditingController controller = TextEditingController();
  String text = '';
  final List<String> doctors = [
    "Emad Abd El-Hamied",
    "Safaa Emad",
    "Safia Emad",
    "Akram Ibn Illegel",
    "Omar elly m3aia fe elmashro3e"
  ];
  final List texts = [
    'Brands',
    'Categories',
    'Community Market ',
  ];
  List<String> searched = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          // The search area here
          backgroundColor: Colors.white,
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
                  //style: TextStyles.textViewMedium13.copyWith(color: yellow),
                ),
              )
            ],
          )),
      body: searched.isEmpty
          ? Center(child:Text("vvv"))
          : ListView.builder(
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
}

OutlineInputBorder decoration() => OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: Colors.grey.shade200,
  ),
);
