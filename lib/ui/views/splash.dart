import 'dart:async';
import 'package:examen_practico/colors.dart';
import 'package:examen_practico/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashView createState() => _SplashView();
}
class _SplashView extends State<SplashView> {
  Timer? _delaySplash;
  @override
  void initState() {
    super.initState();
    _delaySplash = Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("/login");
    });
  }
  @override
  void dispose() {
    super.dispose();
    _delaySplash!.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primaryColor,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: Util.sizeScreen(context: context).width *
                  0.40,
              height: Util.sizeScreen(context: context).width *
                  0.40,

            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "EXAMEN PRACTICO SEGUNDA EVALUACION CANDO-MORAN",
              style: TextStyle(
                  fontSize: 32,
                  color: AppColors.text_dark,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        ),
    );
  }
}