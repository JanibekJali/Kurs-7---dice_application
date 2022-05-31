import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Misalpage extends StatelessWidget {
  const Misalpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                // height: 200.0,
                // width: double.infinity,
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                height: 50000.0,
                // width: double.infinity,
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                // height: 100.0,
                // width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
