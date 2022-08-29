import 'package:flutter/material.dart';

import 'Pages/home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      //DetailsPage()
      HomePage(),
    );
  }
}