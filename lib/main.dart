import 'package:flutter/material.dart';
import 'package:quotes_app/screen/home_page.dart';
import 'package:quotes_app/widget/menu_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menuBar(),
      body: HomePage(),
    );
  }
}
