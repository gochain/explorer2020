import 'package:flutter/material.dart';

import 'home_navbar.dart';
import 'searchbar.dart';
import '../gochain/retrieveAddress.dart';
import '../gochain/retrieveBlocks.dart';
import '../gochain/retrieveStats.dart';
import '../gochain/retrieveTransaction.dart';
import '../search/address.dart';
import '../search/block.dart';
import '../search/txid.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/homewaves.png'), fit: BoxFit.fill)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            SearchBar(),
          ],
        ),
      ),
    ));
  }
}

class RichListState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/richlistwaves.png'),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                children: [Navbar()],
              ),
            )));
  }
}

class ContractsState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/contractswaves.png'),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                children: [Navbar()],
              ),
            )));
  }
}

class WalletState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/walletwaves.png'),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                children: [Navbar()],
              ),
            )));
  }
}

class SignersState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/signers waves.png'),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                children: [Navbar()],
              ),
            )));
  }
}
