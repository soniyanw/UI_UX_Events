import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Color red = Color(0xFF990011);

launchURLto() async {
  const url =
      'https://docs.google.com/forms/d/e/1FAIpQLSf9YgOfM-agfEetZ2S3Fa-ugjPBW-DdtuI14Yy-LKz6lCr0DQ/viewform';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLtoWeb() async {
  const url = 'https://www.rajalakshmi.org';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

makingPhoneCall() async {
  var url = Uri.parse("tel:+91 99999 88888");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
