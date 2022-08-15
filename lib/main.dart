import 'package:dice_application/pages/dice_getX_page.dart';
import 'package:dice_application/pages/dice_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const DiceApp());

class DiceApp extends StatelessWidget {
  const DiceApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceGetXPage(),
      // home: DicePage(),
    );
  }
}
