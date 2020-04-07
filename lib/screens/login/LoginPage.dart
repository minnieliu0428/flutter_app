import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/Constants.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }

}

class _LoginPageState extends State<LoginPage> {

  final _accountController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    final logo = CircleAvatar(
      backgroundColor: appPinkColor,
      radius: bigRadius,
      child: appLogo,
    );

    final account = TextFormField(
      controller: _accountController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,  //鍵盤動作(一般在右下角，默認是完成)
      maxLines: 1,
      maxLength: 16,
      maxLengthEnforced: true,
      //配合maxLength一起使用，在達到最大長度時是否阻止輸入
      autofocus: false,
      decoration: InputDecoration(
        labelText: accountText,
        labelStyle: TextStyle(
          color: appGrayPinkColor,
          fontSize: 20,
        ),
        prefixIcon: Icon(Icons.perm_identity),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(
            color: appGrayPinkColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(
            color: appGrayPinkColor,
            width: 3,
          ),
        ),
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );

    final password = TextFormField(
      controller: _passwordController,
      keyboardType: TextInputType.text,
      obscureText: _isHidden,  //是否隱藏輸入的文字
      maxLines: 1,
      maxLength: 16,
      maxLengthEnforced: true,
      autofocus: false,
      decoration: InputDecoration(
        labelText: passwordText,
        labelStyle: TextStyle(
          color: appGrayPinkColor,
          fontSize: 20,
        ),
        prefixIcon: Icon(Icons.lock),
        //輸入框前方
        suffixIcon: IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(
            color: appGrayPinkColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(
            color: appGrayPinkColor,
            width: 3,
          ),
        ),
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: appPinkColor,
        child: Text(loginButtonText, style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );

    return Scaffold(
      backgroundColor: appPinkGrayColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: bigRadius),
            account,
            SizedBox(height: spaceHeight),
            password,
            SizedBox(height: buttonHeight),
            loginButton
          ],
        ),
      ),
    );
  }
}
