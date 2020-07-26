import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Center(child:
          Column(children: [
            Container(
              margin: EdgeInsets.all(24),
              width: 1612,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xFFDEE4E7)
                 
              ),
              child: Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child:
                    Image.asset('', scale: 16)
                ),
                Container(
                  height: 36,
                  width: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                  ),
                  margin: EdgeInsets.only(left: 36),
                  child: Center(child: Text("Statistics")),
                ),
                Container(
                  height: 36,
                  width: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                  ),
                  margin: EdgeInsets.only(left: 26),
                  child: Center(child: Text("Areas")),
                ),

              ],),
            
        ),

        ],) 
        ,)
        

      
    );
  }
}