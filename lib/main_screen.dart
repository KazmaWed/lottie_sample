import 'package:flutter/material.dart';
import 'package:lottie_sample/lottie_dialog.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) {
          return GestureDetector(
            child: const LottieView(),
            onTap: () => Navigator.of(context).pop(),
          );
        },
      );
    }

    return Scaffold(
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.send),
        onPressed: () => onPressed(),
      ),
    );
  }
}
