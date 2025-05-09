import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DemoLottie extends StatelessWidget {
  const DemoLottie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/lottie/lf20_lrjha2vi.json",
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
