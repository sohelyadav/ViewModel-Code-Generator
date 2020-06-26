import 'package:flutter/material.dart';
import 'package:viewmodelcodegen/utils/color.dart';

class CustomButton extends StatelessWidget {
  final Color color ;
  final double width;
  final double height;
  final Function onPressed;
  final Widget child;

  const CustomButton({
    @required this.child,
    Key key,
    this.color=kPrimaryColor,
    this.width = 100.0,
    this.height = 50.0,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child:FlatButton(
        color: color,
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}