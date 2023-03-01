import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/search/search.dart';
import 'helper/New_Color.dart';
import 'screens/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: [
      //   GlobalCupertinoLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale("ar")
      // ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      home:
      AnimatedSplashScreen(
        backgroundColor: NewColor.mint,
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.fadeTransition,
        duration:3000,
        splash:
        Container(
          width: double.infinity,
          height: double.infinity,
          color: NewColor.mint,
          child:
          Column(
            children: [
              SizedBox(height: 200,),
              Image.asset("lib/assets/images/logo/new logo.png",width:200,),
              RichText(
                textScaleFactor: 1.5,
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: "C",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: "a", style: TextStyle(color:Colors.white)),
                      TextSpan(
                          text: "re__رعــــ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(text: "ا", style: TextStyle(color:Colors.white)),
                      TextSpan(
                          text: "يــة", style: TextStyle(color: Colors.black)),
                    ]),
              ),
            ],
          ),
        ),
        nextScreen: Screens(),),);
  }
}
