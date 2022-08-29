import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../data_source/food_data.dart';

import '../widgets/food_card.dart';
import 'setting.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  static List<Map?>? FoodData = FoodDataSource.foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Food app'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              print("clicked");

              Scaffold.of(context).openDrawer();
            },
          );
        }),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: const Icon(
                Icons.settings,
                size: 29,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Setting();
                }));


               // print("clicked");
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Text(
                  "Foodiesm",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 18,
              child: Container(
                height: 650,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: FoodData!.length,
                  itemBuilder: (context, index) {
                    return FoodCard(
                      name: "${FoodData![index]!["name"]}",
                      image: "${FoodData![index]!["img"]}",
                      num: "${FoodData![index]!["id"]}",
                      types: "${FoodData![index]!["type"]}",
                      food_map: FoodData![index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
