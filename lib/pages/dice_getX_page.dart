import 'dart:developer';

import 'package:dice_application/data/getx_controller/controller/dice_controller.dart';
import 'package:dice_application/widgets/app_bar_widget.dart';
import 'package:dice_application/widgets/dice_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceGetXPage extends StatelessWidget {
  DiceGetXPage({Key key}) : super(key: key);
  DiceController diceController = Get.put(DiceController());
  @override
  Widget build(BuildContext context) {
    log('build ${diceController.count.value}');
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: const AppBarWidget(),
        body: Obx(() {
          return DiceContentWidget(
            onTap: () => diceController.getRandomDice(),
            leftNumber: diceController.leftNumber.value,
            rightNumber: diceController.rightNumber.value,
          );
        }));
  }
}
