import 'package:facebookclone/Widget/smallwidgets/profileimage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FriendCard extends StatelessWidget {
  String frontimage, name, mutualfriends;
  FriendCard({@required this.mutualfriends,
  this.name,
    this.frontimage
});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 5),
      height: MediaQuery.of(context).size.height * .55,
      width: MediaQuery.of(context).size.width * .7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 1, color: Colors.grey[300])),
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * .33,
              width: MediaQuery.of(context).size.width * .7,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  "assets/image/" + frontimage,
                  fit: BoxFit.cover,
                ),
              )),
          ListTile(
            tileColor: Colors.white,
            title: Text(name,style: TextStyle(
              fontSize: 18
            ),),
            subtitle: Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Stack(
                    children: [
                      Profileimage(
                        imageheight: 20,
                        imagewidth: 20,
                        profileimage: "assets/image/tomhardyprofile.jpg",
                        radius: 30,
                      ),
                      Positioned(
                        child: Profileimage(
                          imageheight: 20,
                          imagewidth: 20,
                          profileimage: "assets/image/jasonstathamprofile.png",
                          radius: 30,
                        ),
                        left: 15,
                      )
                    ],
                  ),
                ),
                Text(mutualfriends + "mutual friends")
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: FlatButton.icon(
                    onPressed: () {},
                    shape: StadiumBorder(),
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 20,
                    ),
                    padding: EdgeInsets.only(bottom: 10,top: 10,left: 5,right: 5),
                    label: Text(
                      "Add friend",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue[700],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: FlatButton(
                    padding: EdgeInsets.only(bottom: 12,top: 12,left: 5,right: 5),
                    onPressed: (){},
                    shape: StadiumBorder(),
                    child: Text(
                      "Remove"
                    ),
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
