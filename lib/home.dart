

import 'package:banking/widget/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      child:SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(53, 63, 222,1),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
              ),
              child: Stack(
                children: [
                  Positioned(
                    left:61.0,
                      top: 30.0,
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [
                                  Color.fromRGBO(53, 63, 222, 0),
                                  Color.fromRGBO(255,255, 255, 0.09),
                                ],
                                stops: [0.2, 1.0],
                                begin: FractionalOffset.centerLeft,
                                end: FractionalOffset.centerRight,
                                tileMode: TileMode.repeated
                            ),
                          shape: BoxShape.circle
                        ),
                      )
                  ),
                  Positioned(
                      child:Container(
                        margin: EdgeInsets.only(top:65.0),
                        width: double.infinity,
                        child: Text("Offers & Promotions",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.0,color: Colors.white.withOpacity(0.95,)),textAlign: TextAlign.center,),
                      )
                  ),
                  Positioned(
                      child:Container(
                        margin: EdgeInsets.only(top:60.0,left: 25.0),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.arrow_back_outlined,color: Colors.white.withOpacity(0.7),size: 17,)
                      )
                  )

                ],
              ),
            ),
            SizedBox(height: 45.0,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              padding: EdgeInsets.only(left: 15,right: 22.0,top: 15.0,bottom: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(53, 63, 222, 0.13),
                      spreadRadius: 3,
                      blurRadius:40,
                      offset: Offset(0, 6),
                    )
                  ]
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(53, 63, 222,0.06),
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: Image(image: ExactAssetImage('assets/kado.png'),),
                  ),
                  SizedBox(width: 13.0,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Refer Friends",style: TextStyle(color: Color.fromRGBO(35,39,77, 0.95),fontSize: 16.0,fontWeight: FontWeight.w400),),
                        SizedBox(height: 5.0,),
                        Text("Earn money from every friend",style: TextStyle(color: Color.fromRGBO(35,39,77, 0.4),fontSize: 13.0,fontWeight: FontWeight.w400))

                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Color.fromRGBO( 136,138,177, 1),)
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discounts",style: TextStyle(color: Color.fromRGBO(35,39,77, 0.95),fontSize: 20.0,fontWeight: FontWeight.w400),),
                  Text("View All",style: TextStyle(fontSize: 11.0,color: Color.fromRGBO(53, 63, 222,1),fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              height: 180.0,
              color: Colors.white,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) =>
                    Card1(image: datacard[index]["image"],title1:datacard[index]["title1"] ,title2: datacard[index]["title2"],)
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text("Upgrades",style: TextStyle(color: Color.fromRGBO(35,39,77, 0.95),fontSize: 20.0,fontWeight: FontWeight.w400),)),
            SizedBox(height: 30.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child:
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: ExactAssetImage('assets/bg1.png'),
                            fit: BoxFit.fill
                          )
                        ),

                      )
                    ],
                  )
            )

          ],
        ),
      ),
    );
  }
}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = new Path();
    path.lineTo(0.0, size.height/2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}