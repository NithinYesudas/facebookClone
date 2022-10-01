import 'package:facebookclone/Widget/smallwidgets/profileimage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryProfile extends StatelessWidget {
  String storyimage, profileimage, name;

  StoryProfile({this.profileimage, this.storyimage, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .272,
      width: MediaQuery.of(context).size.width * .3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            "assets/image/" + storyimage,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Positioned(
            left: 8,
            top: 8,
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.blueAccent)),
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Profileimage(
                    imagewidth: 35,
                    imageheight: 35,
                    radius: 100,
                    profileimage: "assets/image/" + profileimage,
                  ),
                ))),
      ]),
    );
  }
}
