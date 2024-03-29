import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data_source/fruit_data.dart';
import '../data_source/vegetable_data.dart';
import '../widgets/food_card.dart';
import 'setting.dart';
import 'about.dart';


class HomePage extends StatefulWidget {
  @override
  static List<Map?>? FruitData = FruitDataSource.fruits;
  static List<Map?>? VegetableData = VegetableDataSource.vegetables;
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void initState() {
    //bool isSingleModeEnabled = false;
    super.initState();

    dark_mode_selector();
    single_mode_selector();
  }
  bool isDarkModeEnabled = false;
  bool isSingleModeEnabled = false;
  int rrrr=3;


  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize:30, fontWeight: FontWeight.w600);



  static final List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 7),
              child: Text(
                "Fruits",
                style: TextStyle(
                  fontSize: 30,

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
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: HomePage.FruitData!.length,
                itemBuilder: (context, index) {
                  return FoodCard(
                    // name: HomePage.FoodData![index]!["name"],
                    // image: HomePage.FoodData![index]!["image"],
                    // num: HomePage.FoodData![index]!["num"],
                    // types: HomePage.FoodData![index]!["types"],

                    food_map: HomePage.FruitData![index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ),

    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 7),
              child: Text(
                "vegetables",
                style: TextStyle(
                  fontSize: 30,

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
                itemCount: HomePage.VegetableData!.length,
                itemBuilder: (context, index) {
                  return FoodCard(
                    // name: HomePage.FoodData![index]!["name"],
                    // image: HomePage.FoodData![index]!["image"],
                    // num: HomePage.FoodData![index]!["num"],
                    // types: HomePage.FoodData![index]!["types"],

                    food_map: HomePage.VegetableData![index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ),
    const Text(
      'Vegetables are hidden!',
      style: optionStyle,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color:  Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),

      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        //backgroundColor: Colors.white,
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
                title: const Text('Setting'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {return Settings();}));
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
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          title:  const Center(
            child: Text(
              "Foodiesm",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          actions: const [
            Text("   "),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,

        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs:  [
                  GButton(
                    icon: LineIcons.fruitApple,
                    text: 'Fruits',
                  ),
                  GButton(
                    icon: Icons.kebab_dining,
                    text: 'Vegetables',
                  ),

                  // GButton(
                  //   icon: LineIcons.heart,
                  //   text: 'Favourite',
                  // ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    if(isSingleModeEnabled){
                      if(index==1){
                        index = 2;
                      }
                      else{
                        index = index;
                      }
                    }
                    else{
                      index = index;
                    }
                    //index==1?index=2:index=index;


                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
  dark_mode_selector() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool dark_mode = (prefs.getBool('isDarkModeEnabled') ?? false);
    print(dark_mode);
    if (dark_mode) {
      setState(() {
        isDarkModeEnabled = true;
      });
    } else {
      setState(() {
        isDarkModeEnabled = false;
      });
    }
  }

  single_mode_selector() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool single_mode = (prefs.getBool('single_mode') ?? false);
    print(single_mode);
    if (single_mode) {
      setState(() {
        isSingleModeEnabled = true;
      });
    } else {
      setState(() {
        isSingleModeEnabled = false;
      });
    }
  }

}