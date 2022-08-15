import 'dart:developer';

import 'package:dice_application/data/repositories/math_repos.dart';
import 'package:dice_application/widgets/dice_content_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftNumber = 2;
  int _rightNumber = 5;
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    log(' build $_count');
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: const AppBarWidget(),
      body: DiceContentWidget(
        onTap: changeRandomNumber,
        leftNumber: _leftNumber,
        rightNumber: _rightNumber,
      ),
    );
  }

  void changeRandomNumber() {
    setState(() {
      _leftNumber = MathRepos.getRandomNumber();
      _rightNumber = MathRepos.getRandomNumber();
      _count++;
    });
  }
}
// Business logic   --> methods, functions
// OOP - Object Oriented Programming -  abstraction, private
// Design pattern - architecture
// MVC - Model View Controller
// MVVM - Model View View Model
// State Management -  
