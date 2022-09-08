
import 'package:flutter/material.dart';

class AboutInfoTextType extends StatelessWidget {
  String text;
  AboutInfoTextType({
    Key? key,required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("$text",
        style: const TextStyle(
          fontSize: 18,
          //fontWeight: FontWeight.w100,
          color: Color(0xff979A9D),
        ),),
    );
  }
}
