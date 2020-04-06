import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'helpers/Constants.dart';

void main() => runApp(MyCalendarApp());

class MyCalendarApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: new ThemeData(
          primaryColor: appGrayPinkColor,
        ),
        home: LoginPage());
  }
}
