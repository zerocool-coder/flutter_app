import 'package:flutter_app/helpers/network.dart';
import 'package:flutter_app/models/post_model.dart';
import 'package:flutter_app/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostFacebook extends StatefulWidget {
  String? email;
  PostFacebook(this.email);

  @override
  State<PostFacebook> createState() => _PostFacebookState();
}

class _PostFacebookState extends State<PostFacebook> {
  List? listofposts;
  dynamic _secondListofposts;
  @override
  void initState(){
  super.initState();
  listofposts =  [
  PostModel(
  username: 'Ahmed',
  image: 'https://www.tvyayinakisi.com/wp-content/uploads/2021/06/Ayca-Aysin-Turan-2-1024x682.jpg',
  totalLikes:10,
  totalShares:20,
  totalComments: 30,
  date: '15 mins ago',
  text: 'Hello world, I am Ahmed'),
  PostModel(
  username: 'sherif',
  image: 'https://www.tvyayinakisi.com/wp-content/uploads/2021/06/Ayca-Aysin-Turan-2-1024x682.jpg',
  totalLikes:20,
  totalShares:30,
  totalComments: 40,
  date: '20 mins ago',
  text: 'Hello world, I am sherif'),
  PostModel(
  username: 'Amgad',
  image: 'https://www.tvyayinakisi.com/wp-content/uploads/2021/06/Ayca-Aysin-Turan-2-1024x682.jpg',
  totalLikes:  10,
  totalShares: 20,
  totalComments:30,
  date:'30 mins ago',
  text: 'Hello world, I am Amgad'),
  PostModel(
  username: 'Lara',
  image:'https://www.tvyayinakisi.com/wp-content/uploads/2021/06/Ayca-Aysin-Turan-2-1024x682.jpg',
  totalLikes: 10,
  totalShares:20,
  totalComments: 30,
  date: '40 mins ago',
  text: 'Hello world, I am Lara')];
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello, ${widget.email} "),
            ),
            body: ListView.builder(
                itemCount: listofposts!.length,
                itemBuilder: (context, index) {
                  return Postwidget(postModel: listofposts![index]);
                })));
  }
}
