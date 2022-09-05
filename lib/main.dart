import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:foodiesm/Pages/splash_screen.dart';
import 'package:page_transition/page_transition.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodiesm',

      debugShowCheckedModeBanner: false,
      home:
      SplashScreen(),


    //   AnimatedSplashScreen(
    //       duration: 3000,
    //       splash: Image.asset('assets/images/splash.png',
    //         fit: BoxFit.cover,
    //       ),
    //       nextScreen: HomePage(),
    //       splashTransition: SplashTransition.fadeTransition,
    //       //pageTransitionType: PageTransitionType.scale,
    //
    // )
    );
  }
}