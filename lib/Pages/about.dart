import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(About());

class About extends StatefulWidget {
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void initState() {
    super.initState();
    dark_mode_selector();
  }

  bool isDarkModeEnabled = false;


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

      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
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
          title: const Center(
            child: Text(
              'About',
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/food.png'),
                fit: BoxFit.fill,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Foodiesm is a food information app. In this app you see many kinds of fruits and vegetables nutrition value and other information. ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff49D0B0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [Color(0xffB7F8DB), Color(0xffECFCFF)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Our Social Group",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            iconSize: 18.0,
                            icon: Image.asset(
                              'assets/icons/facebook.png',
                              height: 90,
                              width: 90,
                            ),
                            tooltip: 'Closes application',
                            onPressed: () => Uri(
                                scheme: 'https',
                                host: 'www.facebook.com',
                                path: 'facebook.com'),

                            //Uri.parse('https://www.facebook.com/sohorafuzzaman.shuvo'),

                          ),
                          IconButton(
                            icon: Image.asset('assets/icons/Instagram.png'),
                            tooltip: 'Closes application',
                            onPressed: () => Uri.parse('https://www.instagram.com/__sohoraf__/'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: const Color(0xffd9b221), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [Color(0xffFEFAEB), Color(0xffECFCFF)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Developed by",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          Column(
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/images/shuvo.jpg'),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text("Shuvo",
                                  style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ]
                          ),
                          Column(
                              children: const [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/rownok.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text("Rownok",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                              ]
                          ),
                          Column(
                              children: const [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/maliha.jpg'),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text("Maliha",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                              ]
                          ),


                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
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
}
