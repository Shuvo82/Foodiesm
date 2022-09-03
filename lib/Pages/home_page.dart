import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodiesm/Pages/on_boarding/on_boarding_page.dart';
import 'package:foodiesm/Pages/splash_screen.dart';

import 'package:google_fonts/google_fonts.dart';

import '../data_source/fruit_data.dart';

import '../widgets/food_card.dart';
import 'about.dart';
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
            const DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("assets/images/img.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'Foodiesm',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: const Text('splash'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SplashScreen();
                }));
              },
            ),
            ListTile(
              title: const Text('Setting'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Settings();
                }));
              },
            ),
            ListTile(
              title: const Text('Introduction'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return OnBoardingPage1();
                }));
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return About();
                }));
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
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 10.0),
        //     child: IconButton(
        //       icon: const Icon(
        //         Icons.settings,
        //         size: 29,
        //         color: Colors.black,
        //       ),
        //       onPressed: () {
        //         Navigator.of(context)
        //             .push(MaterialPageRoute(builder: (context) {
        //           return Settings();
        //         }));
        //
        //         // print("clicked");
        //       },
        //     ),
        //   )
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 7),
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
              child: SizedBox(
                height: 650,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
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
