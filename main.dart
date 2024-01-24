import 'package:flutter/material.dart';
import 'Home.dart';
void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(

        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'bord',
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'bord',
          ),
        ),

        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff809258)
        ),

      ),
      home: CollapsingAppbarPage(),
    );
  }
}