import 'package:animation/second%20screen.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      onEnd:(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen(),),);
      },
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: const Duration(seconds: 3),
      builder: (context, double opacity, child) {
        return Opacity(
          opacity: opacity,
          child: Center(
              child: FlutterLogo(
            size: 150,
          ),),
        );
      },
    );
  }
}



