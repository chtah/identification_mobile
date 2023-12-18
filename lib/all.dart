import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() {
    return _Search();
  }
}

class _Search extends State<All> {
  @override
  Widget build(BuildContext context) {
    return const Text('All');
  }
}
