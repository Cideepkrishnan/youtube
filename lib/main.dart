import 'package:flutter/material.dart';
import 'package:youtube/view/splash_screen/splash_screen.dart';

void main() {
  runApp(myclass());
}

class myclass extends StatelessWidget {
  const myclass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}
