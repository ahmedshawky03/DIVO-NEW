import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

AppBar myAppBarz({ required String? data}) {

  return AppBar(
    title: Text(
      data!,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
        color: Colors.black,
      ),
    ],
  );
}