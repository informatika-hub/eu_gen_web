import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('EU-GEN.web'),),
          body: Center(
            child: ElevatedButton(
              onPressed: _launchURL,
              child: Text('Open EU-GEN.web'),
            ),
          ),
        )),
  );
}

_launchURL() async {
  const url = 'https://gisapp2.eu-gen.at/auth/login';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}