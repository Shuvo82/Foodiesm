import 'package:flutter/material.dart';
import 'package:foodiesm/Pages/on_boarding/on_boarding_page.dart';

import 'home_page.dart';

void main() => runApp(SplashScreen());

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000 ), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoardingPage1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFEEDF1),
                  Color(0xffDEF8EC),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('assets/icons/splashed.png'),
                    height: 200,
                    width: 200,
                  ),
                  Text(
                    'Foodiesm',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
