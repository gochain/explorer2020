import 'package:flutter/material.dart';

import 'home_navbar.dart';
import 'searchbar.dart';

import '../gochain/retrieveAddress.dart';
import '../gochain/retrieveBlocks.dart';
import '../gochain/retrieveStats.dart';
import '../gochain/retrieveTransaction.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [Navbar(), SearchBar()],
    )));
  }
}

class RichListState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [Navbar()],
    )));
  }
}

class ContractsState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [Navbar()],
    )));
  }
}

class WalletState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [Navbar()],
    )));
  }
}

class SignersState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [Navbar()],
    )));
  }
}
