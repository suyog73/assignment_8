// ignore_for_file: prefer_const_constructors

import 'package:assignment_8/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

class PopUpScreen extends StatelessWidget {
  const PopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Pop-Up Menu",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PopupMenuButton(
              key: _key,
              onSelected: (int idx) async {
                // print(colors[idx]);
                Fluttertoast.showToast(
                  msg: "You clicked: ${colors[idx].toString()}",
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.greenAccent, width: 2),
                ),
                child: Text(
                  "Click Me",
                  style: TextStyle(fontSize: 23),
                ),
              ),
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(
                    child: MyMenuItem(
                      name: "Red",
                      color: Colors.redAccent,
                    ),
                    value: 0,
                  ),
                  PopupMenuItem(
                    child: MyMenuItem(
                      name: "Yellow",
                      color: Colors.yellowAccent,
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: MyMenuItem(
                      name: "Purple",
                      color: Colors.purpleAccent,
                    ),
                    value: 2,
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenuItem extends StatelessWidget {
  const MyMenuItem({Key? key, required this.name, required this.color})
      : super(key: key);
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        name,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
