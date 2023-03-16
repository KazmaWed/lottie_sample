import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieView extends StatefulWidget {
  const LottieView({super.key});

  @override
  State<LottieView> createState() => _LottieViewState();
}

class _LottieViewState extends State<LottieView> with TickerProviderStateMixin {
  final lottiefilePath = '123492-success-send.json';
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this)
      ..addListener(() {
        if (_controller.isCompleted) {
          Navigator.of(context).popUntil((route) => route.isFirst);
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      lottiefilePath,
      controller: _controller,
      onLoaded: (composition) => _controller
        ..duration = composition.duration
        ..forward(),
    );
  }
}
