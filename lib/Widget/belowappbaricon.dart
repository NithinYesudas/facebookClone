import 'package:flutter/material.dart';
class Tabbuttons extends StatelessWidget {
  final IconData buttonicons;
  final Color buttoncolor;
  final double iconsize;
  Tabbuttons({
    this.iconsize,
    this.buttonicons,
    this.buttoncolor
});


  @override
  Widget build(BuildContext context) {
    return
    Tab(
    icon: Icon(buttonicons,color: buttoncolor,size: iconsize,),
    );

  }
}
