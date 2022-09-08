import 'package:flutter/material.dart';
import '/Pages/details_page.dart';
import 'package:foodiesm/widgets/food_type.dart';

import 'food_type.dart';

class FoodCard extends StatelessWidget {
  // final String name;
  // final String num;
  // final String types;
  // final String image;f
  final Map? food_map;

  const FoodCard({
    Key? key,
    // required this.name,
    // required this.num,
    // required this.types,
    // required this.image,
    required this.food_map,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsPage(data: food_map),
            //builder: (context) => DetailsPage( data: pokemon_map),
          ),
        );
      },
      child: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
          border: Border.all(color: const Color(0x323cb589),width: 1),
              borderRadius: BorderRadius.circular(15),
              color: const Color(0x2893ece5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, left: 14),
                    child: Text(
                      "${food_map!["name"]}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xff3CB589),
                        borderRadius: BorderRadius.circular(15),

                      ),
                      child: Center(
                        child: Text(
                          "V${food_map!["vitamins"][0]}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),



                ],
              ),
              FoodType(text: "${food_map!["type"][0]}"),
            ],
          ),
          //width: double.infinity,
        ),
        Positioned(
          right: -0,
          height: 100,
          width: 100,
          bottom: -2,
          child: Hero(
            tag: "${food_map!["name"]}",
            child: Image.network(
              "${food_map!["img"]}",
              fit: BoxFit.cover,
            ),
          ),
        )
      ]),
    );
  }
}
