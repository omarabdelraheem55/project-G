import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/Select_Form/Select_form.dart';

import 'new_color/New_Color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar")
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
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
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.fadeTransition,
        duration: 4000,
        splash:
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
             NewColor.mint,
              Colors.cyanAccent
            ]),
          ),
          child:
          Column(
            children: [
              SizedBox(height: 300),
            Image.asset("lib/assets/images/logo/new logo.png",width: 200,height: 200,)
            ],
          ),
        ),
        nextScreen: SelectForm(),),);
  }
}
