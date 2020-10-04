import 'dart:async';

import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:simpleBadge/badge_icon.dart';
import 'dart:math' as m;

class SimpleBadge extends StatefulWidget {
  final Widget child;

  const SimpleBadge({Key key, this.child}) : super(key: key);

  @override
  _SimpleBadgeState createState() => _SimpleBadgeState();
}

class _SimpleBadgeState extends State<SimpleBadge> {
  //region ---------Fields-----------

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
        final maxPadding =(constraints.maxWidth/2 * m.sqrt2)/2;

        double pading = maxPadding - 30;

        if(pading>  maxPadding)
          pading =maxPadding;

        return Container(
          height: constraints.maxWidth,
          width: constraints.maxWidth,
          child: Stack(
//        alignment: Alignment(1,1),
            children: [
              Align(
                child: Container(
                  margin: EdgeInsets.only(top: pading, left: pading),
                  child: BadeIcon(),
                ),
                alignment: Alignment.topLeft,
              ),
              Center(
                child: widget.child,
              )
            ],
          ),
        );
      },
    );
  }
//endregion
}

//class SimpleBadge {
//  static const MethodChannel _channel =
//      const MethodChannel('simpleBadge');
//
//  static Future<String> get platformVersion async {
//    final String version = await _channel.invokeMethod('getPlatformVersion');
//    return version;
//  }
//}
