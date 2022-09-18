import 'package:flutter/material.dart';
import 'package:foodiesm/Pages/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
   runApp( MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void initState() {
    super.initState();
    dark_mode_selector();
  }

  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color:  Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),

      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      title: 'Foodiesm',

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }

  dark_mode_selector() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool dark_mode = (prefs.getBool('isDarkModeEnabled') ?? false);
    print(dark_mode);
    if (dark_mode) {
      setState(() {
        isDarkModeEnabled = true;
      });
    } else {
      setState(() {
        isDarkModeEnabled = false;
      });
    }
  }
}