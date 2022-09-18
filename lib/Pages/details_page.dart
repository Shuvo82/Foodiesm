import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/widgets/my_title.dart';

import '../widgets/about/about_info_text_type.dart';
import '../widgets/about/about_info_text_value.dart';
import '../widgets/food_type.dart';

class DetailsPage extends StatefulWidget {
  final Map? data;

  const DetailsPage({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void initState() {
    super.initState();
    dark_mode_selector();
  }
  bool isDarkModeEnabled = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme:
        const AppBarTheme(color:  Color(0xFF253341)),

        scaffoldBackgroundColor: const Color(0xFF15202B),

      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: const Color(0xffb7fffa),
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
                Icons.favorite_border,
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
                      decoration: BoxDecoration(
                        color: const Color(0xffb7fffa),
                        borderRadius: BorderRadius.circular(15),

                      ),

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
                                  "${widget.data!['name']}",
                                  style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  for (String item in widget.data!['type'])
                                    FoodType(text: item,),

                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 30),
                            child: Text("${widget.data!['id']}",
                                style:
                                    const TextStyle(color: Colors.black, fontSize: 20)),
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
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
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
                                  AboutInfoTextType(text: "Vitamin:"),
                                  AboutInfoTextType(text: "Calorie:"),
                                  AboutInfoTextType(text: "Test:"),
                                  AboutInfoTextType(text: "Calcium:"),
                                  AboutInfoTextType(text: "Iron:"),
                                  AboutInfoTextType(text: "Magnesium:"),
                                  AboutInfoTextType(text: "About:"),
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
                                  AboutInfoTextValue(text: "${widget.data!['vitamins']}"),
                                  AboutInfoTextValue(text: "${widget.data!['calorie']}"),
                                  AboutInfoTextValue(text: "${widget.data!['test']}"),
                                  AboutInfoTextValue(text: "${widget.data!['calcium']}"),
                                  AboutInfoTextValue(text: "${widget.data!['iron']}"),
                                  AboutInfoTextValue(text: "${widget.data!['magnesium']}"),
                                  AboutInfoTextValue(text: "${widget.data!['about']}"),

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
                    tag: "${widget.data!['name']}",
                    child: Image.network(
                      "${widget.data!['img']}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
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
