import 'dart:developer' as console;
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const DiceApp());

class DiceApp extends StatelessWidget {
  const DiceApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
      // home: Misalpage(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

Random random = Random();

class _MyWidgetState extends State<MyWidget> {
  int solJak = 2;
  int onJak = 5;
  void ozgort() {
    setState(() {
      solJak = random.nextInt(6) + 1; // 0 +1 = 1
      onJak = random.nextInt(5) + 1;
    });
    // 0 + 1 = 1  // 1
    // 1 + 1 = 2  // 2
    // 2 + 1 = 3  // 3
    // 3 + 1 = 4  // 4
    // 4 + 1 = 5  // 5
    // 5 + 1 = 6  // 6
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal,
        title: const Text('Dice App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
          child: Row(children: [
            //// Variant 1 kaalagandai kilip ozgortup alsak bolot jana en onoi jolu
            // Expanded(
            //   child: GestureDetector(
            //     onTap: () {
            //       // print('SolJak basildy ===> $solJak');
            //       log('SolJak basildy ===> $solJak');
            //     },
            //     child: Image.asset('assets/images/dice$solJak.png'),
            //   ),
            // ),
            // const SizedBox(
            //   width: 25.0,
            // ),
            // Expanded(
            //   child: GestureDetector(
            //     onTap: () => log('onJak ===> $onJak '),
            //     child: Image.asset('assets/images/dice$onJak.png'),
            //   ),
            // ),

            //// variant 2
            Expanded(
              child: InkWell(
                onTap: ozgort,
                child: Container(
                  color: Colors.red,
                  child: Image.asset(
                    'assets/images/dice$solJak.png',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 25.0,
            ),
            Expanded(
              child: InkWell(
                onTap: ozgort,
                child: Image.asset(
                  'assets/images/dice$onJak.png',
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
