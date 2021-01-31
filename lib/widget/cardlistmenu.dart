import 'package:flutter/material.dart';

class Cardlistmenu extends StatelessWidget {
  final String image;
  final String title;

  const Cardlistmenu({Key key, this.image, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 17.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(13.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(53,63,222, 0.06),
              shape: BoxShape.circle
            ),
            child: Image(image: ExactAssetImage(image),),
          ),
          SizedBox(width: 17.0,),
          Expanded(child: Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0,color: Color.fromRGBO(35,39,77,0.95)),)),
          Icon(Icons.arrow_forward_ios_rounded,size: 20.0,)
        ],
      ),
    );
  }
}
