import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/screens/wrapper.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:provider/provider.dart';
import 'detail/DetailPage.dart';
import 'screens/login/LoginPage.dart';
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
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: new ThemeData(
          primaryColor: appGrayPinkColor,
        ),
        home: Wrapper(),
      ), //        routes: routes
    );
  }
}
