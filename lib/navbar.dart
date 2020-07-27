import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            width: 1920,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xFFFFFFFF)),
            child: Row(
              children: [
                Image.asset('assets/gochainicon.png'),
                SizedBox(
                  width: 20,
                ),
                _Buttons('Home'),
                SizedBox(
                  width: 20,
                ),
                _Buttons('Rich List'),
                SizedBox(
                  width: 20,
                ),
                _Buttons('Contracts'),
                SizedBox(
                  width: 20,
                ),
                _Buttons('Wallet'),
                SizedBox(
                  width: 20,
                ),
                _Buttons('Signers'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  final String text;
  const _Buttons(this.text);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Colors.grey[200],
        height: 35,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        onPressed: () {},
        child:
            Text(text, style: (TextStyle(fontSize: 18, color: Colors.black))));
  }
}
