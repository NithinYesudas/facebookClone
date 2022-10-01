import 'package:facebookclone/icondartfiles/allicons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Threebuttons extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .05,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[FlatButton.icon(
          onPressed: () {},
          icon: Padding(padding: EdgeInsets.only(top: 2),child:Icon(Allicons.video,color: Colors.red,size: 25,),),
          label: Padding(padding: EdgeInsets.only(bottom: 10),child: Text("Live",style: TextStyle(
            color: Colors.grey[800]
          ),),),
          padding: EdgeInsets.only(top: 10),

        ),
          VerticalDivider(thickness: 1,
          width: MediaQuery.of(context).size.height * .02,),
          Padding(padding: EdgeInsets.only(bottom: 5),child: FlatButton.icon(
            onPressed: () {},
            icon: Padding(padding: EdgeInsets.only(left:3,bottom: 20),child:Icon(Allicons.noun_photo_3874106,color: Colors.green,size: 34,),),
            label: Padding(padding: EdgeInsets.only(bottom: 0,right: 5),child: Text("Photos",style: TextStyle(
                color: Colors.grey[800]
            ),),),
            padding: EdgeInsets.only(top: 10),

          ),),
          VerticalDivider(thickness: 1,
            width: MediaQuery.of(context).size.height * .02,),


          FlatButton.icon(
            onPressed: () {},
            icon: Padding(padding: EdgeInsets.only(bottom: 3),child:Icon(Allicons.instagram_reels,color: Colors.blue,size: 20,),),
            label: Padding(padding: EdgeInsets.only(bottom: 3),child: Text("Reels",style: TextStyle(
                color: Colors.grey[800]
            ),),),
            padding: EdgeInsets.only(top: 10),

          ),
        ],
      ),
    );
  }
}
