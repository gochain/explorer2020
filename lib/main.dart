import 'package:flutter/material.dart';
import 'homepage/home.dart';

void main() => runApp(Explorer());

class Explorer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
