import 'package:flutter/material.dart';
import 'package:foodiesm/Pages/splash_screen.dart';

void main() {
   runApp( MyApp());
}

class MyApp extends StatelessWidget {
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


}