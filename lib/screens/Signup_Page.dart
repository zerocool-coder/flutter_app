import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'post_widget.dart';
import 'facebook_post.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add_shopping_cart),
          backgroundColor: Colors.green,
          title: Text('myapp'),
          actions: [
            IconButton(
                onPressed: () {
                  print('hello');
                },
                icon: Icon(Icons.add_a_photo_outlined))
          ],
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            height: 500,
            width: 700,
            child: Column(
              children: [
                TextFormField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'enter your email',
                    suffixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility),
                      helperText: 'must be 8 character',
                      prefixIcon: Icon(Icons.lock)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostFacebook(_email.text)),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
