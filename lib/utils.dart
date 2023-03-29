import 'package:flutter/material.dart';

String appName = 'SciClubs';
TextStyle h3 = const TextStyle(
    color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500);
TextStyle h2 = const TextStyle(
    color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500);
TextStyle h4 = const TextStyle(
    color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500);

Color grey = const Color(0xff36363D);
Color black = const Color(0xff121212);
Color green = const Color(0xff1BD760);

PreferredSizeWidget? nav(String title) {
  return AppBar(
    // foregroundColor: Colors.grey[700],
    elevation: 1,
    backgroundColor: Colors.black,
    title: Text("$title",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    centerTitle: true,
  );
}
