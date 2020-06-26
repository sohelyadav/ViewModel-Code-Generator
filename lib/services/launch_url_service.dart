import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

launchURL(String url) async {
  if (Platform.isIOS) {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: false);
    } else {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  } else {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}