import 'package:flutter/material.dart';
import 'package:viewmodelcodegen/services/launch_url_service.dart';

class SocialMediaLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        InkWell(
            child: Container(
                height: 30.0, child: Image.asset('assets/images/fb_icon.png')),
            onTap: () =>
                launchURL('https://www.facebook.com/RRKabel/')),
        InkWell(
            child: Container(
                height: 30.0, child: Image.asset('assets/images/insta_icon.png')),
            onTap: () => launchURL(
                'https://www.instagram.com/rr_kabel_/')),
        InkWell(
            child: Container(
                height: 30.0, child: Image.asset('assets/images/YT_icon.png')),
            onTap: () => launchURL(
                'https://www.youtube.com/channel/UCy1qoefwjQ_uIa9IhVuFoyg')),
        InkWell(
            child: Container(
                height: 30.0, child: Image.asset('assets/images/whatsapp_icon.png')),
            onTap: () => launchURL(
                'https://twitter.com/_RRKabel?s=08'))
      ],
    );
  }
}
