import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyLottie extends StatefulWidget {
  final String lottie;
  final double width;
  final double height;

  const MyLottie(
      {super.key, required this.lottie, this.width = 250, this.height = 250});

  @override
  State<MyLottie> createState() => _MyLottieState();
}

class _MyLottieState extends State<MyLottie> with TickerProviderStateMixin {
  late final AnimationController _lottieController;

  @override
  void initState() {
    super.initState();

    _lottieController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
  }

  @override
  void dispose() {
    _lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(widget.lottie,
        animate: true,
        reverse: true,
        width: widget.width,
        height: widget.height,
        // delegates: LottieDelegates(values: [
        //   //  keyPath order: ['layer name', 'group name', 'shape name']
        //   ValueDelegate.colorFilter(['**', 'music-big', '**'],
        //       value: ColorFilter.mode(
        //           Theme.of(context).primaryColor, BlendMode.src)),
        //   ValueDelegate.colorFilter(['**', 'music-small', '**'],
        //       value: ColorFilter.mode(
        //           Theme.of(context).primaryColor, BlendMode.src)),
        //   ValueDelegate.colorFilter(['**', 'phone-screen', '**'],
        //       value: ColorFilter.mode(
        //           Theme.of(context).primaryColorDark, BlendMode.multiply)),
        // ]),
        controller: _lottieController, onLoaded: (composition) {
      _lottieController.duration = composition.duration;
      _lottieController.forward();
      _lottieController.repeat();
    });
  }
}
