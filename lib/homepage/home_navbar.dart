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
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            child: Row(
              children: [
                Image.asset('assets/gochainicon.png'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(400, 'Home'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(200, 'Rich List'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(200, 'Contracts'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(200, 'Wallet'),
                SizedBox(
                  width: 40,
                ),
                _Buttons(200, 'Signers'),
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
  const _Buttons(this.colornum, this.text);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Colors.grey[colornum],
        height: 35,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        onPressed: () {},
        child:
            Text(text, style: (TextStyle(fontSize: 18, color: Colors.black))));
  }
}
