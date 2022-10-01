import 'package:facebookclone/Widget/smallwidgets/profileimage.dart';
import 'package:flutter/material.dart';

class Scaffoldbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .09,
        width: 100,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Profileimage(profileimage: "assets/image/therock.png", imagewidth: 35, imageheight: 35,radius: 100,),
            SizedBox(width: MediaQuery.of(context).size.width * .8,child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                labelText: "    Write something here...",
                labelStyle: TextStyle(
                  color: Color(0xff272728),
                ),
                contentPadding: EdgeInsets.all(5),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(width: 1, color: Colors.grey[400]),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(width: 1, color: Colors.grey[400])),
              ),
            ),)

          ],
        ));
  }
}
