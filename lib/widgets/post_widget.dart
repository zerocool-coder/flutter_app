import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/post_model.dart';
import 'package:flutter_app/screens/Signup_Page.dart';

class Postwidget extends StatefulWidget {
  PostModel?  postModel;
  Postwidget({Key? key, this.postModel}) : super(key: key);

  @override
  State<Postwidget> createState() => _PostwidgetState();
}

class _PostwidgetState extends State<Postwidget> {
  String name = 'Jessica';

  String date = '15 minutes ago';

  String post = 'a new day has come';

  String totalLikes = '13 Likes';

  String image='Aisha.jpg';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
                backgroundImage:NetworkImage(widget.postModel!.image!)),
            title: Text(
              widget.postModel!.username!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.postModel!.date!),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.postModel!.text!, style: TextStyle(fontSize: 18)),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.postModel!.totalLikes!.toString(), style: TextStyle(fontSize: 14)),
          ),
          SizedBox(height: 8),
          Divider(),
          Container(
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  TextButton.icon(
                      label: Text('Like'),
                      icon: Icon(Icons.thumb_up),
                      onPressed: () {}),
                  TextButton.icon(
                      label: Text('comment'),
                      icon: Icon(Icons.comment_rounded),
                      onPressed: () {}),
                  TextButton.icon(
                      label: Text('share'),
                      icon: Icon(Icons.share),
                      onPressed: () {}),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
