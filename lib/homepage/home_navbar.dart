import 'package:flutter/material.dart';
import './home.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 20),
            width: 1920,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/gochainicon.png'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(400, 'Home', '/Home'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(200, 'Rich List', '/RichList'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(200, 'Contracts', '/Contracts'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(200, 'Wallet', '/Wallet'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(200, 'Signers', '/Signers'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  final int colornum;
  final String text;
  final String route;
  const _Buttons(this.colornum, this.text, this.route);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Colors.grey[colornum],
        height: 40,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child:
            Text(text, style: (TextStyle(fontSize: 18, color: Colors.black))));
  }
}
