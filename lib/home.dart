import 'package:facebookclone/Widget/belowappbaricon.dart';
import 'package:facebookclone/Widget/friendsuggestion.dart';
import 'package:facebookclone/Widget/post.dart';
import 'package:facebookclone/Widget/smallwidgets/profileimage.dart';
import 'package:facebookclone/Widget/smallwidgets/storyprofile.dart';
import 'package:facebookclone/Widget/statussection.dart';
import 'package:facebookclone/Widget/storysection.dart';
import 'package:facebookclone/Widget/threebuttons.dart';
import 'package:facebookclone/icondartfiles/allicons_icons.dart';
import 'package:facebookclone/icondartfiles/menuicon_icons.dart';
import 'package:facebookclone/icondartfiles/messenger_icons.dart';
import 'package:facebookclone/icondartfiles/my_flutter_app_icons.dart';
import 'package:facebookclone/icondartfiles/myicons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icondartfiles/myicons_icons.dart';

class Homescreen extends StatelessWidget {
  final Widget thindivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget thickdivider = Divider(
    thickness: 8,
    color: Colors.grey[300],
  );

  Widget myappbarbuttons({
    Icon myicon,
    void Function() todo,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, right: 7),
      decoration:
          BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
      child: IconButton(
        icon: myicon,
        padding: EdgeInsets.all(2),
        onPressed: todo,
        color: Colors.black,
        iconSize: 25,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            "facebook",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.blueAccent,
                fontFamily: "facebookfont",
                fontSize: 28),
          ),
          actions: [
            myappbarbuttons(
              myicon: Icon(Icons.search_rounded),
              todo: () {
                print("search clicked");
              },
            ),
            myappbarbuttons(
              myicon: Icon(Messenger.facebook__1_),
              todo: () {
                print("chat clicked");
              },
            ),
            SizedBox(
              width: 8,
            ),
          ],
          bottom: TabBar(
            isScrollable: false,
            tabs: [
              Tabbuttons(
                buttonicons: Icons.home,
                iconsize: 32,
                buttoncolor: Colors.blueAccent,
              ),
              Tabbuttons(
                buttonicons: MyFlutterApp.users,
                iconsize: 25,
                buttoncolor: Colors.black54,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Tabbuttons(
                  buttonicons: Allicons.noun_watch_3874055,
                  iconsize: 45,
                  buttoncolor: Colors.black45,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Tabbuttons(
                  buttonicons: Allicons.noun_groups_3874047,
                  iconsize: 45,
                  buttoncolor: Colors.black54,
                ),
              ),
              Tabbuttons(
                buttonicons: Myicons.bell,
                iconsize: 24,
                buttoncolor: Colors.black54,
              ),
              Tabbuttons(
                buttonicons: Menuicon.menu,
                iconsize: 30,
                buttoncolor: Colors.black54,
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Scaffoldbody(),
            thindivider,
            Threebuttons(),
            thickdivider,
            StorySection(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .04,
              margin: EdgeInsets.only(left: 6, right: 6, bottom: 6),
              child: FlatButton(
                onPressed: () {},
                //shape: StadiumBorder(),

                color: Colors.lightBlue[50],
                child: Text(
                  "Show All Stories",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            thickdivider,
            Post(
              postcaption: false,
              caption: "Bright day",
              likedpeople: "Jason Mamoa and 1M others",
              profilename: "Ryan Renolds",
              postprofile: "assets/image/ryanpro.jpg",
              time: "1d",
              postimage: "assets/image/ryan.png",
              comments: "50K comments",
            ),
            thickdivider,
            Post(
              postcaption: false,
              caption: "Badass",
              profilename: "Eminem",
              postprofile: "assets/image/eminempro.jpg",
              time: "4h",
              postimage: "assets/image/eminem.jpg",
              likedpeople: "Mark Wahlberg and 80k others",
              comments: "2K comments",
            ),
            thickdivider,
            Post(
              postcaption: true,
              caption: "Bright day",
              likedpeople: "Ryan Renolds and 1M others",
              profilename: "Jason Mamoa",
              postprofile: "assets/image/jasonmamoa.jpg",
              time: "1w",
              postimage: "assets/image/jasonmamoapro.jpg",
              comments: "15K shares",
            ),
            thickdivider,
            FriendSuggestion(),
            thickdivider,
            Post(
              postcaption: true,
              caption: "Badass",
              profilename: "Tom Hardy",
              postprofile: "assets/image/tomhardyprofile.jpg",
              time: "4h",
              postimage: "assets/image/tomhardystory.jpg",
              likedpeople: "Mark Wahlberg and 80k others",
              comments: "2K comments",
            ),
            Post(
              likedpeople: "Jason Mamoa and 1M others",
              profilename: "Jason Statham",
              postprofile: "assets/image/jasonstathamprofile.png",
              time: "4h",
              postimage: "assets/image/jasonstatham.jpg",
              comments: "1K comments",
            ),
            thickdivider
          ],
        ),
      ),
    );
  }
}
