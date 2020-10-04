import 'package:flutter/material.dart';

class BadeIcon extends StatelessWidget {
//region ---------Fields-----------
  final Widget child;
  final double badePadding;
  final Color badgeColor;
  final Color borderColor;
  final double borderWidth;

  const BadeIcon({Key key, this.child, this.badePadding, this.badgeColor, this.borderColor, this.borderWidth})
      : assert(child != null),
        super(key: key);

  //endregion
  //region ---------Methods-----------

  //endregion
  //region ---------UI-----------

  //endregion
  //region ---------Override-----------
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.all(badePadding),
          child: SizedBox(
            child: child,
          ),
          decoration: BoxDecoration(
            boxShadow: [
//          BoxShadow(
//            color: Colors.grey,
//            spreadRadius: 3,
//            blurRadius: 3,
//            offset: Offset.fromDirection(1,-2)
//          )
            ],
            color: badgeColor,
            shape: BoxShape.circle,
            border:borderColor != null ? Border.all(color: borderColor,width:borderWidth): null
          ),
        );
      },
    );
  }
//endregion
}
