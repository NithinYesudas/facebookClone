import 'package:facebookclone/Widget/smallwidgets/friendcard.dart';
import 'package:flutter/material.dart';

class FriendSuggestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .045,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "People you may know",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.more_horiz_sharp),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .55,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [

                FriendCard(mutualfriends: "26",
                  name: "Dave Batista",
                frontimage: "batista.jpg",),




                FriendCard(mutualfriends: "54",
                  name: "John Cena",
                  frontimage: "john.jpg",),
                FriendCard(mutualfriends: "26",
                  name: "Jeff Bezos",
                  frontimage: "jeffbezos.jpg",),
                FriendCard(mutualfriends: "54",
                  name: "Bill Gates",
                  frontimage: "billgates.jpg",),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
