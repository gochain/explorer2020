import 'package:flutter/material.dart';

import './home.dart';



void main() => runApp(Explorer());


class Explorer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}