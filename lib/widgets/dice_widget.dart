import 'dart:developer';

import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final void Function() onTap;
  final int diceNumber;
  DiceWidget({
    @required this.onTap,
    @required this.diceNumber,
    Key key,
  }) : super(key: key);
  int count = 0;
  @override
  Widget build(BuildContext context) {
    log('build ${count++}');
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          color: Colors.amberAccent,
          child: Image.asset(
            'assets/images/dice${diceNumber.toString()}.png',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
