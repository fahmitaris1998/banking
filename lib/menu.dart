import 'package:banking/widget/cardlistmenu.dart';
import 'package:flutter/material.dart';

import 'data/data.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
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
                      child: Text("Menu",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.0,color: Colors.white.withOpacity(0.95,)),textAlign: TextAlign.center,),
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
          SizedBox(height: 35.0,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Image(image: ExactAssetImage('assets/foto.png')),
                SizedBox(width: 15.0,),
                Expanded(child: Text("Hello , Vicky Jonas",style: TextStyle(color: Color.fromRGBO(35,39,77,0.95),fontSize: 18.0,fontWeight: FontWeight.w500),),)
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemCount: datamenu.length,
                  itemBuilder: (context,index){
                    return Cardlistmenu(image: datamenu[index]["image"],title: datamenu[index]["title"],);
                  }
              ),
            ),
          )
        ],
      ),
    );
  }
}
