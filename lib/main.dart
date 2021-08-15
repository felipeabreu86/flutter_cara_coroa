import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Home/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: kReleaseMode ? false : true,
    home: Home(),
  ));
}
