import 'package:flutter/material.dart';
import '/widgets/my_title.dart';

import '../widgets/about/about_info_text_type.dart';
import '../widgets/about/about_info_text_value.dart';
import '../widgets/food_type.dart';

class DetailsPage extends StatelessWidget {
  final Map? data;

  const DetailsPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff51CFB0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.list,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: const Color(0xff51CFB0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                "${data!['name']}",
                                style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                for (String item in data!['type'])
                                  FoodType(text: item,),

                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 30),
                          child: Text("${data!['id']}",
                              style:
                                  const TextStyle(color: Colors.white, fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.only(left: 12, top: 30),
                            //color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                AboutInfoTextType(text: "Vitamin"),
                                AboutInfoTextType(text: "iron"),
                                AboutInfoTextType(text: "Calcium"),
                                AboutInfoTextType(text: "Carbohydrate"),
                                const SizedBox(
                                  height: 1,
                                ),
                                const Text("Breeding",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                AboutInfoTextType(text: "spawn"),
                                AboutInfoTextType(text: "Egg"),
                                AboutInfoTextType(text: "spawn_time"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            padding: const EdgeInsets.only(left: 12, top: 30),
                            //color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                AboutInfoTextValue(
                                    text: "${data!['candy_count']}"),
                                AboutInfoTextValue(text: "${data!['height']}"),
                                AboutInfoTextValue(text: "${data!['weight']}"),
                                AboutInfoTextValue(text: "${data!['type']}"),
                                const SizedBox(
                                  height: 1,
                                ),


                                const SizedBox(
                                  height: 1,
                                ),
                                const Text("",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                AboutInfoTextValue(
                                    text: "${data!['spawn_chance']}"),
                                AboutInfoTextValue(text: "${data!["egg"]}"),
                                AboutInfoTextValue(
                                    text: "${data!['spawn_time']}"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 70,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                height: 220,
                width: 210,
                child: Hero(
                  tag: "${data!['name']}",
                  child: Image.network(
                    "${data!['img']}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
