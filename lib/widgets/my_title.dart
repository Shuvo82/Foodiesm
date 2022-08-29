import 'package:flutter/material.dart';
import '/widgets/nutrition_badge.dart';

class MyTitle extends StatelessWidget {
  final String name;
  String num;

  String power1;

  MyTitle(
      {Key? key, required this.name, required this.num, required this.power1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Text(
                  "$name",
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  FoodType(text: "fire"),
                  FoodType(text: "Water"),
                ],
              ),
            ],
          ),
          Text(
            "$num",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
