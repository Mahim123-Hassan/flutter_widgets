import 'package:flutter/material.dart';
import 'package:widgets_learning/modiul_11/class_2/stack_practis.dart';

import 'package:widgets_learning/modiul_11/class_3/alertvew.dart';

import 'modiul_12/class_2/tap_bar.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TapBar());
  }
}
