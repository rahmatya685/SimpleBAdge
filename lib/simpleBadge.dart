import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:simpleBadge/badge_icon.dart';
import 'dart:math' as m;

class SimpleBadge extends StatefulWidget {
  final Widget child;
  final Widget badgeContent;
  final int anchorDist;
  final Alignment alignment;
  final double width;
  final double height;
  final Color badgeColor;
  final bool showBadge;
  final Color borderColor;
  final double borderWidth;

  final double badgeIconPadding;

  const SimpleBadge(
      {Key key,
      this.child,
      this.anchorDist = 0,
      this.badgeContent,
      this.badgeIconPadding = 2,
      this.alignment = Alignment.topLeft,
      this.width = 48,
      this.height = 48,
      this.showBadge = true,
      this.badgeColor = Colors.red, this.borderColor, this.borderWidth = 1})
      : assert(child != null),
        assert(alignment != null),
        assert(badgeColor != null),
        assert(width != null),
        assert(height != null),
        super(key: key);

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
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxPadding = (constraints.maxWidth / 2 * m.sqrt2) / 2;

          double pading = maxPadding - widget.anchorDist;

          if (pading > maxPadding) pading = maxPadding;

          if (pading < 0) pading = 0;

          var edgeInsets = EdgeInsets.only(
            top: pading,
            left: pading,
          );
          if (widget.alignment == Alignment.centerLeft)
            edgeInsets = EdgeInsets.all(0);
          if (widget.alignment == Alignment.centerLeft)
            edgeInsets = EdgeInsets.only(left: pading);
          if (widget.alignment == Alignment.centerRight)
            edgeInsets = EdgeInsets.only(right: pading);
          if (widget.alignment == Alignment.topCenter)
            edgeInsets = EdgeInsets.only(top: pading);
          if (widget.alignment == Alignment.bottomCenter)
            edgeInsets = EdgeInsets.only(bottom: pading);
          if (widget.alignment == Alignment.topLeft)
            edgeInsets = EdgeInsets.only(top: pading, left: pading);
          if (widget.alignment == Alignment.topRight)
            edgeInsets = EdgeInsets.only(top: pading, right: pading);
          if (widget.alignment == Alignment.bottomRight)
            edgeInsets = EdgeInsets.only(top: pading, right: pading);

          if (widget.alignment == Alignment.bottomLeft)
            edgeInsets = EdgeInsets.only(top: pading, left: pading);

          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: Stack(
              children: [
                Center(
                  child: widget.child,
                ),
                Align(
                  child: Container(
                    margin: edgeInsets,
                    child: Visibility(
                      visible: widget.showBadge,
                      child: BadeIcon(
                        borderColor: widget.borderColor,
                        borderWidth: widget.borderWidth,
                        badgeColor: widget.badgeColor,
                        child: widget.badgeContent,
                        badePadding: widget.badgeIconPadding,
                      ),
                    ),
                  ),
                  alignment: widget.alignment,
                )
              ],
            ),
          );
        },
      ),
    );
  }
//endregion
}
