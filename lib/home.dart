import 'package:flutter/material.dart';
import './navbar.dart';

import './gochain/retrieveAddress.dart';
import './gochain/retrieveBlocks.dart';
import './gochain/retrieveStats.dart';
import './gochain/retrieveTransaction.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [Navbar()],
    )));
  }
}
