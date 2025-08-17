import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar"),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://imgix.ranker.com/list_img_v2/6828/2746828/original/anime-characters-like-sasuke-uchiha",
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.greenAccent,
            child: Text(
              "A",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage("assets/images/loader.gif"),
          fadeInDuration: Duration(milliseconds: 4000),
          image: NetworkImage(
            "https://imgix.ranker.com/list_img_v2/6828/2746828/original/anime-characters-like-sasuke-uchiha",
          ),
        ),
      ),
    );
  }
}
