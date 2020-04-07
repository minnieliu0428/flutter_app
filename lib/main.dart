import 'package:flutter/material.dart';
import 'detail/DetailPage.dart';
import 'login/LoginPage.dart';
import 'helpers/Constants.dart';

void main() => runApp(MyCalendarApp());

class MyCalendarApp extends StatelessWidget {
  // This widget is the root of your application.

  final routes = <String, WidgetBuilder>{
    loginPageTag: (context) => LoginPage(),
    detailPageTag: (context) => DetailPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: new ThemeData(
          primaryColor: appGrayPinkColor,
        ),
        home: LoginPage(),
        routes: routes
    );
  }
}
