import 'dart:developer';

import 'package:dice_application/data/repositories/math_repos.dart';

import 'package:get/get.dart';

class DiceController extends GetxController {
  RxInt leftNumber = 2.obs;
  RxInt rightNumber = 5.obs;
  RxInt count = 0.obs;

  void getRandomDice() {
    leftNumber.value = MathRepos.getRandomNumber();
    rightNumber.value = MathRepos.getRandomNumber();
    count.value++;
    log(' leftNumber.value ${leftNumber.value}');
    log(' rightNumber.value  ${rightNumber.value}  ');
  }
}
