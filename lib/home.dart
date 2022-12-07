import 'dart:math';

import 'package:animation/second%20screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TweenBuilder(),
    );
  }
}

class TweenBuilder extends StatefulWidget {
  const TweenBuilder({Key? key}) : super(key: key);

  @override
  State<TweenBuilder> createState() => _TweenBuilderState();
}

class _TweenBuilderState extends State<TweenBuilder> {
  double size0 = 0;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      onEnd: () {
        timeDilation = 6 ;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SecondScreen(),
          ),
        );
      },
      tween: Tween<double>(begin: 0, end: 720 ),
      duration: const Duration(seconds: 4),
      builder: (context, double size, child) {
        return Transform.rotate(
          alignment: AlignmentDirectional.center,
          transformHitTests: false ,
          angle: 1.5*size * (pi/180),
          child: Center(
            child: FlutterLogo(
              size: size ,
            ),
          ),
        );
      },
    );
  }
}
