import 'package:flutter/material.dart';

import 'confirguration.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blueGrey.shade300,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          )),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(90),
            child: Align(
                alignment: Alignment.topCenter,
                child: Hero(
                  tag: 1,
                  child: Image.asset('assets/pat-dog2.png'),
                )),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        color: PrimaryGreen,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                      child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: PrimaryGreen,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              ' Adoption',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )))
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
          ),
        ],
      ),
    );
  }
}
