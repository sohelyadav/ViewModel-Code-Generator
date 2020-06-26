import 'package:flutter/material.dart';

import '../../utils/color.dart';

AppBar appBar(String title,
    {Color backgroundColor = kPrimaryColor,
    double elevation = 8.0,
    Widget widget,
    Color titleColor = kWhite,
    bool automaticallyImplyLeadingValue = true,
      bool showEditButton = false}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(color: titleColor),
    ),
    centerTitle: true,
    elevation: elevation,
    backgroundColor: backgroundColor,
    automaticallyImplyLeading: automaticallyImplyLeadingValue,
    actions: <Widget>[
      Visibility(
          visible: showEditButton,
          child: widget == null ? Container() : widget)
    ],

  );
}
