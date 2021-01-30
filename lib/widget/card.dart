import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final int idx;
  final String image;
  final String title1;
  final String title2;

  const Card1({Key key, this.idx, this.image, this.title1, this.title2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 200.0),
      child: Container(
        padding: EdgeInsets.only(top: 6.0,left: 25.0,right: 25.0,bottom: 19.0),
        margin: EdgeInsets.only(left: 25.0,top: 10,bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(53, 63, 222, 0.13),
                spreadRadius: 2,
                blurRadius:14,
                offset: Offset(0, 5),
              )
            ]
        ),
        child: Column(
          children: [
            Image(image: ExactAssetImage(image)),
            Text(title1),
            Text(title2)
          ],
        ),

      ),
    );
  }
}
