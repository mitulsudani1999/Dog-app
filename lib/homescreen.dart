import 'package:flutter/material.dart';
import 'package:project_v/confirguration.dart';

import 'screen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      duration: const Duration(milliseconds: 250),
      color: Colors.grey.shade200,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: const Icon(Icons.arrow_back_ios_new),
                          onPressed: () {
                            setState(() {
                              xoffset = 0;
                              yoffset = 0;
                              scalefactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xoffset = 200;
                              yoffset = 150;
                              scalefactor = 0.6;
                              isDrawerOpen = true;
                            });
                          }),
                  const Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: PrimaryGreen,
                          ),
                          Text(' Rasiya '),
                        ],
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/mypic.jpg'),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search),
                    Text('Seach pet to adopt '),
                    Icon(Icons.settings),
                  ]),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('assets/dog.png'),
                        height: 70,
                        width: 70,
                      ),
                      const Text('   dogs')
                    ],
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Screen2()));
              },
              child: Container(
                height: 240,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.cyan.shade100,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: const EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                                tag: 1,
                                child: Image.asset('assets/pat-dog2.png')),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList,
                          ),
                          margin: const EdgeInsets.only(top: 50),
                        ),
                        Align(
                          child: Image.asset('assets/pat-dog3.png'),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(top: 60, bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: shadowList,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
