import 'dart:developer';

import 'package:flutter/material.dart';

import 'dice_widget.dart';

class DiceContentWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final int leftNumber;
  final int rightNumber;
  DiceContentWidget({
    @required this.onTap,
    this.leftNumber,
    this.rightNumber,
    Key key,
  }) : super(key: key);
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // log('build $count');
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25.0,
        ),
        child: Row(children: [
          DiceWidget(onTap: onTap, diceNumber: leftNumber),
          const SizedBox(
            width: 25.0,
          ),
          DiceWidget(onTap: onTap, diceNumber: rightNumber),
        ]),
      ),
    );
  }
}
