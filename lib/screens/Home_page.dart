import 'package:flutter/material.dart';
import 'package:graduation_project/screens/Dashbord.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  late List<Characters> allcharacters;
  late List<Characters> searchedforallcharacters;
  bool _isSearch = false;
  final _searchTextEditingController = TextEditingController();
  Widget buildtextfaild() {
    return TextFormField(
      controller: _searchTextEditingController,
      decoration: InputDecoration(
        hintText: "Search..",
      ),
      onChanged: (serchedcharacter) {
        addSearchedForitemTOSearchedList(serchedcharacter);
      },
    );
  }
  void addSearchedForitemTOSearchedList(String serchedcharacter) {
    searchedforallcharacters = allcharacters
        .where((character) =>
            character.toLowerCase().startsWith(serchedcharacter.characters))
        .toList();
    setState(() {});
  }
  List<Widget> _buildAppBarAction() {
    if (_isSearch) {
      return [
        IconButton(
            onPressed: () {
              _clearsearch();
              Navigator.pop(context);
            },
            icon: Icon(Icons.clear))
      ];
    } else {
      return [IconButton(onPressed: _startsearching, icon: Icon(Icons.search))];
    }
  }
  void _startsearching() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopsearching));
    setState(() {
      _isSearch = true;
    });
  }
  void _stopsearching() {
    _clearsearch();
    setState(() {
      _isSearch = false;
    });
  }
  void _clearsearch() {
    _searchTextEditingController.clear();
  }
  Widget buildAppBarTitle(){
    return Text("Home");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F8FB),
      appBar:AppBar(
        elevation: 20,
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.vertical(
             bottom: Radius.circular(35),
           ),
         ),
         automaticallyImplyLeading: false,
        title: _isSearch? buildtextfaild():buildAppBarTitle(),
        actions: _buildAppBarAction(),
      ),
      body: Dashbord()
    );
  }
}