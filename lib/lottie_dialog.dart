import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieView extends StatefulWidget {
  const LottieView({super.key});

  @override
  State<LottieView> createState() => _LottieViewState();
}

class _LottieViewState extends State<LottieView> with TickerProviderStateMixin {
  final lottiePath = '123492-success-send.json';
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      lottiePath,
      repeat: false,
      controller: _controller,
      onLoaded: (composition) => _controller.forward(),
    );
  }
}
