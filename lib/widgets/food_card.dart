import 'package:flutter/material.dart';
import '/Pages/details_page.dart';

import 'food_type.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String num;
  final String types;
  final String image;
  final Map? food_map;

  const FoodCard({
    Key? key,
    required this.name,
    required this.num,
    required this.types,
    required this.image,
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
              borderRadius: BorderRadius.circular(19),
              color: const Color(0xff49D0B0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${food_map!["name"]}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  for (String item in food_map!["type"]) FoodType(text: item),

                  // // PowerBadge(
                  // //   text: "${pokemon_map!["type"][0]}",
                  // // ),
                  // // PowerBadge(text: "${pokemon_map!["type"][0]}"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 70.0, right: 10),
                child: Text(
                  "${food_map!["id"]}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          //width: double.infinity,
        ),
        Positioned(
          right: -6,
          height: 120,
          width: 120,
          bottom: -7,
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
