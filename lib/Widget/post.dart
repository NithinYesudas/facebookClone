import 'package:facebookclone/Widget/smallwidgets/profileimage.dart';
import 'package:facebookclone/icondartfiles/allicons_icons.dart';
import 'package:facebookclone/icondartfiles/comment_icons.dart';
import 'package:facebookclone/icondartfiles/likebutton_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  String profilename, postprofile, time, postimage, likedpeople, comments, caption;
  bool postcaption;
  Widget needcaption(){

    if(postcaption == true){
      return
      Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 30,
          width: 200,
          child: Padding(padding: EdgeInsets.only(left: 15),
          child: Text(caption,style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600
          ),),)

        ),
      );
    }
    else{
      return
      SizedBox(
      );
    }
  }

  Post(
      {@required this.profilename,
      @required this.postprofile,
      @required this.time,
      this.likedpeople,
        this.caption,
        this.postcaption,
      this.comments,
      @required this.postimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * .859,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.white,
            leading: Profileimage(
              imagewidth: 37,
              imageheight: 37,
              profileimage: postprofile,
              radius: 50,
            ),
            title: Row(
              children: [
                Text(
                  profilename,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.verified,
                  color: Colors.blueAccent,
                  size: 20,
                )
              ],
            ),
            trailing: IconButton(splashColor: Colors.grey,icon: Icon(Icons.more_horiz_sharp),onPressed: (){},padding: EdgeInsets.only(left: 15),),
            subtitle: Row(
              children: [
                Text(time),
                Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(Icons.circle, size: 5, color: Colors.grey[600]),
                ),
                Icon(Icons.settings, size: 15, color: Colors.grey[600])
              ],
            ),
          ),
          needcaption(),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            child: Image.asset(
              postimage,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .04,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(top: 8, bottom: 4, left: 8),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blueAccent),
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: 5, left: 10, right: 10, top: 2.5),
                      child: Icon(
                        Likebutton.thumbs_up_alt,
                        size: 8,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    likedpeople,
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                  Text(comments)
                ],
              ),
            ),
          ),
          Divider(thickness: .5,
            color: Colors.grey[300],),
          Container(
            height: MediaQuery.of(context).size.height * .04,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                    splashColor: Colors.blueAccent,
                    onPressed: (){},
                    icon: Icon(
                      Allicons.like,
                      size: 17,
                        color: Colors.black87
                    ),
                    label: Text("Like",
                      style: TextStyle(
                          color: Colors.black45,

                      ),)),
                FlatButton.icon(
                  splashColor: Colors.blueAccent,
                    onPressed: () {},
                    icon: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Icon(
                          Comment.chat,
                          color: Colors.black87,
                          size: 17,
                        )),
                    label: Text("Comment",
                      style: TextStyle(
                          color: Colors.black54
                      ),)),
                FlatButton.icon(
                    splashColor: Colors.blueAccent,
                    onPressed: () {},
                    icon: Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Icon(
                        Allicons.noun_share_3943829,
                        size: 25,
                        color: Colors.black38,
                      ),
                    ),
                    label: Text("Share",
                    style: TextStyle(
                      color: Colors.black45
                    ),))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
