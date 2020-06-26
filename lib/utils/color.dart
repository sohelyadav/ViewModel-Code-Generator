import 'package:flutter/material.dart';

//App color
const kPrimaryColor = const Color(0xFF00a2b1);
const kPrimaryDarkColor = const Color(0xFF4c35ca);
const kPrimaryLightColor = const Color(0xFFa78cf6);
const kSecondaryColor = const Color(0xFF47b9f4);
const kCanvasColor = const Color(0xFFFAFAFA);

//text color
const kTextPrimaryColor = const Color(0xFF000000);
const kTextSecondaryColor = const Color(0xFF6D6E71);

//Info color
const kErrorRed = const Color(0xFFec4949);
const kDisableColor = const Color(0xFFec4949);
const kSuccessGreen = const Color(0xFF50b963);
const kWarningYellow = const Color(0xFFfbaf63);

//common color
const kWhite = Colors.white;
const kBlack = Colors.black;

const kDividerColor = const Color(0xFF6d6f72);
const kDrawerIconColor = const Color(0xFF58595b);

//Button color
const kButtonDisableColor = const Color(0xFFdadada);




//const kGradientStartColor = const Color(0xFF9deb93);
//const kGradientEndColor = const Color(0xFF17b7bd);


//Todo: Add all types of colors for text
// Text Colors
const kHeadingLightTextColor = const Color(0xFFD8D8D8);
const kSubHeadingDarkTextColor = const Color(0xFF696565);
const kEditTextColor = const Color(0xFF696565);


// Button Text colors
const kButtonTextColorWhite = kWhite;
const kButtonTextColorBlack = kBlack;


const kLinearGradient = const LinearGradient(
  colors: const [kPrimaryDarkColor, kPrimaryLightColor],
  stops: const [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);


const kWhiteButtonGradient = const LinearGradient(
  colors: const [kWhite, kWhite],
  stops: const [0.0, 1.0],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
