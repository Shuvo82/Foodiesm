import 'package:flutter/material.dart';

void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                child: Text(
                    " Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil error, illum molestiae aliquam quos quae exercitationem dolores labore ullam rem eos delectus maxime voluptatibus ipsam blanditiis. Ut amet voluptatibus obcaecati.",
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
}
