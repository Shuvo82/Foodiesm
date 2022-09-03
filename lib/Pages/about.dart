import 'package:flutter/material.dart';

void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
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
                child: Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil error, illum molestiae aliquam quos quae exercitationem dolores labore ullam rem eos delectus maxime voluptatibus ipsam blanditiis. Ut amet voluptatibus obcaecati.",
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
                            onPressed: () => () {},
                          ),
                          IconButton(
                            icon: Image.asset('assets/icons/Instagram.png'),
                            tooltip: 'Closes application',
                            onPressed: () => () {},
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
}
