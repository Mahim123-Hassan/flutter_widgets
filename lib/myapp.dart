import 'package:flutter/material.dart';
import 'package:widgets_learning/modiul_11/class_2/stack_practis.dart';
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackPractis(),
    );
  }
}
