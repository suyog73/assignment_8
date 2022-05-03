// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContextScreen extends StatelessWidget {
  const ContextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "Pop-Up Menu",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: ,
            itemBuilder: (context, idx) {
            return ListTile(title:,);
          },),
        ],
      ),
    );
  }
}
