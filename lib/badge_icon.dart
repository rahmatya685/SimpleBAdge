import 'package:flutter/material.dart';


class BadeIcon extends StatelessWidget {
//region ---------Fields-----------
  //endregion
  //region ---------Methods-----------

  //endregion
  //region ---------UI-----------

  //endregion
  //region ---------Override-----------
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Text("256",style: TextStyle(color: Colors.white,fontSize: 12),),
      decoration: BoxDecoration(
        boxShadow: [
//          BoxShadow(
//            color: Colors.grey,
//            spreadRadius: 3,
//            blurRadius: 3,
//            offset: Offset.fromDirection(1,-2)
//          )
        ],
        color: Colors.pink,
        borderRadius: BorderRadius.all(Radius.circular(24))
      ),
    );
  }
    //endregion
}
