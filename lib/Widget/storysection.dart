import 'package:facebookclone/Widget/smallwidgets/storyprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .272,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .272,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            height: MediaQuery.of(context).size.height * .17,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Image.asset(
                                "assets/image/therock.png",
                                fit: BoxFit.cover,
                              ),
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * .0726,
                            width: MediaQuery.of(context).size.width * .3,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("Create story"),
                            ),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            )),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .096),child: Align(
                      alignment: Alignment.center,
                      child:
                      Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,

                        ),
                        child: FlatButton(
                          onPressed: () {},
                          color: Colors.blueAccent,
                          child: Icon(
                            Icons.add_outlined,
                            color: Colors.white,
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),)

                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              StoryProfile(storyimage: "jason.jpg", profileimage: "jasonstathamprofile.png",name: "Jason Statham",),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              StoryProfile(profileimage: "tomhardyprofile.jpg",storyimage: "tom.jpg",name: "Tom Hardy",),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              StoryProfile(profileimage: "therock.png",name: "The Rock",storyimage: "rock.jpg",),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              StoryProfile(storyimage: "jason.jpg", profileimage: "jasonstathamprofile.png",name: "Jason Statham",),
            ],
          ),
        ));
  }
}
