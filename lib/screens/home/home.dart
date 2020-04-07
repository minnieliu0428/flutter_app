import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/Constants.dart';
import 'package:flutter_app/services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: appPinkGrayColor,
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: appPinkColor,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('Logout'))
          ],
        ),
      ),
    );
  }
}
