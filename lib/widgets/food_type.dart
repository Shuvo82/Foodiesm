import 'package:flutter/material.dart';

class FoodType extends StatelessWidget {
  final String text;

  const FoodType({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 25,
        // width: 60,
        margin: const EdgeInsets.only(left: 12, top: 0),
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff93ece5).withOpacity(0.6)
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Color(0xff000000),
              fontSize: 13),
        ));
  }
}
