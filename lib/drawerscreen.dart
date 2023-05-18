import 'package:flutter/material.dart';

import 'confirguration.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: PrimaryGreen,
      padding: const EdgeInsets.only(top: 50, bottom: 30, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/mypic.jpg'),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mitul Sudani ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text('Active Status ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('settings',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 10,
              ),
              Container(width: 2, height: 20, color: Colors.white),
              const SizedBox(
                width: 10,
              ),
              const Text('Log Out ',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
