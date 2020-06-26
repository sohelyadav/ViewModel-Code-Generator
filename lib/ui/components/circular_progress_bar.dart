import 'package:flutter/material.dart';
import 'package:viewmodelcodegen/utils/color.dart';

SizedBox showProgressBar({Color indicatorColor = kWhite}) {
 return SizedBox(
    height: 20,
    width: 20,
    child: CircularProgressIndicator(
      strokeWidth: 2,
      valueColor: new AlwaysStoppedAnimation<Color>(indicatorColor),
    ),
  );
}
