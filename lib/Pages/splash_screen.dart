import 'package:flutter/material.dart';
import 'package:foodiesm/Pages/on_boarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'home_page.dart';

void main() => runApp(SplashScreen());

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500 ), () {});
    page_selector();
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => getWidget()));
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
  page_selector() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);
    if (seen) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) =>  HomePage()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) =>  OnBoardingPage1()));
    }
  }

}
