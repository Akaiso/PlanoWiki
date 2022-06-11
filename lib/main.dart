//@dart=2.9


import 'package:flutter/material.dart';
import 'home_page/views/home_page_views.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A beautiful flutter ui design',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage()
    );
  }
}
