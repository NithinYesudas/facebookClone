import 'package:flutter/material.dart';
class Profileimage extends StatelessWidget {
String profileimage;
double imagewidth, imageheight,radius ;
Profileimage({this.imageheight,this.imagewidth,this.profileimage,this.radius});



  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        profileimage,
        width: imagewidth,
        height: imageheight,
      ),
    );
  }
}
