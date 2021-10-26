import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'Signup_Page.dart';
import 'facebook_post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home:SignupPage());
            //PostFacebook(),

            //LoginPage()

  }
}
