import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/screens/welcomePage.dart';

import '../screens/Select_form.dart';

class MyDrawer extends StatelessWidget {
  final double width;
  const MyDrawer({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:NewColor.primaryColour,
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: SizedBox(
            width: width,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'lib/assets/images/logo/logo-white.png',
                  width: 100,
                ),
                const ListTile(
                  leading:FaIcon(FontAwesomeIcons.penToSquare),
                  title: Text('Appointments'),
                ),
                const ListTile(
                  leading: FaIcon(FontAwesomeIcons.personCircleQuestion),
                  title: Text('Apouts'),
                ),
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                ),
                const ListTile(
                  leading:FaIcon(FontAwesomeIcons.circleInfo),
                  title: Text('Helps'),
                ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectForm()));
                    },
                    child: ListTile(
                    leading:FaIcon(FontAwesomeIcons.doorOpen),
                    title: Text('Logout'),
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
