import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      // height: 200,
      child: const Center(
          child: Text(
        'my splash',
        style: TextStyle(
          color: Colors.deepOrange,
        ),
      )),
    );
  }
}
