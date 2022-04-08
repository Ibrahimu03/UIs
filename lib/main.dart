import 'package:flutter/material.dart';
import 'package:jabir/widgets/appbar.dart';
import 'package:jabir/widgets/fourthPage.dart';
import 'package:jabir/widgets/homepage.dart';
import 'package:jabir/widgets/secondPage.dart';
import 'package:jabir/widgets/thirdPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: thirdPage(),
    );
  }
}
